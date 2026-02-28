.class public Lcom/asus/weather/P;
.super Ljava/lang/Object;
.source "P.java"


# static fields
.field static final PREF_FREQLIST:[I

.field public static final PREF_UNITLIST:[Ljava/lang/String;

.field static final WEATHER_CITY_LANGID:[I

.field static final WEATHER_DIRECTION_DOUBLE:[Ljava/lang/String;

.field static final WEATHER_DIRECTION_RESOURCE:[I

.field static final WEATHER_DIRECTION_STRING:[Ljava/lang/String;

.field static final WEATHER_QUERY_COLUMNS:[Ljava/lang/String;

.field static final WEATHER_QUERY_COLUMNS2:[Ljava/lang/String;

.field static final WEATHER_QUERY_COLUMNS3:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_26c

    sput-object v0, Lcom/asus/weather/P;->PREF_FREQLIST:[I

    .line 34
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "C"

    aput-object v1, v0, v3

    const-string v1, "F"

    aput-object v1, v0, v4

    sput-object v0, Lcom/asus/weather/P;->PREF_UNITLIST:[Ljava/lang/String;

    .line 41
    const/16 v0, 0x3c

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "cityname"

    aput-object v1, v0, v4

    const-string v1, "countrycode"

    aput-object v1, v0, v5

    const-string v1, "currenttime"

    aput-object v1, v0, v6

    const-string v1, "weathertext"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "tempunits"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "temperature"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "realfeel"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "humidity"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "windspeed"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "winddirection"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "speedunits"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "weathericon"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "url"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "day0"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "day1"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "day2"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "day3"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "day4"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "sunrise0"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "sunrise1"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "sunrise2"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "sunrise3"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "sunrise4"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "sunset0"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "sunset1"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "sunset2"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "sunset3"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "sunset4"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "hightemp_day0"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "hightemp_day1"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "hightemp_day2"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "hightemp_day3"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "hightemp_day4"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "lowtemp_day0"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "lowtemp_day1"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "lowtemp_day2"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "lowtemp_day3"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "lowtemp_day4"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "hightemp_night0"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "hightemp_night1"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "hightemp_night2"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "hightemp_night3"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "hightemp_night4"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "lowtemp_night0"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "lowtemp_night1"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "lowtemp_night2"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "lowtemp_night3"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "lowtemp_night4"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "icon_day1"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "icon_day2"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "icon_day3"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "icon_day4"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "icon_night1"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "icon_night2"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "icon_night3"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "icon_night4"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "showinterval"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "elapsedtime"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "lastupdate"

    aput-object v2, v0, v1

    sput-object v0, Lcom/asus/weather/P;->WEATHER_QUERY_COLUMNS:[Ljava/lang/String;

    .line 43
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "city"

    aput-object v1, v0, v4

    const-string v1, "country"

    aput-object v1, v0, v5

    const-string v1, "adminArea"

    aput-object v1, v0, v6

    const-string v1, "location"

    aput-object v1, v0, v7

    sput-object v0, Lcom/asus/weather/P;->WEATHER_QUERY_COLUMNS2:[Ljava/lang/String;

    .line 46
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "widgetid"

    aput-object v1, v0, v4

    const-string v1, "Hspan"

    aput-object v1, v0, v5

    const-string v1, "Vspan"

    aput-object v1, v0, v6

    sput-object v0, Lcom/asus/weather/P;->WEATHER_QUERY_COLUMNS3:[Ljava/lang/String;

    .line 48
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "N"

    aput-object v1, v0, v3

    const-string v1, "NNE"

    aput-object v1, v0, v4

    const-string v1, "NE"

    aput-object v1, v0, v5

    const-string v1, "ENE"

    aput-object v1, v0, v6

    const-string v1, "E"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "ESE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "SE"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "SSE"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "SSW"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "SW"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "WSW"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "WNW"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "NW"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "NNW"

    aput-object v2, v0, v1

    sput-object v0, Lcom/asus/weather/P;->WEATHER_DIRECTION_STRING:[Ljava/lang/String;

    .line 51
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v0, v3

    const-string v1, "22.5"

    aput-object v1, v0, v4

    const-string v1, "45"

    aput-object v1, v0, v5

    const-string v1, "67.5"

    aput-object v1, v0, v6

    const-string v1, "90"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "112.5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "135"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "157.5"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "180"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "202.5"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "225"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "247.5"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "270"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "292.5"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "315"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "337.5"

    aput-object v2, v0, v1

    sput-object v0, Lcom/asus/weather/P;->WEATHER_DIRECTION_DOUBLE:[Ljava/lang/String;

    .line 54
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_27c

    sput-object v0, Lcom/asus/weather/P;->WEATHER_DIRECTION_RESOURCE:[I

    .line 61
    const/16 v0, 0x19

    new-array v0, v0, [I

    fill-array-data v0, :array_2a0

    sput-object v0, Lcom/asus/weather/P;->WEATHER_CITY_LANGID:[I

    return-void

    .line 33
    :array_26c
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0xc
        0x3e8
    .end array-data

    .line 54
    :array_27c
    .array-data 4
        0x7f06000d
        0x7f06000e
        0x7f06000f
        0x7f060010
        0x7f060011
        0x7f060012
        0x7f060013
        0x7f060014
        0x7f060015
        0x7f060016
        0x7f060017
        0x7f060018
        0x7f060019
        0x7f06001a
        0x7f06001b
        0x7f06001c
    .end array-data

    .line 61
    :array_2a0
    .array-data 4
        0x0
        0x1
        0x1c
        0x3
        0x8
        0x9
        0xe
        0xd
        0x19
        0x2
        0x6
        0x5
        0x17
        0x13
        0xa
        0x7
        0x4
        0x15
        0x1d
        0x14
        0x11
        0x21
        0x1f
        0x1a
        0x1b
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
