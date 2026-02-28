.class public Lcom/asus/weather/accuWeather/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/asus/weather/accuWeather/Message;",
        ">;"
    }
.end annotation


# instance fields
.field private countrycode:Ljava/lang/String;

.field private curcond_humidity:Ljava/lang/String;

.field private curcond_realfeel:Ljava/lang/String;

.field private curcond_temperature:Ljava/lang/String;

.field private curcond_url:Ljava/lang/String;

.field private curcond_weathericon:Ljava/lang/String;

.field private curcond_weathertext:Ljava/lang/String;

.field private curcond_winddirection:Ljava/lang/String;

.field private curcond_windspeed:Ljava/lang/String;

.field private current_time:Ljava/lang/String;

.field private day:Ljava/lang/String;

.field private forecast_day_hightemperature:Ljava/lang/String;

.field private forecast_day_lowtemperature:Ljava/lang/String;

.field private forecast_day_weathericon:Ljava/lang/String;

.field private forecast_night_hightemperature:Ljava/lang/String;

.field private forecast_night_lowtemperature:Ljava/lang/String;

.field private forecast_night_weathericon:Ljava/lang/String;

.field private local_city:Ljava/lang/String;

.field private sunrise_time:Ljava/lang/String;

.field private sunset_time:Ljava/lang/String;

.field private units_speed:Ljava/lang/String;

.field private units_temp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/asus/weather/accuWeather/Message;)I
    .registers 3
    .param p1, "another"    # Lcom/asus/weather/accuWeather/Message;

    .prologue
    .line 253
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 3
    check-cast p1, Lcom/asus/weather/accuWeather/Message;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/asus/weather/accuWeather/Message;->compareTo(Lcom/asus/weather/accuWeather/Message;)I

    move-result v0

    return v0
.end method

.method public copy()Lcom/asus/weather/accuWeather/Message;
    .registers 3

    .prologue
    .line 223
    new-instance v0, Lcom/asus/weather/accuWeather/Message;

    invoke-direct {v0}, Lcom/asus/weather/accuWeather/Message;-><init>()V

    .line 224
    .local v0, "copy":Lcom/asus/weather/accuWeather/Message;
    iget-object v1, p0, Lcom/asus/weather/accuWeather/Message;->local_city:Ljava/lang/String;

    iput-object v1, v0, Lcom/asus/weather/accuWeather/Message;->local_city:Ljava/lang/String;

    .line 225
    iget-object v1, p0, Lcom/asus/weather/accuWeather/Message;->countrycode:Ljava/lang/String;

    iput-object v1, v0, Lcom/asus/weather/accuWeather/Message;->countrycode:Ljava/lang/String;

    .line 226
    iget-object v1, p0, Lcom/asus/weather/accuWeather/Message;->current_time:Ljava/lang/String;

    iput-object v1, v0, Lcom/asus/weather/accuWeather/Message;->current_time:Ljava/lang/String;

    .line 227
    iget-object v1, p0, Lcom/asus/weather/accuWeather/Message;->curcond_weathertext:Ljava/lang/String;

    iput-object v1, v0, Lcom/asus/weather/accuWeather/Message;->curcond_weathertext:Ljava/lang/String;

    .line 228
    iget-object v1, p0, Lcom/asus/weather/accuWeather/Message;->curcond_temperature:Ljava/lang/String;

    iput-object v1, v0, Lcom/asus/weather/accuWeather/Message;->curcond_temperature:Ljava/lang/String;

    .line 229
    iget-object v1, p0, Lcom/asus/weather/accuWeather/Message;->curcond_weathericon:Ljava/lang/String;

    iput-object v1, v0, Lcom/asus/weather/accuWeather/Message;->curcond_weathericon:Ljava/lang/String;

    .line 230
    iget-object v1, p0, Lcom/asus/weather/accuWeather/Message;->curcond_realfeel:Ljava/lang/String;

    iput-object v1, v0, Lcom/asus/weather/accuWeather/Message;->curcond_realfeel:Ljava/lang/String;

    .line 231
    iget-object v1, p0, Lcom/asus/weather/accuWeather/Message;->curcond_windspeed:Ljava/lang/String;

    iput-object v1, v0, Lcom/asus/weather/accuWeather/Message;->curcond_windspeed:Ljava/lang/String;

    .line 232
    iget-object v1, p0, Lcom/asus/weather/accuWeather/Message;->curcond_winddirection:Ljava/lang/String;

    iput-object v1, v0, Lcom/asus/weather/accuWeather/Message;->curcond_winddirection:Ljava/lang/String;

    .line 233
    iget-object v1, p0, Lcom/asus/weather/accuWeather/Message;->curcond_humidity:Ljava/lang/String;

    iput-object v1, v0, Lcom/asus/weather/accuWeather/Message;->curcond_humidity:Ljava/lang/String;

    .line 234
    iget-object v1, p0, Lcom/asus/weather/accuWeather/Message;->curcond_url:Ljava/lang/String;

    iput-object v1, v0, Lcom/asus/weather/accuWeather/Message;->curcond_url:Ljava/lang/String;

    .line 235
    iget-object v1, p0, Lcom/asus/weather/accuWeather/Message;->units_temp:Ljava/lang/String;

    iput-object v1, v0, Lcom/asus/weather/accuWeather/Message;->units_temp:Ljava/lang/String;

    .line 236
    iget-object v1, p0, Lcom/asus/weather/accuWeather/Message;->units_speed:Ljava/lang/String;

    iput-object v1, v0, Lcom/asus/weather/accuWeather/Message;->units_speed:Ljava/lang/String;

    .line 237
    iget-object v1, p0, Lcom/asus/weather/accuWeather/Message;->day:Ljava/lang/String;

    iput-object v1, v0, Lcom/asus/weather/accuWeather/Message;->day:Ljava/lang/String;

    .line 238
    iget-object v1, p0, Lcom/asus/weather/accuWeather/Message;->forecast_day_hightemperature:Ljava/lang/String;

    iput-object v1, v0, Lcom/asus/weather/accuWeather/Message;->forecast_day_hightemperature:Ljava/lang/String;

    .line 239
    iget-object v1, p0, Lcom/asus/weather/accuWeather/Message;->forecast_day_lowtemperature:Ljava/lang/String;

    iput-object v1, v0, Lcom/asus/weather/accuWeather/Message;->forecast_day_lowtemperature:Ljava/lang/String;

    .line 240
    iget-object v1, p0, Lcom/asus/weather/accuWeather/Message;->forecast_day_weathericon:Ljava/lang/String;

    iput-object v1, v0, Lcom/asus/weather/accuWeather/Message;->forecast_day_weathericon:Ljava/lang/String;

    .line 241
    iget-object v1, p0, Lcom/asus/weather/accuWeather/Message;->forecast_night_weathericon:Ljava/lang/String;

    iput-object v1, v0, Lcom/asus/weather/accuWeather/Message;->forecast_night_weathericon:Ljava/lang/String;

    .line 242
    iget-object v1, p0, Lcom/asus/weather/accuWeather/Message;->forecast_night_hightemperature:Ljava/lang/String;

    iput-object v1, v0, Lcom/asus/weather/accuWeather/Message;->forecast_night_hightemperature:Ljava/lang/String;

    .line 243
    iget-object v1, p0, Lcom/asus/weather/accuWeather/Message;->forecast_night_lowtemperature:Ljava/lang/String;

    iput-object v1, v0, Lcom/asus/weather/accuWeather/Message;->forecast_night_lowtemperature:Ljava/lang/String;

    .line 244
    iget-object v1, p0, Lcom/asus/weather/accuWeather/Message;->sunrise_time:Ljava/lang/String;

    iput-object v1, v0, Lcom/asus/weather/accuWeather/Message;->sunrise_time:Ljava/lang/String;

    .line 245
    iget-object v1, p0, Lcom/asus/weather/accuWeather/Message;->sunset_time:Ljava/lang/String;

    iput-object v1, v0, Lcom/asus/weather/accuWeather/Message;->sunset_time:Ljava/lang/String;

    .line 247
    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/asus/weather/accuWeather/Message;->local_city:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/asus/weather/accuWeather/Message;->countrycode:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/asus/weather/accuWeather/Message;->current_time:Ljava/lang/String;

    return-object v0
.end method

.method public getDay()Ljava/lang/String;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/asus/weather/accuWeather/Message;->day:Ljava/lang/String;

    return-object v0
.end method

.method public getFC_Day_HighTemp()Ljava/lang/String;
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/asus/weather/accuWeather/Message;->forecast_day_hightemperature:Ljava/lang/String;

    return-object v0
.end method

.method public getFC_Day_LowTemp()Ljava/lang/String;
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/asus/weather/accuWeather/Message;->forecast_day_lowtemperature:Ljava/lang/String;

    return-object v0
.end method

.method public getFC_Day_WeatherIcon()Ljava/lang/String;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/asus/weather/accuWeather/Message;->forecast_day_weathericon:Ljava/lang/String;

    return-object v0
.end method

.method public getFC_Night_HighTemp()Ljava/lang/String;
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/asus/weather/accuWeather/Message;->forecast_night_hightemperature:Ljava/lang/String;

    return-object v0
.end method

.method public getFC_Night_LowTemp()Ljava/lang/String;
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/asus/weather/accuWeather/Message;->forecast_night_lowtemperature:Ljava/lang/String;

    return-object v0
.end method

.method public getFC_Night_WeatherIcon()Ljava/lang/String;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/asus/weather/accuWeather/Message;->forecast_night_weathericon:Ljava/lang/String;

    return-object v0
.end method

.method public getHumidity()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/asus/weather/accuWeather/Message;->curcond_humidity:Ljava/lang/String;

    return-object v0
.end method

.method public getRealfeel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/asus/weather/accuWeather/Message;->curcond_realfeel:Ljava/lang/String;

    return-object v0
.end method

.method public getSunrise()Ljava/lang/String;
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/asus/weather/accuWeather/Message;->sunrise_time:Ljava/lang/String;

    return-object v0
.end method

.method public getSunset()Ljava/lang/String;
    .registers 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/asus/weather/accuWeather/Message;->sunset_time:Ljava/lang/String;

    return-object v0
.end method

.method public getTemperature()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/asus/weather/accuWeather/Message;->curcond_temperature:Ljava/lang/String;

    return-object v0
.end method

.method public getUnits_speed()Ljava/lang/String;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/asus/weather/accuWeather/Message;->units_speed:Ljava/lang/String;

    return-object v0
.end method

.method public getUnits_temp()Ljava/lang/String;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/asus/weather/accuWeather/Message;->units_temp:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/asus/weather/accuWeather/Message;->curcond_url:Ljava/lang/String;

    return-object v0
.end method

.method public getWeathericon()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/asus/weather/accuWeather/Message;->curcond_weathericon:Ljava/lang/String;

    return-object v0
.end method

.method public getWeathertext()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/asus/weather/accuWeather/Message;->curcond_weathertext:Ljava/lang/String;

    return-object v0
.end method

.method public getWinddirection()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/asus/weather/accuWeather/Message;->curcond_winddirection:Ljava/lang/String;

    return-object v0
.end method

.method public getWindspeed()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/asus/weather/accuWeather/Message;->curcond_windspeed:Ljava/lang/String;

    return-object v0
.end method

.method public setCity(Ljava/lang/String;)V
    .registers 3
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/weather/accuWeather/Message;->local_city:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .registers 2
    .param p1, "countrycode"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/asus/weather/accuWeather/Message;->countrycode:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setCurrentTime(Ljava/lang/String;)V
    .registers 3
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/weather/accuWeather/Message;->current_time:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setDay(Ljava/lang/String;)V
    .registers 3
    .param p1, "day"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/weather/accuWeather/Message;->day:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setFC_Day_HighTemp(Ljava/lang/String;)V
    .registers 3
    .param p1, "forecast_day_hightemperature"    # Ljava/lang/String;

    .prologue
    .line 169
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/weather/accuWeather/Message;->forecast_day_hightemperature:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setFC_Day_LowTemp(Ljava/lang/String;)V
    .registers 3
    .param p1, "forecast_day_lowtemperature"    # Ljava/lang/String;

    .prologue
    .line 179
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/weather/accuWeather/Message;->forecast_day_lowtemperature:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setFC_Day_WeatherIcon(Ljava/lang/String;)V
    .registers 3
    .param p1, "forecast_day_weathericon"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/weather/accuWeather/Message;->forecast_day_weathericon:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setFC_Night_HighTemp(Ljava/lang/String;)V
    .registers 3
    .param p1, "forecast_night_hightemperature"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/weather/accuWeather/Message;->forecast_night_hightemperature:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setFC_Night_LowTemp(Ljava/lang/String;)V
    .registers 3
    .param p1, "forecast_night_lowtemperature"    # Ljava/lang/String;

    .prologue
    .line 199
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/weather/accuWeather/Message;->forecast_night_lowtemperature:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public setFC_Night_WeatherIcon(Ljava/lang/String;)V
    .registers 3
    .param p1, "forecast_night_weathericon"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/weather/accuWeather/Message;->forecast_night_weathericon:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setHumidity(Ljava/lang/String;)V
    .registers 3
    .param p1, "humidity"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/weather/accuWeather/Message;->curcond_humidity:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setRealfeel(Ljava/lang/String;)V
    .registers 3
    .param p1, "realfeel"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/weather/accuWeather/Message;->curcond_realfeel:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setSunrise(Ljava/lang/String;)V
    .registers 3
    .param p1, "sunriseTime"    # Ljava/lang/String;

    .prologue
    .line 209
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/weather/accuWeather/Message;->sunrise_time:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public setSunset(Ljava/lang/String;)V
    .registers 3
    .param p1, "sunsetTime"    # Ljava/lang/String;

    .prologue
    .line 219
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/weather/accuWeather/Message;->sunset_time:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public setTemperature(Ljava/lang/String;)V
    .registers 3
    .param p1, "temperature"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/weather/accuWeather/Message;->curcond_temperature:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setUnits_speed(Ljava/lang/String;)V
    .registers 3
    .param p1, "units_speed"    # Ljava/lang/String;

    .prologue
    .line 129
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/weather/accuWeather/Message;->units_speed:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setUnits_temp(Ljava/lang/String;)V
    .registers 3
    .param p1, "units_temp"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/weather/accuWeather/Message;->units_temp:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/weather/accuWeather/Message;->curcond_url:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setWeathericon(Ljava/lang/String;)V
    .registers 3
    .param p1, "weathericon"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/weather/accuWeather/Message;->curcond_weathericon:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setWeathertext(Ljava/lang/String;)V
    .registers 3
    .param p1, "weathertext"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/weather/accuWeather/Message;->curcond_weathertext:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setWinddirection(Ljava/lang/String;)V
    .registers 3
    .param p1, "winddirection"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/weather/accuWeather/Message;->curcond_winddirection:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setWindspeed(Ljava/lang/String;)V
    .registers 3
    .param p1, "windspeed"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/weather/accuWeather/Message;->curcond_windspeed:Ljava/lang/String;

    .line 90
    return-void
.end method
