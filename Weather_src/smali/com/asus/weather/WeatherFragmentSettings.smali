.class public Lcom/asus/weather/WeatherFragmentSettings;
.super Landroid/preference/PreferenceActivity;
.source "WeatherFragmentSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/weather/WeatherFragmentSettings$Msg_Receiver;,
        Lcom/asus/weather/WeatherFragmentSettings$InfoDialog;
    }
.end annotation


# static fields
.field static final CONTENT_URI:Landroid/net/Uri;

.field static final CONTENT_URI_CITYFIND:Landroid/net/Uri;

.field public static freq_menu:[Ljava/lang/String;

.field public static strCityinfo:[Ljava/lang/String;

.field public static unit_menu:[Ljava/lang/String;


# instance fields
.field public ChinaSku:Z

.field accuIcon:Landroid/widget/ImageView;

.field public editor:Landroid/content/SharedPreferences$Editor;

.field private isWeatherInfoAvailable:Z

.field private mButtonPref:Lcom/asus/weather/ButtonPreference;

.field public mInfoDialog:Lcom/asus/weather/WeatherFragmentSettings$InfoDialog;

.field private mRadioPref_Auto:Lcom/asus/weather/RadioPreference;

.field private mRadioPref_Manual:Lcom/asus/weather/RadioPreference;

.field private mSaveBtn:Landroid/widget/Button;

.field private mTempUnit:Landroid/preference/ListPreference;

.field private mUpdateFreq:Landroid/preference/ListPreference;

.field private preEdt:Landroid/content/SharedPreferences$Editor;

.field private pref:Landroid/content/SharedPreferences;

.field public rcv:Lcom/asus/weather/WeatherFragmentSettings$Msg_Receiver;

.field private saveClickListener:Landroid/view/View$OnClickListener;

.field public settings:Landroid/content/SharedPreferences;

.field showProgressDialog:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const-string v0, "content://com.asus.weather.revived.provider/weather/1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/asus/weather/WeatherFragmentSettings;->CONTENT_URI:Landroid/net/Uri;

    .line 36
    const-string v0, "content://com.asus.weather.revived.provider/cityfind"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/asus/weather/WeatherFragmentSettings;->CONTENT_URI_CITYFIND:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 63
    iput-boolean v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->showProgressDialog:Z

    .line 64
    iput-boolean v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->isWeatherInfoAvailable:Z

    .line 66
    iput-boolean v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->ChinaSku:Z

    .line 279
    new-instance v0, Lcom/asus/weather/WeatherFragmentSettings$2;

    invoke-direct {v0, p0}, Lcom/asus/weather/WeatherFragmentSettings$2;-><init>(Lcom/asus/weather/WeatherFragmentSettings;)V

    iput-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->saveClickListener:Landroid/view/View$OnClickListener;

    .line 729
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->mInfoDialog:Lcom/asus/weather/WeatherFragmentSettings$InfoDialog;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/asus/weather/WeatherFragmentSettings;)Landroid/content/SharedPreferences;
    .registers 2
    .param p0, "x0"    # Lcom/asus/weather/WeatherFragmentSettings;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->pref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/asus/weather/WeatherFragmentSettings;)I
    .registers 2
    .param p0, "x0"    # Lcom/asus/weather/WeatherFragmentSettings;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/asus/weather/WeatherFragmentSettings;->saveRadioState()I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/asus/weather/WeatherFragmentSettings;)V
    .registers 1
    .param p0, "x0"    # Lcom/asus/weather/WeatherFragmentSettings;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/asus/weather/WeatherFragmentSettings;->setSaveBtn()V

    return-void
.end method

.method static synthetic access$200(Lcom/asus/weather/WeatherFragmentSettings;)Landroid/content/SharedPreferences$Editor;
    .registers 2
    .param p0, "x0"    # Lcom/asus/weather/WeatherFragmentSettings;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->preEdt:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/asus/weather/WeatherFragmentSettings;)I
    .registers 2
    .param p0, "x0"    # Lcom/asus/weather/WeatherFragmentSettings;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/asus/weather/WeatherFragmentSettings;->saveFreqState()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/asus/weather/WeatherFragmentSettings;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/asus/weather/WeatherFragmentSettings;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/asus/weather/WeatherFragmentSettings;->saveUnitState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/asus/weather/WeatherFragmentSettings;)Z
    .registers 2
    .param p0, "x0"    # Lcom/asus/weather/WeatherFragmentSettings;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->isWeatherInfoAvailable:Z

    return v0
.end method

.method static synthetic access$600(Lcom/asus/weather/WeatherFragmentSettings;)Z
    .registers 2
    .param p0, "x0"    # Lcom/asus/weather/WeatherFragmentSettings;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/asus/weather/WeatherFragmentSettings;->haveInternet()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/asus/weather/WeatherFragmentSettings;)Lcom/asus/weather/ButtonPreference;
    .registers 2
    .param p0, "x0"    # Lcom/asus/weather/WeatherFragmentSettings;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->mButtonPref:Lcom/asus/weather/ButtonPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/asus/weather/WeatherFragmentSettings;)V
    .registers 1
    .param p0, "x0"    # Lcom/asus/weather/WeatherFragmentSettings;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/asus/weather/WeatherFragmentSettings;->setUpdateTime()V

    return-void
.end method

.method static synthetic access$900(Lcom/asus/weather/WeatherFragmentSettings;)V
    .registers 1
    .param p0, "x0"    # Lcom/asus/weather/WeatherFragmentSettings;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/asus/weather/WeatherFragmentSettings;->setLastFoundCity()V

    return-void
.end method

.method private haveInternet()Z
    .registers 7

    .prologue
    .line 705
    const/4 v2, 0x0

    .line 706
    .local v2, "result":Z
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 707
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 708
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_15

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_2f

    .line 710
    :cond_15
    const/4 v2, 0x0

    .line 724
    :goto_16
    const-string v3, "[WeatherFragmentSettings]"

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

    .line 726
    return v2

    .line 714
    :cond_2f
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_37

    .line 716
    const/4 v2, 0x0

    goto :goto_16

    .line 720
    :cond_37
    const/4 v2, 0x1

    goto :goto_16
.end method

.method public static isChinaSku()Z
    .registers 3

    .prologue
    .line 151
    const-string v1, "ro.product.name"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "SKU":Ljava/lang/String;
    const-string v1, "CN_epad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 155
    const/4 v1, 0x1

    .line 159
    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method private saveFreqState()I
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 384
    iget-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->settings:Landroid/content/SharedPreferences;

    const-string v2, "updatefreq"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 385
    .local v0, "freq":I
    if-eq v0, v3, :cond_17

    .line 387
    iget-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->preEdt:Landroid/content/SharedPreferences$Editor;

    const-string v2, "FreqSpinner"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 388
    iget-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->preEdt:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 390
    :cond_17
    return v0
.end method

.method private saveRadioState()I
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 364
    iget-object v2, p0, Lcom/asus/weather/WeatherFragmentSettings;->settings:Landroid/content/SharedPreferences;

    const-string v3, "auto_radio"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 365
    .local v1, "value":Z
    const/4 v0, -0x1

    .line 367
    .local v0, "ret":I
    if-eqz v1, :cond_1b

    .line 369
    iget-object v2, p0, Lcom/asus/weather/WeatherFragmentSettings;->preEdt:Landroid/content/SharedPreferences$Editor;

    const-string v3, "Radiochoice"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 370
    iget-object v2, p0, Lcom/asus/weather/WeatherFragmentSettings;->preEdt:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 371
    const/4 v0, 0x0

    .line 379
    :goto_1a
    return v0

    .line 375
    :cond_1b
    iget-object v2, p0, Lcom/asus/weather/WeatherFragmentSettings;->preEdt:Landroid/content/SharedPreferences$Editor;

    const-string v3, "Radiochoice"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 376
    iget-object v2, p0, Lcom/asus/weather/WeatherFragmentSettings;->preEdt:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 377
    const/4 v0, 0x1

    goto :goto_1a
.end method

.method private saveUnitState()Ljava/lang/String;
    .registers 5

    .prologue
    .line 395
    iget-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->settings:Landroid/content/SharedPreferences;

    const-string v2, "tempunit"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, "unit":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 398
    iget-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->preEdt:Landroid/content/SharedPreferences$Editor;

    const-string v2, "UnitSpinner"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 399
    iget-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->preEdt:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 402
    :cond_1e
    return-object v0
.end method

.method private setFreqList()V
    .registers 7

    .prologue
    const/4 v4, -0x1

    const/4 v5, 0x2

    .line 461
    iget-object v2, p0, Lcom/asus/weather/WeatherFragmentSettings;->pref:Landroid/content/SharedPreferences;

    const-string v3, "FreqSpinner"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 462
    .local v0, "update":I
    const/4 v1, -0x1

    .line 463
    .local v1, "updateIdx":I
    sget-object v2, Lcom/asus/weather/P;->PREF_FREQLIST:[I

    const/4 v3, 0x6

    invoke-virtual {p0, v0, v2, v3}, Lcom/asus/weather/WeatherFragmentSettings;->findFreqIndex(I[II)I

    move-result v1

    .line 465
    if-eq v1, v4, :cond_22

    .line 467
    const-string v2, "updatefreq"

    sget-object v3, Lcom/asus/weather/WeatherFragmentSettings;->freq_menu:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/asus/weather/WeatherFragmentSettings;->setListFragments(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    :goto_21
    return-void

    .line 471
    :cond_22
    const-string v2, "updatefreq"

    sget-object v3, Lcom/asus/weather/WeatherFragmentSettings;->freq_menu:[Ljava/lang/String;

    aget-object v3, v3, v5

    sget-object v4, Lcom/asus/weather/P;->PREF_FREQLIST:[I

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/asus/weather/WeatherFragmentSettings;->setListFragments(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iget-object v2, p0, Lcom/asus/weather/WeatherFragmentSettings;->preEdt:Landroid/content/SharedPreferences$Editor;

    const-string v3, "FreqSpinner"

    sget-object v4, Lcom/asus/weather/P;->PREF_FREQLIST:[I

    aget v4, v4, v5

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 473
    iget-object v2, p0, Lcom/asus/weather/WeatherFragmentSettings;->preEdt:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_21
.end method

.method private setLastFoundCity()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 407
    sget-object v0, Lcom/asus/weather/WeatherFragmentSettings;->strCityinfo:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_46

    .line 409
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->mRadioPref_Manual:Lcom/asus/weather/RadioPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/asus/weather/WeatherFragmentSettings;->strCityinfo:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/asus/weather/WeatherFragmentSettings;->strCityinfo:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/asus/weather/WeatherFragmentSettings;->strCityinfo:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 415
    :goto_45
    return-void

    .line 413
    :cond_46
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->mRadioPref_Manual:Lcom/asus/weather/RadioPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_45
.end method

.method private setListFragments(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "summary"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 479
    const-string v0, "updatefreq"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 481
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->mUpdateFreq:Landroid/preference/ListPreference;

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 482
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->mUpdateFreq:Landroid/preference/ListPreference;

    invoke-virtual {v0, p3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 485
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 495
    :cond_20
    :goto_20
    return-void

    .line 488
    :cond_21
    const-string v0, "tempunit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 490
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->mTempUnit:Landroid/preference/ListPreference;

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 491
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->mTempUnit:Landroid/preference/ListPreference;

    invoke-virtual {v0, p3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 493
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_20
.end method

.method private setManualText()V
    .registers 7

    .prologue
    .line 499
    iget-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->pref:Landroid/content/SharedPreferences;

    const-string v2, "Manual_city"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_65

    iget-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->pref:Landroid/content/SharedPreferences;

    const-string v2, "Manual_country"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_65

    iget-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->pref:Landroid/content/SharedPreferences;

    const-string v2, "Manual_adminarea"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_65

    iget-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->pref:Landroid/content/SharedPreferences;

    const-string v2, "Manual_location"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 502
    sget-object v1, Lcom/asus/weather/WeatherFragmentSettings;->strCityinfo:[Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/asus/weather/WeatherFragmentSettings;->pref:Landroid/content/SharedPreferences;

    const-string v4, "Manual_city"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 503
    sget-object v1, Lcom/asus/weather/WeatherFragmentSettings;->strCityinfo:[Ljava/lang/String;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/asus/weather/WeatherFragmentSettings;->pref:Landroid/content/SharedPreferences;

    const-string v4, "Manual_country"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 504
    sget-object v1, Lcom/asus/weather/WeatherFragmentSettings;->strCityinfo:[Ljava/lang/String;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/asus/weather/WeatherFragmentSettings;->pref:Landroid/content/SharedPreferences;

    const-string v4, "Manual_adminarea"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 505
    sget-object v1, Lcom/asus/weather/WeatherFragmentSettings;->strCityinfo:[Ljava/lang/String;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/asus/weather/WeatherFragmentSettings;->pref:Landroid/content/SharedPreferences;

    const-string v4, "Manual_location"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 512
    :cond_64
    return-void

    .line 509
    :cond_65
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_66
    const/4 v1, 0x4

    if-ge v0, v1, :cond_64

    .line 510
    sget-object v1, Lcom/asus/weather/WeatherFragmentSettings;->strCityinfo:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v0

    .line 509
    add-int/lit8 v0, v0, 0x1

    goto :goto_66
.end method

.method private setSaveBtn()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 544
    sget-object v0, Lcom/asus/weather/WeatherFragmentSettings;->strCityinfo:[Ljava/lang/String;

    aget-object v0, v0, v2

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    sget-object v0, Lcom/asus/weather/WeatherFragmentSettings;->strCityinfo:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 546
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->mSaveBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 552
    :goto_20
    return-void

    .line 550
    :cond_21
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->mSaveBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_20
.end method

.method private setUnitList()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 443
    iget-object v2, p0, Lcom/asus/weather/WeatherFragmentSettings;->pref:Landroid/content/SharedPreferences;

    const-string v3, "UnitSpinner"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 444
    .local v1, "unitStr":Ljava/lang/String;
    const/4 v0, -0x1

    .line 445
    .local v0, "unitIdx":I
    sget-object v2, Lcom/asus/weather/P;->PREF_UNITLIST:[Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {p0, v1, v2, v3}, Lcom/asus/weather/WeatherFragmentSettings;->findUnitIndex(Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    .line 447
    const/4 v2, -0x1

    if-eq v0, v2, :cond_20

    .line 449
    const-string v2, "tempunit"

    sget-object v3, Lcom/asus/weather/WeatherFragmentSettings;->unit_menu:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-direct {p0, v2, v3, v1}, Lcom/asus/weather/WeatherFragmentSettings;->setListFragments(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    :goto_1f
    return-void

    .line 453
    :cond_20
    const-string v2, "tempunit"

    sget-object v3, Lcom/asus/weather/WeatherFragmentSettings;->unit_menu:[Ljava/lang/String;

    aget-object v3, v3, v5

    sget-object v4, Lcom/asus/weather/P;->PREF_UNITLIST:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-direct {p0, v2, v3, v4}, Lcom/asus/weather/WeatherFragmentSettings;->setListFragments(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iget-object v2, p0, Lcom/asus/weather/WeatherFragmentSettings;->preEdt:Landroid/content/SharedPreferences$Editor;

    const-string v3, "UnitSpinner"

    sget-object v4, Lcom/asus/weather/P;->PREF_UNITLIST:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 455
    iget-object v2, p0, Lcom/asus/weather/WeatherFragmentSettings;->preEdt:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1f
.end method

.method private setUpdateTime()V
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 420
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 421
    .local v0, "content":Landroid/content/ContentResolver;
    sget-object v1, Lcom/asus/weather/WeatherFragmentSettings;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/asus/weather/P;->WEATHER_QUERY_COLUMNS:[Ljava/lang/String;

    const-string v5, "_id"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 423
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_31

    .line 425
    const-string v1, "[WeatherFragmentSettings]"

    const-string v2, "weatherCursor is NOT null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 427
    const-string v1, "lastupdate"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 429
    .local v7, "strlastupdate":Ljava/lang/String;
    if-eqz v7, :cond_2d

    .line 431
    iget-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->mButtonPref:Lcom/asus/weather/ButtonPreference;

    invoke-virtual {v1, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 433
    :cond_2d
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 439
    .end local v7    # "strlastupdate":Ljava/lang/String;
    :goto_30
    return-void

    .line 437
    :cond_31
    const-string v1, "[WeatherFragmentSettings]"

    const-string v2, "weatherCursor is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30
.end method


# virtual methods
.method public cancelDialog()V
    .registers 2

    .prologue
    .line 748
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->showProgressDialog:Z

    .line 750
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->mInfoDialog:Lcom/asus/weather/WeatherFragmentSettings$InfoDialog;

    if-eqz v0, :cond_f

    .line 752
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->mInfoDialog:Lcom/asus/weather/WeatherFragmentSettings$InfoDialog;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 753
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->mInfoDialog:Lcom/asus/weather/WeatherFragmentSettings$InfoDialog;

    .line 755
    :cond_f
    return-void
.end method

.method public checkWeatherInfo()V
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 233
    const-string v1, "[WeatherFragmentSettings]"

    const-string v2, "checkWeatherInfo()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/4 v7, 0x0

    .line 236
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 237
    .local v0, "content":Landroid/content/ContentResolver;
    sget-object v1, Lcom/asus/weather/WeatherFragmentSettings;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/asus/weather/P;->WEATHER_QUERY_COLUMNS:[Ljava/lang/String;

    const-string v5, "_id"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 239
    if-eqz v7, :cond_39

    .line 241
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 242
    const-string v1, "cityname"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 243
    .local v6, "cityname":Ljava/lang/String;
    const-string v1, "null"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 245
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->isWeatherInfoAvailable:Z

    .line 246
    const-string v1, "[WeatherFragmentSettings]"

    const-string v2, "checkWeatherInfo(): isWeatherInfoAvailable = false"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    .end local v6    # "cityname":Ljava/lang/String;
    :cond_39
    :goto_39
    return-void

    .line 250
    .restart local v6    # "cityname":Ljava/lang/String;
    :cond_3a
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->isWeatherInfoAvailable:Z

    .line 251
    const-string v1, "[WeatherFragmentSettings]"

    const-string v2, "checkWeatherInfo(): isWeatherInfoAvailable = true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39
.end method

.method public clickAutoRadio()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 664
    invoke-virtual {p0, v2}, Lcom/asus/weather/WeatherFragmentSettings;->setRadioStates(I)V

    .line 665
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->mSaveBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 666
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "auto_radio"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 667
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "manual_radio"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 668
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 669
    return-void
.end method

.method public clickManualRadio()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 673
    invoke-virtual {p0, v3}, Lcom/asus/weather/WeatherFragmentSettings;->setRadioStates(I)V

    .line 674
    invoke-direct {p0}, Lcom/asus/weather/WeatherFragmentSettings;->setSaveBtn()V

    .line 675
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "auto_radio"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 676
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "manual_radio"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 677
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 678
    return-void
.end method

.method public clickRefreshBtn()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 642
    invoke-direct {p0}, Lcom/asus/weather/WeatherFragmentSettings;->haveInternet()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 645
    invoke-virtual {p0}, Lcom/asus/weather/WeatherFragmentSettings;->showDialog()V

    .line 647
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.asus.weather.weatherIntentAction"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 648
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "CONTENT"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 649
    const-string v1, "CHECKNETWORK"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 650
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 651
    iget-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->mButtonPref:Lcom/asus/weather/ButtonPreference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 652
    iget-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->mButtonPref:Lcom/asus/weather/ButtonPreference;

    invoke-virtual {v1, v2}, Lcom/asus/weather/ButtonPreference;->setButton(Z)V

    .line 660
    :goto_29
    return-void

    .line 656
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2a
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.asus.weather.weatherIntentAction"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 657
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "CONTENT"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 658
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_29
.end method

.method public findFreqIndex(I[II)I
    .registers 7
    .param p1, "freq"    # I
    .param p2, "candiFreq"    # [I
    .param p3, "num"    # I

    .prologue
    .line 591
    const/4 v1, -0x1

    .line 592
    .local v1, "ret":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, p3, :cond_9

    .line 594
    aget v2, p2, v0

    if-ne p1, v2, :cond_a

    .line 596
    move v1, v0

    .line 600
    :cond_9
    return v1

    .line 592
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public findUnitIndex(Ljava/lang/String;[Ljava/lang/String;I)I
    .registers 7
    .param p1, "unit"    # Ljava/lang/String;
    .param p2, "candiUnit"    # [Ljava/lang/String;
    .param p3, "num"    # I

    .prologue
    .line 605
    const/4 v1, -0x1

    .line 606
    .local v1, "ret":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, p3, :cond_d

    .line 608
    aget-object v2, p2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 610
    move v1, v0

    .line 614
    :cond_d
    return v1

    .line 606
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public finish()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 129
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 130
    iget-boolean v2, p0, Lcom/asus/weather/WeatherFragmentSettings;->isWeatherInfoAvailable:Z

    if-nez v2, :cond_29

    .line 132
    invoke-direct {p0}, Lcom/asus/weather/WeatherFragmentSettings;->haveInternet()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 134
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.asus.weather.weatherIntentAction"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    .local v1, "intentUpdate":Landroid/content/Intent;
    const-string v2, "CONTENT"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 136
    const-string v2, "CHECKNETWORK"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 137
    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 138
    const-string v2, "[WeatherFragmentSettings]"

    const-string v3, "sendBroadcast"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .end local v1    # "intentUpdate":Landroid/content/Intent;
    :cond_29
    :goto_29
    return-void

    .line 143
    :cond_2a
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.asus.weather.weatherIntentAction"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "CONTENT"

    const/16 v3, 0xa

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 145
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_29
.end method

.method public initUI()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 164
    const-string v1, "WeatherPref"

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->settings:Landroid/content/SharedPreferences;

    .line 165
    iget-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->editor:Landroid/content/SharedPreferences$Editor;

    .line 166
    const-string v1, "PREF_WEATHER"

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->pref:Landroid/content/SharedPreferences;

    .line 167
    iget-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->preEdt:Landroid/content/SharedPreferences$Editor;

    .line 168
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/asus/weather/WeatherFragmentSettings;->strCityinfo:[Ljava/lang/String;

    .line 169
    const v1, 0x7f080007

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->accuIcon:Landroid/widget/ImageView;

    .line 170
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/asus/weather/WeatherFragmentSettings;->freq_menu:[Ljava/lang/String;

    .line 171
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/asus/weather/WeatherFragmentSettings;->unit_menu:[Ljava/lang/String;

    .line 173
    const v1, 0x7f080009

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->mSaveBtn:Landroid/widget/Button;

    .line 174
    iget-boolean v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->ChinaSku:Z

    if-nez v1, :cond_69

    .line 176
    const-string v1, "auto_radio"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/asus/weather/RadioPreference;

    iput-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->mRadioPref_Auto:Lcom/asus/weather/RadioPreference;

    .line 177
    iget-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->mRadioPref_Auto:Lcom/asus/weather/RadioPreference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 179
    :cond_69
    const-string v1, "manual_radio"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/asus/weather/RadioPreference;

    iput-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->mRadioPref_Manual:Lcom/asus/weather/RadioPreference;

    .line 180
    const-string v1, "refresh_btn"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/asus/weather/ButtonPreference;

    iput-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->mButtonPref:Lcom/asus/weather/ButtonPreference;

    .line 181
    const-string v1, "updatefreq"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->mUpdateFreq:Landroid/preference/ListPreference;

    .line 182
    const-string v1, "tempunit"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->mTempUnit:Landroid/preference/ListPreference;

    .line 185
    iget-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->mRadioPref_Manual:Lcom/asus/weather/RadioPreference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 187
    iget-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->mButtonPref:Lcom/asus/weather/ButtonPreference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 188
    iget-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->mUpdateFreq:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 189
    iget-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->mTempUnit:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 190
    new-instance v1, Lcom/asus/weather/WeatherFragmentSettings$Msg_Receiver;

    invoke-direct {v1, p0}, Lcom/asus/weather/WeatherFragmentSettings$Msg_Receiver;-><init>(Lcom/asus/weather/WeatherFragmentSettings;)V

    iput-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->rcv:Lcom/asus/weather/WeatherFragmentSettings$Msg_Receiver;

    .line 191
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 192
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.asus.weather.weatherIntentAction"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->rcv:Lcom/asus/weather/WeatherFragmentSettings$Msg_Receiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 195
    iget-boolean v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->ChinaSku:Z

    if-eqz v1, :cond_c2

    .line 197
    invoke-virtual {p0}, Lcom/asus/weather/WeatherFragmentSettings;->setLayout_for_ChinaSku()V

    .line 200
    :cond_c2
    invoke-virtual {p0}, Lcom/asus/weather/WeatherFragmentSettings;->setInitialStates()V

    .line 201
    invoke-virtual {p0}, Lcom/asus/weather/WeatherFragmentSettings;->checkWeatherInfo()V

    .line 202
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 73
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 75
    .local v0, "conf":Landroid/content/res/Configuration;
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 76
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 78
    invoke-static {}, Lcom/asus/weather/WeatherFragmentSettings;->isChinaSku()Z

    move-result v1

    iput-boolean v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->ChinaSku:Z

    .line 80
    iget-boolean v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->ChinaSku:Z

    if-eqz v1, :cond_3c

    .line 82
    const v1, 0x7f040001

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 88
    :goto_32
    const v1, 0x7f030004

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 90
    invoke-virtual {p0}, Lcom/asus/weather/WeatherFragmentSettings;->initUI()V

    .line 92
    return-void

    .line 86
    :cond_3c
    const/high16 v1, 0x7f040000

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    goto :goto_32
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 119
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 120
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->rcv:Lcom/asus/weather/WeatherFragmentSettings$Msg_Receiver;

    if-eqz v0, :cond_c

    .line 122
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->rcv:Lcom/asus/weather/WeatherFragmentSettings$Msg_Receiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 124
    :cond_c
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 107
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 109
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->mInfoDialog:Lcom/asus/weather/WeatherFragmentSettings$InfoDialog;

    if-eqz v0, :cond_f

    .line 111
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->mInfoDialog:Lcom/asus/weather/WeatherFragmentSettings$InfoDialog;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->mInfoDialog:Lcom/asus/weather/WeatherFragmentSettings$InfoDialog;

    .line 114
    :cond_f
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 9
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v5, -0x1

    .line 556
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 558
    .local v1, "key":Ljava/lang/String;
    const-string v3, "updatefreq"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 560
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 561
    .local v2, "value":I
    iget-object v3, p0, Lcom/asus/weather/WeatherFragmentSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 562
    iget-object v3, p0, Lcom/asus/weather/WeatherFragmentSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 564
    const/4 v0, -0x1

    .line 565
    .local v0, "index":I
    sget-object v3, Lcom/asus/weather/P;->PREF_FREQLIST:[I

    const/4 v4, 0x6

    invoke-virtual {p0, v2, v3, v4}, Lcom/asus/weather/WeatherFragmentSettings;->findFreqIndex(I[II)I

    move-result v0

    .line 567
    if-eq v0, v5, :cond_30

    .line 569
    iget-object v3, p0, Lcom/asus/weather/WeatherFragmentSettings;->mUpdateFreq:Landroid/preference/ListPreference;

    sget-object v4, Lcom/asus/weather/WeatherFragmentSettings;->freq_menu:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 586
    .end local v0    # "index":I
    .end local v2    # "value":I
    :cond_30
    :goto_30
    const/4 v3, 0x1

    return v3

    .line 572
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_32
    const-string v3, "tempunit"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 574
    iget-object v4, p0, Lcom/asus/weather/WeatherFragmentSettings;->editor:Landroid/content/SharedPreferences$Editor;

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-interface {v4, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 575
    iget-object v3, p0, Lcom/asus/weather/WeatherFragmentSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 577
    const/4 v0, -0x1

    .line 578
    .restart local v0    # "index":I
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    sget-object v3, Lcom/asus/weather/P;->PREF_UNITLIST:[Ljava/lang/String;

    const/4 v4, 0x2

    invoke-virtual {p0, p2, v3, v4}, Lcom/asus/weather/WeatherFragmentSettings;->findUnitIndex(Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    .line 580
    if-eq v0, v5, :cond_30

    .line 582
    iget-object v3, p0, Lcom/asus/weather/WeatherFragmentSettings;->mTempUnit:Landroid/preference/ListPreference;

    sget-object v4, Lcom/asus/weather/WeatherFragmentSettings;->unit_menu:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_30
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 4

    .prologue
    .line 619
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 621
    const-string v1, "refresh_btn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 623
    invoke-virtual {p0}, Lcom/asus/weather/WeatherFragmentSettings;->clickRefreshBtn()V

    .line 636
    :cond_f
    :goto_f
    const/4 v0, 0x1

    return v0

    .line 625
    :cond_11
    const-string v1, "auto_radio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 627
    invoke-virtual {p0}, Lcom/asus/weather/WeatherFragmentSettings;->clickAutoRadio()V

    goto :goto_f

    .line 629
    :cond_1d
    const-string v1, "manual_radio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 631
    invoke-virtual {p0}, Lcom/asus/weather/WeatherFragmentSettings;->clickManualRadio()V

    .line 632
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/asus/weather/WeatherManualActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 633
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_f
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 97
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 98
    iget-boolean v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->showProgressDialog:Z

    if-eqz v0, :cond_a

    .line 100
    invoke-virtual {p0}, Lcom/asus/weather/WeatherFragmentSettings;->showDialog()V

    .line 102
    :cond_a
    return-void
.end method

.method public setIcon()V
    .registers 3

    .prologue
    .line 218
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->accuIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/asus/weather/WeatherFragmentSettings$1;

    invoke-direct {v1, p0}, Lcom/asus/weather/WeatherFragmentSettings$1;-><init>(Lcom/asus/weather/WeatherFragmentSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    return-void
.end method

.method public setInitialStates()V
    .registers 1

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/asus/weather/WeatherFragmentSettings;->setIcon()V

    .line 259
    invoke-virtual {p0}, Lcom/asus/weather/WeatherFragmentSettings;->setRefreshButton()V

    .line 260
    invoke-virtual {p0}, Lcom/asus/weather/WeatherFragmentSettings;->setSaveBtnListener()V

    .line 261
    invoke-direct {p0}, Lcom/asus/weather/WeatherFragmentSettings;->setManualText()V

    .line 262
    invoke-virtual {p0}, Lcom/asus/weather/WeatherFragmentSettings;->setRadioBtn()V

    .line 263
    invoke-direct {p0}, Lcom/asus/weather/WeatherFragmentSettings;->setLastFoundCity()V

    .line 264
    invoke-direct {p0}, Lcom/asus/weather/WeatherFragmentSettings;->setUpdateTime()V

    .line 265
    invoke-direct {p0}, Lcom/asus/weather/WeatherFragmentSettings;->setFreqList()V

    .line 266
    invoke-direct {p0}, Lcom/asus/weather/WeatherFragmentSettings;->setUnitList()V

    .line 267
    return-void
.end method

.method public setLayout_for_ChinaSku()V
    .registers 4

    .prologue
    .line 211
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->preEdt:Landroid/content/SharedPreferences$Editor;

    const-string v1, "Radiochoice"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 212
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->preEdt:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 215
    return-void
.end method

.method public setRadioBtn()V
    .registers 5

    .prologue
    .line 516
    iget-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->pref:Landroid/content/SharedPreferences;

    const-string v2, "Radiochoice"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 518
    .local v0, "radio":I
    packed-switch v0, :pswitch_data_26

    .line 534
    invoke-virtual {p0}, Lcom/asus/weather/WeatherFragmentSettings;->clickAutoRadio()V

    .line 535
    iget-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->preEdt:Landroid/content/SharedPreferences$Editor;

    const-string v2, "Radiochoice"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 536
    iget-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->preEdt:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 540
    :goto_1c
    return-void

    .line 522
    :pswitch_1d
    invoke-virtual {p0}, Lcom/asus/weather/WeatherFragmentSettings;->clickAutoRadio()V

    goto :goto_1c

    .line 528
    :pswitch_21
    invoke-virtual {p0}, Lcom/asus/weather/WeatherFragmentSettings;->clickManualRadio()V

    goto :goto_1c

    .line 518
    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_21
    .end packed-switch
.end method

.method public setRadioStates(I)V
    .registers 5
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 682
    packed-switch p1, :pswitch_data_20

    .line 701
    :goto_5
    return-void

    .line 686
    :pswitch_6
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->mRadioPref_Auto:Lcom/asus/weather/RadioPreference;

    invoke-virtual {v0, v2}, Lcom/asus/weather/RadioPreference;->setChecked(Z)V

    .line 687
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->mRadioPref_Manual:Lcom/asus/weather/RadioPreference;

    invoke-virtual {v0, v1}, Lcom/asus/weather/RadioPreference;->setChecked(Z)V

    goto :goto_5

    .line 693
    :pswitch_11
    iget-boolean v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->ChinaSku:Z

    if-nez v0, :cond_1a

    .line 695
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->mRadioPref_Auto:Lcom/asus/weather/RadioPreference;

    invoke-virtual {v0, v1}, Lcom/asus/weather/RadioPreference;->setChecked(Z)V

    .line 697
    :cond_1a
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->mRadioPref_Manual:Lcom/asus/weather/RadioPreference;

    invoke-virtual {v0, v2}, Lcom/asus/weather/RadioPreference;->setChecked(Z)V

    goto :goto_5

    .line 682
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_6
        :pswitch_11
    .end packed-switch
.end method

.method public setRefreshButton()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 271
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->mButtonPref:Lcom/asus/weather/ButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 272
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->mButtonPref:Lcom/asus/weather/ButtonPreference;

    invoke-virtual {v0, v1}, Lcom/asus/weather/ButtonPreference;->setButton(Z)V

    .line 273
    return-void
.end method

.method public setSaveBtnListener()V
    .registers 3

    .prologue
    .line 276
    iget-object v0, p0, Lcom/asus/weather/WeatherFragmentSettings;->mSaveBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->saveClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    return-void
.end method

.method public showDialog()V
    .registers 5

    .prologue
    .line 733
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 734
    .local v0, "fm":Landroid/app/FragmentManager;
    const-string v1, "ProgressDialogTag"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/asus/weather/WeatherFragmentSettings$InfoDialog;

    iput-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->mInfoDialog:Lcom/asus/weather/WeatherFragmentSettings$InfoDialog;

    .line 735
    iget-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->mInfoDialog:Lcom/asus/weather/WeatherFragmentSettings$InfoDialog;

    if-nez v1, :cond_27

    .line 738
    new-instance v1, Lcom/asus/weather/WeatherFragmentSettings$InfoDialog;

    invoke-direct {v1, p0}, Lcom/asus/weather/WeatherFragmentSettings$InfoDialog;-><init>(Lcom/asus/weather/WeatherFragmentSettings;)V

    iput-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->mInfoDialog:Lcom/asus/weather/WeatherFragmentSettings$InfoDialog;

    .line 740
    iget-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->mInfoDialog:Lcom/asus/weather/WeatherFragmentSettings$InfoDialog;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "ProgressDialogTag"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 742
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/asus/weather/WeatherFragmentSettings;->showProgressDialog:Z

    .line 744
    :cond_27
    return-void
.end method
