.class public Lcom/asus/weather/WeatherService;
.super Landroid/app/Service;
.source "WeatherService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/weather/WeatherService$MyLocationListener;
    }
.end annotation


# static fields
.field static timeContent:Landroid/content/ContentResolver;


# instance fields
.field bIsGPSEnabled:Z

.field bIsWiFiEnabled:Z

.field cityQueryByLocale:I

.field counts:I

.field flagGetPositionDone:Z

.field handler:Landroid/os/Handler;

.field locationListener:Landroid/location/LocationListener;

.field mLocationManager:Landroid/location/LocationManager;

.field pref:Landroid/content/SharedPreferences;

.field serviceIntent:Landroid/content/Intent;

.field private timer:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/asus/weather/WeatherService;->timeContent:Landroid/content/ContentResolver;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 34
    iput-object v1, p0, Lcom/asus/weather/WeatherService;->mLocationManager:Landroid/location/LocationManager;

    .line 35
    iput-object v1, p0, Lcom/asus/weather/WeatherService;->locationListener:Landroid/location/LocationListener;

    .line 36
    iput-boolean v0, p0, Lcom/asus/weather/WeatherService;->bIsGPSEnabled:Z

    .line 37
    iput-boolean v0, p0, Lcom/asus/weather/WeatherService;->bIsWiFiEnabled:Z

    .line 38
    iput-boolean v0, p0, Lcom/asus/weather/WeatherService;->flagGetPositionDone:Z

    .line 40
    iput v0, p0, Lcom/asus/weather/WeatherService;->cityQueryByLocale:I

    .line 41
    iput v0, p0, Lcom/asus/weather/WeatherService;->counts:I

    .line 42
    iput-object v1, p0, Lcom/asus/weather/WeatherService;->pref:Landroid/content/SharedPreferences;

    .line 43
    iput-object v1, p0, Lcom/asus/weather/WeatherService;->serviceIntent:Landroid/content/Intent;

    .line 217
    new-instance v0, Lcom/asus/weather/WeatherService$2;

    invoke-direct {v0, p0}, Lcom/asus/weather/WeatherService$2;-><init>(Lcom/asus/weather/WeatherService;)V

    iput-object v0, p0, Lcom/asus/weather/WeatherService;->timer:Ljava/lang/Runnable;

    .line 556
    return-void
.end method

.method private _getWeatherUpdate()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 88
    const-string v1, "[WeatherService]"

    const-string v2, "_getWeatherUpdate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const-string v1, "location"

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/asus/weather/WeatherService;->mLocationManager:Landroid/location/LocationManager;

    .line 93
    const-string v1, "PREF_WEATHER"

    invoke-virtual {p0, v1, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/weather/WeatherService;->pref:Landroid/content/SharedPreferences;

    .line 95
    const/4 v0, 0x0

    .line 97
    .local v0, "queryType":Ljava/lang/String;
    iget-object v1, p0, Lcom/asus/weather/WeatherService;->serviceIntent:Landroid/content/Intent;

    if-eqz v1, :cond_27

    .line 99
    iget-object v1, p0, Lcom/asus/weather/WeatherService;->serviceIntent:Landroid/content/Intent;

    const-string v2, "QUERYTYPE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    :cond_27
    if-eqz v0, :cond_34

    .line 103
    const-string v1, "QUERYWEATHER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 105
    invoke-direct {p0}, Lcom/asus/weather/WeatherService;->checkPreferences()V

    .line 113
    :cond_34
    :goto_34
    return-void

    .line 107
    :cond_35
    const-string v1, "CITYFIND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 109
    iput v3, p0, Lcom/asus/weather/WeatherService;->cityQueryByLocale:I

    .line 110
    iget-object v1, p0, Lcom/asus/weather/WeatherService;->serviceIntent:Landroid/content/Intent;

    const-string v2, "CITYFIND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/asus/weather/WeatherService;->loadFeed_cityfind(Ljava/lang/String;)V

    goto :goto_34
.end method

.method private _startService()V
    .registers 2

    .prologue
    .line 76
    new-instance v0, Lcom/asus/weather/WeatherService$1;

    invoke-direct {v0, p0}, Lcom/asus/weather/WeatherService$1;-><init>(Lcom/asus/weather/WeatherService;)V

    .line 83
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/asus/weather/WeatherService;)V
    .registers 1
    .param p0, "x0"    # Lcom/asus/weather/WeatherService;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/asus/weather/WeatherService;->_getWeatherUpdate()V

    return-void
.end method

.method static synthetic access$200(Lcom/asus/weather/WeatherService;DDLjava/lang/String;)V
    .registers 6
    .param p0, "x0"    # Lcom/asus/weather/WeatherService;
    .param p1, "x1"    # D
    .param p3, "x2"    # D
    .param p5, "x3"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct/range {p0 .. p5}, Lcom/asus/weather/WeatherService;->loadFeed(DDLjava/lang/String;)V

    return-void
.end method

.method private broadcastIntentAction(I)V
    .registers 5
    .param p1, "iMsg"    # I

    .prologue
    .line 541
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.asus.weather.weatherIntentAction"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "CONTENT"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 543
    .local v0, "broadcastintent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 544
    return-void
.end method

.method private checkPreferences()V
    .registers 13

    .prologue
    const/4 v11, 0x3

    .line 117
    iget-object v0, p0, Lcom/asus/weather/WeatherService;->pref:Landroid/content/SharedPreferences;

    const-string v1, "UnitSpinner"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 118
    .local v10, "unitStr":Ljava/lang/String;
    iget-object v0, p0, Lcom/asus/weather/WeatherService;->pref:Landroid/content/SharedPreferences;

    const-string v1, "Radiochoice"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 120
    .local v9, "radioChoice":I
    const-string v0, "[WeatherService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPreferences unitStr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", radioChoice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    packed-switch v9, :pswitch_data_144

    .line 212
    invoke-direct {p0, v11}, Lcom/asus/weather/WeatherService;->broadcastIntentAction(I)V

    .line 215
    :goto_40
    return-void

    .line 128
    :pswitch_41
    :try_start_41
    invoke-virtual {p0}, Lcom/asus/weather/WeatherService;->isWiFiEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/asus/weather/WeatherService;->bIsWiFiEnabled:Z

    .line 129
    invoke-virtual {p0}, Lcom/asus/weather/WeatherService;->isGPSEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/asus/weather/WeatherService;->bIsGPSEnabled:Z

    .line 131
    iget-boolean v0, p0, Lcom/asus/weather/WeatherService;->bIsWiFiEnabled:Z

    if-nez v0, :cond_9e

    iget-boolean v0, p0, Lcom/asus/weather/WeatherService;->bIsGPSEnabled:Z

    if-nez v0, :cond_9e

    .line 133
    iget-object v0, p0, Lcom/asus/weather/WeatherService;->locationListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/asus/weather/WeatherService;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_67

    .line 135
    iget-object v0, p0, Lcom/asus/weather/WeatherService;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/asus/weather/WeatherService;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/weather/WeatherService;->locationListener:Landroid/location/LocationListener;

    .line 139
    :cond_67
    new-instance v7, Landroid/content/Intent;

    const-string v0, "com.asus.weather.weatherIntentAction"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    .local v7, "intent":Landroid/content/Intent;
    const-string v0, "CONTENT"

    const/4 v1, 0x3

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    const-string v0, "SHOWTOAST"

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 142
    invoke-virtual {p0, v7}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 144
    new-instance v8, Landroid/content/Intent;

    const-string v0, "com.asus.weather.weatherIntentAction"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    .local v8, "intent2":Landroid/content/Intent;
    const-string v0, "CONTENT"

    const/16 v1, 0xb

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0, v8}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_8e} :catch_8f

    goto :goto_40

    .line 195
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "intent2":Landroid/content/Intent;
    :catch_8f
    move-exception v6

    .line 197
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "[WeatherService]"

    const-string v1, "Auto update current location:Exception"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 199
    invoke-direct {p0, v11}, Lcom/asus/weather/WeatherService;->broadcastIntentAction(I)V

    goto :goto_40

    .line 151
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_9e
    :try_start_9e
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 153
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/asus/weather/WeatherService;->handler:Landroid/os/Handler;

    .line 154
    iget-object v0, p0, Lcom/asus/weather/WeatherService;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/weather/WeatherService;->timer:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 156
    iget-object v0, p0, Lcom/asus/weather/WeatherService;->locationListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_c7

    iget-object v0, p0, Lcom/asus/weather/WeatherService;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_c7

    .line 158
    iget-object v0, p0, Lcom/asus/weather/WeatherService;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/asus/weather/WeatherService;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/weather/WeatherService;->locationListener:Landroid/location/LocationListener;

    .line 161
    :cond_c7
    new-instance v0, Lcom/asus/weather/WeatherService$MyLocationListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/asus/weather/WeatherService$MyLocationListener;-><init>(Lcom/asus/weather/WeatherService;Lcom/asus/weather/WeatherService$1;)V

    iput-object v0, p0, Lcom/asus/weather/WeatherService;->locationListener:Landroid/location/LocationListener;

    .line 163
    iget-boolean v0, p0, Lcom/asus/weather/WeatherService;->bIsWiFiEnabled:Z

    if-eqz v0, :cond_10e

    .line 165
    const-string v0, "[WeatherService1]"

    const-string v1, "Auto update current location:LocationManager.NETWORK_PROVIDER"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/asus/weather/WeatherService;->locationListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_fa

    iget-object v0, p0, Lcom/asus/weather/WeatherService;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_fa

    .line 168
    const-string v0, "[WeatherService]"

    const-string v1, "Call requestLocationUpdates"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/asus/weather/WeatherService;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/asus/weather/WeatherService;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 192
    :cond_f5
    :goto_f5
    invoke-static {}, Landroid/os/Looper;->loop()V

    goto/16 :goto_40

    .line 173
    :cond_fa
    iget-object v0, p0, Lcom/asus/weather/WeatherService;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_106

    .line 175
    const-string v0, "[WeatherService]"

    const-string v1, "mLocationManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f5

    .line 179
    :cond_106
    const-string v0, "[WeatherService]"

    const-string v1, "locationListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f5

    .line 183
    :cond_10e
    iget-boolean v0, p0, Lcom/asus/weather/WeatherService;->bIsGPSEnabled:Z

    if-eqz v0, :cond_f5

    .line 185
    const-string v0, "[WeatherService1]"

    const-string v1, "Auto update current location:LocationManager.GPS_PROVIDER"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lcom/asus/weather/WeatherService;->locationListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_f5

    iget-object v0, p0, Lcom/asus/weather/WeatherService;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_f5

    .line 188
    iget-object v0, p0, Lcom/asus/weather/WeatherService;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/asus/weather/WeatherService;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_12d
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_12d} :catch_8f

    goto :goto_f5

    .line 206
    :pswitch_12e
    const-string v0, "[WeatherService]"

    const-string v1, "Manual search location"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/asus/weather/WeatherService;->pref:Landroid/content/SharedPreferences;

    const-string v1, "Manual_location"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v10}, Lcom/asus/weather/WeatherService;->loadFeed(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_40

    .line 122
    :pswitch_data_144
    .packed-switch 0x0
        :pswitch_41
        :pswitch_12e
    .end packed-switch
.end method

.method private doCityParser(Lcom/asus/weather/accuWeather/CityFeedParser;)V
    .registers 12
    .param p1, "parser"    # Lcom/asus/weather/accuWeather/CityFeedParser;

    .prologue
    const/4 v9, 0x7

    .line 269
    :try_start_1
    invoke-virtual {p1}, Lcom/asus/weather/accuWeather/CityFeedParser;->parse()Ljava/util/List;

    move-result-object v4

    .line 271
    .local v4, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/asus/weather/accuWeather/MessageCityFind;>;"
    if-nez v4, :cond_13

    .line 273
    const-string v6, "[WeatherService]"

    const-string v7, "List<MessageCityFind> messages is null"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/4 v6, 0x7

    invoke-direct {p0, v6}, Lcom/asus/weather/WeatherService;->broadcastIntentAction(I)V

    .line 311
    .end local v4    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/asus/weather/accuWeather/MessageCityFind;>;"
    :goto_12
    return-void

    .line 278
    .restart local v4    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/asus/weather/accuWeather/MessageCityFind;>;"
    :cond_13
    const-string v6, "content://com.asus.weather.revived.provider/cityfind"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 279
    .local v0, "CONTENT_URI":Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 280
    .local v2, "contentValue":Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 282
    .local v1, "content":Landroid/content/ContentResolver;
    const-string v6, ""

    const/4 v7, 0x0

    invoke-virtual {v1, v0, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 284
    const-string v6, "[WeatherService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "messages.size() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_71

    .line 287
    iget v6, p0, Lcom/asus/weather/WeatherService;->cityQueryByLocale:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/asus/weather/WeatherService;->cityQueryByLocale:I

    .line 288
    iget v6, p0, Lcom/asus/weather/WeatherService;->cityQueryByLocale:I

    sget-object v7, Lcom/asus/weather/P;->WEATHER_CITY_LANGID:[I

    array-length v7, v7

    if-ge v6, v7, :cond_71

    .line 290
    iget-object v6, p0, Lcom/asus/weather/WeatherService;->serviceIntent:Landroid/content/Intent;

    const-string v7, "CITYFIND"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/asus/weather/WeatherService;->loadFeed_cityfind(Ljava/lang/String;)V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_62} :catch_63

    goto :goto_12

    .line 306
    .end local v0    # "CONTENT_URI":Landroid/net/Uri;
    .end local v1    # "content":Landroid/content/ContentResolver;
    .end local v2    # "contentValue":Landroid/content/ContentValues;
    .end local v4    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/asus/weather/accuWeather/MessageCityFind;>;"
    :catch_63
    move-exception v5

    .line 308
    .local v5, "t":Ljava/lang/Throwable;
    const-string v6, "[WeatherService]"

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 309
    invoke-direct {p0, v9}, Lcom/asus/weather/WeatherService;->broadcastIntentAction(I)V

    goto :goto_12

    .line 295
    .end local v5    # "t":Ljava/lang/Throwable;
    .restart local v0    # "CONTENT_URI":Landroid/net/Uri;
    .restart local v1    # "content":Landroid/content/ContentResolver;
    .restart local v2    # "contentValue":Landroid/content/ContentValues;
    .restart local v4    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/asus/weather/accuWeather/MessageCityFind;>;"
    :cond_71
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_72
    :try_start_72
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_ba

    .line 297
    const-string v7, "city"

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/asus/weather/accuWeather/MessageCityFind;

    invoke-virtual {v6}, Lcom/asus/weather/accuWeather/MessageCityFind;->getCity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v7, "country"

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/asus/weather/accuWeather/MessageCityFind;

    invoke-virtual {v6}, Lcom/asus/weather/accuWeather/MessageCityFind;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v7, "adminArea"

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/asus/weather/accuWeather/MessageCityFind;

    invoke-virtual {v6}, Lcom/asus/weather/accuWeather/MessageCityFind;->getAdminArea()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v7, "location"

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/asus/weather/accuWeather/MessageCityFind;

    invoke-virtual {v6}, Lcom/asus/weather/accuWeather/MessageCityFind;->getLocation()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 295
    add-int/lit8 v3, v3, 0x1

    goto :goto_72

    .line 304
    :cond_ba
    const/4 v6, 0x6

    invoke-direct {p0, v6}, Lcom/asus/weather/WeatherService;->broadcastIntentAction(I)V
    :try_end_be
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_be} :catch_63

    goto/16 :goto_12
.end method

.method private doParser(Lcom/asus/weather/accuWeather/BaseFeedParser;)V
    .registers 7
    .param p1, "parser"    # Lcom/asus/weather/accuWeather/BaseFeedParser;

    .prologue
    const/4 v4, 0x3

    .line 317
    :try_start_1
    invoke-virtual {p1}, Lcom/asus/weather/accuWeather/BaseFeedParser;->parse()Ljava/util/List;

    move-result-object v0

    .line 318
    .local v0, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/asus/weather/accuWeather/Message;>;"
    if-nez v0, :cond_13

    .line 320
    const-string v2, "[WeatherService]"

    const-string v3, "List<Message> messages is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/asus/weather/WeatherService;->broadcastIntentAction(I)V

    .line 332
    .end local v0    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/asus/weather/accuWeather/Message;>;"
    :goto_12
    return-void

    .line 324
    .restart local v0    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/asus/weather/accuWeather/Message;>;"
    :cond_13
    invoke-virtual {p0, v0}, Lcom/asus/weather/WeatherService;->parseData(Ljava/util/List;)V

    .line 325
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/asus/weather/WeatherService;->broadcastIntentAction(I)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1a} :catch_1b

    goto :goto_12

    .line 327
    .end local v0    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/asus/weather/accuWeather/Message;>;"
    :catch_1b
    move-exception v1

    .line 329
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "[WeatherService]"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 330
    invoke-direct {p0, v4}, Lcom/asus/weather/WeatherService;->broadcastIntentAction(I)V

    goto :goto_12
.end method

.method private doParser(Lcom/asus/weather/accuWeather/BaseFeedParser;DD)V
    .registers 13
    .param p1, "parser"    # Lcom/asus/weather/accuWeather/BaseFeedParser;
    .param p2, "Lat"    # D
    .param p4, "Long"    # D

    .prologue
    const/4 v6, 0x3

    .line 338
    :try_start_1
    invoke-virtual {p1}, Lcom/asus/weather/accuWeather/BaseFeedParser;->parse()Ljava/util/List;

    move-result-object v1

    .line 340
    .local v1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/asus/weather/accuWeather/Message;>;"
    if-nez v1, :cond_13

    .line 342
    const-string v3, "[WeatherService]"

    const-string v4, "List<Message> messages is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/asus/weather/WeatherService;->broadcastIntentAction(I)V

    .line 376
    .end local v1    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/asus/weather/accuWeather/Message;>;"
    :goto_12
    return-void

    .line 347
    .restart local v1    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/asus/weather/accuWeather/Message;>;"
    :cond_13
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/asus/weather/WeatherService;->geocoder(DD)Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, "geoLocality":Ljava/lang/String;
    const-string v4, "[WeatherService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Countrycode in accu-weather:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v3}, Lcom/asus/weather/accuWeather/Message;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v3}, Lcom/asus/weather/accuWeather/Message;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TW"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_92

    .line 351
    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_86

    .line 353
    const-string v3, "[WeatherService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GeoLocality is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-virtual {p0, v1}, Lcom/asus/weather/WeatherService;->parseData(Ljava/util/List;)V

    .line 355
    invoke-virtual {p0, v0}, Lcom/asus/weather/WeatherService;->updateLocality(Ljava/lang/String;)V

    .line 356
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/asus/weather/WeatherService;->broadcastIntentAction(I)V
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_77} :catch_78

    goto :goto_12

    .line 371
    .end local v0    # "geoLocality":Ljava/lang/String;
    .end local v1    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/asus/weather/accuWeather/Message;>;"
    :catch_78
    move-exception v2

    .line 373
    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "[WeatherService]"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 374
    invoke-direct {p0, v6}, Lcom/asus/weather/WeatherService;->broadcastIntentAction(I)V

    goto :goto_12

    .line 360
    .end local v2    # "t":Ljava/lang/Throwable;
    .restart local v0    # "geoLocality":Ljava/lang/String;
    .restart local v1    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/asus/weather/accuWeather/Message;>;"
    :cond_86
    :try_start_86
    const-string v3, "[WeatherService]"

    const-string v4, "GeoCoder has something wrong"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/asus/weather/WeatherService;->broadcastIntentAction(I)V

    goto :goto_12

    .line 366
    :cond_92
    const-string v4, "[WeatherService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Country is:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v3}, Lcom/asus/weather/accuWeather/Message;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-virtual {p0, v1}, Lcom/asus/weather/WeatherService;->parseData(Ljava/util/List;)V

    .line 368
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/asus/weather/WeatherService;->broadcastIntentAction(I)V
    :try_end_bc
    .catch Ljava/lang/Throwable; {:try_start_86 .. :try_end_bc} :catch_78

    goto/16 :goto_12
.end method

.method public static getCurrentTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 590
    sget-object v0, Lcom/asus/weather/WeatherService;->timeContent:Landroid/content/ContentResolver;

    if-eqz v0, :cond_3a

    .line 592
    sget-object v0, Lcom/asus/weather/WeatherService;->timeContent:Landroid/content/ContentResolver;

    const-string v1, "time_12_24"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 593
    if-eqz v0, :cond_2e

    .line 595
    const-string v1, "24"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 597
    const-string v0, "[WeatherService]"

    const-string v1, "Time format is 24-hour"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    invoke-static {}, Lcom/asus/weather/WeatherService;->timeformat_24()Ljava/lang/String;

    move-result-object v0

    .line 612
    :goto_21
    return-object v0

    .line 602
    :cond_22
    const-string v0, "[WeatherService]"

    const-string v1, "Time format is 12-hour"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    invoke-static {}, Lcom/asus/weather/WeatherService;->timeformat_12()Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    .line 608
    :cond_2e
    const-string v0, "[WeatherService]"

    const-string v1, "Default time format is 12-hour"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    invoke-static {}, Lcom/asus/weather/WeatherService;->timeformat_12()Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    .line 612
    :cond_3a
    invoke-static {}, Lcom/asus/weather/WeatherService;->timeformat_12()Ljava/lang/String;

    move-result-object v0

    goto :goto_21
.end method

.method private static isNumeric(Ljava/lang/String;)Z
    .registers 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 643
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "i":I
    :cond_4
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1c

    .line 645
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_4

    .line 647
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_4

    .line 648
    const/4 v1, 0x0

    .line 651
    :goto_1b
    return v1

    :cond_1c
    const/4 v1, 0x1

    goto :goto_1b
.end method

.method private loadFeed(DDLjava/lang/String;)V
    .registers 13
    .param p1, "Lat"    # D
    .param p3, "Long"    # D
    .param p5, "unit"    # Ljava/lang/String;

    .prologue
    .line 249
    new-instance v0, Lcom/asus/weather/accuWeather/BaseFeedParser;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/asus/weather/accuWeather/BaseFeedParser;-><init>(DDLjava/lang/String;)V

    .local v0, "parser":Lcom/asus/weather/accuWeather/BaseFeedParser;
    move-object v1, p0

    move-object v2, v0

    move-wide v3, p1

    move-wide v5, p3

    .line 250
    invoke-direct/range {v1 .. v6}, Lcom/asus/weather/WeatherService;->doParser(Lcom/asus/weather/accuWeather/BaseFeedParser;DD)V

    .line 251
    return-void
.end method

.method private loadFeed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "strLocationId"    # Ljava/lang/String;
    .param p2, "unit"    # Ljava/lang/String;

    .prologue
    .line 255
    new-instance v0, Lcom/asus/weather/accuWeather/BaseFeedParser;

    invoke-direct {v0, p1, p2}, Lcom/asus/weather/accuWeather/BaseFeedParser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .local v0, "parser":Lcom/asus/weather/accuWeather/BaseFeedParser;
    invoke-direct {p0, v0}, Lcom/asus/weather/WeatherService;->doParser(Lcom/asus/weather/accuWeather/BaseFeedParser;)V

    .line 257
    return-void
.end method

.method private loadFeed_cityfind(Ljava/lang/String;)V
    .registers 5
    .param p1, "cityfind"    # Ljava/lang/String;

    .prologue
    .line 261
    new-instance v0, Lcom/asus/weather/accuWeather/CityFeedParser;

    sget-object v1, Lcom/asus/weather/P;->WEATHER_CITY_LANGID:[I

    iget v2, p0, Lcom/asus/weather/WeatherService;->cityQueryByLocale:I

    aget v1, v1, v2

    invoke-direct {v0, p1, v1}, Lcom/asus/weather/accuWeather/CityFeedParser;-><init>(Ljava/lang/String;I)V

    .line 262
    .local v0, "parser":Lcom/asus/weather/accuWeather/CityFeedParser;
    invoke-direct {p0, v0}, Lcom/asus/weather/WeatherService;->doCityParser(Lcom/asus/weather/accuWeather/CityFeedParser;)V

    .line 263
    return-void
.end method

.method public static timeformat_12()Ljava/lang/String;
    .registers 5

    .prologue
    .line 617
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 618
    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 619
    const-string v0, "%H"

    invoke-virtual {v2, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 620
    const-string v0, ""

    .line 621
    const/16 v0, 0xc

    if-lt v1, v0, :cond_4c

    .line 623
    add-int/lit8 v1, v1, -0xc

    .line 624
    const-string v0, "PM"

    .line 631
    :goto_1c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%Y/%m/%d "

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":%M:%S"

    invoke-virtual {v2, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 628
    :cond_4c
    const-string v0, "AM"

    goto :goto_1c
.end method

.method public static timeformat_24()Ljava/lang/String;
    .registers 2

    .prologue
    .line 636
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 637
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 638
    const-string v1, "%Y/%m/%d %H:%M:%S"

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private transformWindDirection(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "strWindDirection"    # Ljava/lang/String;

    .prologue
    .line 656
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/asus/weather/P;->WEATHER_DIRECTION_DOUBLE:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_20

    .line 658
    sget-object v1, Lcom/asus/weather/P;->WEATHER_DIRECTION_DOUBLE:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 660
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/asus/weather/P;->WEATHER_DIRECTION_RESOURCE:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 664
    :goto_1c
    return-object v1

    .line 656
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 664
    :cond_20
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/asus/weather/P;->WEATHER_DIRECTION_RESOURCE:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1c
.end method


# virtual methods
.method public geocoder(DD)Ljava/lang/String;
    .registers 13

    .prologue
    .line 477
    .line 478
    new-instance v0, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 480
    const-string v7, ""

    .line 481
    const-string v6, ""

    .line 484
    if-eqz v0, :cond_cd

    .line 486
    const/4 v5, 0x1

    move-wide v1, p1

    move-wide v3, p3

    :try_start_12
    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v4

    .line 487
    if-eqz v4, :cond_a8

    .line 489
    const-string v0, "[WeatherService]"

    const-string v1, "Geocoder list is NOT null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const/4 v0, 0x0

    move v1, v0

    move-object v2, v6

    move-object v0, v7

    :goto_23
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_64

    .line 493
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    .line 494
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v3

    .line 495
    const-string v0, "[WeatherService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CountryCode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " locality:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v3

    goto :goto_23

    .line 498
    :cond_64
    const-string v1, "TW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 500
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a5

    .line 502
    const-string v1, "[WeatherService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Country code is TW and locality is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :goto_8c
    return-object v0

    .line 508
    :cond_8d
    const-string v0, "[WeatherService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Country code is :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_a5} :catch_b0

    .line 526
    :cond_a5
    :goto_a5
    const-string v0, ""

    goto :goto_8c

    .line 513
    :cond_a8
    :try_start_a8
    const-string v0, "[WeatherService]"

    const-string v1, "Geocoder list is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_af} :catch_b0

    goto :goto_a5

    .line 522
    :catch_b0
    move-exception v0

    .line 523
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 524
    const-string v1, "[WeatherService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Geocoder Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a5

    .line 519
    :cond_cd
    :try_start_cd
    const-string v0, "[WeatherService]"

    const-string v1, "Geocoder geo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d4
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_d4} :catch_b0

    goto :goto_a5
.end method

.method public isGPSEnabled()Z
    .registers 3

    .prologue
    .line 548
    iget-object v0, p0, Lcom/asus/weather/WeatherService;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isWiFiEnabled()Z
    .registers 3

    .prologue
    .line 553
    iget-object v0, p0, Lcom/asus/weather/WeatherService;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 2

    .prologue
    .line 58
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 59
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/asus/weather/WeatherService;->timeContent:Landroid/content/ContentResolver;

    .line 60
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 71
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 72
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 49
    iput-object p1, p0, Lcom/asus/weather/WeatherService;->serviceIntent:Landroid/content/Intent;

    .line 50
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/asus/weather/WeatherService;->counts:I

    .line 52
    invoke-direct {p0}, Lcom/asus/weather/WeatherService;->_startService()V

    .line 53
    return-void
.end method

.method public parseData(Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/asus/weather/accuWeather/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/asus/weather/accuWeather/Message;>;"
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 380
    const-string v5, "[WeatherService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WeatherService [cityname]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getCity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const-string v5, "[WeatherService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WeatherService [weathertext]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getWeathertext()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const-string v5, "[WeatherService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WeatherService [temperature]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getTemperature()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const-string v5, "[WeatherService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WeatherService [weathericon]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getWeathericon()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const-string v5, "[WeatherService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WeatherService [tempunits]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getUnits_temp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const-string v5, "[WeatherService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WeatherService [speedunits]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getUnits_speed()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const-string v5, "[WeatherService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WeatherService [day0]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getDay()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const-string v5, "[WeatherService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WeatherService [day1]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getDay()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const-string v5, "[WeatherService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WeatherService [day2]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getDay()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const-string v5, "[WeatherService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WeatherService [day3]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getDay()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const-string v5, "[WeatherService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WeatherService [day4]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getDay()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const-string v5, "[WeatherService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WeatherService [sunrise0]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getSunrise()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const-string v5, "[WeatherService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WeatherService [sunrise1]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getSunrise()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const-string v5, "[WeatherService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WeatherService [sunrise2]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getSunrise()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const-string v5, "[WeatherService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WeatherService [sunrise3]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getSunrise()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const-string v5, "[WeatherService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WeatherService [sunrise4]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getSunrise()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const-string v5, "[WeatherService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WeatherService [sunset0]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getSunset()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const-string v5, "[WeatherService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WeatherService [sunset1]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getSunset()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const-string v5, "[WeatherService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WeatherService [sunset2]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getSunset()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const-string v5, "[WeatherService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WeatherService [sunset3]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getSunset()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const-string v5, "[WeatherService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WeatherService [sunset4]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getSunset()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const-string v4, "content://com.asus.weather.revived.provider/weather/1"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 407
    .local v0, "CONTENT_URI":Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 408
    .local v2, "contentValue":Landroid/content/ContentValues;
    const-string v5, "cityname"

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getCity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string v5, "currenttime"

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getCurrentTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string v5, "weathertext"

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getWeathertext()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string v5, "temperature"

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getTemperature()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string v5, "realfeel"

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getRealfeel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string v5, "windspeed"

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getWindspeed()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getWinddirection()Ljava/lang/String;

    move-result-object v3

    .line 416
    .local v3, "strWinddirection":Ljava/lang/String;
    invoke-static {v3}, Lcom/asus/weather/WeatherService;->isNumeric(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_348

    .line 418
    invoke-direct {p0, v3}, Lcom/asus/weather/WeatherService;->transformWindDirection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 420
    :cond_348
    const-string v4, "winddirection"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string v5, "humidity"

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getHumidity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string v5, "weathericon"

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getWeathericon()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const-string v5, "url"

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string v4, "tempunits"

    iget-object v5, p0, Lcom/asus/weather/WeatherService;->pref:Landroid/content/SharedPreferences;

    const-string v6, "UnitSpinner"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const-string v5, "speedunits"

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getUnits_speed()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const-string v5, "day0"

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getDay()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const-string v5, "day1"

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getDay()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const-string v5, "day2"

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getDay()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string v5, "day3"

    invoke-interface {p1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getDay()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const-string v5, "day4"

    invoke-interface {p1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getDay()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const-string v5, "sunrise0"

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getSunrise()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const-string v5, "sunrise1"

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getSunrise()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string v5, "sunrise2"

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getSunrise()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const-string v5, "sunrise3"

    invoke-interface {p1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getSunrise()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const-string v5, "sunrise4"

    invoke-interface {p1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getSunrise()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const-string v5, "sunset0"

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getSunset()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const-string v5, "sunset1"

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getSunset()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string v5, "sunset2"

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getSunset()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string v5, "sunset3"

    invoke-interface {p1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getSunset()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const-string v5, "sunset4"

    invoke-interface {p1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getSunset()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const-string v5, "hightemp_day0"

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getFC_Day_HighTemp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const-string v5, "hightemp_day1"

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getFC_Day_HighTemp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const-string v5, "hightemp_day2"

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getFC_Day_HighTemp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const-string v5, "hightemp_day3"

    invoke-interface {p1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getFC_Day_HighTemp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const-string v5, "hightemp_day4"

    invoke-interface {p1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getFC_Day_HighTemp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const-string v5, "lowtemp_day0"

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getFC_Day_LowTemp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const-string v5, "lowtemp_day1"

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getFC_Day_LowTemp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const-string v5, "lowtemp_day2"

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getFC_Day_LowTemp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const-string v5, "lowtemp_day3"

    invoke-interface {p1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getFC_Day_LowTemp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const-string v5, "lowtemp_day4"

    invoke-interface {p1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getFC_Day_LowTemp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const-string v5, "hightemp_night0"

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getFC_Night_HighTemp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const-string v5, "hightemp_night1"

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getFC_Night_HighTemp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string v5, "hightemp_night2"

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getFC_Night_HighTemp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const-string v5, "hightemp_night3"

    invoke-interface {p1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getFC_Night_HighTemp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const-string v5, "hightemp_night4"

    invoke-interface {p1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getFC_Night_HighTemp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const-string v5, "lowtemp_night0"

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getFC_Night_LowTemp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const-string v5, "lowtemp_night1"

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getFC_Night_LowTemp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const-string v5, "lowtemp_night2"

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getFC_Night_LowTemp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string v5, "lowtemp_night3"

    invoke-interface {p1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getFC_Night_LowTemp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const-string v5, "lowtemp_night4"

    invoke-interface {p1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getFC_Night_LowTemp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const-string v5, "icon_day1"

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getFC_Day_WeatherIcon()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const-string v5, "icon_day2"

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getFC_Day_WeatherIcon()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const-string v5, "icon_day3"

    invoke-interface {p1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getFC_Day_WeatherIcon()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const-string v5, "icon_day4"

    invoke-interface {p1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getFC_Day_WeatherIcon()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const-string v5, "icon_night1"

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getFC_Night_WeatherIcon()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const-string v5, "icon_night2"

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getFC_Night_WeatherIcon()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    const-string v5, "icon_night3"

    invoke-interface {p1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getFC_Night_WeatherIcon()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const-string v5, "icon_night4"

    invoke-interface {p1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v4}, Lcom/asus/weather/accuWeather/Message;->getFC_Night_WeatherIcon()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const-string v4, "lastupdate"

    invoke-static {}, Lcom/asus/weather/WeatherService;->getCurrentTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const-string v4, "elapsedtime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 471
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 472
    .local v1, "content":Landroid/content/ContentResolver;
    const-string v4, "_id=1"

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 473
    return-void
.end method

.method public updateLocality(Ljava/lang/String;)V
    .registers 8
    .param p1, "locality"    # Ljava/lang/String;

    .prologue
    .line 531
    const-string v3, "content://com.asus.weather.revived.provider/weather/1"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 532
    .local v0, "CONTENT_URI":Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 533
    .local v2, "contentValue":Landroid/content/ContentValues;
    const-string v3, "cityname"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 535
    .local v1, "content":Landroid/content/ContentResolver;
    const-string v3, "_id=1"

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 536
    const-string v3, "[WeatherService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Country code is TW and locality is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    return-void
.end method
