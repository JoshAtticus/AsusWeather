.class public Lcom/asus/weather/accuWeather/BaseFeedParser;
.super Ljava/lang/Object;
.source "BaseFeedParser.java"


# static fields
.field static final WEATHER_QUERY_LOCALE:[Ljava/lang/String;

.field static feedUrlString:Ljava/lang/String;

.field static nameSpaceString:Ljava/lang/String;


# instance fields
.field private final feedUrl:Ljava/net/URL;

.field index:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 23
    const-string v0, "http://asusweather.joshattic.us/widget/asus1/weather-data.asp?slat=25.119759&slon=121.502094&metric=1&langId=1"

    sput-object v0, Lcom/asus/weather/accuWeather/BaseFeedParser;->feedUrlString:Ljava/lang/String;

    .line 24
    const-string v0, "http://www.accuweather.com"

    sput-object v0, Lcom/asus/weather/accuWeather/BaseFeedParser;->nameSpaceString:Ljava/lang/String;

    .line 26
    const/16 v0, 0x22

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "en"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "es"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "fr"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "da"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "pt"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "nl"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "nb"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "it"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "de"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "sv"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "fi"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "en"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "zh"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "zh"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "en"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "en"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "sk"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "ro"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "cs"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "hu"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "pl"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "en"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "en"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "en"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "ru"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "ar"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "el"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "en"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "ja"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "ko"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "tr"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "fr"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "iw"

    aput-object v2, v0, v1

    sput-object v0, Lcom/asus/weather/accuWeather/BaseFeedParser;->WEATHER_QUERY_LOCALE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const/4 v1, -0x1

    iput v1, p0, Lcom/asus/weather/accuWeather/BaseFeedParser;->index:I

    .line 71
    :try_start_6
    new-instance v1, Ljava/net/URL;

    sget-object v2, Lcom/asus/weather/accuWeather/BaseFeedParser;->feedUrlString:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/asus/weather/accuWeather/BaseFeedParser;->feedUrl:Ljava/net/URL;
    :try_end_f
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_f} :catch_10

    .line 77
    return-void

    .line 73
    :catch_10
    move-exception v0

    .line 75
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(DDLjava/lang/String;)V
    .registers 16
    .param p1, "Lat"    # D
    .param p3, "Long"    # D
    .param p5, "unit"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const-wide v7, 0x3f747ae147ae147bL    # 0.005

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const/4 v4, -0x1

    iput v4, p0, Lcom/asus/weather/accuWeather/BaseFeedParser;->index:I

    .line 81
    const-string v4, "[BaseFeedParser]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lat_old:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "long_old:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    add-double/2addr p1, v7

    .line 83
    add-double/2addr p3, v7

    .line 85
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "strLat":Ljava/lang/String;
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "strLong":Ljava/lang/String;
    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    invoke-virtual {v1, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 88
    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    invoke-virtual {v2, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 90
    const-string v4, "[BaseFeedParser]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lat_new:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "long_new:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 v3, 0x0

    .line 93
    .local v3, "unit_code":I
    const-string v4, "C"

    invoke-virtual {p5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 95
    const/4 v3, 0x1

    .line 100
    :cond_7c
    :try_start_7c
    new-instance v4, Ljava/net/URL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://asusweather.joshattic.us/widget/asus1/weather-data.asp?slat="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&slon="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&metric="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&langId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/asus/weather/accuWeather/BaseFeedParser;->localeMappingLangId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/asus/weather/accuWeather/BaseFeedParser;->feedUrl:Ljava/net/URL;

    .line 101
    const-string v4, "[BaseFeedParser]"

    iget-object v5, p0, Lcom/asus/weather/accuWeather/BaseFeedParser;->feedUrl:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c3
    .catch Ljava/net/MalformedURLException; {:try_start_7c .. :try_end_c3} :catch_c4

    .line 107
    return-void

    .line 103
    :catch_c4
    move-exception v0

    .line 105
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "strLocationId"    # Ljava/lang/String;
    .param p2, "unit"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const/4 v2, -0x1

    iput v2, p0, Lcom/asus/weather/accuWeather/BaseFeedParser;->index:I

    .line 111
    const/4 v1, 0x0

    .line 112
    .local v1, "unit_code":I
    const-string v2, "C"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 114
    const/4 v1, 0x1

    .line 119
    :cond_10
    :try_start_10
    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://asusweather.joshattic.us/widget/asus1/weather-data.asp?location="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&metric="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&langId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/asus/weather/accuWeather/BaseFeedParser;->localeMappingLangId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/asus/weather/accuWeather/BaseFeedParser;->feedUrl:Ljava/net/URL;

    .line 120
    const-string v2, "[BaseFeedParser]"

    iget-object v3, p0, Lcom/asus/weather/accuWeather/BaseFeedParser;->feedUrl:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Ljava/net/MalformedURLException; {:try_start_10 .. :try_end_4d} :catch_4e

    .line 126
    return-void

    .line 122
    :catch_4e
    move-exception v0

    .line 124
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static localeMappingLangId()I
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 421
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 422
    .local v0, "defaultLocale":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 423
    .local v3, "strLocaleLanguage":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 425
    .local v2, "strLocaleCountry":Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_e
    sget-object v5, Lcom/asus/weather/accuWeather/BaseFeedParser;->WEATHER_QUERY_LOCALE:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_4a

    .line 427
    sget-object v5, Lcom/asus/weather/accuWeather/BaseFeedParser;->WEATHER_QUERY_LOCALE:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 429
    if-ne v1, v4, :cond_2a

    .line 431
    const-string v4, "GB"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 432
    const/16 v1, 0x1c

    .line 449
    .end local v1    # "i":I
    :cond_29
    :goto_29
    return v1

    .line 434
    .restart local v1    # "i":I
    :cond_2a
    const/4 v4, 0x3

    if-ne v1, v4, :cond_38

    .line 436
    const-string v4, "CA"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 437
    const/16 v1, 0x20

    goto :goto_29

    .line 439
    :cond_38
    const/16 v4, 0xd

    if-ne v1, v4, :cond_29

    .line 441
    const-string v4, "TW"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 442
    const/16 v1, 0xe

    goto :goto_29

    .line 425
    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_4a
    move v1, v4

    .line 449
    goto :goto_29
.end method


# virtual methods
.method protected getInputStream()Ljava/io/InputStream;
    .registers 5

    .prologue
    .line 132
    :try_start_0
    iget-object v2, p0, Lcom/asus/weather/accuWeather/BaseFeedParser;->feedUrl:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 133
    .local v1, "urlCon":Ljava/net/HttpURLConnection;
    const/16 v2, 0x7530

    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 134
    const/16 v2, 0x7530

    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 135
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1f

    .line 137
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    return-object v2

    .line 141
    :cond_1f
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "[Warning] Network is not connected."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_27
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_27} :catch_27
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_27} :catch_2e

    .line 144
    .end local v1    # "urlCon":Ljava/net/HttpURLConnection;
    :catch_27
    move-exception v0

    .line 146
    .local v0, "e":Ljava/net/SocketTimeoutException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 148
    .end local v0    # "e":Ljava/net/SocketTimeoutException;
    :catch_2e
    move-exception v0

    .line 150
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public parse()Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/asus/weather/accuWeather/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    new-instance v0, Lcom/asus/weather/accuWeather/Message;

    invoke-direct {v0}, Lcom/asus/weather/accuWeather/Message;-><init>()V

    .line 158
    .local v0, "currentMessage":Lcom/asus/weather/accuWeather/Message;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v10, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/asus/weather/accuWeather/Message;>;"
    new-instance v11, Landroid/sax/RootElement;

    sget-object v12, Lcom/asus/weather/accuWeather/BaseFeedParser;->nameSpaceString:Ljava/lang/String;

    const-string v13, "adc_database"

    invoke-direct {v11, v12, v13}, Landroid/sax/RootElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .local v11, "root":Landroid/sax/RootElement;
    sget-object v12, Lcom/asus/weather/accuWeather/BaseFeedParser;->nameSpaceString:Ljava/lang/String;

    const-string v13, "units"

    invoke-virtual {v11, v12, v13}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    .line 162
    .local v2, "itemlist2_1":Landroid/sax/Element;
    new-instance v12, Lcom/asus/weather/accuWeather/BaseFeedParser$1;

    invoke-direct {v12, p0, v10, v0}, Lcom/asus/weather/accuWeather/BaseFeedParser$1;-><init>(Lcom/asus/weather/accuWeather/BaseFeedParser;Ljava/util/List;Lcom/asus/weather/accuWeather/Message;)V

    invoke-virtual {v2, v12}, Landroid/sax/Element;->setEndElementListener(Landroid/sax/EndElementListener;)V

    .line 173
    sget-object v12, Lcom/asus/weather/accuWeather/BaseFeedParser;->nameSpaceString:Ljava/lang/String;

    const-string v13, "temp"

    invoke-virtual {v2, v12, v13}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v12

    new-instance v13, Lcom/asus/weather/accuWeather/BaseFeedParser$2;

    invoke-direct {v13, p0, v0}, Lcom/asus/weather/accuWeather/BaseFeedParser$2;-><init>(Lcom/asus/weather/accuWeather/BaseFeedParser;Lcom/asus/weather/accuWeather/Message;)V

    invoke-virtual {v12, v13}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 181
    sget-object v12, Lcom/asus/weather/accuWeather/BaseFeedParser;->nameSpaceString:Ljava/lang/String;

    const-string v13, "speed"

    invoke-virtual {v2, v12, v13}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v12

    new-instance v13, Lcom/asus/weather/accuWeather/BaseFeedParser$3;

    invoke-direct {v13, p0, v0}, Lcom/asus/weather/accuWeather/BaseFeedParser$3;-><init>(Lcom/asus/weather/accuWeather/BaseFeedParser;Lcom/asus/weather/accuWeather/Message;)V

    invoke-virtual {v12, v13}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 189
    sget-object v12, Lcom/asus/weather/accuWeather/BaseFeedParser;->nameSpaceString:Ljava/lang/String;

    const-string v13, "local"

    invoke-virtual {v11, v12, v13}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v3

    .line 191
    .local v3, "itemlist2_2":Landroid/sax/Element;
    new-instance v12, Lcom/asus/weather/accuWeather/BaseFeedParser$4;

    invoke-direct {v12, p0, v10, v0}, Lcom/asus/weather/accuWeather/BaseFeedParser$4;-><init>(Lcom/asus/weather/accuWeather/BaseFeedParser;Ljava/util/List;Lcom/asus/weather/accuWeather/Message;)V

    invoke-virtual {v3, v12}, Landroid/sax/Element;->setEndElementListener(Landroid/sax/EndElementListener;)V

    .line 200
    sget-object v12, Lcom/asus/weather/accuWeather/BaseFeedParser;->nameSpaceString:Ljava/lang/String;

    const-string v13, "city"

    invoke-virtual {v3, v12, v13}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v12

    new-instance v13, Lcom/asus/weather/accuWeather/BaseFeedParser$5;

    invoke-direct {v13, p0, v0}, Lcom/asus/weather/accuWeather/BaseFeedParser$5;-><init>(Lcom/asus/weather/accuWeather/BaseFeedParser;Lcom/asus/weather/accuWeather/Message;)V

    invoke-virtual {v12, v13}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 207
    sget-object v12, Lcom/asus/weather/accuWeather/BaseFeedParser;->nameSpaceString:Ljava/lang/String;

    const-string v13, "time"

    invoke-virtual {v3, v12, v13}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v12

    new-instance v13, Lcom/asus/weather/accuWeather/BaseFeedParser$6;

    invoke-direct {v13, p0, v0}, Lcom/asus/weather/accuWeather/BaseFeedParser$6;-><init>(Lcom/asus/weather/accuWeather/BaseFeedParser;Lcom/asus/weather/accuWeather/Message;)V

    invoke-virtual {v12, v13}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 215
    sget-object v12, Lcom/asus/weather/accuWeather/BaseFeedParser;->nameSpaceString:Ljava/lang/String;

    const-string v13, "country"

    invoke-virtual {v3, v12, v13}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v4

    .line 217
    .local v4, "itemlist2_2_1":Landroid/sax/Element;
    new-instance v12, Lcom/asus/weather/accuWeather/BaseFeedParser$7;

    invoke-direct {v12, p0, v10}, Lcom/asus/weather/accuWeather/BaseFeedParser$7;-><init>(Lcom/asus/weather/accuWeather/BaseFeedParser;Ljava/util/List;)V

    invoke-virtual {v4, v12}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 226
    sget-object v12, Lcom/asus/weather/accuWeather/BaseFeedParser;->nameSpaceString:Ljava/lang/String;

    const-string v13, "currentconditions"

    invoke-virtual {v11, v12, v13}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v5

    .line 227
    .local v5, "itemlist2_3":Landroid/sax/Element;
    new-instance v12, Lcom/asus/weather/accuWeather/BaseFeedParser$8;

    invoke-direct {v12, p0, v10, v0}, Lcom/asus/weather/accuWeather/BaseFeedParser$8;-><init>(Lcom/asus/weather/accuWeather/BaseFeedParser;Ljava/util/List;Lcom/asus/weather/accuWeather/Message;)V

    invoke-virtual {v5, v12}, Landroid/sax/Element;->setEndElementListener(Landroid/sax/EndElementListener;)V

    .line 242
    sget-object v12, Lcom/asus/weather/accuWeather/BaseFeedParser;->nameSpaceString:Ljava/lang/String;

    const-string v13, "temperature"

    invoke-virtual {v5, v12, v13}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v12

    new-instance v13, Lcom/asus/weather/accuWeather/BaseFeedParser$9;

    invoke-direct {v13, p0, v0}, Lcom/asus/weather/accuWeather/BaseFeedParser$9;-><init>(Lcom/asus/weather/accuWeather/BaseFeedParser;Lcom/asus/weather/accuWeather/Message;)V

    invoke-virtual {v12, v13}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 250
    sget-object v12, Lcom/asus/weather/accuWeather/BaseFeedParser;->nameSpaceString:Ljava/lang/String;

    const-string v13, "weathertext"

    invoke-virtual {v5, v12, v13}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v12

    new-instance v13, Lcom/asus/weather/accuWeather/BaseFeedParser$10;

    invoke-direct {v13, p0, v0}, Lcom/asus/weather/accuWeather/BaseFeedParser$10;-><init>(Lcom/asus/weather/accuWeather/BaseFeedParser;Lcom/asus/weather/accuWeather/Message;)V

    invoke-virtual {v12, v13}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 258
    sget-object v12, Lcom/asus/weather/accuWeather/BaseFeedParser;->nameSpaceString:Ljava/lang/String;

    const-string v13, "weathericon"

    invoke-virtual {v5, v12, v13}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v12

    new-instance v13, Lcom/asus/weather/accuWeather/BaseFeedParser$11;

    invoke-direct {v13, p0, v0}, Lcom/asus/weather/accuWeather/BaseFeedParser$11;-><init>(Lcom/asus/weather/accuWeather/BaseFeedParser;Lcom/asus/weather/accuWeather/Message;)V

    invoke-virtual {v12, v13}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 266
    sget-object v12, Lcom/asus/weather/accuWeather/BaseFeedParser;->nameSpaceString:Ljava/lang/String;

    const-string v13, "realfeel"

    invoke-virtual {v5, v12, v13}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v12

    new-instance v13, Lcom/asus/weather/accuWeather/BaseFeedParser$12;

    invoke-direct {v13, p0, v0}, Lcom/asus/weather/accuWeather/BaseFeedParser$12;-><init>(Lcom/asus/weather/accuWeather/BaseFeedParser;Lcom/asus/weather/accuWeather/Message;)V

    invoke-virtual {v12, v13}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 274
    sget-object v12, Lcom/asus/weather/accuWeather/BaseFeedParser;->nameSpaceString:Ljava/lang/String;

    const-string v13, "windspeed"

    invoke-virtual {v5, v12, v13}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v12

    new-instance v13, Lcom/asus/weather/accuWeather/BaseFeedParser$13;

    invoke-direct {v13, p0, v0}, Lcom/asus/weather/accuWeather/BaseFeedParser$13;-><init>(Lcom/asus/weather/accuWeather/BaseFeedParser;Lcom/asus/weather/accuWeather/Message;)V

    invoke-virtual {v12, v13}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 282
    sget-object v12, Lcom/asus/weather/accuWeather/BaseFeedParser;->nameSpaceString:Ljava/lang/String;

    const-string v13, "winddirection"

    invoke-virtual {v5, v12, v13}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v12

    new-instance v13, Lcom/asus/weather/accuWeather/BaseFeedParser$14;

    invoke-direct {v13, p0, v0}, Lcom/asus/weather/accuWeather/BaseFeedParser$14;-><init>(Lcom/asus/weather/accuWeather/BaseFeedParser;Lcom/asus/weather/accuWeather/Message;)V

    invoke-virtual {v12, v13}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 290
    sget-object v12, Lcom/asus/weather/accuWeather/BaseFeedParser;->nameSpaceString:Ljava/lang/String;

    const-string v13, "humidity"

    invoke-virtual {v5, v12, v13}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v12

    new-instance v13, Lcom/asus/weather/accuWeather/BaseFeedParser$15;

    invoke-direct {v13, p0, v0}, Lcom/asus/weather/accuWeather/BaseFeedParser$15;-><init>(Lcom/asus/weather/accuWeather/BaseFeedParser;Lcom/asus/weather/accuWeather/Message;)V

    invoke-virtual {v12, v13}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 298
    sget-object v12, Lcom/asus/weather/accuWeather/BaseFeedParser;->nameSpaceString:Ljava/lang/String;

    const-string v13, "url"

    invoke-virtual {v5, v12, v13}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v12

    new-instance v13, Lcom/asus/weather/accuWeather/BaseFeedParser$16;

    invoke-direct {v13, p0, v0}, Lcom/asus/weather/accuWeather/BaseFeedParser$16;-><init>(Lcom/asus/weather/accuWeather/BaseFeedParser;Lcom/asus/weather/accuWeather/Message;)V

    invoke-virtual {v12, v13}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 306
    sget-object v12, Lcom/asus/weather/accuWeather/BaseFeedParser;->nameSpaceString:Ljava/lang/String;

    const-string v13, "forecast"

    invoke-virtual {v11, v12, v13}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v6

    .line 307
    .local v6, "itemlist2_4":Landroid/sax/Element;
    sget-object v12, Lcom/asus/weather/accuWeather/BaseFeedParser;->nameSpaceString:Ljava/lang/String;

    const-string v13, "day"

    invoke-virtual {v6, v12, v13}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v7

    .line 308
    .local v7, "itemlist3_4_1":Landroid/sax/Element;
    new-instance v12, Lcom/asus/weather/accuWeather/BaseFeedParser$17;

    invoke-direct {v12, p0, v10, v0}, Lcom/asus/weather/accuWeather/BaseFeedParser$17;-><init>(Lcom/asus/weather/accuWeather/BaseFeedParser;Ljava/util/List;Lcom/asus/weather/accuWeather/Message;)V

    invoke-virtual {v7, v12}, Landroid/sax/Element;->setEndElementListener(Landroid/sax/EndElementListener;)V

    .line 317
    sget-object v12, Lcom/asus/weather/accuWeather/BaseFeedParser;->nameSpaceString:Ljava/lang/String;

    const-string v13, "daycode"

    invoke-virtual {v7, v12, v13}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v12

    new-instance v13, Lcom/asus/weather/accuWeather/BaseFeedParser$18;

    invoke-direct {v13, p0, v0}, Lcom/asus/weather/accuWeather/BaseFeedParser$18;-><init>(Lcom/asus/weather/accuWeather/BaseFeedParser;Lcom/asus/weather/accuWeather/Message;)V

    invoke-virtual {v12, v13}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 326
    sget-object v12, Lcom/asus/weather/accuWeather/BaseFeedParser;->nameSpaceString:Ljava/lang/String;

    const-string v13, "sunrise"

    invoke-virtual {v7, v12, v13}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v12

    new-instance v13, Lcom/asus/weather/accuWeather/BaseFeedParser$19;

    invoke-direct {v13, p0, v0}, Lcom/asus/weather/accuWeather/BaseFeedParser$19;-><init>(Lcom/asus/weather/accuWeather/BaseFeedParser;Lcom/asus/weather/accuWeather/Message;)V

    invoke-virtual {v12, v13}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 334
    sget-object v12, Lcom/asus/weather/accuWeather/BaseFeedParser;->nameSpaceString:Ljava/lang/String;

    const-string v13, "sunset"

    invoke-virtual {v7, v12, v13}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v12

    new-instance v13, Lcom/asus/weather/accuWeather/BaseFeedParser$20;

    invoke-direct {v13, p0, v0}, Lcom/asus/weather/accuWeather/BaseFeedParser$20;-><init>(Lcom/asus/weather/accuWeather/BaseFeedParser;Lcom/asus/weather/accuWeather/Message;)V

    invoke-virtual {v12, v13}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 341
    sget-object v12, Lcom/asus/weather/accuWeather/BaseFeedParser;->nameSpaceString:Ljava/lang/String;

    const-string v13, "daytime"

    invoke-virtual {v7, v12, v13}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v8

    .line 343
    .local v8, "itemlist4_4_1":Landroid/sax/Element;
    new-instance v12, Lcom/asus/weather/accuWeather/BaseFeedParser$21;

    invoke-direct {v12, p0, v10, v0}, Lcom/asus/weather/accuWeather/BaseFeedParser$21;-><init>(Lcom/asus/weather/accuWeather/BaseFeedParser;Ljava/util/List;Lcom/asus/weather/accuWeather/Message;)V

    invoke-virtual {v8, v12}, Landroid/sax/Element;->setEndElementListener(Landroid/sax/EndElementListener;)V

    .line 352
    sget-object v12, Lcom/asus/weather/accuWeather/BaseFeedParser;->nameSpaceString:Ljava/lang/String;

    const-string v13, "weathericon"

    invoke-virtual {v8, v12, v13}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v12

    new-instance v13, Lcom/asus/weather/accuWeather/BaseFeedParser$22;

    invoke-direct {v13, p0, v0}, Lcom/asus/weather/accuWeather/BaseFeedParser$22;-><init>(Lcom/asus/weather/accuWeather/BaseFeedParser;Lcom/asus/weather/accuWeather/Message;)V

    invoke-virtual {v12, v13}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 359
    sget-object v12, Lcom/asus/weather/accuWeather/BaseFeedParser;->nameSpaceString:Ljava/lang/String;

    const-string v13, "hightemperature"

    invoke-virtual {v8, v12, v13}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v12

    new-instance v13, Lcom/asus/weather/accuWeather/BaseFeedParser$23;

    invoke-direct {v13, p0, v0}, Lcom/asus/weather/accuWeather/BaseFeedParser$23;-><init>(Lcom/asus/weather/accuWeather/BaseFeedParser;Lcom/asus/weather/accuWeather/Message;)V

    invoke-virtual {v12, v13}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 366
    sget-object v12, Lcom/asus/weather/accuWeather/BaseFeedParser;->nameSpaceString:Ljava/lang/String;

    const-string v13, "lowtemperature"

    invoke-virtual {v8, v12, v13}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v12

    new-instance v13, Lcom/asus/weather/accuWeather/BaseFeedParser$24;

    invoke-direct {v13, p0, v0}, Lcom/asus/weather/accuWeather/BaseFeedParser$24;-><init>(Lcom/asus/weather/accuWeather/BaseFeedParser;Lcom/asus/weather/accuWeather/Message;)V

    invoke-virtual {v12, v13}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 374
    sget-object v12, Lcom/asus/weather/accuWeather/BaseFeedParser;->nameSpaceString:Ljava/lang/String;

    const-string v13, "nighttime"

    invoke-virtual {v7, v12, v13}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v9

    .line 376
    .local v9, "itemlist4_4_2":Landroid/sax/Element;
    new-instance v12, Lcom/asus/weather/accuWeather/BaseFeedParser$25;

    invoke-direct {v12, p0, v10, v0}, Lcom/asus/weather/accuWeather/BaseFeedParser$25;-><init>(Lcom/asus/weather/accuWeather/BaseFeedParser;Ljava/util/List;Lcom/asus/weather/accuWeather/Message;)V

    invoke-virtual {v9, v12}, Landroid/sax/Element;->setEndElementListener(Landroid/sax/EndElementListener;)V

    .line 385
    sget-object v12, Lcom/asus/weather/accuWeather/BaseFeedParser;->nameSpaceString:Ljava/lang/String;

    const-string v13, "weathericon"

    invoke-virtual {v9, v12, v13}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v12

    new-instance v13, Lcom/asus/weather/accuWeather/BaseFeedParser$26;

    invoke-direct {v13, p0, v0}, Lcom/asus/weather/accuWeather/BaseFeedParser$26;-><init>(Lcom/asus/weather/accuWeather/BaseFeedParser;Lcom/asus/weather/accuWeather/Message;)V

    invoke-virtual {v12, v13}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 392
    sget-object v12, Lcom/asus/weather/accuWeather/BaseFeedParser;->nameSpaceString:Ljava/lang/String;

    const-string v13, "hightemperature"

    invoke-virtual {v9, v12, v13}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v12

    new-instance v13, Lcom/asus/weather/accuWeather/BaseFeedParser$27;

    invoke-direct {v13, p0, v0}, Lcom/asus/weather/accuWeather/BaseFeedParser$27;-><init>(Lcom/asus/weather/accuWeather/BaseFeedParser;Lcom/asus/weather/accuWeather/Message;)V

    invoke-virtual {v12, v13}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 400
    sget-object v12, Lcom/asus/weather/accuWeather/BaseFeedParser;->nameSpaceString:Ljava/lang/String;

    const-string v13, "lowtemperature"

    invoke-virtual {v9, v12, v13}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v12

    new-instance v13, Lcom/asus/weather/accuWeather/BaseFeedParser$28;

    invoke-direct {v13, p0, v0}, Lcom/asus/weather/accuWeather/BaseFeedParser$28;-><init>(Lcom/asus/weather/accuWeather/BaseFeedParser;Lcom/asus/weather/accuWeather/Message;)V

    invoke-virtual {v12, v13}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 410
    :try_start_1db
    invoke-virtual {p0}, Lcom/asus/weather/accuWeather/BaseFeedParser;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    sget-object v13, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-virtual {v11}, Landroid/sax/RootElement;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v14

    invoke-static {v12, v13, v14}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V
    :try_end_1e8
    .catch Ljava/lang/Exception; {:try_start_1db .. :try_end_1e8} :catch_1e9

    .line 416
    return-object v10

    .line 412
    :catch_1e9
    move-exception v1

    .line 414
    .local v1, "e":Ljava/lang/Exception;
    new-instance v12, Ljava/lang/RuntimeException;

    invoke-direct {v12, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v12
.end method
