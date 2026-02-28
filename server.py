#                _____ _    _  _____  __          __        _   _               
#         /\    / ____| |  | |/ ____| \ \        / /       | | | |              
#        /  \  | (___ | |  | | (___    \ \  /\  / /__  __ _| |_| |__   ___ _ __ 
#       / /\ \  \___ \| |  | |\___ \    \ \/  \/ / _ \/ _` | __| '_ \ / _ \ '__|
#      / ____ \ ____) | |__| |____) | _  \  /\  /  __/ (_| | |_| | | |  __/ |   
#     /_/    \_\_____(_)____/|_____/ | |  \/  \/ \___|\__,_|\__|_| |_|\___|_|   
#      _ __ _____   _____   _____  __| |                                        
#     | '__/ _ \ \ / / \ \ / / _ \/ _` |                                        
#     | | |  __/\ V /| |\ V /  __/ (_| |                                        
#     |_|  \___| \_/ |_| \_/ \___|\__,_|                                        
#                                                                               
#                                                                                 

# Asus Weather Revived server by JoshAtticus
# Copyright 2026 JoshAtticus, licensed under MIT License
# Asus Weather Revived is not affiliated with or endorsed by Asus or AccuWeather. This project is a fan-made reverse engineering effort to restore functionality to a discontinued app.
# No warranty is implied or expressly granted. Use at your own risk. For educational and personal use only.                                                   
                                                 
import os
import json
import time
import ssl
from datetime import datetime
import urllib.request
from urllib.parse import urlparse, parse_qs
from http.server import HTTPServer, BaseHTTPRequestHandler

try:
    from dotenv import load_dotenv
    load_dotenv()
except ImportError:
    pass

OWM_API_KEY = os.environ.get("OWM_API_KEY", "")

def get_owm_icon(icon_code):
    mapping = {
        '01d': '01', '01n': '33',
        '02d': '02', '02n': '34',
        '03d': '04', '03n': '36',
        '04d': '06', '04n': '38',
        '09d': '12', '09n': '39',
        '10d': '18', '10n': '40',
        '11d': '15', '11n': '41',
        '13d': '22', '13n': '44',
        '50d': '11', '50n': '11',
    }
    return mapping.get(icon_code, '01')

def fetch_json(url):
    ctx = ssl.create_default_context()
    ctx.check_hostname = False
    ctx.verify_mode = ssl.CERT_NONE
    req = urllib.request.Request(url, headers={'User-Agent': 'Mozilla/5.0'})
    try:
        with urllib.request.urlopen(req, context=ctx, timeout=10) as response:
            return json.loads(response.read().decode())
    except Exception as e:
        print(f"Error fetching {url}: {e}")
        return None

class WeatherProxyServer(BaseHTTPRequestHandler):
    def do_GET(self):
        parsed_path = urlparse(self.path)
        qs = parse_qs(parsed_path.query)
        
        if not OWM_API_KEY:
            self.send_error(500, "OWM_API_KEY environment variable not set")
            return

        print(f"Request: {self.path}", flush=True)

        if parsed_path.path == '/widget/asus1/city-find.asp':
            location = qs.get('location', [''])[0]
            url = f"http://api.openweathermap.org/geo/1.0/direct?q={urllib.parse.quote(location)}&limit=5&appid={OWM_API_KEY}"
            geo_data = fetch_json(url)
            
            xml = '<?xml version="1.0" encoding="utf-8"?>\n<adc_database xmlns="http://www.accuweather.com">\n    <citylist>\n'
            if geo_data:
                for idx, city in enumerate(geo_data):
                    name = city.get('name', 'Unknown')
                    country = city.get('country', '')
                    state = city.get('state', '')
                    lat = city.get('lat', 0)
                    lon = city.get('lon', 0)
                    loc_id = f"{lat},{lon}"
                    
                    # OpenWeatherMap geocoding often returns matching cities that map to 
                    # different local weather stations (like South Perth vs Maylands). 
                    # Pre-fetch the weather data to get the exact localized station name.
                    weather_url = f"http://api.openweathermap.org/data/2.5/weather?lat={lat}&lon={lon}&appid={OWM_API_KEY}"
                    w_data = fetch_json(weather_url)
                    if w_data and 'name' in w_data and w_data['name']:
                        name = w_data['name']

                    asus_country = name
                    asus_admin = f"{state}, {country}" if state else country
                    
                    xml += f'        <location city="{name}" country="{asus_country}" adminArea="{asus_admin}" location="{loc_id}" />\n'
            xml += '    </citylist>\n</adc_database>'
            
            self.send_response(200)
            self.send_header('Content-type', 'application/xml')
            self.end_headers()
            self.wfile.write(xml.encode('utf-8'))
            
        elif parsed_path.path == '/widget/asus1/weather-data.asp':
            lat = qs.get('slat', [''])[0]
            lon = qs.get('slon', [''])[0]
            
            # If location ID is provided, it might have lat,lon embedded
            loc_id = qs.get('location', [''])[0]
            if loc_id and ',' in loc_id:
                lat, lon = loc_id.split(',', 1)
            
            if not lat or not lon:
                self.send_error(400, "Missing coordinates")
                return

            current_url = f"http://api.openweathermap.org/data/2.5/weather?lat={lat}&lon={lon}&units=metric&appid={OWM_API_KEY}"
            forecast_url = f"http://api.openweathermap.org/data/2.5/forecast?lat={lat}&lon={lon}&units=metric&appid={OWM_API_KEY}"
            
            cur_data = fetch_json(current_url)
            fc_data = fetch_json(forecast_url)
            
            if not cur_data or not fc_data:
                self.send_error(500, "Failed to fetch from OWM")
                return
                
            city_name = cur_data.get('name', 'Unknown')
            country = cur_data.get('sys', {}).get('country', '')
            temp = int(cur_data['main']['temp'])
            realfeel = int(cur_data['main']['feels_like'])
            humidity = cur_data['main']['humidity']
            windspeed = int(cur_data['wind']['speed'] * 3.6) # m/s to km/h
            weathertext = cur_data['weather'][0]['main']
            icon = get_owm_icon(cur_data['weather'][0]['icon'])
            
            sunrise_dt = datetime.fromtimestamp(cur_data['sys']['sunrise'])
            sunset_dt = datetime.fromtimestamp(cur_data['sys']['sunset'])
            sunrise_str = sunrise_dt.strftime("%H:%M")
            sunset_str = sunset_dt.strftime("%H:%M")
            local_time = datetime.fromtimestamp(cur_data['dt']).strftime("%H:%M")

            xml = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"
            xml += "<adc_database xmlns=\"http://www.accuweather.com\">\n"
            xml += "    <units>\n"
            xml += "        <temp>C</temp>\n"
            xml += "        <speed>km/h</speed>\n"
            xml += "    </units>\n"
            xml += "    <local>\n"
            xml += f"        <city>{city_name}</city>\n"
            xml += f"        <time>{local_time}</time>\n"
            xml += f"        <country>{country}</country>\n"
            xml += "    </local>\n"
            xml += "    <currentconditions>\n"
            xml += f"        <temperature>{temp}</temperature>\n"
            xml += f"        <weathertext>{weathertext}</weathertext>\n"
            xml += f"        <weathericon>{icon}</weathericon>\n"
            xml += f"        <realfeel>{realfeel}</realfeel>\n"
            xml += f"        <windspeed>{windspeed}</windspeed>\n"
            xml += "        <winddirection>N</winddirection>\n"
            xml += f"        <humidity>{humidity}</humidity>\n"
            xml += "        <url>http://asusweather.joshattic.us</url>\n"
            xml += "    </currentconditions>\n"
            xml += "    <forecast>\n"

            days = {}
            for item in fc_data['list']:
                date = item['dt_txt'].split(' ')[0]
                if date not in days:
                    days[date] = {'temps': [], 'icons': []}
                days[date]['temps'].append(item['main']['temp'])
                days[date]['icons'].append(item['weather'][0]['icon'])
                
            day_codes = ["Today", "Tomorrow", "Day 3", "Day 4", "Day 5"]
            
            for idx, date in enumerate(sorted(days.keys())[:5]):
                if idx >= len(day_codes): break
                day_data = days[date]
                high = int(max(day_data['temps']))
                low = int(min(day_data['temps']))
                day_icon_owm = max(set(day_data['icons']), key=day_data['icons'].count)
                day_icon = get_owm_icon(day_icon_owm)
                night_icon = get_owm_icon(day_icon_owm.replace('d', 'n'))
                
                xml += "        <day>\n"
                xml += f"            <daycode>{day_codes[idx]}</daycode>\n"
                xml += f"            <sunrise>{sunrise_str}</sunrise>\n"
                xml += f"            <sunset>{sunset_str}</sunset>\n"
                xml += "            <daytime>\n"
                xml += f"                <weathericon>{day_icon}</weathericon>\n"
                xml += f"                <hightemperature>{high}</hightemperature>\n"
                xml += f"                <lowtemperature>{low}</lowtemperature>\n"
                xml += "            </daytime>\n"
                xml += "            <nighttime>\n"
                xml += f"                <weathericon>{night_icon}</weathericon>\n"
                xml += f"                <hightemperature>{high}</hightemperature>\n"
                xml += f"                <lowtemperature>{low}</lowtemperature>\n"
                xml += "            </nighttime>\n"
                xml += "        </day>\n"
                
            xml += "    </forecast>\n</adc_database>"
            
            self.send_response(200)
            self.send_header('Content-type', 'application/xml')
            self.end_headers()
            self.wfile.write(xml.encode('utf-8'))
            
        else:
            self.send_response(404)
            self.end_headers()
            self.wfile.write(b'Not Found')

if __name__ == '__main__':
    port = int(os.environ.get("PORT", 3007))
    server_address = ('0.0.0.0', port)
    httpd = HTTPServer(server_address, WeatherProxyServer)
    print(f"Starting OpenWeatherMap proxy server on port {port}...", flush=True)
    print(f"OWM_API_KEY is {'SET' if OWM_API_KEY else 'MISSING'}", flush=True)
    try:
        httpd.serve_forever()
    except KeyboardInterrupt:
        pass
    httpd.server_close()
