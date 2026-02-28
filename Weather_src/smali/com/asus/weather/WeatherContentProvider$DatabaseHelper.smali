.class Lcom/asus/weather/WeatherContentProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "WeatherContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/weather/WeatherContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const-string v0, "weather.db"

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 43
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 50
    :try_start_0
    const-string v3, "CREATE TABLE weather (_id INTEGER PRIMARY KEY,cityname TEXT, countrycode TEXT, currenttime TEXT, weathertext TEXT, tempunits TEXT, temperature TEXT, realfeel TEXT, humidity TEXT, windspeed TEXT, winddirection TEXT, speedunits TEXT, weathericon TEXT, url TEXT, day0 TEXT, day1 TEXT, day2 TEXT, day3 TEXT, day4 TEXT, sunrise0 TEXT, sunrise1 TEXT, sunrise2 TEXT, sunrise3 TEXT, sunrise4 TEXT, sunset0 TEXT, sunset1 TEXT, sunset2 TEXT, sunset3 TEXT, sunset4 TEXT, hightemp_day0 TEXT, hightemp_day1 TEXT, hightemp_day2 TEXT, hightemp_day3 TEXT, hightemp_day4 TEXT, lowtemp_day0 TEXT, lowtemp_day1 TEXT, lowtemp_day2 TEXT, lowtemp_day3 TEXT, lowtemp_day4 TEXT, hightemp_night0 TEXT, hightemp_night1 TEXT, hightemp_night2 TEXT, hightemp_night3 TEXT, hightemp_night4 TEXT, lowtemp_night0 TEXT, lowtemp_night1 TEXT, lowtemp_night2 TEXT, lowtemp_night3 TEXT, lowtemp_night4 TEXT, icon_day1 TEXT, icon_day2 TEXT, icon_day3 TEXT, icon_day4 TEXT, icon_night1 TEXT, icon_night2 TEXT, icon_night3 TEXT, icon_night4 TEXT, showinterval TEXT, elapsedtime BIGINT, lastupdate TEXT);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 112
    const-string v3, "CREATE TABLE cityfind (_id INTEGER PRIMARY KEY,city TEXT, country TEXT, adminArea TEXT, location TEXT);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 118
    const-string v3, "CREATE TABLE widgetidlist (_id INTEGER PRIMARY KEY,widgetid INTEGER, Hspan INTEGER, Vspan INTEGER);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_f} :catch_40

    .line 129
    :goto_f
    const-string v1, "INSERT INTO weather (cityname, countrycode, currenttime, weathertext, tempunits, temperature, realfeel, humidity, windspeed, winddirection, speedunits, weathericon, url, day0, day1, day2, day3, day4, sunrise0, sunrise1, sunrise2, sunrise3, sunrise4, sunset0, sunset1, sunset2, sunset3, sunset4, hightemp_day0, hightemp_day1, hightemp_day2, hightemp_day3, hightemp_day4, lowtemp_day0, lowtemp_day1, lowtemp_day2, lowtemp_day3, lowtemp_day4, hightemp_night0,hightemp_night1, hightemp_night2, hightemp_night3, hightemp_night4, lowtemp_night0, lowtemp_night1, lowtemp_night2, lowtemp_night3, lowtemp_night4, icon_day1, icon_day2, icon_day3, icon_day4, icon_night1, icon_night2, icon_night3, icon_night4, showinterval, elapsedtime, lastupdate) VALUES "

    .line 136
    .local v1, "insertData":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(\'null\', \'null\', \'null\', \'null\', \'null\', \'0\', \'0\', \'null\', \'0\', \'null\', \'null\', \'0\', \'null\', \'null\', \'null\', \'null\', \'null\', \'null\', \'null\', \'null\', \'null\',\'null\', \'null\', \'null\', \'null\', \'null\', \'null\', \'null\', \'null\', \'null\', \'null\', \'null\', \'null\', \'null\', \'null\', \'null\', \'null\', \'null\', \'null\', \'null\', \'null\', \'null\', \'null\', \'null\', \'null\', \'null\', \'null\', \'null\', \'null\', \'null\', \'null\', \'null\', \'null\', \'null\', \'null\', \'null\' , \'0\', 0, \'2010/1/1 AM 0:0:0\')"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 144
    const-string v2, "INSERT INTO cityfind (city, country, adminArea, location) VALUES "

    .line 147
    .local v2, "insertData2":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(\'null\', \'null\', \'null\', \'null\');"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 148
    return-void

    .line 124
    .end local v1    # "insertData":Ljava/lang/String;
    .end local v2    # "insertData2":Ljava/lang/String;
    :catch_40
    move-exception v0

    .line 126
    .local v0, "e":Landroid/database/SQLException;
    const-string v3, "[WeatherServiceProvider]"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 153
    const-string v0, "[WeatherServiceProvider]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-string v0, "DROP TABLE IF EXISTS weather"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 156
    const-string v0, "DROP TABLE IF EXISTS cityfind"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 157
    const-string v0, "DROP TABLE IF EXISTS widgetidlist"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0, p1}, Lcom/asus/weather/WeatherContentProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 159
    return-void
.end method
