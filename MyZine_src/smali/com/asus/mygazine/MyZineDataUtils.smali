.class public Lcom/asus/mygazine/MyZineDataUtils;
.super Ljava/lang/Object;
.source "MyZineDataUtils.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/mygazine/MyZineDataUtils$VisitedWeb;,
        Lcom/asus/mygazine/MyZineDataUtils$CommandHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static sInstance:Lcom/asus/mygazine/MyZineDataUtils;


# instance fields
.field private mAlbumBucketId:Ljava/lang/String;

.field private mAlbumTitle:Ljava/lang/String;

.field private mBrowserObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mEmailObserver:Landroid/database/ContentObserver;

.field private mHandler:Landroid/os/Handler;

.field private mImageObserver:Landroid/database/ContentObserver;

.field private mIntent:Landroid/content/Intent;

.field private mIsAlbumSelected:Z

.field private mIsGoogleGallery:Z

.field private mIsGoogleMusic:Z

.field private mIsMusicPlaying:Z

.field private mIsNotifyViewChanged:Z

.field private mIsWeatherView:Z

.field private mKeyType:Ljava/lang/String;

.field private mLock:Ljava/lang/Object;

.field private mMusicObserver:Landroid/database/ContentObserver;

.field private mPhotoConverter:Lcom/asus/mygazine/PhotoConverter;

.field private mPhotoPathSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPictureNumberInFolder:I

.field private mReaderObserver:Landroid/database/ContentObserver;

.field private mReaderPathObserver:Landroid/database/ContentObserver;

.field private mSettings:Lcom/asus/mygazine/SettingsConfig;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mWidgetData:Lcom/asus/mygazine/WidgetData;

.field private mWidgetSizeDBHelper:Lcom/asus/mygazine/WidgetSizeDBHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 45
    const/4 v2, 0x0

    sput-object v2, Lcom/asus/mygazine/MyZineDataUtils;->sInstance:Lcom/asus/mygazine/MyZineDataUtils;

    .line 47
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_10

    :goto_d
    sput-boolean v0, Lcom/asus/mygazine/MyZineDataUtils;->DBG:Z

    return-void

    :cond_10
    move v0, v1

    goto :goto_d
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mPhotoPathSet:Ljava/util/Set;

    .line 96
    iput v8, p0, Lcom/asus/mygazine/MyZineDataUtils;->mPictureNumberInFolder:I

    .line 99
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mLock:Ljava/lang/Object;

    .line 208
    new-instance v2, Lcom/asus/mygazine/MyZineDataUtils$1;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v5}, Lcom/asus/mygazine/MyZineDataUtils$1;-><init>(Lcom/asus/mygazine/MyZineDataUtils;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mEmailObserver:Landroid/database/ContentObserver;

    .line 215
    new-instance v2, Lcom/asus/mygazine/MyZineDataUtils$2;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v5}, Lcom/asus/mygazine/MyZineDataUtils$2;-><init>(Lcom/asus/mygazine/MyZineDataUtils;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mImageObserver:Landroid/database/ContentObserver;

    .line 222
    new-instance v2, Lcom/asus/mygazine/MyZineDataUtils$3;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v5}, Lcom/asus/mygazine/MyZineDataUtils$3;-><init>(Lcom/asus/mygazine/MyZineDataUtils;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mMusicObserver:Landroid/database/ContentObserver;

    .line 229
    new-instance v2, Lcom/asus/mygazine/MyZineDataUtils$4;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v5}, Lcom/asus/mygazine/MyZineDataUtils$4;-><init>(Lcom/asus/mygazine/MyZineDataUtils;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mBrowserObserver:Landroid/database/ContentObserver;

    .line 236
    new-instance v2, Lcom/asus/mygazine/MyZineDataUtils$5;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v5}, Lcom/asus/mygazine/MyZineDataUtils$5;-><init>(Lcom/asus/mygazine/MyZineDataUtils;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mReaderObserver:Landroid/database/ContentObserver;

    .line 243
    new-instance v2, Lcom/asus/mygazine/MyZineDataUtils$6;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v5}, Lcom/asus/mygazine/MyZineDataUtils$6;-><init>(Lcom/asus/mygazine/MyZineDataUtils;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mReaderPathObserver:Landroid/database/ContentObserver;

    .line 104
    iput-object p1, p0, Lcom/asus/mygazine/MyZineDataUtils;->mContext:Landroid/content/Context;

    .line 105
    new-instance v2, Lcom/asus/mygazine/WidgetData;

    invoke-direct {v2}, Lcom/asus/mygazine/WidgetData;-><init>()V

    iput-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    .line 107
    iget-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mContext:Landroid/content/Context;

    const-string v5, "com.android.music"

    invoke-direct {p0, v2, v5}, Lcom/asus/mygazine/MyZineDataUtils;->isGooglePackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14a

    move v2, v3

    :goto_6e
    iput-boolean v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mIsGoogleMusic:Z

    .line 108
    iget-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mContext:Landroid/content/Context;

    const-string v5, "com.android.gallery3d"

    invoke-direct {p0, v2, v5}, Lcom/asus/mygazine/MyZineDataUtils;->isGooglePackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14d

    move v2, v3

    :goto_7b
    iput-boolean v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mIsGoogleGallery:Z

    .line 109
    new-instance v2, Lcom/asus/mygazine/PhotoConverter;

    invoke-direct {v2, p1}, Lcom/asus/mygazine/PhotoConverter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mPhotoConverter:Lcom/asus/mygazine/PhotoConverter;

    .line 110
    new-instance v2, Lcom/asus/mygazine/WidgetSizeDBHelper;

    invoke-direct {v2, p1}, Lcom/asus/mygazine/WidgetSizeDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetSizeDBHelper:Lcom/asus/mygazine/WidgetSizeDBHelper;

    .line 111
    new-instance v2, Lcom/asus/mygazine/SettingsConfig;

    invoke-direct {v2}, Lcom/asus/mygazine/SettingsConfig;-><init>()V

    iput-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mSettings:Lcom/asus/mygazine/SettingsConfig;

    .line 112
    iget-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/asus/mygazine/MyZineDataUtils;->registerDataObserver(Landroid/content/ContentResolver;)V

    .line 113
    const-string v2, "MyzinePrefs"

    invoke-virtual {p1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 114
    iget-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 115
    iget-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mSettings:Lcom/asus/mygazine/SettingsConfig;

    iget-object v5, p0, Lcom/asus/mygazine/MyZineDataUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "slide_show_interval"

    const/16 v7, 0x2710

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v2, Lcom/asus/mygazine/SettingsConfig;->mSlideShowInterval:I

    .line 116
    iget-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mSettings:Lcom/asus/mygazine/SettingsConfig;

    iget-object v5, p0, Lcom/asus/mygazine/MyZineDataUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "scale_type"

    const-string v7, "centerCrop"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/asus/mygazine/SettingsConfig;->mScaleType:Ljava/lang/String;

    .line 117
    iget-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mSettings:Lcom/asus/mygazine/SettingsConfig;

    iget-object v5, p0, Lcom/asus/mygazine/MyZineDataUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "logo_display"

    invoke-interface {v5, v6, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v2, Lcom/asus/mygazine/SettingsConfig;->mIsShowLogo:Z

    .line 118
    iget-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mSettings:Lcom/asus/mygazine/SettingsConfig;

    iget-object v5, p0, Lcom/asus/mygazine/MyZineDataUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "photo_date_display"

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v2, Lcom/asus/mygazine/SettingsConfig;->mIsShowPhotoDateTag:Z

    .line 119
    iget-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mSettings:Lcom/asus/mygazine/SettingsConfig;

    iget-object v5, p0, Lcom/asus/mygazine/MyZineDataUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "event_display"

    invoke-interface {v5, v6, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v2, Lcom/asus/mygazine/SettingsConfig;->mIsShowEventTag:Z

    .line 120
    iget-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mSettings:Lcom/asus/mygazine/SettingsConfig;

    iget-object v5, p0, Lcom/asus/mygazine/MyZineDataUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "weather_display"

    invoke-interface {v5, v6, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/asus/mygazine/SettingsConfig;->mIsShowWeatherTag:Z

    .line 121
    iget-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mSettings:Lcom/asus/mygazine/SettingsConfig;

    iget-object v3, p0, Lcom/asus/mygazine/MyZineDataUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "date_format"

    const-string v6, ""

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/asus/mygazine/SettingsConfig;->mDateFormat:Ljava/lang/String;

    .line 123
    :try_start_102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f070000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mPictureNumberInFolder:I
    :try_end_10e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_102 .. :try_end_10e} :catch_150

    .line 127
    :goto_10e
    sget-boolean v2, Lcom/asus/mygazine/MyZineDataUtils;->DBG:Z

    if-eqz v2, :cond_12c

    const-string v2, "MyZineDataUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "thumbnail size = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/asus/mygazine/MyZineDataUtils;->mPictureNumberInFolder:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_12c
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "MyZineCmdThread"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 131
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 132
    new-instance v2, Lcom/asus/mygazine/MyZineDataUtils$CommandHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/asus/mygazine/MyZineDataUtils$CommandHandler;-><init>(Lcom/asus/mygazine/MyZineDataUtils;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mHandler:Landroid/os/Handler;

    .line 134
    invoke-direct {p0}, Lcom/asus/mygazine/MyZineDataUtils;->readSharedPreferences()V

    .line 135
    invoke-direct {p0, v4}, Lcom/asus/mygazine/MyZineDataUtils;->addCommand(I)V

    .line 136
    return-void

    .end local v1    # "thread":Landroid/os/HandlerThread;
    :cond_14a
    move v2, v4

    .line 107
    goto/16 :goto_6e

    :cond_14d
    move v2, v4

    .line 108
    goto/16 :goto_7b

    .line 124
    :catch_150
    move-exception v0

    .line 125
    .local v0, "ex":Landroid/content/res/Resources$NotFoundException;
    iput v8, p0, Lcom/asus/mygazine/MyZineDataUtils;->mPictureNumberInFolder:I

    goto :goto_10e
.end method

.method static synthetic access$000(Lcom/asus/mygazine/MyZineDataUtils;I)V
    .registers 2
    .param p0, "x0"    # Lcom/asus/mygazine/MyZineDataUtils;
    .param p1, "x1"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/asus/mygazine/MyZineDataUtils;->addCommand(I)V

    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/asus/mygazine/MyZineDataUtils;->DBG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/asus/mygazine/MyZineDataUtils;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/asus/mygazine/MyZineDataUtils;
    .param p1, "x1"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/asus/mygazine/MyZineDataUtils;->getDBGCmdString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/asus/mygazine/MyZineDataUtils;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/asus/mygazine/MyZineDataUtils;
    .param p1, "x1"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/asus/mygazine/MyZineDataUtils;->queryData(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/asus/mygazine/MyZineDataUtils;)Z
    .registers 2
    .param p0, "x0"    # Lcom/asus/mygazine/MyZineDataUtils;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mIsNotifyViewChanged:Z

    return v0
.end method

.method static synthetic access$500(Lcom/asus/mygazine/MyZineDataUtils;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/asus/mygazine/MyZineDataUtils;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addCommand(I)V
    .registers 6
    .param p1, "cmd"    # I

    .prologue
    .line 287
    sget-boolean v1, Lcom/asus/mygazine/MyZineDataUtils;->DBG:Z

    if-eqz v1, :cond_20

    const-string v1, "MyZineDataUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addCommand, cmd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/asus/mygazine/MyZineDataUtils;->getDBGCmdString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_20
    iget-object v1, p0, Lcom/asus/mygazine/MyZineDataUtils;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 292
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 293
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 294
    const/4 v1, 0x5

    if-eq p1, v1, :cond_34

    const/4 v1, 0x6

    if-eq p1, v1, :cond_34

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3c

    .line 295
    :cond_34
    iget-object v1, p0, Lcom/asus/mygazine/MyZineDataUtils;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 302
    :goto_3b
    return-void

    .line 296
    :cond_3c
    const/16 v1, 0x8

    if-ne p1, v1, :cond_46

    .line 298
    iget-object v1, p0, Lcom/asus/mygazine/MyZineDataUtils;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3b

    .line 300
    :cond_46
    iget-object v1, p0, Lcom/asus/mygazine/MyZineDataUtils;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3b
.end method

.method private getAlbumId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 13

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x0

    .line 942
    sget-boolean v0, Lcom/asus/mygazine/MyZineDataUtils;->DBG:Z

    if-eqz v0, :cond_32

    const-string v0, "MyZineDataUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAlbumId songName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,albumName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,artistName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    :cond_32
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 945
    if-nez p2, :cond_3b

    if-nez p3, :cond_3b

    if-nez p4, :cond_3b

    .line 1003
    :cond_3a
    :goto_3a
    return v6

    .line 949
    :cond_3b
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 950
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 951
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 953
    if-eqz p2, :cond_5c

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 954
    invoke-interface {v7, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 955
    const-string v0, "title=?"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 957
    :cond_5c
    if-eqz p3, :cond_6e

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    .line 958
    invoke-interface {v7, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 959
    const-string v0, "album=?"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 961
    :cond_6e
    if-eqz p4, :cond_80

    const-string v0, ""

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80

    .line 962
    invoke-interface {v7, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 963
    const-string v0, "artist=?"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_80
    move v2, v3

    .line 966
    :goto_81
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_a1

    .line 967
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 968
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_9d

    .line 969
    const-string v0, " AND "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 966
    :cond_9d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_81

    .line 973
    :cond_a1
    invoke-interface {v7}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 974
    array-length v0, v2

    new-array v4, v0, [Ljava/lang/String;

    move v0, v3

    .line 976
    :goto_a9
    array-length v7, v2

    if-ge v0, v7, :cond_b7

    .line 978
    aget-object v7, v2, v0

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v0

    .line 976
    add-int/lit8 v0, v0, 0x1

    goto :goto_a9

    .line 981
    :cond_b7
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "album_id"

    aput-object v0, v2, v3

    .line 982
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 985
    if-nez v1, :cond_df

    .line 986
    :try_start_cd
    sget-boolean v0, Lcom/asus/mygazine/MyZineDataUtils;->DBG:Z

    if-eqz v0, :cond_d8

    const-string v0, "MyZineDataUtils"

    const-string v2, "getAlbumId no music found"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d8
    .catchall {:try_start_cd .. :try_end_d8} :catchall_fe

    .line 1000
    :cond_d8
    if-eqz v1, :cond_3a

    .line 1001
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3a

    .line 990
    :cond_df
    :try_start_df
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_105

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_105

    .line 993
    :cond_eb
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 994
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_f3
    .catchall {:try_start_df .. :try_end_f3} :catchall_fe

    move-result v2

    if-nez v2, :cond_eb

    .line 1000
    :goto_f6
    if-eqz v1, :cond_fb

    .line 1001
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_fb
    move v6, v0

    goto/16 :goto_3a

    .line 1000
    :catchall_fe
    move-exception v0

    if-eqz v1, :cond_104

    .line 1001
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_104
    throw v0

    :cond_105
    move v0, v6

    goto :goto_f6
.end method

.method private getAlbumURI(Landroid/content/Context;J)Landroid/net/Uri;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 1007
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gez v1, :cond_8

    .line 1025
    :goto_7
    return-object v0

    .line 1012
    :cond_8
    :try_start_8
    const-string v1, "content://media/external/audio/albumart"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1013
    invoke-static {v1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1014
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1016
    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 1017
    if-eqz v2, :cond_1f

    .line 1018
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_1f} :catch_23
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_1f} :catch_21

    :cond_1f
    move-object v0, v1

    .line 1025
    goto :goto_7

    .line 1022
    :catch_21
    move-exception v1

    goto :goto_7

    .line 1020
    :catch_23
    move-exception v1

    goto :goto_7
.end method

.method private getBookNumber(Landroid/content/Context;)I
    .registers 11

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 628
    .line 629
    const/4 v0, 0x1

    new-array v8, v0, [Ljava/lang/String;

    const-string v0, "_count"

    aput-object v0, v8, v6

    .line 630
    const-string v0, "content://reader/count"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 633
    :try_start_f
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1a} :catch_35
    .catchall {:try_start_f .. :try_end_1a} :catchall_48

    move-result-object v1

    .line 634
    if-eqz v1, :cond_56

    :try_start_1d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 635
    const/4 v0, 0x0

    aget-object v0, v8, v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2d} :catch_52
    .catchall {:try_start_1d .. :try_end_2d} :catchall_50

    move-result v6

    move v0, v6

    .line 641
    :goto_2f
    if-eqz v1, :cond_34

    .line 642
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 644
    :cond_34
    :goto_34
    return v0

    .line 637
    :catch_35
    move-exception v0

    move-object v1, v7

    .line 638
    :goto_37
    :try_start_37
    const-string v2, "MyZineDataUtils"

    const-string v3, "Catch exception when querying reader data"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_41
    .catchall {:try_start_37 .. :try_end_41} :catchall_50

    .line 641
    if-eqz v1, :cond_54

    .line 642
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v6

    goto :goto_34

    .line 641
    :catchall_48
    move-exception v0

    move-object v1, v7

    :goto_4a
    if-eqz v1, :cond_4f

    .line 642
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4f
    throw v0

    .line 641
    :catchall_50
    move-exception v0

    goto :goto_4a

    .line 637
    :catch_52
    move-exception v0

    goto :goto_37

    :cond_54
    move v0, v6

    goto :goto_34

    :cond_56
    move v0, v6

    goto :goto_2f
.end method

.method private getDBGCmdString(I)Ljava/lang/String;
    .registers 3
    .param p1, "cmd"    # I

    .prologue
    .line 305
    packed-switch p1, :pswitch_data_2e

    .line 333
    const-string v0, "MSG_NO_TYPE"

    :goto_5
    return-object v0

    .line 307
    :pswitch_6
    const-string v0, "MSG_ALL_TYPE"

    goto :goto_5

    .line 309
    :pswitch_9
    const-string v0, "MSG_DATE_TYPE"

    goto :goto_5

    .line 311
    :pswitch_c
    const-string v0, "MSG_EMAIL_TYPE"

    goto :goto_5

    .line 313
    :pswitch_f
    const-string v0, "MSG_EVENT_TYPE"

    goto :goto_5

    .line 315
    :pswitch_12
    const-string v0, "MSG_MUSIC_TYPE"

    goto :goto_5

    .line 317
    :pswitch_15
    const-string v0, "MSG_MEDIA_TYPE"

    goto :goto_5

    .line 319
    :pswitch_18
    const-string v0, "MSG_READER_TYPE"

    goto :goto_5

    .line 321
    :pswitch_1b
    const-string v0, "MSG_READER_PATH_TYPE"

    goto :goto_5

    .line 323
    :pswitch_1e
    const-string v0, "MSG_RESIZE_TYPE"

    goto :goto_5

    .line 325
    :pswitch_21
    const-string v0, "MSG_SETTINGS_TYPE"

    goto :goto_5

    .line 327
    :pswitch_24
    const-string v0, "MSG_WEATHER_TYPE"

    goto :goto_5

    .line 329
    :pswitch_27
    const-string v0, "MSG_WEB_TYPE"

    goto :goto_5

    .line 331
    :pswitch_2a
    const-string v0, "MSG_PHOTO_TYPE"

    goto :goto_5

    .line 305
    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
        :pswitch_24
        :pswitch_27
        :pswitch_2a
    .end packed-switch
.end method

.method public static getDateByFormat(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;
    .registers 4
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 1193
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1194
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1196
    :goto_11
    return-object v0

    :cond_12
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, p0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11
.end method

.method private getEventNumber(Landroid/content/ContentResolver;I)I
    .registers 12

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 879
    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "begin"

    aput-object v0, v2, v6

    const/4 v0, 0x1

    const-string v1, "end"

    aput-object v1, v2, v0

    const-string v0, "title"

    aput-object v0, v2, v7

    .line 884
    const-string v3, "visible=1"

    .line 885
    sget-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_BY_DAY_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p1

    move-object v5, v4

    .line 887
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 890
    invoke-static {v7, v8}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    .line 892
    if-eqz v1, :cond_4a

    .line 894
    :try_start_3d
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_45

    move-result v0

    .line 904
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 906
    :goto_44
    return v0

    .line 904
    :catchall_45
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_4a
    move v0, v6

    goto :goto_44
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/asus/mygazine/MyZineDataUtils;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 139
    sget-object v0, Lcom/asus/mygazine/MyZineDataUtils;->sInstance:Lcom/asus/mygazine/MyZineDataUtils;

    if-nez v0, :cond_b

    .line 140
    new-instance v0, Lcom/asus/mygazine/MyZineDataUtils;

    invoke-direct {v0, p0}, Lcom/asus/mygazine/MyZineDataUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/asus/mygazine/MyZineDataUtils;->sInstance:Lcom/asus/mygazine/MyZineDataUtils;

    .line 142
    :cond_b
    sget-object v0, Lcom/asus/mygazine/MyZineDataUtils;->sInstance:Lcom/asus/mygazine/MyZineDataUtils;

    return-object v0
.end method

.method private getPath(Landroid/content/Context;)Landroid/database/Cursor;
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 621
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 622
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "filepath"

    aput-object v4, v2, v1

    const/4 v1, 0x1

    const-string v4, "mimetype"

    aput-object v4, v2, v1

    .line 623
    const-string v1, "content://reader/latestbookpath"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v4, v3

    move-object v5, v3

    .line 624
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getPhotoInfo(Ljava/lang/String;)Lcom/asus/mygazine/Snapshot;
    .registers 12

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 764
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 765
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v8

    const-string v0, "datetaken"

    aput-object v0, v2, v7

    const-string v0, "orientation"

    aput-object v0, v2, v9

    .line 767
    const-string v5, "datetaken desc"

    .line 769
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "_data=?"

    new-array v4, v7, [Ljava/lang/String;

    aput-object p1, v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 774
    if-nez v1, :cond_3c

    .line 784
    :goto_3b
    return-object v6

    .line 779
    :cond_3c
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5b

    .line 780
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 781
    new-instance v0, Lcom/asus/mygazine/Snapshot;

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/asus/mygazine/Snapshot;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 783
    :goto_56
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v6, v0

    .line 784
    goto :goto_3b

    :cond_5b
    move-object v0, v6

    goto :goto_56
.end method

.method private getToday()I
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 868
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 869
    .local v2, "time":Landroid/text/format/Time;
    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 870
    iput v4, v2, Landroid/text/format/Time;->hour:I

    .line 871
    iput v4, v2, Landroid/text/format/Time;->minute:I

    .line 872
    iput v4, v2, Landroid/text/format/Time;->second:I

    .line 873
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 874
    .local v0, "midnight":J
    iget-wide v4, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v3

    .line 875
    .local v3, "today":I
    return v3
.end method

.method private getVisitedWeb(Landroid/content/ContentResolver;)Lcom/asus/mygazine/MyZineDataUtils$VisitedWeb;
    .registers 10

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1036
    const-string v0, "content://com.android.browser/history"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1037
    const-string v5, "date DESC"

    .line 1038
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "title"

    aput-object v0, v2, v4

    const-string v0, "url"

    aput-object v0, v2, v6

    const-string v0, "thumbnail"

    aput-object v0, v2, v7

    const/4 v0, 0x3

    const-string v4, "date"

    aput-object v4, v2, v0

    move-object v0, p1

    move-object v4, v3

    .line 1046
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1049
    if-eqz v1, :cond_8a

    .line 1050
    new-instance v0, Lcom/asus/mygazine/MyZineDataUtils$VisitedWeb;

    invoke-direct {v0, p0, v3}, Lcom/asus/mygazine/MyZineDataUtils$VisitedWeb;-><init>(Lcom/asus/mygazine/MyZineDataUtils;Lcom/asus/mygazine/MyZineDataUtils$1;)V

    .line 1052
    :try_start_2d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 1053
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 1054
    if-eqz v2, :cond_42

    .line 1055
    const/4 v3, 0x0

    array-length v4, v2

    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/asus/mygazine/MyZineDataUtils$VisitedWeb;->thumbnail:Landroid/graphics/Bitmap;

    .line 1058
    :cond_42
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/asus/mygazine/MyZineDataUtils$VisitedWeb;->title:Ljava/lang/String;

    .line 1059
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/asus/mygazine/MyZineDataUtils$VisitedWeb;->url:Ljava/lang/String;

    .line 1060
    sget-boolean v2, Lcom/asus/mygazine/MyZineDataUtils;->DBG:Z

    if-eqz v2, :cond_86

    const-string v2, "MyZineDataUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "title="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/asus/mygazine/MyZineDataUtils$VisitedWeb;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/asus/mygazine/MyZineDataUtils$VisitedWeb;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,thumbnail="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/asus/mygazine/MyZineDataUtils$VisitedWeb;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catchall {:try_start_2d .. :try_end_86} :catchall_a0

    .line 1067
    :cond_86
    :goto_86
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v3, v0

    .line 1069
    :cond_8a
    return-object v3

    .line 1062
    :cond_8b
    :try_start_8b
    sget-boolean v2, Lcom/asus/mygazine/MyZineDataUtils;->DBG:Z

    if-eqz v2, :cond_96

    const-string v2, "MyZineDataUtils"

    const-string v3, "getVisitedWeb - curcor c has no data"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    :cond_96
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/asus/mygazine/MyZineDataUtils$VisitedWeb;->thumbnail:Landroid/graphics/Bitmap;

    .line 1064
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/asus/mygazine/MyZineDataUtils$VisitedWeb;->title:Ljava/lang/String;

    .line 1065
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/asus/mygazine/MyZineDataUtils$VisitedWeb;->url:Ljava/lang/String;
    :try_end_9f
    .catchall {:try_start_8b .. :try_end_9f} :catchall_a0

    goto :goto_86

    .line 1067
    :catchall_a0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private isGooglePackage(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 912
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 913
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    invoke-virtual {v2, p2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 914
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_c} :catch_10

    if-eqz v4, :cond_f

    .line 915
    const/4 v3, 0x1

    .line 921
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_f
    :goto_f
    return v3

    .line 918
    :catch_10
    move-exception v0

    .line 919
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_f
.end method

.method private queryAllData(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 649
    sget-boolean v0, Lcom/asus/mygazine/MyZineDataUtils;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "MyZineDataUtils"

    const-string v1, "queryAllData is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :cond_b
    invoke-direct {p0, p1}, Lcom/asus/mygazine/MyZineDataUtils;->queryCalendarEventCount(Landroid/content/Context;)V

    .line 651
    invoke-direct {p0, p1}, Lcom/asus/mygazine/MyZineDataUtils;->queryDate(Landroid/content/Context;)V

    .line 652
    invoke-direct {p0, p1}, Lcom/asus/mygazine/MyZineDataUtils;->queryEmailCount(Landroid/content/Context;)V

    .line 653
    invoke-direct {p0, p1}, Lcom/asus/mygazine/MyZineDataUtils;->queryMusicPrefs(Landroid/content/Context;)V

    .line 654
    invoke-direct {p0, p1}, Lcom/asus/mygazine/MyZineDataUtils;->queryReaderBooksNumber(Landroid/content/Context;)V

    .line 655
    invoke-direct {p0, p1}, Lcom/asus/mygazine/MyZineDataUtils;->queryReaderPath(Landroid/content/Context;)V

    .line 656
    invoke-direct {p0, p1}, Lcom/asus/mygazine/MyZineDataUtils;->queryWebInfo(Landroid/content/Context;)V

    .line 657
    invoke-direct {p0, p1}, Lcom/asus/mygazine/MyZineDataUtils;->queryWeatherInfo(Landroid/content/Context;)V

    .line 658
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/asus/mygazine/MyZineDataUtils;->querySizeAndApplyNewLayout(Landroid/content/Context;Landroid/content/Intent;)V

    .line 659
    return-void
.end method

.method private queryCalendarEventCount(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 458
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {p0}, Lcom/asus/mygazine/MyZineDataUtils;->getToday()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/asus/mygazine/MyZineDataUtils;->getEventNumber(Landroid/content/ContentResolver;I)I

    move-result v1

    iput v1, v0, Lcom/asus/mygazine/WidgetData;->mCalendarEventCount:I

    .line 459
    sget-boolean v0, Lcom/asus/mygazine/MyZineDataUtils;->DBG:Z

    if-eqz v0, :cond_30

    const-string v0, "MyZineDataUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryCalendarEventCount event number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iget v2, v2, Lcom/asus/mygazine/WidgetData;->mCalendarEventCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_30
    return-void
.end method

.method private queryData(I)Z
    .registers 7
    .param p1, "cmd"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 339
    sget-boolean v2, Lcom/asus/mygazine/MyZineDataUtils;->DBG:Z

    if-eqz v2, :cond_22

    const-string v2, "MyZineDataUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--- queryData is called cmd = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/asus/mygazine/MyZineDataUtils;->getDBGCmdString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_22
    iput-boolean v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mIsNotifyViewChanged:Z

    .line 341
    packed-switch p1, :pswitch_data_80

    .line 388
    :goto_27
    return v0

    .line 345
    :pswitch_28
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/asus/mygazine/MyZineDataUtils;->queryAllData(Landroid/content/Context;)V

    :goto_2d
    move v0, v1

    .line 388
    goto :goto_27

    .line 348
    :pswitch_2f
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/asus/mygazine/MyZineDataUtils;->queryDate(Landroid/content/Context;)V

    .line 349
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/asus/mygazine/MyZineDataUtils;->queryCalendarEventCount(Landroid/content/Context;)V

    goto :goto_2d

    .line 352
    :pswitch_3a
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/asus/mygazine/MyZineDataUtils;->queryEmailCount(Landroid/content/Context;)V

    goto :goto_2d

    .line 355
    :pswitch_40
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/asus/mygazine/MyZineDataUtils;->queryCalendarEventCount(Landroid/content/Context;)V

    goto :goto_2d

    .line 358
    :pswitch_46
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mIntent:Landroid/content/Intent;

    invoke-direct {p0, v0, v2}, Lcom/asus/mygazine/MyZineDataUtils;->queryMusicIntent(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_2d

    .line 361
    :pswitch_4e
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/asus/mygazine/MyZineDataUtils;->queryMusicOnChange(Landroid/content/Context;)V

    .line 362
    iput-boolean v1, p0, Lcom/asus/mygazine/MyZineDataUtils;->mIsNotifyViewChanged:Z

    goto :goto_2d

    .line 365
    :pswitch_56
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/asus/mygazine/MyZineDataUtils;->queryReaderBooksNumber(Landroid/content/Context;)V

    goto :goto_2d

    .line 368
    :pswitch_5c
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/asus/mygazine/MyZineDataUtils;->queryReaderPath(Landroid/content/Context;)V

    goto :goto_2d

    .line 371
    :pswitch_62
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mIntent:Landroid/content/Intent;

    invoke-direct {p0, v0, v2}, Lcom/asus/mygazine/MyZineDataUtils;->querySizeAndApplyNewLayout(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_2d

    .line 374
    :pswitch_6a
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mKeyType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/asus/mygazine/MyZineDataUtils;->querySettingsPref(Ljava/lang/String;)V

    goto :goto_2d

    .line 377
    :pswitch_70
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/asus/mygazine/MyZineDataUtils;->queryWeatherInfo(Landroid/content/Context;)V

    goto :goto_2d

    .line 380
    :pswitch_76
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/asus/mygazine/MyZineDataUtils;->queryWebInfo(Landroid/content/Context;)V

    goto :goto_2d

    .line 383
    :pswitch_7c
    iput-boolean v1, p0, Lcom/asus/mygazine/MyZineDataUtils;->mIsNotifyViewChanged:Z

    goto :goto_2d

    .line 341
    nop

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_28
        :pswitch_2f
        :pswitch_3a
        :pswitch_40
        :pswitch_46
        :pswitch_4e
        :pswitch_56
        :pswitch_5c
        :pswitch_62
        :pswitch_6a
        :pswitch_70
        :pswitch_76
        :pswitch_7c
    .end packed-switch
.end method

.method private queryDate(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 464
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 465
    .local v1, "today":Ljava/util/Date;
    iget-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mSettings:Lcom/asus/mygazine/SettingsConfig;

    iget-object v2, v2, Lcom/asus/mygazine/SettingsConfig;->mDateFormat:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/asus/mygazine/MyZineDataUtils;->getDateByFormat(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, "date":Ljava/lang/String;
    iget-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iput-object v0, v2, Lcom/asus/mygazine/WidgetData;->mDate:Ljava/lang/String;

    .line 467
    return-void
.end method

.method private queryEmailCount(Landroid/content/Context;)V
    .locals 0
    return-void
.end method

.method private queryMusicIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 822
    if-eqz p2, :cond_ad

    .line 823
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 824
    if-eqz v0, :cond_ad

    const-string v1, "com.android.music."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 825
    const-string v0, "album"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 826
    const-string v1, "artist"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 827
    const-string v2, "track"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 828
    iget-object v3, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/asus/mygazine/WidgetData;->mAlbumURI:Landroid/net/Uri;

    .line 829
    if-nez v0, :cond_2e

    if-nez v1, :cond_2e

    if-eqz v2, :cond_42

    .line 830
    :cond_2e
    iget-object v3, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iput-object v0, v3, Lcom/asus/mygazine/WidgetData;->mAlbumName:Ljava/lang/String;

    .line 831
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iput-object v1, v0, Lcom/asus/mygazine/WidgetData;->mArtistName:Ljava/lang/String;

    .line 832
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iput-object v2, v0, Lcom/asus/mygazine/WidgetData;->mSongName:Ljava/lang/String;

    .line 833
    const-string v0, "playing"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mIsMusicPlaying:Z

    .line 835
    :cond_42
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iget-object v0, v0, Lcom/asus/mygazine/WidgetData;->mSongName:Ljava/lang/String;

    iget-object v1, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iget-object v1, v1, Lcom/asus/mygazine/WidgetData;->mAlbumName:Ljava/lang/String;

    iget-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iget-object v2, v2, Lcom/asus/mygazine/WidgetData;->mArtistName:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/asus/mygazine/MyZineDataUtils;->getAlbumId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    .line 836
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_ae

    .line 837
    iget-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    invoke-direct {p0, p1, v0, v1}, Lcom/asus/mygazine/MyZineDataUtils;->getAlbumURI(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v2, Lcom/asus/mygazine/WidgetData;->mAlbumURI:Landroid/net/Uri;

    .line 838
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iput-boolean v5, v0, Lcom/asus/mygazine/WidgetData;->mIsOnlineMusic:Z

    .line 842
    :goto_65
    sget-boolean v0, Lcom/asus/mygazine/MyZineDataUtils;->DBG:Z

    if-eqz v0, :cond_ad

    const-string v0, "MyZineDataUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryMusicIntent intent action - curArtist="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iget-object v2, v2, Lcom/asus/mygazine/WidgetData;->mArtistName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,curalbum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iget-object v2, v2, Lcom/asus/mygazine/WidgetData;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,curtitle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iget-object v2, v2, Lcom/asus/mygazine/WidgetData;->mSongName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,playing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mIsMusicPlaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    :cond_ad
    return-void

    .line 840
    :cond_ae
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/asus/mygazine/WidgetData;->mIsOnlineMusic:Z

    goto :goto_65
.end method

.method private queryMusicOnChange(Landroid/content/Context;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 850
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iget-boolean v0, v0, Lcom/asus/mygazine/WidgetData;->mIsOnlineMusic:Z

    if-nez v0, :cond_39

    .line 851
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iget-object v0, v0, Lcom/asus/mygazine/WidgetData;->mSongName:Ljava/lang/String;

    iget-object v1, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iget-object v1, v1, Lcom/asus/mygazine/WidgetData;->mAlbumName:Ljava/lang/String;

    iget-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iget-object v2, v2, Lcom/asus/mygazine/WidgetData;->mArtistName:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/asus/mygazine/MyZineDataUtils;->getAlbumId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    .line 853
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_39

    .line 854
    sget-boolean v0, Lcom/asus/mygazine/MyZineDataUtils;->DBG:Z

    if-eqz v0, :cond_29

    const-string v0, "MyZineDataUtils"

    const-string v1, "queryMusicOnChange reset all"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    :cond_29
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iput-object v4, v0, Lcom/asus/mygazine/WidgetData;->mArtistName:Ljava/lang/String;

    .line 856
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iput-object v4, v0, Lcom/asus/mygazine/WidgetData;->mAlbumName:Ljava/lang/String;

    .line 857
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iput-object v4, v0, Lcom/asus/mygazine/WidgetData;->mSongName:Ljava/lang/String;

    .line 858
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iput-object v4, v0, Lcom/asus/mygazine/WidgetData;->mAlbumURI:Landroid/net/Uri;

    .line 861
    :cond_39
    return-void
.end method

.method private queryMusicPrefs(Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 792
    :try_start_0
    iget-boolean v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mIsGoogleMusic:Z

    if-eqz v0, :cond_8e

    .line 794
    const-string v0, "com.google.android.music"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 795
    const-string v1, "Music"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 796
    iget-object v1, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    const-string v2, "curartist"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/asus/mygazine/WidgetData;->mArtistName:Ljava/lang/String;

    .line 797
    iget-object v1, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    const-string v2, "curalbum"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/asus/mygazine/WidgetData;->mAlbumName:Ljava/lang/String;

    .line 798
    iget-object v1, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    const-string v2, "curtitle"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/asus/mygazine/WidgetData;->mSongName:Ljava/lang/String;

    .line 799
    sget-boolean v0, Lcom/asus/mygazine/MyZineDataUtils;->DBG:Z

    if-eqz v0, :cond_6f

    const-string v0, "MyZineDataUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryMusicPrefs prefs - curArtist="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iget-object v2, v2, Lcom/asus/mygazine/WidgetData;->mArtistName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,curalbum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iget-object v2, v2, Lcom/asus/mygazine/WidgetData;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,curtitle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iget-object v2, v2, Lcom/asus/mygazine/WidgetData;->mSongName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :cond_6f
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iget-object v0, v0, Lcom/asus/mygazine/WidgetData;->mSongName:Ljava/lang/String;

    iget-object v1, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iget-object v1, v1, Lcom/asus/mygazine/WidgetData;->mAlbumName:Ljava/lang/String;

    iget-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iget-object v2, v2, Lcom/asus/mygazine/WidgetData;->mArtistName:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/asus/mygazine/MyZineDataUtils;->getAlbumId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    .line 801
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_8f

    .line 802
    iget-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    invoke-direct {p0, p1, v0, v1}, Lcom/asus/mygazine/MyZineDataUtils;->getAlbumURI(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v2, Lcom/asus/mygazine/WidgetData;->mAlbumURI:Landroid/net/Uri;

    .line 816
    :cond_8e
    :goto_8e
    return-void

    .line 804
    :cond_8f
    sget-boolean v0, Lcom/asus/mygazine/MyZineDataUtils;->DBG:Z

    if-eqz v0, :cond_9a

    const-string v0, "MyZineDataUtils"

    const-string v1, "queryMusicPrefs reset all"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    :cond_9a
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/asus/mygazine/WidgetData;->mArtistName:Ljava/lang/String;

    .line 807
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/asus/mygazine/WidgetData;->mAlbumName:Ljava/lang/String;

    .line 808
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/asus/mygazine/WidgetData;->mSongName:Ljava/lang/String;

    .line 809
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/asus/mygazine/WidgetData;->mAlbumURI:Landroid/net/Uri;
    :try_end_ae
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_ae} :catch_af

    goto :goto_8e

    .line 813
    :catch_af
    move-exception v0

    .line 814
    sget-boolean v0, Lcom/asus/mygazine/MyZineDataUtils;->DBG:Z

    if-eqz v0, :cond_8e

    const-string v0, "MyZineDataUtils"

    const-string v1, "CreatePackageContext error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8e
.end method

.method private queryReaderBooksNumber(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 615
    sget-boolean v0, Lcom/asus/mygazine/MyZineDataUtils;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "MyZineDataUtils"

    const-string v1, "queryReaderBooksNumber is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_b
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    invoke-direct {p0, p1}, Lcom/asus/mygazine/MyZineDataUtils;->getBookNumber(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/asus/mygazine/WidgetData;->mReaderBooksNumber:I

    .line 617
    sget-boolean v0, Lcom/asus/mygazine/MyZineDataUtils;->DBG:Z

    if-eqz v0, :cond_33

    const-string v0, "MyZineDataUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryReaderBooksNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iget v2, v2, Lcom/asus/mygazine/WidgetData;->mReaderBooksNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_33
    return-void
.end method

.method private queryReaderPath(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 591
    sget-boolean v0, Lcom/asus/mygazine/MyZineDataUtils;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "MyZineDataUtils"

    const-string v2, "queryReaderPath is called"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_c
    :try_start_c
    invoke-direct {p0, p1}, Lcom/asus/mygazine/MyZineDataUtils;->getPath(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v1

    .line 597
    if-eqz v1, :cond_58

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 598
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/asus/mygazine/WidgetData;->mReaderPath:Ljava/lang/String;

    .line 599
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/asus/mygazine/WidgetData;->mBookMIME:Ljava/lang/String;

    .line 600
    sget-boolean v0, Lcom/asus/mygazine/MyZineDataUtils;->DBG:Z

    if-eqz v0, :cond_58

    const-string v0, "MyZineDataUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryReaderPath mReaderPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iget-object v3, v3, Lcom/asus/mygazine/WidgetData;->mReaderPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mBookMIME = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iget-object v3, v3, Lcom/asus/mygazine/WidgetData;->mBookMIME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_58} :catch_5e
    .catchall {:try_start_c .. :try_end_58} :catchall_79

    .line 608
    :cond_58
    if-eqz v1, :cond_5d

    .line 609
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 611
    :cond_5d
    :goto_5d
    return-void

    .line 602
    :catch_5e
    move-exception v0

    .line 603
    :try_start_5f
    const-string v2, "MyZineDataUtils"

    const-string v3, "Catch exception when querying reader path"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 605
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/asus/mygazine/WidgetData;->mReaderPath:Ljava/lang/String;

    .line 606
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/asus/mygazine/WidgetData;->mBookMIME:Ljava/lang/String;
    :try_end_73
    .catchall {:try_start_5f .. :try_end_73} :catchall_79

    .line 608
    if-eqz v1, :cond_5d

    .line 609
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_5d

    .line 608
    :catchall_79
    move-exception v0

    if-eqz v1, :cond_7f

    .line 609
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7f
    throw v0
.end method

.method private querySettingsPref(Ljava/lang/String;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 441
    sget-boolean v0, Lcom/asus/mygazine/MyZineDataUtils;->DBG:Z

    if-eqz v0, :cond_1d

    const-string v0, "MyZineDataUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "querySettingsPref is called, key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_1d
    const-string v0, "slide_show_interval"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 444
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mSettings:Lcom/asus/mygazine/SettingsConfig;

    iget-object v1, p0, Lcom/asus/mygazine/MyZineDataUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mSettings:Lcom/asus/mygazine/SettingsConfig;

    iget v2, v2, Lcom/asus/mygazine/SettingsConfig;->mSlideShowInterval:I

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/asus/mygazine/SettingsConfig;->mSlideShowInterval:I

    .line 454
    :cond_33
    :goto_33
    return-void

    .line 445
    :cond_34
    const-string v0, "scale_type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 446
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mSettings:Lcom/asus/mygazine/SettingsConfig;

    iget-object v1, p0, Lcom/asus/mygazine/MyZineDataUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mSettings:Lcom/asus/mygazine/SettingsConfig;

    iget-object v2, v2, Lcom/asus/mygazine/SettingsConfig;->mScaleType:Ljava/lang/String;

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/asus/mygazine/SettingsConfig;->mScaleType:Ljava/lang/String;

    .line 447
    iput-boolean v3, p0, Lcom/asus/mygazine/MyZineDataUtils;->mIsNotifyViewChanged:Z

    goto :goto_33

    .line 448
    :cond_4d
    const-string v0, "logo_display"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 449
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mSettings:Lcom/asus/mygazine/SettingsConfig;

    iget-object v1, p0, Lcom/asus/mygazine/MyZineDataUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mSettings:Lcom/asus/mygazine/SettingsConfig;

    iget-boolean v2, v2, Lcom/asus/mygazine/SettingsConfig;->mIsShowLogo:Z

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/asus/mygazine/SettingsConfig;->mIsShowLogo:Z

    goto :goto_33

    .line 450
    :cond_64
    const-string v0, "photo_date_display"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 451
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mSettings:Lcom/asus/mygazine/SettingsConfig;

    iget-object v1, p0, Lcom/asus/mygazine/MyZineDataUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mSettings:Lcom/asus/mygazine/SettingsConfig;

    iget-boolean v2, v2, Lcom/asus/mygazine/SettingsConfig;->mIsShowPhotoDateTag:Z

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/asus/mygazine/SettingsConfig;->mIsShowPhotoDateTag:Z

    .line 452
    iput-boolean v3, p0, Lcom/asus/mygazine/MyZineDataUtils;->mIsNotifyViewChanged:Z

    goto :goto_33
.end method

.method private querySizeAndApplyNewLayout(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    .prologue
    const/4 v7, 0x1

    const/4 v2, -0x1

    const/4 v6, 0x0

    .line 556
    if-nez p2, :cond_6b

    move v1, v2

    .line 557
    :goto_6
    if-nez p2, :cond_73

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_9a

    .line 559
    :goto_e
    if-le v1, v2, :cond_40

    .line 560
    iget-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetSizeDBHelper:Lcom/asus/mygazine/WidgetSizeDBHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 561
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 562
    new-array v4, v7, [Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    .line 563
    const-string v1, "width"

    aget v5, v0, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 564
    const-string v1, "height"

    aget v5, v0, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 565
    const-string v1, "widgetsize"

    const-string v5, "widgetId=?"

    invoke-virtual {v2, v1, v3, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 569
    :cond_40
    sget-boolean v1, Lcom/asus/mygazine/MyZineDataUtils;->DBG:Z

    if-eqz v1, :cond_5e

    const-string v1, "MyZineDataUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "querySizeAndApplyNewLayout is called size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_5e
    aget v0, v0, v6

    packed-switch v0, :pswitch_data_a2

    .line 585
    :pswitch_63
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    const v1, 0x7f030004

    iput v1, v0, Lcom/asus/mygazine/WidgetData;->mWidgetLayoutId:I

    .line 587
    :goto_6a
    return-void

    .line 556
    :cond_6b
    const-string v0, "appWidget_id"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    move v1, v0

    goto :goto_6

    .line 557
    :cond_73
    const-string v0, "newSize"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    goto :goto_e

    .line 573
    :pswitch_7a
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    const v1, 0x7f030008

    iput v1, v0, Lcom/asus/mygazine/WidgetData;->mWidgetLayoutId:I

    goto :goto_6a

    .line 576
    :pswitch_82
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    const v1, 0x7f030007

    iput v1, v0, Lcom/asus/mygazine/WidgetData;->mWidgetLayoutId:I

    goto :goto_6a

    .line 579
    :pswitch_8a
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    const v1, 0x7f030006

    iput v1, v0, Lcom/asus/mygazine/WidgetData;->mWidgetLayoutId:I

    goto :goto_6a

    .line 582
    :pswitch_92
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    const v1, 0x7f030005

    iput v1, v0, Lcom/asus/mygazine/WidgetData;->mWidgetLayoutId:I

    goto :goto_6a

    .line 557
    :array_9a
    .array-data 4
        -0x1
        -0x1
    .end array-data

    .line 571
    :pswitch_data_a2
    .packed-switch 0x2
        :pswitch_92
        :pswitch_63
        :pswitch_8a
        :pswitch_82
        :pswitch_63
        :pswitch_7a
    .end packed-switch
.end method

.method private queryWeatherInfo(Landroid/content/Context;)V
    .registers 10

    .prologue
    const/4 v7, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 486
    .line 487
    const-string v0, "content://com.asus.weather.revived.provider/weather/1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 488
    const/16 v0, 0x9

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v3

    const-string v0, "cityname"

    aput-object v0, v2, v4

    const-string v0, "weathertext"

    aput-object v0, v2, v5

    const-string v0, "tempunits"

    aput-object v0, v2, v7

    const/4 v0, 0x4

    const-string v3, "temperature"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    const-string v3, "humidity"

    aput-object v3, v2, v0

    const/4 v0, 0x6

    const-string v3, "windspeed"

    aput-object v3, v2, v0

    const/4 v0, 0x7

    const-string v3, "speedunits"

    aput-object v3, v2, v0

    const/16 v0, 0x8

    const-string v3, "weathericon"

    aput-object v3, v2, v0

    .line 493
    :try_start_39
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_45} :catch_304
    .catchall {:try_start_39 .. :try_end_45} :catchall_2fa

    move-result-object v1

    .line 496
    if-eqz v1, :cond_2d3

    :try_start_48
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2d3

    .line 497
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mIsWeatherView:Z

    .line 498
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/asus/mygazine/WidgetData;->mWeatherCityName:Ljava/lang/String;

    .line 500
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    const/4 v3, 0x2

    aget-object v3, v2, v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/asus/mygazine/WidgetData;->mWeatherTypes:Ljava/lang/String;

    .line 502
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    const/4 v3, 0x4

    aget-object v3, v2, v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/asus/mygazine/WidgetData;->mWeatherTemperature:Ljava/lang/String;

    .line 504
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    const/4 v3, 0x3

    aget-object v3, v2, v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/asus/mygazine/WidgetData;->mWeatherUnit:Ljava/lang/String;

    .line 506
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    const/4 v3, 0x5

    aget-object v3, v2, v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/asus/mygazine/WidgetData;->mWeatherHumidity:Ljava/lang/String;

    .line 508
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    const/4 v3, 0x6

    aget-object v3, v2, v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/asus/mygazine/WidgetData;->mWeatherWindSpeed:Ljava/lang/String;

    .line 510
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    const/4 v3, 0x7

    aget-object v3, v2, v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/asus/mygazine/WidgetData;->mWeatherSpeedUnit:Ljava/lang/String;

    .line 512
    const/16 v0, 0x8

    aget-object v0, v2, v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 514
    iget-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/asus/mygazine/WidgetData;->mWeatherIconId:I

    .line 515
    sget-boolean v2, Lcom/asus/mygazine/MyZineDataUtils;->DBG:Z

    if-eqz v2, :cond_14a

    .line 516
    const-string v2, "MyZineDataUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryWeatherInfo - cityname= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iget-object v4, v4, Lcom/asus/mygazine/WidgetData;->mWeatherCityName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " types= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iget-object v4, v4, Lcom/asus/mygazine/WidgetData;->mWeatherTypes:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " temprautre= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iget-object v4, v4, Lcom/asus/mygazine/WidgetData;->mWeatherTemperature:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iget-object v4, v4, Lcom/asus/mygazine/WidgetData;->mWeatherUnit:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " humidity= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iget-object v4, v4, Lcom/asus/mygazine/WidgetData;->mWeatherHumidity:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " windspeed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iget-object v4, v4, Lcom/asus/mygazine/WidgetData;->mWeatherWindSpeed:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iget-object v4, v4, Lcom/asus/mygazine/WidgetData;->mWeatherSpeedUnit:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mWeatherIconId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iget v4, v4, Lcom/asus/mygazine/WidgetData;->mWeatherIconId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_14a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 521
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 522
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 524
    iget-object v5, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iget-object v6, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iget-object v6, v6, Lcom/asus/mygazine/WidgetData;->mWeatherCityName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iget-object v6, v6, Lcom/asus/mygazine/WidgetData;->mWeatherTypes:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iget-object v6, v6, Lcom/asus/mygazine/WidgetData;->mWeatherTemperature:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060033

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iget-object v6, v6, Lcom/asus/mygazine/WidgetData;->mWeatherUnit:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/asus/mygazine/WidgetData;->mWeatherText:Ljava/lang/String;

    .line 526
    sget-boolean v2, Lcom/asus/mygazine/MyZineDataUtils;->DBG:Z

    if-eqz v2, :cond_1bc

    const-string v2, "MyZineDataUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "queryWeatherInfo mWeatherText = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iget-object v6, v6, Lcom/asus/mygazine/WidgetData;->mWeatherText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_1bc
    iget-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06000c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iget-object v5, v5, Lcom/asus/mygazine/WidgetData;->mWeatherWindSpeed:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iget-object v5, v5, Lcom/asus/mygazine/WidgetData;->mWeatherSpeedUnit:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06000d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iget-object v5, v5, Lcom/asus/mygazine/WidgetData;->mWeatherHumidity:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/asus/mygazine/WidgetData;->mWeatherContent:Ljava/lang/String;

    .line 531
    sget-boolean v2, Lcom/asus/mygazine/MyZineDataUtils;->DBG:Z

    if-eqz v2, :cond_232

    const-string v2, "MyZineDataUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryWeatherInfo mWeatherContent = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iget-object v5, v5, Lcom/asus/mygazine/WidgetData;->mWeatherContent:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_232
    iget-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iget-object v3, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iget-object v3, v3, Lcom/asus/mygazine/WidgetData;->mWeatherTemperature:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/asus/mygazine/WidgetData;->mWeatherTemperatureInfo:Ljava/lang/String;

    .line 534
    sget-boolean v2, Lcom/asus/mygazine/MyZineDataUtils;->DBG:Z

    if-eqz v2, :cond_262

    const-string v2, "MyZineDataUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryWeatherInfo mWeatherTemperatureInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iget-object v4, v4, Lcom/asus/mygazine/WidgetData;->mWeatherTemperatureInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_262
    iget-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060033

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iget-object v4, v4, Lcom/asus/mygazine/WidgetData;->mWeatherUnit:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/asus/mygazine/WidgetData;->mWeatherDegreeAndUnit:Ljava/lang/String;

    .line 539
    iget-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iget-object v2, v2, Lcom/asus/mygazine/WidgetData;->mWeatherCityName:Ljava/lang/String;

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2ca

    iget-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iget-object v2, v2, Lcom/asus/mygazine/WidgetData;->mWeatherTypes:Ljava/lang/String;

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2ca

    iget-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iget-object v2, v2, Lcom/asus/mygazine/WidgetData;->mWeatherSpeedUnit:Ljava/lang/String;

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2ca

    iget-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iget-object v2, v2, Lcom/asus/mygazine/WidgetData;->mWeatherUnit:Ljava/lang/String;

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2ca

    iget-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iget-object v2, v2, Lcom/asus/mygazine/WidgetData;->mWeatherHumidity:Ljava/lang/String;

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2ca

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2cd

    .line 542
    :cond_2ca
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mIsWeatherView:Z
    :try_end_2cd
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_2cd} :catch_2d7
    .catchall {:try_start_48 .. :try_end_2cd} :catchall_302

    .line 549
    :cond_2cd
    :goto_2cd
    if-eqz v1, :cond_2d2

    .line 550
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 552
    :cond_2d2
    :goto_2d2
    return-void

    .line 545
    :cond_2d3
    const/4 v0, 0x0

    :try_start_2d4
    iput-boolean v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mIsWeatherView:Z
    :try_end_2d6
    .catch Ljava/lang/Exception; {:try_start_2d4 .. :try_end_2d6} :catch_2d7
    .catchall {:try_start_2d4 .. :try_end_2d6} :catchall_302

    goto :goto_2cd

    .line 546
    :catch_2d7
    move-exception v0

    .line 547
    :goto_2d8
    :try_start_2d8
    const-string v2, "MyZineDataUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryWeather - catch exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f4
    .catchall {:try_start_2d8 .. :try_end_2f4} :catchall_302

    .line 549
    if-eqz v1, :cond_2d2

    .line 550
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2d2

    .line 549
    :catchall_2fa
    move-exception v0

    move-object v1, v6

    :goto_2fc
    if-eqz v1, :cond_301

    .line 550
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_301
    throw v0

    .line 549
    :catchall_302
    move-exception v0

    goto :goto_2fc

    .line 546
    :catch_304
    move-exception v0

    move-object v1, v6

    goto :goto_2d8
.end method

.method private queryWebInfo(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 471
    sget-boolean v1, Lcom/asus/mygazine/MyZineDataUtils;->DBG:Z

    if-eqz v1, :cond_c

    const-string v1, "MyZineDataUtils"

    const-string v2, "queryWebInfo is called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_c
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/asus/mygazine/MyZineDataUtils;->getVisitedWeb(Landroid/content/ContentResolver;)Lcom/asus/mygazine/MyZineDataUtils$VisitedWeb;

    move-result-object v0

    .line 473
    .local v0, "visited":Lcom/asus/mygazine/MyZineDataUtils$VisitedWeb;
    if-eqz v0, :cond_29

    .line 474
    iget-object v1, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iget-object v2, v0, Lcom/asus/mygazine/MyZineDataUtils$VisitedWeb;->thumbnail:Landroid/graphics/Bitmap;

    iput-object v2, v1, Lcom/asus/mygazine/WidgetData;->mWebThumbNail:Landroid/graphics/Bitmap;

    .line 475
    iget-object v1, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iget-object v2, v0, Lcom/asus/mygazine/MyZineDataUtils$VisitedWeb;->title:Ljava/lang/String;

    iput-object v2, v1, Lcom/asus/mygazine/WidgetData;->mWebTitle:Ljava/lang/String;

    .line 476
    iget-object v1, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iget-object v2, v0, Lcom/asus/mygazine/MyZineDataUtils$VisitedWeb;->url:Ljava/lang/String;

    iput-object v2, v1, Lcom/asus/mygazine/WidgetData;->mWebUrl:Ljava/lang/String;

    .line 482
    :goto_28
    return-void

    .line 478
    :cond_29
    iget-object v1, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iput-object v3, v1, Lcom/asus/mygazine/WidgetData;->mWebThumbNail:Landroid/graphics/Bitmap;

    .line 479
    iget-object v1, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iput-object v3, v1, Lcom/asus/mygazine/WidgetData;->mWebTitle:Ljava/lang/String;

    .line 480
    iget-object v1, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iput-object v3, v1, Lcom/asus/mygazine/WidgetData;->mWebUrl:Ljava/lang/String;

    goto :goto_28
.end method

.method private readSharedPreferences()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1115
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mContext:Landroid/content/Context;

    const-string v1, "MyzinePrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1116
    const-string v1, "folder_path"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1117
    if-eqz v1, :cond_49

    .line 1119
    invoke-direct {p0, v1}, Lcom/asus/mygazine/MyZineDataUtils;->updateAlbumIdAndTitle(Ljava/lang/String;)V

    .line 1126
    :goto_15
    iget-object v1, p0, Lcom/asus/mygazine/MyZineDataUtils;->mSettings:Lcom/asus/mygazine/SettingsConfig;

    iget-object v1, v1, Lcom/asus/mygazine/SettingsConfig;->mDateFormat:Ljava/lang/String;

    const-string v2, "dd MMMM,yyyy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    iget-object v1, p0, Lcom/asus/mygazine/MyZineDataUtils;->mSettings:Lcom/asus/mygazine/SettingsConfig;

    iget-object v1, v1, Lcom/asus/mygazine/SettingsConfig;->mDateFormat:Ljava/lang/String;

    const-string v2, "MMMM dd,yyyy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 1128
    :cond_2d
    const-string v1, "MyZineDataUtils"

    const-string v2, "update to new version date format"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    iget-object v1, p0, Lcom/asus/mygazine/MyZineDataUtils;->mSettings:Lcom/asus/mygazine/SettingsConfig;

    const-string v2, ""

    iput-object v2, v1, Lcom/asus/mygazine/SettingsConfig;->mDateFormat:Ljava/lang/String;

    .line 1130
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1131
    const-string v1, "date_format"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1132
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1134
    :cond_48
    return-void

    .line 1121
    :cond_49
    const-string v1, "is_album"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/asus/mygazine/MyZineDataUtils;->mIsAlbumSelected:Z

    .line 1122
    const-string v1, "album_id"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/mygazine/MyZineDataUtils;->mAlbumBucketId:Ljava/lang/String;

    .line 1123
    const-string v1, "photo_path"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/mygazine/MyZineDataUtils;->mPhotoPathSet:Ljava/util/Set;

    .line 1124
    const-string v1, "album_title"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/mygazine/MyZineDataUtils;->mAlbumTitle:Ljava/lang/String;

    goto :goto_15
.end method

.method private registerDataObserver(Landroid/content/ContentResolver;)V
    .registers 13
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v10, 0x1

    .line 181
    sget-boolean v8, Lcom/asus/mygazine/MyZineDataUtils;->DBG:Z

    if-eqz v8, :cond_c

    const-string v8, "MyZineDataUtils"

    const-string v9, "registerDataObserver"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_c
    const-string v8, "content://com.android.email.provider/message"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 184
    .local v2, "MESSAGE_URI":Landroid/net/Uri;
    const-string v8, "content://com.android.email.provider/syncedMessage"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 185
    .local v6, "SYNCMESSAGE_URI":Landroid/net/Uri;
    const-string v8, "content://com.android.email.provider/account"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 186
    .local v0, "ACCOUNT_URI":Landroid/net/Uri;
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 187
    .local v1, "IMAGE_URI":Landroid/net/Uri;
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 188
    .local v3, "MUSIC_URI":Landroid/net/Uri;
    const-string v8, "content://com.android.browser/history"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 189
    .local v7, "WEB_URI":Landroid/net/Uri;
    const-string v8, "content://reader/count"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 190
    .local v5, "READER_URI":Landroid/net/Uri;
    const-string v8, "content://reader/latestbookpath"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 193
    .local v4, "READER_PATH_URI":Landroid/net/Uri;
    iget-object v8, p0, Lcom/asus/mygazine/MyZineDataUtils;->mEmailObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v2, v10, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 194
    iget-object v8, p0, Lcom/asus/mygazine/MyZineDataUtils;->mEmailObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v6, v10, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 195
    iget-object v8, p0, Lcom/asus/mygazine/MyZineDataUtils;->mEmailObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v10, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 197
    iget-object v8, p0, Lcom/asus/mygazine/MyZineDataUtils;->mImageObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v1, v10, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 199
    iget-object v8, p0, Lcom/asus/mygazine/MyZineDataUtils;->mMusicObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v3, v10, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 201
    iget-object v8, p0, Lcom/asus/mygazine/MyZineDataUtils;->mBrowserObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v7, v10, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 203
    iget-object v8, p0, Lcom/asus/mygazine/MyZineDataUtils;->mReaderObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v5, v10, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 205
    iget-object v8, p0, Lcom/asus/mygazine/MyZineDataUtils;->mReaderPathObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v4, v10, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 206
    return-void
.end method

.method private updateAlbumIdAndTitle(Ljava/lang/String;)V
    .registers 11

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1137
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1138
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "bucket_id"

    aput-object v0, v2, v8

    const-string v0, "bucket_display_name"

    aput-object v0, v2, v7

    .line 1139
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mContext:Landroid/content/Context;

    const-string v3, "MyzinePrefs"

    invoke-virtual {v0, v3, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1140
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 1142
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_data LIKE \'%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1145
    if-nez v0, :cond_64

    .line 1146
    const-string v0, "MyZineDataUtils"

    const-string v1, "updateAlbumPathToId, fail to query DB"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    const-string v0, "folder_path"

    invoke-interface {v6, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1148
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1165
    :goto_63
    return-void

    .line 1152
    :cond_64
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 1154
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/mygazine/MyZineDataUtils;->mAlbumBucketId:Ljava/lang/String;

    .line 1155
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/mygazine/MyZineDataUtils;->mAlbumTitle:Ljava/lang/String;

    .line 1156
    iput-boolean v7, p0, Lcom/asus/mygazine/MyZineDataUtils;->mIsAlbumSelected:Z

    .line 1157
    sget-boolean v1, Lcom/asus/mygazine/MyZineDataUtils;->DBG:Z

    if-eqz v1, :cond_93

    const-string v1, "MyZineDataUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAlbumPathToId bucket_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/mygazine/MyZineDataUtils;->mAlbumBucketId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    :cond_93
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1160
    const-string v0, "album_id"

    iget-object v1, p0, Lcom/asus/mygazine/MyZineDataUtils;->mAlbumBucketId:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1161
    const-string v0, "album_title"

    iget-object v1, p0, Lcom/asus/mygazine/MyZineDataUtils;->mAlbumTitle:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1162
    const-string v0, "is_album"

    invoke-interface {v6, v0, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1163
    const-string v0, "folder_path"

    invoke-interface {v6, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1164
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_63
.end method


# virtual methods
.method public closeDB()V
    .registers 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetSizeDBHelper:Lcom/asus/mygazine/WidgetSizeDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 263
    return-void
.end method

.method public disabled()V
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mPhotoConverter:Lcom/asus/mygazine/PhotoConverter;

    invoke-virtual {v0}, Lcom/asus/mygazine/PhotoConverter;->deleteAllSnapshots()V

    .line 147
    invoke-virtual {p0}, Lcom/asus/mygazine/MyZineDataUtils;->unregisterDataObserver()V

    .line 148
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetSizeDBHelper:Lcom/asus/mygazine/WidgetSizeDBHelper;

    invoke-virtual {v0}, Lcom/asus/mygazine/WidgetSizeDBHelper;->disableWidget()V

    .line 149
    invoke-virtual {p0}, Lcom/asus/mygazine/MyZineDataUtils;->closeDB()V

    .line 150
    const/4 v0, 0x0

    sput-object v0, Lcom/asus/mygazine/MyZineDataUtils;->sInstance:Lcom/asus/mygazine/MyZineDataUtils;

    .line 151
    return-void
.end method

.method public findSizeById(I)I
    .registers 3
    .param p1, "widgetId"    # I

    .prologue
    .line 864
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetSizeDBHelper:Lcom/asus/mygazine/WidgetSizeDBHelper;

    invoke-virtual {v0, p1}, Lcom/asus/mygazine/WidgetSizeDBHelper;->findWidthSizeById(I)I

    move-result v0

    return v0
.end method

.method public getAlbumTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mAlbumTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getConverter()Lcom/asus/mygazine/PhotoConverter;
    .registers 2

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mPhotoConverter:Lcom/asus/mygazine/PhotoConverter;

    return-object v0
.end method

.method public getPhoto(I)Lcom/asus/mygazine/Snapshot;
    .registers 6
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 1082
    iget-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1083
    :try_start_4
    iget-object v3, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iget-object v3, v3, Lcom/asus/mygazine/WidgetData;->mPhotoData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1084
    monitor-exit v2

    .line 1089
    :goto_f
    return-object v1

    .line 1085
    :cond_10
    iget-object v3, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iget-object v3, v3, Lcom/asus/mygazine/WidgetData;->mPhotoData:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/mygazine/Snapshot;

    .line 1086
    .local v0, "snap":Lcom/asus/mygazine/Snapshot;
    if-nez v0, :cond_21

    .line 1087
    monitor-exit v2

    goto :goto_f

    .line 1090
    .end local v0    # "snap":Lcom/asus/mygazine/Snapshot;
    :catchall_1e
    move-exception v1

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_1e

    throw v1

    .line 1089
    .restart local v0    # "snap":Lcom/asus/mygazine/Snapshot;
    :cond_21
    :try_start_21
    new-instance v1, Lcom/asus/mygazine/Snapshot;

    invoke-direct {v1, v0}, Lcom/asus/mygazine/Snapshot;-><init>(Lcom/asus/mygazine/Snapshot;)V

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_1e

    goto :goto_f
.end method

.method public getPhotoCount()I
    .registers 3

    .prologue
    .line 1094
    iget-object v1, p0, Lcom/asus/mygazine/MyZineDataUtils;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1095
    :try_start_3
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iget-object v0, v0, Lcom/asus/mygazine/WidgetData;->mPhotoData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 1096
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public getSettingsConfig()Lcom/asus/mygazine/SettingsConfig;
    .registers 2

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mSettings:Lcom/asus/mygazine/SettingsConfig;

    return-object v0
.end method

.method public getWidgetData()Lcom/asus/mygazine/WidgetData;
    .registers 2

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    return-object v0
.end method

.method public getWidgetSizeDBHelper()Lcom/asus/mygazine/WidgetSizeDBHelper;
    .registers 2

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetSizeDBHelper:Lcom/asus/mygazine/WidgetSizeDBHelper;

    return-object v0
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 154
    const/4 v1, -0x1

    .line 155
    .local v1, "cmd":I
    sget-boolean v4, Lcom/asus/mygazine/MyZineDataUtils;->DBG:Z

    if-eqz v4, :cond_21

    const-string v4, "MyZineDataUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleIntent action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_21
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "action":Ljava/lang/String;
    const-string v4, "com.android.music."

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 158
    const/4 v1, 0x4

    .line 159
    iput-object p1, p0, Lcom/asus/mygazine/MyZineDataUtils;->mIntent:Landroid/content/Intent;

    .line 176
    :cond_30
    :goto_30
    invoke-direct {p0, v1}, Lcom/asus/mygazine/MyZineDataUtils;->addCommand(I)V

    .line 177
    return-void

    .line 160
    :cond_34
    const-string v4, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_54

    const-string v4, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_54

    const-string v4, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_54

    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 164
    :cond_54
    const/4 v1, 0x1

    goto :goto_30

    .line 165
    :cond_56
    const-string v4, "android.intent.action.PROVIDER_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 166
    const/4 v1, 0x3

    goto :goto_30

    .line 167
    :cond_60
    const-string v4, "com.asus.weather.weatherIntentAction"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 168
    const/16 v1, 0xa

    goto :goto_30

    .line 169
    :cond_6b
    const-string v4, "com.asus.appwidget.action.RESIZE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 170
    const/16 v1, 0x8

    .line 171
    const-string v4, "appWidget_id"

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 172
    .local v3, "widgetId":I
    const-string v4, "newSize"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    .line 173
    .local v2, "newSize":[I
    iput-object p1, p0, Lcom/asus/mygazine/MyZineDataUtils;->mIntent:Landroid/content/Intent;

    .line 174
    sget-boolean v4, Lcom/asus/mygazine/MyZineDataUtils;->DBG:Z

    if-eqz v4, :cond_30

    const-string v4, "MyZineDataUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "widgetId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " newSize[0]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " newSize[1]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_30
.end method

.method public isGoogleGallery()Z
    .registers 2

    .prologue
    .line 933
    iget-boolean v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mIsGoogleGallery:Z

    return v0
.end method

.method public isGoogleMusic()Z
    .registers 2

    .prologue
    .line 925
    iget-boolean v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mIsGoogleMusic:Z

    return v0
.end method

.method public isMusicPlaying()Z
    .registers 2

    .prologue
    .line 929
    iget-boolean v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mIsMusicPlaying:Z

    return v0
.end method

.method public isWeatherView()Z
    .registers 2

    .prologue
    .line 937
    iget-boolean v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mIsWeatherView:Z

    return v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 1172
    sget-boolean v0, Lcom/asus/mygazine/MyZineDataUtils;->DBG:Z

    if-eqz v0, :cond_1c

    const-string v0, "MyZineDataUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSharedPreferenceChanged is called, key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    :cond_1c
    iput-object p2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mKeyType:Ljava/lang/String;

    .line 1175
    const-string v0, "date_format"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 1176
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mSettings:Lcom/asus/mygazine/SettingsConfig;

    iget-object v1, p0, Lcom/asus/mygazine/MyZineDataUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mSettings:Lcom/asus/mygazine/SettingsConfig;

    iget-object v2, v2, Lcom/asus/mygazine/SettingsConfig;->mDateFormat:Ljava/lang/String;

    invoke-interface {v1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/asus/mygazine/SettingsConfig;->mDateFormat:Ljava/lang/String;

    .line 1177
    const-string v0, "MyZineDataUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSettings.mDateFormat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mSettings:Lcom/asus/mygazine/SettingsConfig;

    iget-object v2, v2, Lcom/asus/mygazine/SettingsConfig;->mDateFormat:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1179
    iget-object v1, p0, Lcom/asus/mygazine/MyZineDataUtils;->mSettings:Lcom/asus/mygazine/SettingsConfig;

    iget-object v1, v1, Lcom/asus/mygazine/SettingsConfig;->mDateFormat:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/asus/mygazine/MyZineDataUtils;->getDateByFormat(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1180
    iget-object v1, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iput-object v0, v1, Lcom/asus/mygazine/WidgetData;->mDate:Ljava/lang/String;

    .line 1184
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/asus/mygazine/MyZineDataUtils;->addCommand(I)V

    .line 1185
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/asus/mygazine/MyZineDataUtils;->addCommand(I)V

    .line 1189
    :goto_6a
    return-void

    .line 1187
    :cond_6b
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/asus/mygazine/MyZineDataUtils;->addCommand(I)V

    goto :goto_6a
.end method

.method public queryPhotoData(Landroid/content/Context;)V
    .registers 12

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 693
    sget-boolean v0, Lcom/asus/mygazine/MyZineDataUtils;->DBG:Z

    if-eqz v0, :cond_e

    const-string v0, "MyZineDataUtils"

    const-string v1, "queryPhotoData is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :cond_e
    iget-boolean v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mIsAlbumSelected:Z

    if-nez v0, :cond_64

    .line 698
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/asus/mygazine/MyZineDataUtils;->mPhotoPathSet:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 699
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 701
    sget-boolean v2, Lcom/asus/mygazine/MyZineDataUtils;->DBG:Z

    if-eqz v2, :cond_29

    const-string v2, "MyZineDataUtils"

    const-string v3, "query selected photos"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :cond_29
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 704
    :cond_2d
    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 705
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 706
    invoke-direct {p0, v0}, Lcom/asus/mygazine/MyZineDataUtils;->getPhotoInfo(Ljava/lang/String;)Lcom/asus/mygazine/Snapshot;

    move-result-object v0

    .line 707
    if-eqz v0, :cond_2d

    .line 713
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_43
    move-object v0, v1

    .line 752
    :goto_44
    iget-object v1, p0, Lcom/asus/mygazine/MyZineDataUtils;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 753
    :try_start_47
    sget-boolean v2, Lcom/asus/mygazine/MyZineDataUtils;->DBG:Z

    if-eqz v2, :cond_52

    const-string v2, "MyZineDataUtils"

    const-string v3, "clear all elements"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    :cond_52
    iget-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iget-object v2, v2, Lcom/asus/mygazine/WidgetData;->mPhotoData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 756
    iget-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iput-object v0, v2, Lcom/asus/mygazine/WidgetData;->mPhotoData:Ljava/util/List;

    .line 759
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mPhotoConverter:Lcom/asus/mygazine/PhotoConverter;

    invoke-virtual {v0}, Lcom/asus/mygazine/PhotoConverter;->deleteAllSnapshots()V

    .line 760
    monitor-exit v1
    :try_end_63
    .catchall {:try_start_47 .. :try_end_63} :catchall_113

    .line 761
    :cond_63
    :goto_63
    return-void

    .line 717
    :cond_64
    sget-boolean v0, Lcom/asus/mygazine/MyZineDataUtils;->DBG:Z

    if-eqz v0, :cond_82

    const-string v0, "MyZineDataUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query album photos, mAlbumBucketId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mAlbumBucketId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :cond_82
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mAlbumBucketId:Ljava/lang/String;

    if-eqz v0, :cond_63

    .line 722
    iget v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mPictureNumberInFolder:I

    if-gez v0, :cond_b7

    .line 723
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 727
    :goto_8c
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v7

    const-string v0, "datetaken"

    aput-object v0, v2, v8

    const-string v0, "orientation"

    aput-object v0, v2, v9

    .line 729
    const-string v5, "datetaken desc"

    .line 731
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "bucket_id=?"

    new-array v4, v8, [Ljava/lang/String;

    iget-object v6, p0, Lcom/asus/mygazine/MyZineDataUtils;->mAlbumBucketId:Ljava/lang/String;

    aput-object v6, v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 735
    if-nez v1, :cond_ce

    .line 736
    const-string v0, "MyZineDataUtils"

    const-string v1, "queryPhotoData, fail to query DB"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    .line 725
    :cond_b7
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    iget v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mPictureNumberInFolder:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    goto :goto_8c

    .line 740
    :cond_ce
    sget-boolean v0, Lcom/asus/mygazine/MyZineDataUtils;->DBG:Z

    if-eqz v0, :cond_ee

    const-string v0, "MyZineDataUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryPhotoData ,count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    :cond_ee
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 743
    :goto_f3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_10e

    .line 744
    new-instance v2, Lcom/asus/mygazine/Snapshot;

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/asus/mygazine/Snapshot;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 747
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f3

    .line 749
    :cond_10e
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_44

    .line 760
    :catchall_113
    move-exception v0

    :try_start_114
    monitor-exit v1
    :try_end_115
    .catchall {:try_start_114 .. :try_end_115} :catchall_113

    throw v0
.end method

.method public setAlbumPath(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "bucket_id"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 393
    if-nez p1, :cond_f

    .line 395
    sget-boolean v2, Lcom/asus/mygazine/MyZineDataUtils;->DBG:Z

    if-eqz v2, :cond_e

    const-string v2, "MyZineDataUtils"

    const-string v3, "setAlbumPath:press cancel"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_e
    :goto_e
    return-void

    .line 399
    :cond_f
    iget-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mAlbumBucketId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 400
    sget-boolean v2, Lcom/asus/mygazine/MyZineDataUtils;->DBG:Z

    if-eqz v2, :cond_e

    const-string v2, "MyZineDataUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAlbumPath:the same bucket id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/mygazine/MyZineDataUtils;->mAlbumBucketId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 403
    :cond_36
    iget-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mContext:Landroid/content/Context;

    const-string v3, "MyzinePrefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 404
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 405
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "album_id"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 406
    const-string v2, "album_title"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 407
    const-string v2, "is_album"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 408
    const-string v2, "photo_path"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 409
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 410
    iput-object p1, p0, Lcom/asus/mygazine/MyZineDataUtils;->mAlbumBucketId:Ljava/lang/String;

    .line 411
    iput-object p2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mAlbumTitle:Ljava/lang/String;

    .line 412
    iput-boolean v5, p0, Lcom/asus/mygazine/MyZineDataUtils;->mIsAlbumSelected:Z

    .line 413
    sget-boolean v2, Lcom/asus/mygazine/MyZineDataUtils;->DBG:Z

    if-eqz v2, :cond_7e

    const-string v2, "MyZineDataUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAlbumPath mAlbumBucketId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/mygazine/MyZineDataUtils;->mAlbumBucketId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_7e
    sget-boolean v2, Lcom/asus/mygazine/MyZineDataUtils;->DBG:Z

    if-eqz v2, :cond_a6

    const-string v2, "MyZineDataUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAlbumPath mAlbumTitle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/mygazine/MyZineDataUtils;->mAlbumTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,title = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_a6
    const/16 v2, 0xc

    invoke-direct {p0, v2}, Lcom/asus/mygazine/MyZineDataUtils;->addCommand(I)V

    goto/16 :goto_e
.end method

.method public setPhotoPath(Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 9
    .param p2, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 419
    if-nez p1, :cond_f

    .line 421
    sget-boolean v3, Lcom/asus/mygazine/MyZineDataUtils;->DBG:Z

    if-eqz v3, :cond_e

    const-string v3, "MyZineDataUtils"

    const-string v4, "setPhotoPath:press cancel"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_e
    :goto_e
    return-void

    .line 424
    :cond_f
    iget-object v3, p0, Lcom/asus/mygazine/MyZineDataUtils;->mContext:Landroid/content/Context;

    const-string v4, "MyzinePrefs"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 425
    .local v2, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 426
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "album_title"

    invoke-interface {v0, v3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 427
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 428
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v3, "photo_path"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 429
    const-string v3, "is_album"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 430
    const-string v3, "album_id"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 431
    iput-object v1, p0, Lcom/asus/mygazine/MyZineDataUtils;->mPhotoPathSet:Ljava/util/Set;

    .line 432
    iput-object p2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mAlbumTitle:Ljava/lang/String;

    .line 433
    iput-boolean v5, p0, Lcom/asus/mygazine/MyZineDataUtils;->mIsAlbumSelected:Z

    .line 434
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/asus/mygazine/MyZineDataUtils;->mAlbumBucketId:Ljava/lang/String;

    .line 435
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 436
    const/16 v3, 0xc

    invoke-direct {p0, v3}, Lcom/asus/mygazine/MyZineDataUtils;->addCommand(I)V

    goto :goto_e
.end method

.method public unregisterDataObserver()V
    .registers 3

    .prologue
    .line 252
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/mygazine/MyZineDataUtils;->mEmailObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 253
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/mygazine/MyZineDataUtils;->mImageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 254
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/mygazine/MyZineDataUtils;->mMusicObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 255
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/mygazine/MyZineDataUtils;->mBrowserObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 256
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/mygazine/MyZineDataUtils;->mReaderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 257
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/mygazine/MyZineDataUtils;->mReaderPathObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 258
    return-void
.end method

.method public updatePhoto(ILcom/asus/mygazine/Snapshot;)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "snap"    # Lcom/asus/mygazine/Snapshot;

    .prologue
    .line 1100
    iget-object v2, p0, Lcom/asus/mygazine/MyZineDataUtils;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1101
    :try_start_3
    iget-object v1, p0, Lcom/asus/mygazine/MyZineDataUtils;->mWidgetData:Lcom/asus/mygazine/WidgetData;

    iget-object v1, v1, Lcom/asus/mygazine/WidgetData;->mPhotoData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/mygazine/Snapshot;

    .line 1102
    .local v0, "_snap":Lcom/asus/mygazine/Snapshot;
    invoke-virtual {v0, p2}, Lcom/asus/mygazine/Snapshot;->copy(Lcom/asus/mygazine/Snapshot;)V

    .line 1103
    monitor-exit v2

    .line 1104
    return-void

    .line 1103
    .end local v0    # "_snap":Lcom/asus/mygazine/Snapshot;
    :catchall_12
    move-exception v1

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method
