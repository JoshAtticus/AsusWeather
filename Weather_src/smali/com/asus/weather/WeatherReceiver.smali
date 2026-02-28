.class public Lcom/asus/weather/WeatherReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WeatherReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/weather/WeatherReceiver$SetupWizardObserver;,
        Lcom/asus/weather/WeatherReceiver$timerTask;
    }
.end annotation


# static fields
.field static final CONTENT_URI:Landroid/net/Uri;

.field public static failcount:I

.field static isDuringUpdate:Z


# instance fields
.field context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field pref:Landroid/content/SharedPreferences;

.field receiverContext:Landroid/content/Context;

.field timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 28
    const-string v0, "content://com.asus.weather.revived.provider/weather/1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/asus/weather/WeatherReceiver;->CONTENT_URI:Landroid/net/Uri;

    .line 29
    sput-boolean v1, Lcom/asus/weather/WeatherReceiver;->isDuringUpdate:Z

    .line 36
    sput v1, Lcom/asus/weather/WeatherReceiver;->failcount:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/asus/weather/WeatherReceiver;->handler:Landroid/os/Handler;

    .line 33
    iput-object v0, p0, Lcom/asus/weather/WeatherReceiver;->timer:Ljava/util/Timer;

    .line 34
    iput-object v0, p0, Lcom/asus/weather/WeatherReceiver;->pref:Landroid/content/SharedPreferences;

    .line 370
    return-void
.end method

.method static synthetic access$000(Lcom/asus/weather/WeatherReceiver;Landroid/content/Context;)Z
    .registers 3
    .param p0, "x0"    # Lcom/asus/weather/WeatherReceiver;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/asus/weather/WeatherReceiver;->haveInternet(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private checkIsOverLastUpdateTime(Landroid/content/Context;)Z
    .registers 21
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 418
    const-string v16, ""

    .line 419
    .local v16, "strlastupdate":Ljava/lang/String;
    const-string v13, ""

    .line 421
    .local v13, "strCurrent":Ljava/lang/String;
    const-string v3, "content://com.asus.weather.revived.provider/weather/1"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 423
    .local v2, "CONTENT_URI":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 424
    .local v1, "content":Landroid/content/ContentResolver;
    sget-object v3, Lcom/asus/weather/P;->WEATHER_QUERY_COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "_id"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 425
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_2e

    .line 427
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 428
    const-string v3, "lastupdate"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 429
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 431
    if-nez v16, :cond_37

    .line 433
    const/4 v3, 0x1

    .line 476
    :goto_2d
    return v3

    .line 438
    :cond_2e
    const-string v3, "[WeatherReceiver]"

    const-string v4, "checkIsOverLastUpdateTime: weatherCursor is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const/4 v3, 0x1

    goto :goto_2d

    .line 442
    :cond_37
    new-instance v11, Landroid/text/format/Time;

    invoke-direct {v11}, Landroid/text/format/Time;-><init>()V

    .line 443
    .local v11, "mTime":Landroid/text/format/Time;
    invoke-virtual {v11}, Landroid/text/format/Time;->setToNow()V

    .line 444
    const-string v3, "%H"

    invoke-virtual {v11, v3}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 445
    .local v8, "hour":I
    const-string v12, ""

    .line 446
    .local v12, "strAMPM":Ljava/lang/String;
    const/16 v3, 0xc

    if-lt v8, v3, :cond_e7

    .line 448
    add-int/lit8 v8, v8, -0xc

    .line 449
    const-string v12, "PM"

    .line 455
    :goto_53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%Y/%m/%d "

    invoke-virtual {v11, v4}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":%M:%S"

    invoke-virtual {v11, v4}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 457
    const/4 v3, 0x0

    const-string v4, ":"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 458
    .local v17, "strlastupdate_DateHour":Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, ":"

    invoke-virtual {v13, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v13, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 459
    .local v14, "strCurrent_DateHour":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ee

    .line 461
    const-string v3, ":"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const-string v4, ":"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 462
    .local v18, "strlastupdate_Min":Ljava/lang/String;
    const-string v3, ":"

    invoke-virtual {v13, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const-string v4, ":"

    invoke-virtual {v13, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v13, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 463
    .local v15, "strCurrent_Min":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 464
    .local v10, "intlastupdate_Min":I
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 465
    .local v9, "intCurrent_Min":I
    sub-int v3, v9, v10

    const/16 v4, 0xa

    if-lt v3, v4, :cond_eb

    .line 467
    const/4 v3, 0x1

    goto/16 :goto_2d

    .line 453
    .end local v9    # "intCurrent_Min":I
    .end local v10    # "intlastupdate_Min":I
    .end local v14    # "strCurrent_DateHour":Ljava/lang/String;
    .end local v15    # "strCurrent_Min":Ljava/lang/String;
    .end local v17    # "strlastupdate_DateHour":Ljava/lang/String;
    .end local v18    # "strlastupdate_Min":Ljava/lang/String;
    :cond_e7
    const-string v12, "AM"

    goto/16 :goto_53

    .line 471
    .restart local v9    # "intCurrent_Min":I
    .restart local v10    # "intlastupdate_Min":I
    .restart local v14    # "strCurrent_DateHour":Ljava/lang/String;
    .restart local v15    # "strCurrent_Min":Ljava/lang/String;
    .restart local v17    # "strlastupdate_DateHour":Ljava/lang/String;
    .restart local v18    # "strlastupdate_Min":Ljava/lang/String;
    :cond_eb
    const/4 v3, 0x0

    goto/16 :goto_2d

    .line 476
    .end local v9    # "intCurrent_Min":I
    .end local v10    # "intlastupdate_Min":I
    .end local v15    # "strCurrent_Min":Ljava/lang/String;
    .end local v18    # "strlastupdate_Min":Ljava/lang/String;
    :cond_ee
    const/4 v3, 0x1

    goto/16 :goto_2d
.end method

.method private haveInternet(Landroid/content/Context;)Z
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 338
    const/4 v2, 0x0

    .line 339
    .local v2, "result":Z
    const-string v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 340
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 341
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_15

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_2f

    .line 343
    :cond_15
    const/4 v2, 0x0

    .line 357
    :goto_16
    const-string v3, "[WeatherSettingsAdapter]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AnyNetwork:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    return v2

    .line 347
    :cond_2f
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_37

    .line 349
    const/4 v2, 0x0

    goto :goto_16

    .line 353
    :cond_37
    const/4 v2, 0x1

    goto :goto_16
.end method


# virtual methods
.method public DoUpdate()V
    .registers 4

    .prologue
    .line 292
    const-string v0, "[WeatherReceiver]"

    const-string v1, "Request weather update"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    sget-boolean v0, Lcom/asus/weather/WeatherReceiver;->isDuringUpdate:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/asus/weather/WeatherReceiver;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/asus/weather/WeatherReceiver;->checkIsOverLastUpdateTime(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 295
    :cond_13
    const/4 v0, 0x1

    sput-boolean v0, Lcom/asus/weather/WeatherReceiver;->isDuringUpdate:Z

    .line 296
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/asus/weather/WeatherReceiver;->context:Landroid/content/Context;

    const-class v2, Lcom/asus/weather/WeatherService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 297
    const-string v1, "QUERYTYPE"

    const-string v2, "QUERYWEATHER"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    iget-object v1, p0, Lcom/asus/weather/WeatherReceiver;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 304
    :goto_2b
    return-void

    .line 302
    :cond_2c
    const-string v0, "[WeatherReceiver]"

    const-string v1, "P.UPDATE_REQUEST:Receive isDuringUpdate=false -> SKIP query"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b
.end method

.method public cancelCurrentAlarmManager()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 277
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.asus.weather.weatherIntentAction"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 278
    .local v1, "intent1":Landroid/content/Intent;
    const-string v3, "CONTENT"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 279
    const-string v3, "CHECKNETWORK"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 280
    const-string v3, "FromAlarm"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 281
    iget-object v3, p0, Lcom/asus/weather/WeatherReceiver;->context:Landroid/content/Context;

    invoke-static {v3, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 282
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/asus/weather/WeatherReceiver;->context:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 283
    .local v0, "alarm":Landroid/app/AlarmManager;
    if-eqz v0, :cond_34

    .line 285
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 286
    const-string v3, "[WeatherReceiver]"

    const-string v4, "Alarm manager is canceled successfully!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_34
    return-void
.end method

.method public observeSetupWizard(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/asus/weather/WeatherReceiver;->receiverContext:Landroid/content/Context;

    .line 365
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/asus/weather/WeatherReceiver$SetupWizardObserver;

    invoke-direct {v3, p0}, Lcom/asus/weather/WeatherReceiver$SetupWizardObserver;-><init>(Lcom/asus/weather/WeatherReceiver;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 368
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14

    .prologue
    .line 41
    iput-object p1, p0, Lcom/asus/weather/WeatherReceiver;->context:Landroid/content/Context;

    .line 42
    const-string v0, "PREF_WEATHER"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/weather/WeatherReceiver;->pref:Landroid/content/SharedPreferences;

    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 46
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 49
    const-string v0, "PREF_WEATHER"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 50
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 52
    const-string v2, "FreqSpinner"

    const/4 v3, -0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 53
    const/4 v2, -0x1

    if-eq v0, v2, :cond_122

    .line 56
    sget-object v1, Lcom/asus/weather/P;->PREF_FREQLIST:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    if-eq v0, v1, :cond_44

    .line 58
    const-string v1, "[WeatherReceiver]"

    const-string v2, "Register alarm manager using pref value:Success"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    mul-int/lit16 v0, v0, 0x3e8

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    .line 60
    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/asus/weather/WeatherReceiver;->register(Landroid/content/Context;J)V

    .line 96
    :cond_44
    :goto_44
    const-string v0, "[WeatherReceiver]"

    const-string v1, "bootcomplete_out:Success"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_4b
    const-string v0, "com.asus.weather.weatherIntentAction"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 102
    const-string v0, "CONTENT"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 104
    packed-switch v0, :pswitch_data_2b2

    .line 206
    :cond_5d
    :goto_5d
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_121

    .line 208
    const-string v0, "[WeatherReceiver]"

    const-string v1, "Connectivity is changed!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const-string v0, "noConnectivity"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 210
    const-string v1, "[WeatherReceiver]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "noConnectivity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    if-nez v0, :cond_121

    .line 214
    invoke-virtual {p0}, Lcom/asus/weather/WeatherReceiver;->retElapsedTime()J

    move-result-wide v0

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 216
    sub-long v4, v2, v0

    .line 217
    iget-object v6, p0, Lcom/asus/weather/WeatherReceiver;->pref:Landroid/content/SharedPreferences;

    const-string v7, "FreqSpinner"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 218
    iget-object v7, p0, Lcom/asus/weather/WeatherReceiver;->pref:Landroid/content/SharedPreferences;

    const-string v8, "Radiochoice"

    const/4 v9, -0x1

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 219
    const-string v8, "[WeatherReceiver]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "time_last:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "time_cur:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "curTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/asus/weather/WeatherService;->getCurrentTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    if-nez v7, :cond_121

    mul-int/lit8 v0, v6, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    cmp-long v0, v4, v0

    if-lez v0, :cond_121

    .line 223
    const-string v0, "[WeatherReceiver]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "do connectivity update failcount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/asus/weather/WeatherReceiver;->failcount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    sget v0, Lcom/asus/weather/WeatherReceiver;->failcount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/asus/weather/WeatherReceiver;->failcount:I

    .line 225
    sget v0, Lcom/asus/weather/WeatherReceiver;->failcount:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_121

    .line 228
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.asus.weather.weatherIntentAction"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 229
    const-string v1, "CONTENT"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 230
    const-string v1, "CHECKNETWORK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 231
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 236
    :cond_121
    return-void

    .line 66
    :cond_122
    invoke-static {}, Lcom/asus/weather/WeatherFragmentSettings;->isChinaSku()Z

    move-result v0

    if-nez v0, :cond_158

    .line 68
    const-string v0, "Radiochoice"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 86
    :goto_12e
    const-string v0, "FreqSpinner"

    sget-object v2, Lcom/asus/weather/P;->PREF_FREQLIST:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 87
    const-string v0, "UnitSpinner"

    sget-object v2, Lcom/asus/weather/P;->PREF_UNITLIST:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 88
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 89
    const-string v0, "[WeatherReceiver]"

    const-string v1, "Register alarm manager using default value:Success"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const v0, 0xdbba00

    .line 91
    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/asus/weather/WeatherReceiver;->register(Landroid/content/Context;J)V

    .line 93
    invoke-virtual {p0, p1}, Lcom/asus/weather/WeatherReceiver;->observeSetupWizard(Landroid/content/Context;)V

    goto/16 :goto_44

    .line 72
    :cond_158
    const-string v0, "Radiochoice"

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 74
    const v0, 0x7f06002d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 75
    const v2, 0x7f06002e

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 76
    const v3, 0x7f06002f

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 77
    const v4, 0x7f060030

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 79
    const-string v5, "Manual_city"

    invoke-interface {v1, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 80
    const-string v0, "Manual_country"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 81
    const-string v0, "Manual_adminarea"

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 82
    const-string v0, "Manual_location"

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_12e

    .line 108
    :pswitch_18f
    const-string v0, "[WeatherReceiver]"

    const-string v1, "Alarmmanager"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.asus.weather.weatherIntentAction"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    const-string v1, "CONTENT"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    const-string v1, "CHECKNETWORK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 113
    const-string v1, "FromAlarm"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 114
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 115
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 116
    if-eqz v0, :cond_1c2

    .line 118
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 122
    :cond_1c2
    const-string v0, "PERIOD"

    const-wide/16 v1, 0x3e8

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 125
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 126
    if-eqz v0, :cond_1fd

    .line 128
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.asus.weather.weatherIntentAction"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    const-string v2, "CONTENT"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 130
    const-string v2, "CHECKNETWORK"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 131
    const-string v2, "FromAlarm"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 132
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 133
    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto/16 :goto_5d

    .line 137
    :cond_1fd
    const-string v0, "[WeatherReceiver]"

    const-string v1, "ALARMMANAGER_REGISTER_REQUEST:Alarm manager has error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5d

    .line 144
    :pswitch_206
    const-string v0, "CHECKNETWORK"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 145
    const-string v1, "FromAlarm"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 146
    if-eqz v1, :cond_220

    .line 148
    const-string v1, "[WeatherReceiver]"

    const-string v2, "Reset failcount"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v1, 0x0

    sput v1, Lcom/asus/weather/WeatherReceiver;->failcount:I

    .line 152
    :cond_220
    const-string v1, "[WeatherReceiver]"

    const-string v2, "P.UPDATE_REQUEST:Receive"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    if-nez v0, :cond_231

    if-nez v0, :cond_236

    invoke-direct {p0, p1}, Lcom/asus/weather/WeatherReceiver;->haveInternet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_236

    .line 156
    :cond_231
    invoke-virtual {p0}, Lcom/asus/weather/WeatherReceiver;->DoUpdate()V

    goto/16 :goto_5d

    .line 160
    :cond_236
    const-string v0, "[WeatherReceiver]"

    const-string v1, "Network is not available. Prepare to count 20 secs"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/asus/weather/WeatherReceiver;->timer:Ljava/util/Timer;

    .line 162
    iget-object v0, p0, Lcom/asus/weather/WeatherReceiver;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_5d

    .line 164
    const-string v0, "[WeatherReceiver]"

    const-string v1, "Start count 20 secs"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/asus/weather/WeatherReceiver;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/asus/weather/WeatherReceiver$timerTask;

    invoke-direct {v1, p0}, Lcom/asus/weather/WeatherReceiver$timerTask;-><init>(Lcom/asus/weather/WeatherReceiver;)V

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_5d

    .line 173
    :pswitch_25d
    const/4 v0, 0x0

    sput-boolean v0, Lcom/asus/weather/WeatherReceiver;->isDuringUpdate:Z

    .line 174
    const/4 v0, 0x0

    sput v0, Lcom/asus/weather/WeatherReceiver;->failcount:I

    .line 175
    const-string v0, "[WeatherReceiver]"

    const-string v1, "P.UPDATE_REPLY_SUCCESS:Receive stopService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/asus/weather/WeatherService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 177
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_5d

    .line 183
    :pswitch_276
    const/4 v0, 0x0

    sput-boolean v0, Lcom/asus/weather/WeatherReceiver;->isDuringUpdate:Z

    .line 184
    const-string v0, "[WeatherReceiver]"

    const-string v1, "P.UPDATE_REPLY_FAIL:Receive stopService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/asus/weather/WeatherService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 186
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_5d

    .line 193
    :pswitch_28c
    const-string v0, "[WeatherReceiver]"

    const-string v1, "P.SEARCH_CITY_REQUEST:Receive"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/asus/weather/WeatherService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 195
    const-string v1, "QUERYTYPE"

    const-string v2, "CITYFIND"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    const-string v1, "CITYFIND"

    const-string v2, "CITYNAME"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_5d

    .line 104
    nop

    :pswitch_data_2b2
    .packed-switch 0x1
        :pswitch_206
        :pswitch_25d
        :pswitch_276
        :pswitch_18f
        :pswitch_28c
    .end packed-switch
.end method

.method public register(Landroid/content/Context;J)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "period"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 398
    const-string v1, "alarm"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 400
    .local v0, "alarm2":Landroid/app/AlarmManager;
    if-eqz v0, :cond_37

    .line 402
    const-string v1, "[WeatherReceiver]"

    const-string v2, "bootcomplete:Success"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    new-instance v7, Landroid/content/Intent;

    const-string v1, "com.asus.weather.weatherIntentAction"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 404
    .local v7, "intent2":Landroid/content/Intent;
    const-string v1, "CONTENT"

    invoke-virtual {v7, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 405
    const-string v1, "CHECKNETWORK"

    invoke-virtual {v7, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 406
    const-string v1, "FromAlarm"

    invoke-virtual {v7, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 407
    invoke-static {p1, v3, v7, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 408
    .local v6, "pendingIntent2":Landroid/app/PendingIntent;
    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-wide v4, p2

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 414
    .end local v6    # "pendingIntent2":Landroid/app/PendingIntent;
    .end local v7    # "intent2":Landroid/content/Intent;
    :goto_36
    return-void

    .line 412
    :cond_37
    const-string v1, "[WeatherReceiver]"

    const-string v2, "Alarm manager has error"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36
.end method

.method public retElapsedTime()J
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 242
    iget-object v1, p0, Lcom/asus/weather/WeatherReceiver;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 243
    .local v0, "content":Landroid/content/ContentResolver;
    sget-object v1, Lcom/asus/weather/WeatherReceiver;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/asus/weather/P;->WEATHER_QUERY_COLUMNS:[Ljava/lang/String;

    const-string v5, "_id"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 245
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_34

    .line 247
    const-string v1, "[WeatherWidgetProvider]"

    const-string v2, "LastUpdateCursor is NOT null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 249
    const-string v1, "elapsedtime"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 250
    .local v7, "strlastupdate":Ljava/lang/Long;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 251
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 256
    .end local v7    # "strlastupdate":Ljava/lang/Long;
    :goto_33
    return-wide v1

    .line 255
    :cond_34
    const-string v1, "[WeatherWidgetProvider]"

    const-string v2, "[retElapsedTime]LastUpdateCursor is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const-wide/16 v1, 0x0

    goto :goto_33
.end method
