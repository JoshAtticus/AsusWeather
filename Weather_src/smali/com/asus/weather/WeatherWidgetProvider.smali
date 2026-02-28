.class public Lcom/asus/weather/WeatherWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "WeatherWidgetProvider.java"


# static fields
.field static final CONTENT_URI:Landroid/net/Uri;

.field static final CONTENT_URI2:Landroid/net/Uri;

.field static final INDEX:[I

.field static final PICTURE:[I

.field static final PICTURE_S:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x1a

    .line 27
    const-string v0, "content://com.asus.weather.revived.provider/weather/1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/asus/weather/WeatherWidgetProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 28
    const-string v0, "content://com.asus.weather.revived.provider/widgetidlist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/asus/weather/WeatherWidgetProvider;->CONTENT_URI2:Landroid/net/Uri;

    .line 29
    new-array v0, v1, [I

    fill-array-data v0, :array_2a

    sput-object v0, Lcom/asus/weather/WeatherWidgetProvider;->PICTURE:[I

    .line 59
    const/16 v0, 0x2c

    new-array v0, v0, [I

    fill-array-data v0, :array_62

    sput-object v0, Lcom/asus/weather/WeatherWidgetProvider;->INDEX:[I

    .line 107
    new-array v0, v1, [I

    fill-array-data v0, :array_be

    sput-object v0, Lcom/asus/weather/WeatherWidgetProvider;->PICTURE_S:[I

    return-void

    .line 29
    :array_2a
    .array-data 4
        0x7f02000a
        0x7f02000c
        0x7f02000e
        0x7f020010
        0x7f020012
        0x7f020014
        0x7f020016
        0x7f020018
        0x7f02001a
        0x7f02001c
        0x7f02001e
        0x7f020020
        0x7f020022
        0x7f020024
        0x7f020026
        0x7f020028
        0x7f02002a
        0x7f02002c
        0x7f02002e
        0x7f020030
        0x7f020032
        0x7f020034
        0x7f020036
        0x7f020038
        0x7f02003a
        0x7f02003c
    .end array-data

    .line 59
    :array_62
    .array-data 4
        0x17
        0xd
        0xe
        0x7
        0x5
        0x8
        0x0
        0x1
        0x0
        0x0
        0x3
        0x14
        0xa
        0x10
        0x18
        0xc
        0x11
        0x12
        0x2
        0x9
        0xf
        0x16
        0xb
        0x6
        0x15
        0x4
        0x0
        0x0
        0x13
        0x17
        0x6
        0x19
        0x17
        0xd
        0x8
        0x7
        0x5
        0x8
        0xa
        0xa
        0xc
        0xc
        0x9
        0xb
    .end array-data

    .line 107
    :array_be
    .array-data 4
        0x7f02000b
        0x7f02000d
        0x7f02000f
        0x7f020011
        0x7f020013
        0x7f020015
        0x7f020017
        0x7f020019
        0x7f02001b
        0x7f02001d
        0x7f02001f
        0x7f020021
        0x7f020023
        0x7f020025
        0x7f020027
        0x7f020029
        0x7f02002b
        0x7f02002d
        0x7f02002f
        0x7f020031
        0x7f020033
        0x7f020035
        0x7f020037
        0x7f020039
        0x7f02003b
        0x7f02003d
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method public static lastUpdate(Landroid/content/Context;)Ljava/lang/String;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 360
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 361
    .local v0, "content":Landroid/content/ContentResolver;
    sget-object v1, Lcom/asus/weather/WeatherWidgetProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/asus/weather/P;->WEATHER_QUERY_COLUMNS:[Ljava/lang/String;

    const-string v5, "_id"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 363
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2a

    .line 365
    const-string v1, "[WeatherWidgetProvider]"

    const-string v2, "LastUpdateCursor is NOT null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 367
    const-string v1, "lastupdate"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 368
    .local v7, "strlastupdate":Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 374
    .end local v7    # "strlastupdate":Ljava/lang/String;
    :goto_29
    return-object v7

    .line 373
    :cond_2a
    const-string v1, "[WeatherWidgetProvider]"

    const-string v2, "LastUpdateCursor is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v3

    .line 374
    goto :goto_29
.end method


# virtual methods
.method public UpdateWidgetInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 17

    .prologue
    .line 181
    const/4 v6, 0x0

    .line 185
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v8

    .line 186
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/asus/weather/WeatherWidgetProvider;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 187
    invoke-virtual {v8, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v9

    .line 189
    const/4 v0, 0x0

    move v7, v0

    :goto_12
    array-length v0, v9

    if-ge v7, v0, :cond_f9

    .line 191
    aget v10, v9, v7

    .line 192
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/asus/weather/WeatherFragmentSettings;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 193
    const-string v1, "[WeatherWidgetProvider]"

    const-string v2, "onUpdate1"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 196
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 197
    sget-object v1, Lcom/asus/weather/WeatherWidgetProvider;->CONTENT_URI2:Landroid/net/Uri;

    sget-object v2, Lcom/asus/weather/P;->WEATHER_QUERY_COLUMNS3:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "widgetid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 199
    if-eqz v3, :cond_97

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_97

    .line 201
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 202
    const-string v0, "Hspan"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 203
    const-string v0, "Vspan"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 215
    :goto_70
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 217
    const/4 v2, 0x4

    if-ne v1, v2, :cond_c1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_c1

    .line 219
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030007

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 220
    const v1, 0x7f08000c

    invoke-virtual {v0, v1, v11}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 222
    invoke-virtual {p0, p1, v8, v10, v0}, Lcom/asus/weather/WeatherWidgetProvider;->setWidgetInfo_4x4(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/widget/RemoteViews;)V

    .line 238
    :goto_8e
    invoke-virtual {v8, v10, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 189
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    move-object v6, v0

    goto/16 :goto_12

    .line 207
    :cond_97
    const/4 v2, 0x4

    .line 208
    const/4 v1, 0x4

    .line 209
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 210
    const-string v5, "widgetid"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v5, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 211
    const-string v5, "Hspan"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v5, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 212
    const-string v5, "Vspan"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v5, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 213
    sget-object v5, Lcom/asus/weather/WeatherWidgetProvider;->CONTENT_URI2:Landroid/net/Uri;

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move v0, v1

    move v1, v2

    goto :goto_70

    .line 224
    :cond_c1
    const/4 v2, 0x4

    if-ne v1, v2, :cond_dd

    const/4 v2, 0x3

    if-ne v0, v2, :cond_dd

    .line 226
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030006

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 227
    const v1, 0x7f08000c

    invoke-virtual {v0, v1, v11}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 229
    invoke-virtual {p0, p1, v8, v10, v0}, Lcom/asus/weather/WeatherWidgetProvider;->setWidgetInfo_4x3(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/widget/RemoteViews;)V

    goto :goto_8e

    .line 231
    :cond_dd
    const/4 v2, 0x1

    if-ne v1, v2, :cond_fa

    const/4 v1, 0x1

    if-ne v0, v1, :cond_fa

    .line 233
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030005

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 234
    const v1, 0x7f08000c

    invoke-virtual {v0, v1, v11}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 236
    invoke-virtual {p0, p1, v8, v10, v0}, Lcom/asus/weather/WeatherWidgetProvider;->setWidgetInfo_1x1(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/widget/RemoteViews;)V

    goto :goto_8e

    .line 240
    :cond_f9
    return-void

    :cond_fa
    move-object v0, v6

    goto :goto_8e
.end method

.method public day_or_night(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .param p1, "sunrise"    # Ljava/lang/String;
    .param p2, "sunset"    # Ljava/lang/String;
    .param p3, "currentTime"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 922
    const-string v8, ":"

    invoke-virtual {p3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 923
    .local v0, "str":[Ljava/lang/String;
    const-string v8, " "

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 924
    .local v1, "str_rise":[Ljava/lang/String;
    aget-object v8, v1, v7

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 925
    .local v4, "time_rise":[Ljava/lang/String;
    const-string v8, " "

    invoke-virtual {p2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 926
    .local v2, "str_set":[Ljava/lang/String;
    aget-object v8, v2, v7

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 927
    .local v5, "time_set":[Ljava/lang/String;
    aget-object v8, v0, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/16 v9, 0xc

    if-ge v8, v9, :cond_5d

    .line 929
    aget-object v8, v0, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aget-object v9, v4, v7

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-le v8, v9, :cond_3d

    .line 968
    :cond_3c
    :goto_3c
    return v6

    .line 933
    :cond_3d
    aget-object v8, v0, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aget-object v9, v4, v7

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-ge v8, v9, :cond_4d

    move v6, v7

    .line 935
    goto :goto_3c

    .line 939
    :cond_4d
    aget-object v8, v0, v6

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aget-object v9, v4, v6

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-ge v8, v9, :cond_3c

    move v6, v7

    .line 945
    goto :goto_3c

    .line 951
    :cond_5d
    aget-object v8, v0, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v3, v8, -0xc

    .line 952
    .local v3, "time":I
    aget-object v8, v5, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-lt v3, v8, :cond_3c

    .line 956
    aget-object v8, v5, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-le v3, v8, :cond_77

    move v6, v7

    .line 958
    goto :goto_3c

    .line 962
    :cond_77
    aget-object v8, v0, v6

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aget-object v9, v5, v6

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-le v8, v9, :cond_3c

    move v6, v7

    .line 968
    goto :goto_3c
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetIds"    # [I

    .prologue
    .line 245
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 246
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p2

    if-ge v1, v2, :cond_2d

    .line 248
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 249
    .local v0, "content":Landroid/content/ContentResolver;
    sget-object v2, Lcom/asus/weather/WeatherWidgetProvider;->CONTENT_URI2:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "widgetid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p2, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 246
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 251
    .end local v0    # "content":Landroid/content/ContentResolver;
    :cond_2d
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14

    .prologue
    const/4 v10, 0x1

    const/4 v5, -0x1

    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 256
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 260
    const-string v0, ""

    .line 263
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 264
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 265
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/asus/weather/WeatherWidgetProvider;

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 266
    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 267
    new-instance v6, Landroid/content/Intent;

    const-string v3, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    const-string v3, "appWidgetIds"

    invoke-virtual {v6, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 269
    invoke-virtual {v6, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 271
    const-string v1, "com.asus.weather.weatherIntentAction"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 273
    const-string v0, "CONTENT"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 274
    const/4 v1, 0x2

    if-ne v0, v1, :cond_57

    .line 276
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 277
    const-string v1, "showinterval"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 279
    sget-object v2, Lcom/asus/weather/WeatherWidgetProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id=1"

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 280
    invoke-virtual {p1, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 332
    :cond_56
    :goto_56
    return-void

    .line 282
    :cond_57
    const/4 v1, 0x3

    if-ne v0, v1, :cond_87

    .line 284
    const-string v0, "SHOWTOAST"

    invoke-virtual {p2, v0, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 285
    if-eqz v0, :cond_56

    .line 288
    const v0, 0x7f06000b

    invoke-static {p1, v0, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 289
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 290
    const-string v1, "showinterval"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 292
    sget-object v2, Lcom/asus/weather/WeatherWidgetProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id=1"

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 293
    invoke-virtual {p1, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_56

    .line 296
    :cond_87
    const/16 v1, 0xa

    if-ne v0, v1, :cond_a6

    .line 298
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 299
    const-string v1, "showinterval"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 301
    sget-object v2, Lcom/asus/weather/WeatherWidgetProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id=1"

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 302
    invoke-virtual {p1, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_56

    .line 304
    :cond_a6
    const/16 v1, 0xb

    if-ne v0, v1, :cond_56

    .line 306
    const v0, 0x7f060024

    invoke-static {p1, v0, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_56

    .line 309
    :cond_b5
    const-string v1, "com.asus.appwidget.action.RESIZE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 311
    const-string v0, "appWidget_id"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 312
    const-string v0, "newSize"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v8

    .line 314
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 315
    sget-object v1, Lcom/asus/weather/WeatherWidgetProvider;->CONTENT_URI2:Landroid/net/Uri;

    sget-object v2, Lcom/asus/weather/P;->WEATHER_QUERY_COLUMNS3:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "widgetid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 317
    if-eqz v1, :cond_13e

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_13e

    .line 319
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 320
    const-string v3, "widgetid"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 321
    const-string v3, "Hspan"

    aget v5, v8, v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 322
    const-string v3, "Vspan"

    aget v5, v8, v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 323
    sget-object v3, Lcom/asus/weather/WeatherWidgetProvider;->CONTENT_URI2:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "widgetid="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v2, v5, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 329
    :goto_136
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 330
    invoke-virtual {p1, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_56

    .line 327
    :cond_13e
    const-string v0, "[WeatherWidgerProvider]"

    const-string v2, "Widgets are wrong while performing resize"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_136
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    const/4 v8, 0x0

    .line 139
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 141
    .local v0, "defaultLocale":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    .line 146
    .local v5, "strLocaleLanguage":Ljava/lang/String;
    const-string v6, "PREF_WEATHER"

    invoke-virtual {p1, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 147
    .local v4, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 149
    .local v3, "preEdt":Landroid/content/SharedPreferences$Editor;
    const-string v6, "language"

    const-string v7, ""

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "lang":Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4a

    .line 154
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_46

    .line 157
    const-string v6, "language"

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 158
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 161
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.asus.weather.weatherIntentAction"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    .local v1, "intentUpdate":Landroid/content/Intent;
    const-string v6, "CONTENT"

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 163
    const-string v6, "CHECKNETWORK"

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 164
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 174
    .end local v1    # "intentUpdate":Landroid/content/Intent;
    :cond_46
    :goto_46
    invoke-virtual {p0, p1, p2, p3}, Lcom/asus/weather/WeatherWidgetProvider;->UpdateWidgetInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 175
    return-void

    .line 170
    :cond_4a
    const-string v6, "language"

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 171
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_46
.end method

.method public setSmallIconInfo(Landroid/widget/RemoteViews;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 19
    .param p1, "views"    # Landroid/widget/RemoteViews;
    .param p2, "temp_id"    # I
    .param p3, "temp_long_id"    # I
    .param p4, "icon_id"    # I
    .param p5, "day_id"    # I
    .param p6, "lowtemp"    # Ljava/lang/String;
    .param p7, "hightemp"    # Ljava/lang/String;
    .param p8, "icon"    # Ljava/lang/String;
    .param p9, "day"    # Ljava/lang/String;

    .prologue
    .line 381
    const/4 v8, 0x0

    .line 382
    .local v8, "num":I
    const/4 v7, 0x0

    .local v7, "idx":I
    move-object v1, p0

    move v2, p2

    move v3, p3

    move-object v4, p6

    move-object/from16 v5, p7

    move-object v6, p1

    .line 384
    invoke-virtual/range {v1 .. v6}, Lcom/asus/weather/WeatherWidgetProvider;->setTempInfo(IILjava/lang/String;Ljava/lang/String;Landroid/widget/RemoteViews;)V

    .line 385
    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 386
    const/4 v1, 0x1

    if-lt v8, v1, :cond_2e

    const/16 v1, 0x2c

    if-gt v8, v1, :cond_2e

    .line 388
    sget-object v1, Lcom/asus/weather/WeatherWidgetProvider;->INDEX:[I

    add-int/lit8 v2, v8, -0x1

    aget v7, v1, v2

    .line 389
    const/4 v1, 0x0

    invoke-virtual {p1, p4, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 390
    sget-object v1, Lcom/asus/weather/WeatherWidgetProvider;->PICTURE_S:[I

    aget v1, v1, v7

    invoke-virtual {p1, p4, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 396
    :goto_28
    move-object/from16 v0, p9

    invoke-virtual {p1, p5, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 397
    return-void

    .line 394
    :cond_2e
    const/4 v1, 0x4

    invoke-virtual {p1, p4, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_28
.end method

.method public setTempInfo(IILjava/lang/String;Ljava/lang/String;Landroid/widget/RemoteViews;)V
    .registers 10
    .param p1, "temp_id"    # I
    .param p2, "temp_long_id"    # I
    .param p3, "lowtemp"    # Ljava/lang/String;
    .param p4, "hightemp"    # Ljava/lang/String;
    .param p5, "views"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 906
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_30

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_30

    .line 908
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "~"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, p2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 909
    invoke-virtual {p5, p2, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 910
    invoke-virtual {p5, p1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 918
    :goto_2f
    return-void

    .line 914
    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "~"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, p1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 915
    invoke-virtual {p5, p1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 916
    invoke-virtual {p5, p2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_2f
.end method

.method public setWidgetInfo_1x1(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/widget/RemoteViews;)V
    .registers 32
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetId"    # I
    .param p4, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 824
    const-string v17, ""

    .line 825
    .local v17, "day":Ljava/lang/String;
    const-string v18, ""

    .line 826
    .local v18, "hightemp_day":Ljava/lang/String;
    const-string v13, ""

    .line 827
    .local v13, "hightemp_night":Ljava/lang/String;
    const-string v22, ""

    .line 828
    .local v22, "lowtemp_day":Ljava/lang/String;
    const-string v12, ""

    .line 829
    .local v12, "lowtemp_night":Ljava/lang/String;
    const-string v19, ""

    .line 830
    .local v19, "icon":Ljava/lang/String;
    const-string v25, ""

    .line 831
    .local v25, "sunrise":Ljava/lang/String;
    const-string v26, ""

    .line 832
    .local v26, "sunset":Ljava/lang/String;
    const-string v15, ""

    .line 833
    .local v15, "currenttime":Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v23

    .line 834
    .local v23, "mCalendar":Ljava/util/Calendar;
    const-string v24, "E"

    .line 835
    .local v24, "mWeekdayFormat":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 836
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 838
    const/16 v16, 0x0

    .line 839
    .local v16, "cursor":Landroid/database/Cursor;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 840
    .local v3, "content":Landroid/content/ContentResolver;
    sget-object v4, Lcom/asus/weather/WeatherWidgetProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/asus/weather/P;->WEATHER_QUERY_COLUMNS:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 842
    if-eqz v16, :cond_1aa

    .line 844
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 845
    const-string v4, "sunrise0"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 846
    const-string v4, "sunset0"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 847
    const-string v4, "currenttime"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 848
    const-string v4, "hightemp_day0"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 849
    .end local v18    # "hightemp_day":Ljava/lang/String;
    .local v8, "hightemp_day":Ljava/lang/String;
    const-string v4, "lowtemp_day0"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 850
    .end local v22    # "lowtemp_day":Ljava/lang/String;
    .local v7, "lowtemp_day":Ljava/lang/String;
    const-string v4, "hightemp_night0"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 851
    const-string v4, "lowtemp_night0"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 852
    const-string v4, "weathericon"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 853
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 856
    const-string v4, "null"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14e

    .line 858
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 859
    .local v20, "icon_num":I
    const/4 v4, 0x1

    move/from16 v0, v20

    if-lt v0, v4, :cond_136

    const/16 v4, 0x2c

    move/from16 v0, v20

    if-gt v0, v4, :cond_136

    .line 861
    sget-object v4, Lcom/asus/weather/WeatherWidgetProvider;->INDEX:[I

    add-int/lit8 v5, v20, -0x1

    aget v21, v4, v5

    .line 862
    .local v21, "index":I
    const v4, 0x7f08000e

    const/4 v5, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 863
    const v4, 0x7f08000e

    sget-object v5, Lcom/asus/weather/WeatherWidgetProvider;->PICTURE_S:[I

    aget v5, v5, v21

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 869
    .end local v21    # "index":I
    :goto_eb
    const v4, 0x7f08000d

    const v5, 0x7f020008

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 870
    const v4, 0x7f08000d

    const/4 v5, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 871
    const v4, 0x7f08000f

    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 873
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2, v15}, Lcom/asus/weather/WeatherWidgetProvider;->day_or_night(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_140

    .line 875
    const v5, 0x7f080010

    const v6, 0x7f080011

    move-object/from16 v4, p0

    move-object/from16 v9, p4

    invoke-virtual/range {v4 .. v9}, Lcom/asus/weather/WeatherWidgetProvider;->setTempInfo(IILjava/lang/String;Ljava/lang/String;Landroid/widget/RemoteViews;)V

    .line 882
    :goto_123
    const v4, 0x7f08000a

    const/4 v5, 0x4

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 883
    const v4, 0x7f08000b

    const/4 v5, 0x4

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 902
    .end local v20    # "icon_num":I
    :goto_135
    return-void

    .line 867
    .restart local v20    # "icon_num":I
    :cond_136
    const v4, 0x7f08000e

    const/4 v5, 0x4

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_eb

    .line 879
    :cond_140
    const v10, 0x7f080010

    const v11, 0x7f080011

    move-object/from16 v9, p0

    move-object/from16 v14, p4

    invoke-virtual/range {v9 .. v14}, Lcom/asus/weather/WeatherWidgetProvider;->setTempInfo(IILjava/lang/String;Ljava/lang/String;Landroid/widget/RemoteViews;)V

    goto :goto_123

    .line 887
    .end local v20    # "icon_num":I
    :cond_14e
    const-string v4, "[WeatherWidgetProvider]"

    const-string v5, "No information in the contentprovider"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    const v4, 0x7f08000f

    const-string v5, ""

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 889
    const v4, 0x7f080010

    const-string v5, ""

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 890
    const v4, 0x7f08000d

    const/4 v5, 0x4

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 891
    const v4, 0x7f08000a

    const/4 v5, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 892
    const v4, 0x7f08000a

    const v5, 0x7f020002

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 893
    const v4, 0x7f08000b

    const/4 v5, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 894
    const v4, 0x7f08000b

    const v5, 0x7f060008

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 895
    const v4, 0x7f08000e

    const/4 v5, 0x4

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_135

    .line 900
    .end local v7    # "lowtemp_day":Ljava/lang/String;
    .end local v8    # "hightemp_day":Ljava/lang/String;
    .restart local v18    # "hightemp_day":Ljava/lang/String;
    .restart local v22    # "lowtemp_day":Ljava/lang/String;
    :cond_1aa
    const-string v4, "[WeatherWidgetProvider]"

    const-string v5, "weatherCursor is null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v7, v22

    .end local v22    # "lowtemp_day":Ljava/lang/String;
    .restart local v7    # "lowtemp_day":Ljava/lang/String;
    move-object/from16 v8, v18

    .end local v18    # "hightemp_day":Ljava/lang/String;
    .restart local v8    # "hightemp_day":Ljava/lang/String;
    goto :goto_135
.end method

.method public setWidgetInfo_4x3(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/widget/RemoteViews;)V
    .registers 32
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetId"    # I
    .param p4, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 673
    const-string v21, ""

    .line 674
    .local v21, "tempunits":Ljava/lang/String;
    const-string v8, ""

    .line 675
    .local v8, "cityname":Ljava/lang/String;
    const-string v24, ""

    .line 676
    .local v24, "weathertext":Ljava/lang/String;
    const-string v19, ""

    .line 677
    .local v19, "temperature":Ljava/lang/String;
    const-string v11, ""

    .line 678
    .local v11, "icon":Ljava/lang/String;
    const-string v25, ""

    .line 679
    .local v25, "winddirection":Ljava/lang/String;
    const-string v26, ""

    .line 680
    .local v26, "windspeed":Ljava/lang/String;
    const-string v17, ""

    .line 681
    .local v17, "speedunits":Ljava/lang/String;
    const-string v10, ""

    .line 682
    .local v10, "humidity":Ljava/lang/String;
    const-string v16, ""

    .line 683
    .local v16, "showinterval":Ljava/lang/String;
    const/4 v9, 0x0

    .line 684
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 685
    .local v2, "content":Landroid/content/ContentResolver;
    sget-object v3, Lcom/asus/weather/WeatherWidgetProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/asus/weather/P;->WEATHER_QUERY_COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 687
    if-eqz v9, :cond_319

    .line 689
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 690
    const-string v3, "tempunits"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 691
    const-string v3, "cityname"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 692
    const-string v3, "weathertext"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 693
    const-string v3, "temperature"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 694
    const-string v3, "weathericon"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 695
    const-string v3, "humidity"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 696
    const-string v3, "winddirection"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 697
    const-string v3, "windspeed"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 698
    const-string v3, "speedunits"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 699
    const-string v3, "showinterval"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 700
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 702
    const-string v3, "null"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28c

    .line 704
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 705
    .local v12, "icon_num":I
    const/4 v3, 0x1

    if-lt v12, v3, :cond_202

    const/16 v3, 0x2c

    if-gt v12, v3, :cond_202

    .line 707
    sget-object v3, Lcom/asus/weather/WeatherWidgetProvider;->INDEX:[I

    add-int/lit8 v4, v12, -0x1

    aget v13, v3, v4

    .line 708
    .local v13, "index":I
    const v3, 0x7f080012

    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 709
    const v3, 0x7f080012

    sget-object v4, Lcom/asus/weather/WeatherWidgetProvider;->PICTURE:[I

    aget v4, v4, v13

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 716
    .end local v13    # "index":I
    :goto_bf
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xd

    if-le v3, v4, :cond_20d

    .line 718
    const v3, 0x7f080013

    const/4 v4, 0x4

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 719
    const v3, 0x7f080014

    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 720
    const v3, 0x7f080014

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 729
    :goto_e1
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x10

    if-le v3, v4, :cond_229

    .line 731
    const v3, 0x7f080015

    const/4 v4, 0x4

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 732
    const v3, 0x7f080016

    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 733
    const v3, 0x7f080016

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 741
    :goto_105
    const-string v3, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_201

    .line 743
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 744
    .local v18, "strMoreinfo":Ljava/lang/String;
    const-string v3, " "

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 745
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 746
    const-string v3, ", "

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 747
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 748
    const-string v3, " "

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 749
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 750
    const-string v3, " "

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 751
    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 752
    const-string v3, " "

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 753
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 754
    const v3, 0x7f080017

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 755
    const-string v20, ""

    .line 756
    .local v20, "tempunit":Ljava/lang/String;
    sget-object v3, Lcom/asus/weather/P;->PREF_UNITLIST:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_247

    .line 758
    const/16 v22, 0x2103

    .line 759
    .local v22, "unit":C
    invoke-static/range {v22 .. v22}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v23

    .line 760
    .local v23, "unitStr":Ljava/lang/String;
    move-object/from16 v20, v23

    .line 772
    .end local v22    # "unit":C
    .end local v23    # "unitStr":Ljava/lang/String;
    :goto_192
    const v3, 0x7f080019

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 773
    const v3, 0x7f08001a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 774
    const v3, 0x7f08000a

    const/4 v4, 0x4

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 776
    const-string v3, "1"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_279

    .line 778
    invoke-static/range {p1 .. p1}, Lcom/asus/weather/WeatherWidgetProvider;->lastUpdate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 779
    .local v15, "lastupdate":Ljava/lang/String;
    if-eqz v15, :cond_267

    .line 781
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f060029

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 782
    .local v14, "info":Ljava/lang/String;
    const v3, 0x7f080018

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v14}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 783
    const-string v3, "[WeatherWidgetProvider]"

    const-string v4, "[4x3 show Interval:last update]"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    .end local v12    # "icon_num":I
    .end local v14    # "info":Ljava/lang/String;
    .end local v15    # "lastupdate":Ljava/lang/String;
    .end local v18    # "strMoreinfo":Ljava/lang/String;
    .end local v20    # "tempunit":Ljava/lang/String;
    :cond_201
    :goto_201
    return-void

    .line 713
    .restart local v12    # "icon_num":I
    :cond_202
    const v3, 0x7f080012

    const/4 v4, 0x4

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_bf

    .line 724
    :cond_20d
    const v3, 0x7f080014

    const/4 v4, 0x4

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 725
    const v3, 0x7f080013

    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 726
    const v3, 0x7f080013

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_e1

    .line 737
    :cond_229
    const v3, 0x7f080016

    const/4 v4, 0x4

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 738
    const v3, 0x7f080015

    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 739
    const v3, 0x7f080015

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_105

    .line 762
    .restart local v18    # "strMoreinfo":Ljava/lang/String;
    .restart local v20    # "tempunit":Ljava/lang/String;
    :cond_247
    sget-object v3, Lcom/asus/weather/P;->PREF_UNITLIST:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25e

    .line 764
    const/16 v22, 0x2109

    .line 765
    .restart local v22    # "unit":C
    invoke-static/range {v22 .. v22}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v23

    .line 766
    .restart local v23    # "unitStr":Ljava/lang/String;
    move-object/from16 v20, v23

    .line 767
    goto/16 :goto_192

    .line 770
    .end local v22    # "unit":C
    .end local v23    # "unitStr":Ljava/lang/String;
    :cond_25e
    const-string v3, "[WeatherWidgetProvider]"

    const-string v4, "Temperature unit is wrong"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_192

    .line 787
    .restart local v15    # "lastupdate":Ljava/lang/String;
    :cond_267
    const v3, 0x7f080018

    const-string v4, ""

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 788
    const-string v3, "[WeatherWidgetProvider]"

    const-string v4, "Got current time null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_201

    .line 793
    .end local v15    # "lastupdate":Ljava/lang/String;
    :cond_279
    const v3, 0x7f080018

    const-string v4, ""

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 794
    const-string v3, "[WeatherWidgetProvider]"

    const-string v4, "[Don\'t show Interval]"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_201

    .line 800
    .end local v12    # "icon_num":I
    .end local v18    # "strMoreinfo":Ljava/lang/String;
    .end local v20    # "tempunit":Ljava/lang/String;
    :cond_28c
    const-string v3, "[WeatherWidgetProvider]"

    const-string v4, "No information in the contentprovider"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    const v3, 0x7f080013

    const v4, 0x7f060008

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 802
    const v3, 0x7f080014

    const/4 v4, 0x4

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 803
    const v3, 0x7f080013

    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 804
    const v3, 0x7f080015

    const-string v4, ""

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 805
    const v3, 0x7f080016

    const/4 v4, 0x4

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 806
    const v3, 0x7f080015

    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 807
    const v3, 0x7f080017

    const-string v4, ""

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 808
    const v3, 0x7f080019

    const-string v4, ""

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 809
    const v3, 0x7f08001a

    const-string v4, ""

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 810
    const v3, 0x7f080018

    const-string v4, ""

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 811
    const v3, 0x7f08000a

    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 812
    const v3, 0x7f08000a

    const v4, 0x7f020001

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 813
    const v3, 0x7f080012

    const/4 v4, 0x4

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_201

    .line 818
    :cond_319
    const-string v3, "[WeatherWidgetProvider]"

    const-string v4, "weatherCursor is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_201
.end method

.method public setWidgetInfo_4x4(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/widget/RemoteViews;)V
    .registers 56
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetId"    # I
    .param p4, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 401
    const-string v45, ""

    .line 402
    .local v45, "tempunits":Ljava/lang/String;
    const-string v13, ""

    .line 403
    .local v13, "cityname":Ljava/lang/String;
    const-string v48, ""

    .line 404
    .local v48, "weathertext":Ljava/lang/String;
    const-string v43, ""

    .line 405
    .local v43, "temperature":Ljava/lang/String;
    const-string v22, ""

    .line 406
    .local v22, "icon":Ljava/lang/String;
    const-string v49, ""

    .line 407
    .local v49, "winddirection":Ljava/lang/String;
    const-string v50, ""

    .line 408
    .local v50, "windspeed":Ljava/lang/String;
    const-string v37, ""

    .line 409
    .local v37, "speedunits":Ljava/lang/String;
    const-string v20, ""

    .line 410
    .local v20, "humidity":Ljava/lang/String;
    const-string v36, ""

    .line 411
    .local v36, "showinterval":Ljava/lang/String;
    const-string v14, ""

    .line 412
    .local v14, "currenttime":Ljava/lang/String;
    const/4 v3, 0x4

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v16, v3

    const/4 v3, 0x1

    const-string v4, ""

    aput-object v4, v16, v3

    const/4 v3, 0x2

    const-string v4, ""

    aput-object v4, v16, v3

    const/4 v3, 0x3

    const-string v4, ""

    aput-object v4, v16, v3

    .line 413
    .local v16, "day":[Ljava/lang/String;
    const/4 v3, 0x4

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v18, v3

    const/4 v3, 0x1

    const-string v4, ""

    aput-object v4, v18, v3

    const/4 v3, 0x2

    const-string v4, ""

    aput-object v4, v18, v3

    const/4 v3, 0x3

    const-string v4, ""

    aput-object v4, v18, v3

    .line 414
    .local v18, "hightemp_day":[Ljava/lang/String;
    const/4 v3, 0x4

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v31, v0

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v31, v3

    const/4 v3, 0x1

    const-string v4, ""

    aput-object v4, v31, v3

    const/4 v3, 0x2

    const-string v4, ""

    aput-object v4, v31, v3

    const/4 v3, 0x3

    const-string v4, ""

    aput-object v4, v31, v3

    .line 415
    .local v31, "lowtemp_day":[Ljava/lang/String;
    const/4 v3, 0x4

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v19, v3

    const/4 v3, 0x1

    const-string v4, ""

    aput-object v4, v19, v3

    const/4 v3, 0x2

    const-string v4, ""

    aput-object v4, v19, v3

    const/4 v3, 0x3

    const-string v4, ""

    aput-object v4, v19, v3

    .line 416
    .local v19, "hightemp_night":[Ljava/lang/String;
    const/4 v3, 0x4

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v32, v0

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v32, v3

    const/4 v3, 0x1

    const-string v4, ""

    aput-object v4, v32, v3

    const/4 v3, 0x2

    const-string v4, ""

    aput-object v4, v32, v3

    const/4 v3, 0x3

    const-string v4, ""

    aput-object v4, v32, v3

    .line 417
    .local v32, "lowtemp_night":[Ljava/lang/String;
    const/4 v3, 0x4

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v24, v3

    const/4 v3, 0x1

    const-string v4, ""

    aput-object v4, v24, v3

    const/4 v3, 0x2

    const-string v4, ""

    aput-object v4, v24, v3

    const/4 v3, 0x3

    const-string v4, ""

    aput-object v4, v24, v3

    .line 418
    .local v24, "icon_day":[Ljava/lang/String;
    const/4 v3, 0x4

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v25, v3

    const/4 v3, 0x1

    const-string v4, ""

    aput-object v4, v25, v3

    const/4 v3, 0x2

    const-string v4, ""

    aput-object v4, v25, v3

    const/4 v3, 0x3

    const-string v4, ""

    aput-object v4, v25, v3

    .line 419
    .local v25, "icon_night":[Ljava/lang/String;
    const/4 v3, 0x4

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v39, v0

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v39, v3

    const/4 v3, 0x1

    const-string v4, ""

    aput-object v4, v39, v3

    const/4 v3, 0x2

    const-string v4, ""

    aput-object v4, v39, v3

    const/4 v3, 0x3

    const-string v4, ""

    aput-object v4, v39, v3

    .line 420
    .local v39, "sunrise":[Ljava/lang/String;
    const/4 v3, 0x4

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v40, v0

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v40, v3

    const/4 v3, 0x1

    const-string v4, ""

    aput-object v4, v40, v3

    const/4 v3, 0x2

    const-string v4, ""

    aput-object v4, v40, v3

    const/4 v3, 0x3

    const-string v4, ""

    aput-object v4, v40, v3

    .line 422
    .local v40, "sunset":[Ljava/lang/String;
    const/4 v3, 0x4

    new-array v0, v3, [I

    move-object/from16 v41, v0

    fill-array-data v41, :array_6e2

    .line 430
    .local v41, "tempID":[I
    const/4 v3, 0x4

    new-array v0, v3, [I

    move-object/from16 v42, v0

    fill-array-data v42, :array_6ee

    .line 438
    .local v42, "tempLongID":[I
    const/4 v3, 0x4

    new-array v0, v3, [I

    move-object/from16 v17, v0

    fill-array-data v17, :array_6fa

    .line 446
    .local v17, "dayID":[I
    const/4 v3, 0x4

    new-array v0, v3, [I

    move-object/from16 v23, v0

    fill-array-data v23, :array_706

    .line 454
    .local v23, "iconID":[I
    const/4 v15, 0x0

    .line 456
    .local v15, "cursor":Landroid/database/Cursor;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 457
    .local v2, "content":Landroid/content/ContentResolver;
    sget-object v3, Lcom/asus/weather/WeatherWidgetProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/asus/weather/P;->WEATHER_QUERY_COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 459
    if-eqz v15, :cond_6da

    .line 461
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 462
    const-string v3, "tempunits"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v45

    .line 463
    const-string v3, "currenttime"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 464
    const-string v3, "cityname"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 465
    const-string v3, "weathertext"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v48

    .line 466
    const-string v3, "temperature"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v43

    .line 467
    const-string v3, "weathericon"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 468
    const-string v3, "humidity"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 469
    const-string v3, "winddirection"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v49

    .line 470
    const-string v3, "windspeed"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v50

    .line 471
    const-string v3, "speedunits"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    .line 472
    const-string v3, "showinterval"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 473
    const/4 v3, 0x0

    const-string v4, "hightemp_day1"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v18, v3

    .line 474
    const/4 v3, 0x1

    const-string v4, "hightemp_day2"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v18, v3

    .line 475
    const/4 v3, 0x2

    const-string v4, "hightemp_day3"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v18, v3

    .line 476
    const/4 v3, 0x3

    const-string v4, "hightemp_day4"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v18, v3

    .line 477
    const/4 v3, 0x0

    const-string v4, "lowtemp_day1"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v31, v3

    .line 478
    const/4 v3, 0x1

    const-string v4, "lowtemp_day2"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v31, v3

    .line 479
    const/4 v3, 0x2

    const-string v4, "lowtemp_day3"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v31, v3

    .line 480
    const/4 v3, 0x3

    const-string v4, "lowtemp_day4"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v31, v3

    .line 481
    const/4 v3, 0x0

    const-string v4, "hightemp_night1"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v19, v3

    .line 482
    const/4 v3, 0x1

    const-string v4, "hightemp_night2"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v19, v3

    .line 483
    const/4 v3, 0x2

    const-string v4, "hightemp_night3"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v19, v3

    .line 484
    const/4 v3, 0x3

    const-string v4, "hightemp_night4"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v19, v3

    .line 485
    const/4 v3, 0x0

    const-string v4, "lowtemp_night1"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v32, v3

    .line 486
    const/4 v3, 0x1

    const-string v4, "lowtemp_night2"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v32, v3

    .line 487
    const/4 v3, 0x2

    const-string v4, "lowtemp_night3"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v32, v3

    .line 488
    const/4 v3, 0x3

    const-string v4, "lowtemp_night4"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v32, v3

    .line 489
    const/4 v3, 0x0

    const-string v4, "icon_day1"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v24, v3

    .line 490
    const/4 v3, 0x1

    const-string v4, "icon_day2"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v24, v3

    .line 491
    const/4 v3, 0x2

    const-string v4, "icon_day3"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v24, v3

    .line 492
    const/4 v3, 0x3

    const-string v4, "icon_day4"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v24, v3

    .line 493
    const/4 v3, 0x0

    const-string v4, "icon_night1"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v25, v3

    .line 494
    const/4 v3, 0x1

    const-string v4, "icon_night2"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v25, v3

    .line 495
    const/4 v3, 0x2

    const-string v4, "icon_night3"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v25, v3

    .line 496
    const/4 v3, 0x3

    const-string v4, "icon_night4"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v25, v3

    .line 497
    const/4 v3, 0x0

    const-string v4, "sunrise1"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v39, v3

    .line 498
    const/4 v3, 0x1

    const-string v4, "sunrise2"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v39, v3

    .line 499
    const/4 v3, 0x2

    const-string v4, "sunrise3"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v39, v3

    .line 500
    const/4 v3, 0x3

    const-string v4, "sunrise4"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v39, v3

    .line 501
    const/4 v3, 0x0

    const-string v4, "sunset1"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v40, v3

    .line 502
    const/4 v3, 0x1

    const-string v4, "sunset2"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v40, v3

    .line 503
    const/4 v3, 0x2

    const-string v4, "sunset3"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v40, v3

    .line 504
    const/4 v3, 0x3

    const-string v4, "sunset4"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v40, v3

    .line 505
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 508
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v33

    .line 509
    .local v33, "mCalendar":Ljava/util/Calendar;
    const-string v34, "E"

    .line 511
    .local v34, "mWeekdayFormat":Ljava/lang/String;
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_346
    const/4 v3, 0x4

    move/from16 v0, v21

    if-ge v0, v3, :cond_36d

    .line 513
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const v5, 0x5265c00

    add-int/lit8 v6, v21, 0x1

    mul-int/2addr v5, v6

    int-to-long v5, v5

    add-long/2addr v3, v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 514
    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v16, v21

    .line 511
    add-int/lit8 v21, v21, 0x1

    goto :goto_346

    .line 518
    :cond_36d
    const-string v3, "null"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5d1

    .line 520
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 521
    .local v26, "icon_num":I
    const/4 v3, 0x1

    move/from16 v0, v26

    if-lt v0, v3, :cond_52d

    const/16 v3, 0x2c

    move/from16 v0, v26

    if-gt v0, v3, :cond_52d

    .line 523
    sget-object v3, Lcom/asus/weather/WeatherWidgetProvider;->INDEX:[I

    add-int/lit8 v4, v26, -0x1

    aget v28, v3, v4

    .line 524
    .local v28, "index":I
    const v3, 0x7f080012

    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 525
    const v3, 0x7f080012

    sget-object v4, Lcom/asus/weather/WeatherWidgetProvider;->PICTURE:[I

    aget v4, v4, v28

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 532
    .end local v28    # "index":I
    :goto_39f
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xd

    if-le v3, v4, :cond_538

    .line 534
    const v3, 0x7f080013

    const/4 v4, 0x4

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 535
    const v3, 0x7f080014

    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 536
    const v3, 0x7f080014

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v13}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 545
    :goto_3c1
    invoke-virtual/range {v48 .. v48}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x10

    if-le v3, v4, :cond_554

    .line 547
    const v3, 0x7f080015

    const/4 v4, 0x4

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 548
    const v3, 0x7f080016

    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 549
    const v3, 0x7f080016

    move-object/from16 v0, p4

    move-object/from16 v1, v48

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 558
    :goto_3e5
    const-string v3, ""

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6d9

    .line 560
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 561
    .local v38, "strMoreinfo":Ljava/lang/String;
    const-string v3, " "

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 562
    move-object/from16 v0, v38

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 563
    const-string v3, ", "

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 564
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 565
    const-string v3, " "

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 566
    move-object/from16 v0, v38

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 567
    const-string v3, " "

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 568
    move-object/from16 v0, v38

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 569
    const-string v3, " "

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 570
    move-object/from16 v0, v38

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 572
    const v3, 0x7f080017

    move-object/from16 v0, p4

    move-object/from16 v1, v38

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 574
    const-string v44, ""

    .line 575
    .local v44, "tempunit":Ljava/lang/String;
    sget-object v3, Lcom/asus/weather/P;->PREF_UNITLIST:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_572

    .line 577
    const/16 v46, 0x2103

    .line 578
    .local v46, "unit":C
    invoke-static/range {v46 .. v46}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v47

    .line 579
    .local v47, "unitStr":Ljava/lang/String;
    move-object/from16 v44, v47

    .line 592
    .end local v46    # "unit":C
    .end local v47    # "unitStr":Ljava/lang/String;
    :goto_474
    const v3, 0x7f080019

    move-object/from16 v0, p4

    move-object/from16 v1, v43

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 593
    const v3, 0x7f08001a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 594
    const v3, 0x7f08000a

    const/4 v4, 0x4

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 595
    const v3, 0x7f08000d

    const v4, 0x7f020009

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 596
    const v3, 0x7f08000d

    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 597
    const-string v3, "1"

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a5

    .line 599
    invoke-static/range {p1 .. p1}, Lcom/asus/weather/WeatherWidgetProvider;->lastUpdate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v30

    .line 600
    .local v30, "lastupdate":Ljava/lang/String;
    if-eqz v30, :cond_592

    .line 602
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f060029

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 603
    .local v29, "info":Ljava/lang/String;
    const v3, 0x7f080018

    move-object/from16 v0, p4

    move-object/from16 v1, v29

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 604
    const-string v3, "[WeatherWidgetProvider]"

    const-string v4, "[4x4 show Interval:last update]"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    .end local v29    # "info":Ljava/lang/String;
    .end local v30    # "lastupdate":Ljava/lang/String;
    :goto_4fb
    const/16 v35, 0x0

    .line 619
    .local v35, "num":I
    const/16 v27, 0x0

    .line 621
    .local v27, "idx":I
    const/16 v21, 0x0

    :goto_501
    const/4 v3, 0x4

    move/from16 v0, v21

    if-ge v0, v3, :cond_6d9

    .line 623
    aget-object v3, v39, v21

    aget-object v4, v40, v21

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v14}, Lcom/asus/weather/WeatherWidgetProvider;->day_or_night(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5b8

    .line 625
    aget v5, v41, v21

    aget v6, v42, v21

    aget v7, v23, v21

    aget v8, v17, v21

    aget-object v9, v31, v21

    aget-object v10, v18, v21

    aget-object v11, v24, v21

    aget-object v12, v16, v21

    move-object/from16 v3, p0

    move-object/from16 v4, p4

    invoke-virtual/range {v3 .. v12}, Lcom/asus/weather/WeatherWidgetProvider;->setSmallIconInfo(Landroid/widget/RemoteViews;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    :goto_52a
    add-int/lit8 v21, v21, 0x1

    goto :goto_501

    .line 529
    .end local v27    # "idx":I
    .end local v35    # "num":I
    .end local v38    # "strMoreinfo":Ljava/lang/String;
    .end local v44    # "tempunit":Ljava/lang/String;
    :cond_52d
    const v3, 0x7f080012

    const/4 v4, 0x4

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_39f

    .line 540
    :cond_538
    const v3, 0x7f080014

    const/4 v4, 0x4

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 541
    const v3, 0x7f080013

    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 542
    const v3, 0x7f080013

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v13}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_3c1

    .line 553
    :cond_554
    const v3, 0x7f080016

    const/4 v4, 0x4

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 554
    const v3, 0x7f080015

    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 555
    const v3, 0x7f080015

    move-object/from16 v0, p4

    move-object/from16 v1, v48

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_3e5

    .line 581
    .restart local v38    # "strMoreinfo":Ljava/lang/String;
    .restart local v44    # "tempunit":Ljava/lang/String;
    :cond_572
    sget-object v3, Lcom/asus/weather/P;->PREF_UNITLIST:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_589

    .line 583
    const/16 v46, 0x2109

    .line 584
    .restart local v46    # "unit":C
    invoke-static/range {v46 .. v46}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v47

    .line 585
    .restart local v47    # "unitStr":Ljava/lang/String;
    move-object/from16 v44, v47

    .line 586
    goto/16 :goto_474

    .line 589
    .end local v46    # "unit":C
    .end local v47    # "unitStr":Ljava/lang/String;
    :cond_589
    const-string v3, "[WeatherWidgetProvider]"

    const-string v4, "Temperature unit is wrong"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_474

    .line 608
    .restart local v30    # "lastupdate":Ljava/lang/String;
    :cond_592
    const v3, 0x7f080018

    const-string v4, ""

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 609
    const-string v3, "[WeatherWidgetProvider]"

    const-string v4, "Got current time null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4fb

    .line 614
    .end local v30    # "lastupdate":Ljava/lang/String;
    :cond_5a5
    const v3, 0x7f080018

    const-string v4, ""

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 615
    const-string v3, "[WeatherWidgetProvider]"

    const-string v4, "[Don\'t show Interval]"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4fb

    .line 629
    .restart local v27    # "idx":I
    .restart local v35    # "num":I
    :cond_5b8
    aget v5, v41, v21

    aget v6, v42, v21

    aget v7, v23, v21

    aget v8, v17, v21

    aget-object v9, v32, v21

    aget-object v10, v19, v21

    aget-object v11, v25, v21

    aget-object v12, v16, v21

    move-object/from16 v3, p0

    move-object/from16 v4, p4

    invoke-virtual/range {v3 .. v12}, Lcom/asus/weather/WeatherWidgetProvider;->setSmallIconInfo(Landroid/widget/RemoteViews;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_52a

    .line 636
    .end local v26    # "icon_num":I
    .end local v27    # "idx":I
    .end local v35    # "num":I
    .end local v38    # "strMoreinfo":Ljava/lang/String;
    .end local v44    # "tempunit":Ljava/lang/String;
    :cond_5d1
    const-string v3, "[WeatherWidgetProvider]"

    const-string v4, "No information in the contentprovider"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const v3, 0x7f080013

    const v4, 0x7f060008

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 638
    const v3, 0x7f080014

    const/4 v4, 0x4

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 639
    const v3, 0x7f080013

    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 640
    const v3, 0x7f080015

    const-string v4, ""

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 641
    const v3, 0x7f080016

    const/4 v4, 0x4

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 642
    const v3, 0x7f080015

    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 643
    const v3, 0x7f080017

    const-string v4, ""

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 644
    const v3, 0x7f080019

    const-string v4, ""

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 645
    const v3, 0x7f08001a

    const-string v4, ""

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 646
    const v3, 0x7f080018

    const-string v4, ""

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 647
    const v3, 0x7f08001c

    const-string v4, ""

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 648
    const v3, 0x7f080020

    const-string v4, ""

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 649
    const v3, 0x7f080024

    const-string v4, ""

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 650
    const v3, 0x7f080028

    const-string v4, ""

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 651
    const v3, 0x7f08001d

    const-string v4, ""

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 652
    const v3, 0x7f080021

    const-string v4, ""

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 653
    const v3, 0x7f080025

    const-string v4, ""

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 654
    const v3, 0x7f080029

    const-string v4, ""

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 655
    const v3, 0x7f08001b

    const/4 v4, 0x4

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 656
    const v3, 0x7f08001f

    const/4 v4, 0x4

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 657
    const v3, 0x7f080023

    const/4 v4, 0x4

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 658
    const v3, 0x7f080027

    const/4 v4, 0x4

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 659
    const v3, 0x7f08000d

    const/4 v4, 0x4

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 660
    const v3, 0x7f08000a

    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 661
    const v3, 0x7f08000a

    const v4, 0x7f020001

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 662
    const v3, 0x7f080012

    const/4 v4, 0x4

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 669
    .end local v21    # "i":I
    .end local v33    # "mCalendar":Ljava/util/Calendar;
    .end local v34    # "mWeekdayFormat":Ljava/lang/String;
    :cond_6d9
    :goto_6d9
    return-void

    .line 667
    :cond_6da
    const-string v3, "[WeatherWidgetProvider]"

    const-string v4, "weatherCursor is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d9

    .line 422
    :array_6e2
    .array-data 4
        0x7f08001d
        0x7f080021
        0x7f080025
        0x7f080029
    .end array-data

    .line 430
    :array_6ee
    .array-data 4
        0x7f08001e
        0x7f080022
        0x7f080026
        0x7f08002a
    .end array-data

    .line 438
    :array_6fa
    .array-data 4
        0x7f08001c
        0x7f080020
        0x7f080024
        0x7f080028
    .end array-data

    .line 446
    :array_706
    .array-data 4
        0x7f08001b
        0x7f08001f
        0x7f080023
        0x7f080027
    .end array-data
.end method
