.class public Lcom/asus/weather/WeatherManualActivity;
.super Landroid/app/Activity;
.source "WeatherManualActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/weather/WeatherManualActivity$Receiver;,
        Lcom/asus/weather/WeatherManualActivity$InfoDialog;
    }
.end annotation


# static fields
.field static final CONTENT_URI:Landroid/net/Uri;

.field static final CONTENT_URI_CITYFIND:Landroid/net/Uri;

.field static cityname:Ljava/lang/String;

.field public static strCityinfo:[Ljava/lang/String;


# instance fields
.field editText:Landroid/widget/EditText;

.field private editTextListener:Landroid/text/TextWatcher;

.field public mInfoDialog:Lcom/asus/weather/WeatherManualActivity$InfoDialog;

.field preEdt:Landroid/content/SharedPreferences$Editor;

.field pref:Landroid/content/SharedPreferences;

.field rcv:Lcom/asus/weather/WeatherManualActivity$Receiver;

.field showProgressDialog:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const-string v0, ""

    sput-object v0, Lcom/asus/weather/WeatherManualActivity;->cityname:Ljava/lang/String;

    .line 46
    const-string v0, "content://com.asus.weather.revived.provider/weather/1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/asus/weather/WeatherManualActivity;->CONTENT_URI:Landroid/net/Uri;

    .line 47
    const-string v0, "content://com.asus.weather.revived.provider/cityfind"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/asus/weather/WeatherManualActivity;->CONTENT_URI_CITYFIND:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/weather/WeatherManualActivity;->showProgressDialog:Z

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/weather/WeatherManualActivity;->mInfoDialog:Lcom/asus/weather/WeatherManualActivity$InfoDialog;

    .line 245
    new-instance v0, Lcom/asus/weather/WeatherManualActivity$3;

    invoke-direct {v0, p0}, Lcom/asus/weather/WeatherManualActivity$3;-><init>(Lcom/asus/weather/WeatherManualActivity;)V

    iput-object v0, p0, Lcom/asus/weather/WeatherManualActivity;->editTextListener:Landroid/text/TextWatcher;

    .line 278
    return-void
.end method

.method private Trim(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 275
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$000(Lcom/asus/weather/WeatherManualActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/asus/weather/WeatherManualActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/asus/weather/WeatherManualActivity;->Trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/asus/weather/WeatherManualActivity;I)V
    .registers 2
    .param p0, "x0"    # Lcom/asus/weather/WeatherManualActivity;
    .param p1, "x1"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/asus/weather/WeatherManualActivity;->listWeatherCityFind(I)V

    return-void
.end method

.method private haveInternet()Z
    .registers 7

    .prologue
    .line 170
    const/4 v2, 0x0

    .line 171
    .local v2, "result":Z
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 172
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 173
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_15

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_2f

    .line 175
    :cond_15
    const/4 v2, 0x0

    .line 189
    :goto_16
    const-string v3, "[WeatherManualActivity]"

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

    .line 191
    return v2

    .line 179
    :cond_2f
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_37

    .line 181
    const/4 v2, 0x0

    goto :goto_16

    .line 185
    :cond_37
    const/4 v2, 0x1

    goto :goto_16
.end method

.method private listWeatherCityFind(I)V
    .registers 13

    .prologue
    const/16 v10, 0xc

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 340
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 341
    sget-object v1, Lcom/asus/weather/WeatherManualActivity;->CONTENT_URI_CITYFIND:Landroid/net/Uri;

    sget-object v2, Lcom/asus/weather/P;->WEATHER_QUERY_COLUMNS2:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 342
    if-eqz v0, :cond_1f2

    .line 344
    const/4 v1, -0x1

    if-ne p1, v1, :cond_12c

    .line 346
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 347
    const-string v2, "[WeatherSettingsAdapter]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    if-ne v1, v6, :cond_101

    .line 351
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 353
    sget-object v1, Lcom/asus/weather/WeatherManualActivity;->strCityinfo:[Ljava/lang/String;

    if-eqz v1, :cond_e8

    .line 355
    sget-object v1, Lcom/asus/weather/WeatherManualActivity;->strCityinfo:[Ljava/lang/String;

    const-string v2, "city"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 356
    sget-object v1, Lcom/asus/weather/WeatherManualActivity;->strCityinfo:[Ljava/lang/String;

    const-string v2, "country"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 357
    sget-object v1, Lcom/asus/weather/WeatherManualActivity;->strCityinfo:[Ljava/lang/String;

    const-string v2, "adminArea"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    .line 358
    sget-object v1, Lcom/asus/weather/WeatherManualActivity;->strCityinfo:[Ljava/lang/String;

    const-string v2, "location"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    .line 359
    const-string v1, "[WeatherManualActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "city: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/asus/weather/WeatherManualActivity;->strCityinfo:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const-string v1, "[WeatherManualActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "country: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/asus/weather/WeatherManualActivity;->strCityinfo:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const-string v1, "[WeatherManualActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adminArea: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/asus/weather/WeatherManualActivity;->strCityinfo:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const-string v1, "[WeatherManualActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "location: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/asus/weather/WeatherManualActivity;->strCityinfo:[Ljava/lang/String;

    aget-object v3, v3, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_e8
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 367
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.asus.weather.weatherIntentAction"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 368
    const-string v2, "CONTENT"

    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 369
    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 370
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 409
    :cond_fd
    :goto_fd
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 415
    :goto_100
    return-void

    .line 372
    :cond_101
    if-nez v1, :cond_117

    .line 375
    const v1, 0x7f060005

    const/16 v2, 0x1770

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 377
    const-string v1, "[WeatherManualActivity]"

    const-string v2, "No cityfind"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fd

    .line 379
    :cond_117
    if-le v1, v6, :cond_fd

    .line 381
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 382
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/asus/weather/WeatherListViewActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 383
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 384
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_fd

    .line 389
    :cond_12c
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 391
    sget-object v1, Lcom/asus/weather/WeatherManualActivity;->strCityinfo:[Ljava/lang/String;

    if-eqz v1, :cond_16b

    .line 393
    sget-object v1, Lcom/asus/weather/WeatherManualActivity;->strCityinfo:[Ljava/lang/String;

    const-string v2, "city"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 394
    sget-object v1, Lcom/asus/weather/WeatherManualActivity;->strCityinfo:[Ljava/lang/String;

    const-string v2, "country"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 395
    sget-object v1, Lcom/asus/weather/WeatherManualActivity;->strCityinfo:[Ljava/lang/String;

    const-string v2, "adminArea"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    .line 396
    sget-object v1, Lcom/asus/weather/WeatherManualActivity;->strCityinfo:[Ljava/lang/String;

    const-string v2, "location"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    .line 398
    :cond_16b
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 400
    const-string v1, "[WeatherManualActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "city: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/asus/weather/WeatherManualActivity;->strCityinfo:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const-string v1, "[WeatherManualActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "country: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/asus/weather/WeatherManualActivity;->strCityinfo:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const-string v1, "[WeatherManualActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adminArea: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/asus/weather/WeatherManualActivity;->strCityinfo:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const-string v1, "[WeatherManualActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "location: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/asus/weather/WeatherManualActivity;->strCityinfo:[Ljava/lang/String;

    aget-object v3, v3, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.asus.weather.weatherIntentAction"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 405
    const-string v2, "CONTENT"

    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 406
    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 407
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_fd

    .line 413
    :cond_1f2
    const-string v0, "[WeatherManualActivity]"

    const-string v1, "weatherCursor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_100
.end method


# virtual methods
.method public SetInitialEditText()V
    .registers 3

    .prologue
    .line 164
    iget-object v0, p0, Lcom/asus/weather/WeatherManualActivity;->editText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v0, p0, Lcom/asus/weather/WeatherManualActivity;->editText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/asus/weather/WeatherManualActivity;->editTextListener:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 166
    return-void
.end method

.method public cancelDialog()V
    .registers 2

    .prologue
    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/weather/WeatherManualActivity;->showProgressDialog:Z

    .line 213
    iget-object v0, p0, Lcom/asus/weather/WeatherManualActivity;->mInfoDialog:Lcom/asus/weather/WeatherManualActivity$InfoDialog;

    if-eqz v0, :cond_f

    .line 215
    iget-object v0, p0, Lcom/asus/weather/WeatherManualActivity;->mInfoDialog:Lcom/asus/weather/WeatherManualActivity$InfoDialog;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/weather/WeatherManualActivity;->mInfoDialog:Lcom/asus/weather/WeatherManualActivity$InfoDialog;

    .line 218
    :cond_f
    return-void
.end method

.method public doSearch()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 107
    invoke-direct {p0}, Lcom/asus/weather/WeatherManualActivity;->haveInternet()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 109
    sget-object v1, Lcom/asus/weather/WeatherManualActivity;->cityname:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_44

    .line 111
    const-string v1, "[WeatherManualActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Search City Name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/asus/weather/WeatherManualActivity;->cityname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.asus.weather.weatherIntentAction"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "CONTENT"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    const-string v1, "CITYNAME"

    sget-object v2, Lcom/asus/weather/WeatherManualActivity;->cityname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 117
    invoke-virtual {p0}, Lcom/asus/weather/WeatherManualActivity;->showDialog()V

    .line 129
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_43
    return-void

    .line 121
    :cond_44
    const v1, 0x7f060034

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_43

    .line 127
    :cond_4f
    const v1, 0x7f060023

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_43
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v2, 0x7f030002

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 54
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 55
    .local v0, "conf":Landroid/content/res/Configuration;
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 56
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 58
    const v2, 0x7f06001e

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setTitle(I)V

    .line 59
    const-string v2, "PREF_WEATHER"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/asus/weather/WeatherManualActivity;->pref:Landroid/content/SharedPreferences;

    .line 60
    iget-object v2, p0, Lcom/asus/weather/WeatherManualActivity;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iput-object v2, p0, Lcom/asus/weather/WeatherManualActivity;->preEdt:Landroid/content/SharedPreferences$Editor;

    .line 61
    sget-object v2, Lcom/asus/weather/WeatherFragmentSettings;->strCityinfo:[Ljava/lang/String;

    sput-object v2, Lcom/asus/weather/WeatherManualActivity;->strCityinfo:[Ljava/lang/String;

    .line 62
    const v2, 0x7f080004

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/asus/weather/WeatherManualActivity;->editText:Landroid/widget/EditText;

    .line 63
    const-string v2, ""

    sput-object v2, Lcom/asus/weather/WeatherManualActivity;->cityname:Ljava/lang/String;

    .line 64
    new-instance v2, Lcom/asus/weather/WeatherManualActivity$Receiver;

    invoke-direct {v2, p0}, Lcom/asus/weather/WeatherManualActivity$Receiver;-><init>(Lcom/asus/weather/WeatherManualActivity;)V

    iput-object v2, p0, Lcom/asus/weather/WeatherManualActivity;->rcv:Lcom/asus/weather/WeatherManualActivity$Receiver;

    .line 65
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 66
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.asus.weather.weatherIntentAction"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    iget-object v2, p0, Lcom/asus/weather/WeatherManualActivity;->rcv:Lcom/asus/weather/WeatherManualActivity$Receiver;

    invoke-virtual {p0, v2, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0}, Lcom/asus/weather/WeatherManualActivity;->SetInitialEditText()V

    .line 70
    iget-object v2, p0, Lcom/asus/weather/WeatherManualActivity;->editText:Landroid/widget/EditText;

    if-eqz v2, :cond_7f

    .line 72
    iget-object v2, p0, Lcom/asus/weather/WeatherManualActivity;->editText:Landroid/widget/EditText;

    new-instance v3, Lcom/asus/weather/WeatherManualActivity$1;

    invoke-direct {v3, p0}, Lcom/asus/weather/WeatherManualActivity$1;-><init>(Lcom/asus/weather/WeatherManualActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 85
    iget-object v2, p0, Lcom/asus/weather/WeatherManualActivity;->editText:Landroid/widget/EditText;

    new-instance v3, Lcom/asus/weather/WeatherManualActivity$2;

    invoke-direct {v3, p0}, Lcom/asus/weather/WeatherManualActivity$2;-><init>(Lcom/asus/weather/WeatherManualActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 102
    :cond_7f
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/asus/weather/WeatherManualActivity;->rcv:Lcom/asus/weather/WeatherManualActivity$Receiver;

    if-eqz v0, :cond_9

    .line 157
    iget-object v0, p0, Lcom/asus/weather/WeatherManualActivity;->rcv:Lcom/asus/weather/WeatherManualActivity$Receiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 159
    :cond_9
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 160
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 265
    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    .line 267
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 269
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 144
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 145
    iget-object v0, p0, Lcom/asus/weather/WeatherManualActivity;->mInfoDialog:Lcom/asus/weather/WeatherManualActivity$InfoDialog;

    if-eqz v0, :cond_f

    .line 147
    iget-object v0, p0, Lcom/asus/weather/WeatherManualActivity;->mInfoDialog:Lcom/asus/weather/WeatherManualActivity$InfoDialog;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/weather/WeatherManualActivity;->mInfoDialog:Lcom/asus/weather/WeatherManualActivity$InfoDialog;

    .line 150
    :cond_f
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 134
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 135
    iget-boolean v0, p0, Lcom/asus/weather/WeatherManualActivity;->showProgressDialog:Z

    if-eqz v0, :cond_a

    .line 137
    invoke-virtual {p0}, Lcom/asus/weather/WeatherManualActivity;->showDialog()V

    .line 139
    :cond_a
    return-void
.end method

.method public showDialog()V
    .registers 5

    .prologue
    .line 198
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 199
    .local v0, "fm":Landroid/app/FragmentManager;
    const-string v1, "ProgressDialogTag"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/asus/weather/WeatherManualActivity$InfoDialog;

    iput-object v1, p0, Lcom/asus/weather/WeatherManualActivity;->mInfoDialog:Lcom/asus/weather/WeatherManualActivity$InfoDialog;

    .line 201
    iget-object v1, p0, Lcom/asus/weather/WeatherManualActivity;->mInfoDialog:Lcom/asus/weather/WeatherManualActivity$InfoDialog;

    if-nez v1, :cond_27

    .line 204
    new-instance v1, Lcom/asus/weather/WeatherManualActivity$InfoDialog;

    invoke-direct {v1, p0}, Lcom/asus/weather/WeatherManualActivity$InfoDialog;-><init>(Lcom/asus/weather/WeatherManualActivity;)V

    iput-object v1, p0, Lcom/asus/weather/WeatherManualActivity;->mInfoDialog:Lcom/asus/weather/WeatherManualActivity$InfoDialog;

    .line 205
    iget-object v1, p0, Lcom/asus/weather/WeatherManualActivity;->mInfoDialog:Lcom/asus/weather/WeatherManualActivity$InfoDialog;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "ProgressDialogTag"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 206
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/asus/weather/WeatherManualActivity;->showProgressDialog:Z

    .line 208
    :cond_27
    return-void
.end method
