.class public Lcom/asus/mygazine/MyZineWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "MyZineWidgetProvider.java"


# static fields
.field private static final DBG:Z

.field private static sInstance:Lcom/asus/mygazine/MyZineWidgetProvider;

.field private static sUtils:Lcom/asus/mygazine/MyZineDataUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 18
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_12

    :goto_b
    sput-boolean v0, Lcom/asus/mygazine/MyZineWidgetProvider;->DBG:Z

    .line 20
    sput-object v3, Lcom/asus/mygazine/MyZineWidgetProvider;->sUtils:Lcom/asus/mygazine/MyZineDataUtils;

    .line 21
    sput-object v3, Lcom/asus/mygazine/MyZineWidgetProvider;->sInstance:Lcom/asus/mygazine/MyZineWidgetProvider;

    return-void

    :cond_12
    move v0, v1

    .line 18
    goto :goto_b
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 24
    sget-object v0, Lcom/asus/mygazine/MyZineWidgetProvider;->sInstance:Lcom/asus/mygazine/MyZineWidgetProvider;

    if-nez v0, :cond_9

    .line 25
    sput-object p0, Lcom/asus/mygazine/MyZineWidgetProvider;->sInstance:Lcom/asus/mygazine/MyZineWidgetProvider;

    .line 26
    :cond_9
    return-void
.end method

.method private static applyRemoteViews(Landroid/content/Context;ILandroid/widget/RemoteViews;I)V
    .registers 15

    .prologue
    const v9, 0x7f0a000b

    const/16 v8, 0x3e7

    const/4 v1, 0x1

    const/4 v7, 0x4

    const/4 v2, 0x0

    .line 114
    sget-object v0, Lcom/asus/mygazine/MyZineWidgetProvider;->sUtils:Lcom/asus/mygazine/MyZineDataUtils;

    invoke-virtual {v0}, Lcom/asus/mygazine/MyZineDataUtils;->getWidgetData()Lcom/asus/mygazine/WidgetData;

    move-result-object v3

    .line 115
    sget-object v0, Lcom/asus/mygazine/MyZineWidgetProvider;->sUtils:Lcom/asus/mygazine/MyZineDataUtils;

    invoke-virtual {v0}, Lcom/asus/mygazine/MyZineDataUtils;->getSettingsConfig()Lcom/asus/mygazine/SettingsConfig;

    move-result-object v4

    .line 117
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_4f

    .line 119
    iget v0, v3, Lcom/asus/mygazine/WidgetData;->mEmailCount:I

    if-le v0, v8, :cond_29b

    const-string v0, "999+"

    .line 120
    :goto_1e
    const v5, 0x7f0a001a

    invoke-virtual {p2, v5, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 121
    iget v0, v3, Lcom/asus/mygazine/WidgetData;->mEmailCount:I

    if-ne v0, v1, :cond_2a3

    .line 122
    const v0, 0x7f0a001c

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06000f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v0, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 126
    :goto_39
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    const-string v5, "com.android.email"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 129
    const v5, 0x7f0a0019

    invoke-virtual {p2, v5, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 132
    :cond_4f
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_8a

    .line 134
    iget v0, v3, Lcom/asus/mygazine/WidgetData;->mCalendarEventCount:I

    if-le v0, v8, :cond_2b6

    const-string v0, "999+"

    .line 135
    :goto_59
    const v5, 0x7f0a001e

    invoke-virtual {p2, v5, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 136
    iget v0, v3, Lcom/asus/mygazine/WidgetData;->mCalendarEventCount:I

    if-ne v0, v1, :cond_2be

    .line 137
    const v0, 0x7f0a0020

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060011

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v0, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 141
    :goto_74
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    const-string v5, "com.android.calendar"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 144
    const v5, 0x7f0a001d

    invoke-virtual {p2, v5, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 147
    :cond_8a
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_e2

    .line 149
    iget v0, v3, Lcom/asus/mygazine/WidgetData;->mReaderBooksNumber:I

    if-le v0, v8, :cond_2d1

    const-string v0, "999+"

    .line 150
    :goto_94
    const v5, 0x7f0a0021

    invoke-virtual {p2, v5, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 151
    iget v0, v3, Lcom/asus/mygazine/WidgetData;->mReaderBooksNumber:I

    if-ne v0, v1, :cond_2d9

    .line 152
    const v0, 0x7f0a0023

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060013

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v0, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 157
    :goto_af
    iget-object v0, v3, Lcom/asus/mygazine/WidgetData;->mReaderPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2ec

    iget-object v0, v3, Lcom/asus/mygazine/WidgetData;->mBookMIME:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2ec

    .line 159
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    const-string v5, "com.asus.reader"

    const-string v6, "com.asus.reader.ProgressActivity"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    iget-object v5, v3, Lcom/asus/mygazine/WidgetData;->mReaderPath:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, v3, Lcom/asus/mygazine/WidgetData;->mBookMIME:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    :goto_d8
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 168
    const v5, 0x7f0a0012

    invoke-virtual {p2, v5, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 171
    :cond_e2
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_16b

    .line 173
    const v0, 0x7f020023

    .line 175
    iget v5, v3, Lcom/asus/mygazine/WidgetData;->mWeatherIconId:I

    if-lez v5, :cond_300

    iget v5, v3, Lcom/asus/mygazine/WidgetData;->mWeatherIconId:I

    sget-object v6, Lcom/asus/mygazine/WeatherConfig;->ICON_TABLE:[I

    array-length v6, v6

    if-gt v5, v6, :cond_300

    .line 176
    sget-object v0, Lcom/asus/mygazine/WeatherConfig;->ICON_TABLE:[I

    iget v5, v3, Lcom/asus/mygazine/WidgetData;->mWeatherIconId:I

    add-int/lit8 v5, v5, -0x1

    aget v0, v0, v5

    .line 177
    if-lez v0, :cond_2fc

    move v10, v1

    move v1, v0

    move v0, v10

    .line 184
    :goto_101
    sget-object v5, Lcom/asus/mygazine/MyZineWidgetProvider;->sUtils:Lcom/asus/mygazine/MyZineDataUtils;

    invoke-virtual {v5}, Lcom/asus/mygazine/MyZineDataUtils;->isWeatherView()Z

    move-result v5

    if-eqz v5, :cond_304

    .line 185
    const v5, 0x7f0a0014

    iget-object v6, v3, Lcom/asus/mygazine/WidgetData;->mWeatherCityName:Ljava/lang/String;

    invoke-virtual {p2, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 186
    const v5, 0x7f0a0016

    iget-object v6, v3, Lcom/asus/mygazine/WidgetData;->mWeatherTemperatureInfo:Ljava/lang/String;

    invoke-virtual {p2, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 187
    const v5, 0x7f0a0017

    iget-object v6, v3, Lcom/asus/mygazine/WidgetData;->mWeatherDegreeAndUnit:Ljava/lang/String;

    invoke-virtual {p2, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 188
    const v5, 0x7f0a0015

    iget-object v6, v3, Lcom/asus/mygazine/WidgetData;->mWeatherTypes:Ljava/lang/String;

    invoke-virtual {p2, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 189
    const v5, 0x7f0a0014

    invoke-virtual {p2, v5, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 190
    const v5, 0x7f0a0016

    invoke-virtual {p2, v5, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 191
    const v5, 0x7f0a0017

    invoke-virtual {p2, v5, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 192
    const v5, 0x7f0a0015

    invoke-virtual {p2, v5, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 193
    const v5, 0x7f0a0018

    invoke-virtual {p2, v5, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 194
    if-eqz v0, :cond_155

    .line 195
    const v0, 0x7f0a0013

    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 196
    const v0, 0x7f0a0013

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 205
    :cond_155
    :goto_155
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.asus.weather.launchSetting"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    const-string v1, "com.asus.weather.revived"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 208
    const v1, 0x7f0a0011

    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 211
    :cond_16b
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_1f4

    .line 213
    iget-object v0, v3, Lcom/asus/mygazine/WidgetData;->mSongName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_180

    .line 214
    const v0, 0x7f060004

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/asus/mygazine/WidgetData;->mSongName:Ljava/lang/String;

    .line 216
    :cond_180
    const v0, 0x7f0a002a

    iget-object v1, v3, Lcom/asus/mygazine/WidgetData;->mSongName:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 217
    iget-object v0, v3, Lcom/asus/mygazine/WidgetData;->mArtistName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_199

    .line 218
    const v0, 0x7f060005

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/asus/mygazine/WidgetData;->mArtistName:Ljava/lang/String;

    .line 220
    :cond_199
    const v0, 0x7f0a002b

    iget-object v1, v3, Lcom/asus/mygazine/WidgetData;->mArtistName:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 221
    iget-object v0, v3, Lcom/asus/mygazine/WidgetData;->mAlbumURI:Landroid/net/Uri;

    if-eqz v0, :cond_31e

    .line 222
    const v0, 0x7f0a0028

    iget-object v1, v3, Lcom/asus/mygazine/WidgetData;->mAlbumURI:Landroid/net/Uri;

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setImageViewUri(ILandroid/net/Uri;)V

    .line 229
    :goto_1ad
    sget-object v0, Lcom/asus/mygazine/MyZineWidgetProvider;->sUtils:Lcom/asus/mygazine/MyZineDataUtils;

    invoke-virtual {v0}, Lcom/asus/mygazine/MyZineDataUtils;->isGoogleMusic()Z

    move-result v0

    if-eqz v0, :cond_337

    .line 230
    iget-object v0, v3, Lcom/asus/mygazine/WidgetData;->mArtistName:Ljava/lang/String;

    const v1, 0x7f060005

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    iget-object v0, v3, Lcom/asus/mygazine/WidgetData;->mSongName:Ljava/lang/String;

    const v1, 0x7f060004

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    iget-object v0, v3, Lcom/asus/mygazine/WidgetData;->mAlbumURI:Landroid/net/Uri;

    if-nez v0, :cond_329

    .line 231
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 232
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 240
    :goto_1e3
    const-string v1, "com.google.android.music"

    const-string v5, "com.android.music.activitymanagement.TopLevelActivity"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    :goto_1ea
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 254
    const v1, 0x7f0a0028

    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 257
    :cond_1f4
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_22b

    .line 259
    iget-object v0, v3, Lcom/asus/mygazine/WidgetData;->mWebTitle:Ljava/lang/String;

    if-eqz v0, :cond_35b

    .line 260
    const v0, 0x7f0a002d

    iget-object v1, v3, Lcom/asus/mygazine/WidgetData;->mWebTitle:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 264
    :goto_204
    iget-object v0, v3, Lcom/asus/mygazine/WidgetData;->mWebThumbNail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_36e

    .line 265
    const v0, 0x7f0a002c

    iget-object v1, v3, Lcom/asus/mygazine/WidgetData;->mWebThumbNail:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 272
    :goto_210
    iget-object v0, v3, Lcom/asus/mygazine/WidgetData;->mWebUrl:Ljava/lang/String;

    if-eqz v0, :cond_379

    .line 273
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v5, v3, Lcom/asus/mygazine/WidgetData;->mWebUrl:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v0, v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 274
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 280
    :goto_225
    const v1, 0x7f0a002c

    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 283
    :cond_22b
    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_266

    .line 285
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/asus/mygazine/MyZineRemoteViewsService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 286
    invoke-virtual {p2, p3, v9, v0}, Landroid/widget/RemoteViews;->setRemoteAdapter(IILandroid/content/Intent;)V

    .line 287
    const v0, 0x7f0a000c

    invoke-virtual {p2, v9, v0}, Landroid/widget/RemoteViews;->setEmptyView(II)V

    .line 288
    const-string v0, "setFlipInterval"

    iget v1, v4, Lcom/asus/mygazine/SettingsConfig;->mSlideShowInterval:I

    invoke-virtual {p2, v9, v0, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 291
    sget-object v0, Lcom/asus/mygazine/MyZineWidgetProvider;->sUtils:Lcom/asus/mygazine/MyZineDataUtils;

    invoke-virtual {v0}, Lcom/asus/mygazine/MyZineDataUtils;->isGoogleGallery()Z

    move-result v0

    if-eqz v0, :cond_38d

    .line 292
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 293
    const-string v1, "com.google.android.gallery3d"

    const-string v5, "com.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    :goto_25c
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 301
    const v1, 0x7f0a000d

    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 304
    :cond_266
    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_272

    .line 306
    const v0, 0x7f0a002f

    iget-object v1, v3, Lcom/asus/mygazine/WidgetData;->mDate:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 310
    :cond_272
    iget-boolean v0, v4, Lcom/asus/mygazine/SettingsConfig;->mIsShowLogo:Z

    if-eqz v0, :cond_396

    .line 311
    const v0, 0x7f0a002e

    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 312
    const v0, 0x7f0a002f

    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 319
    :goto_282
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.asus.mygazine.launchSetting"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 320
    const-string v1, "com.asus.mygazine.revived"

    const-string v3, "com.asus.mygazine.MyZineSettings"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 323
    const v1, 0x7f0a000f

    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 324
    return-void

    .line 119
    :cond_29b
    iget v0, v3, Lcom/asus/mygazine/WidgetData;->mEmailCount:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1e

    .line 124
    :cond_2a3
    const v0, 0x7f0a001c

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06000e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v0, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_39

    .line 134
    :cond_2b6
    iget v0, v3, Lcom/asus/mygazine/WidgetData;->mCalendarEventCount:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_59

    .line 139
    :cond_2be
    const v0, 0x7f0a0020

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060010

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v0, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_74

    .line 149
    :cond_2d1
    iget v0, v3, Lcom/asus/mygazine/WidgetData;->mReaderBooksNumber:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_94

    .line 154
    :cond_2d9
    const v0, 0x7f0a0023

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060012

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v0, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_af

    .line 164
    :cond_2ec
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    const-string v5, "com.asus.reader"

    const-string v6, "com.asus.reader.BookListActivity"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_d8

    :cond_2fc
    move v1, v0

    move v0, v2

    .line 180
    goto/16 :goto_101

    :cond_300
    move v1, v0

    move v0, v2

    .line 182
    goto/16 :goto_101

    .line 199
    :cond_304
    const v0, 0x7f0a0014

    invoke-virtual {p2, v0, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 200
    const v0, 0x7f0a0016

    invoke-virtual {p2, v0, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 201
    const v0, 0x7f0a0015

    invoke-virtual {p2, v0, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 202
    const v0, 0x7f0a0018

    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_155

    .line 224
    :cond_31e
    const v0, 0x7f0a0028

    const v1, 0x7f020008

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_1ad

    .line 235
    :cond_329
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.music.PLAYBACK_VIEWER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    const/high16 v1, 0x1c000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_1e3

    .line 243
    :cond_337
    sget-object v0, Lcom/asus/mygazine/MyZineWidgetProvider;->sUtils:Lcom/asus/mygazine/MyZineDataUtils;

    invoke-virtual {v0}, Lcom/asus/mygazine/MyZineDataUtils;->isMusicPlaying()Z

    move-result v0

    if-eqz v0, :cond_34d

    .line 244
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 245
    const-string v1, "com.android.music"

    const-string v5, "com.android.music.MediaPlaybackActivity"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1ea

    .line 248
    :cond_34d
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 249
    const-string v1, "com.android.music"

    const-string v5, "com.android.music.MusicBrowserActivity"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1ea

    .line 262
    :cond_35b
    const v0, 0x7f0a002d

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f060002

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_204

    .line 267
    :cond_36e
    const v0, 0x7f0a002c

    const v1, 0x7f020008

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_210

    .line 276
    :cond_379
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 277
    const-string v1, "com.android.browser"

    const-string v5, "com.android.browser.BrowserActivity"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto/16 :goto_225

    .line 297
    :cond_38d
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/asus/mygazine/PhotoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_25c

    .line 314
    :cond_396
    const v0, 0x7f0a002e

    invoke-virtual {p2, v0, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 315
    const v0, 0x7f0a002f

    invoke-virtual {p2, v0, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_282
.end method

.method public static getOrNewDataUtils(Landroid/content/Context;)Lcom/asus/mygazine/MyZineDataUtils;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    sget-object v0, Lcom/asus/mygazine/MyZineWidgetProvider;->sUtils:Lcom/asus/mygazine/MyZineDataUtils;

    if-nez v0, :cond_15

    .line 52
    sget-boolean v0, Lcom/asus/mygazine/MyZineWidgetProvider;->DBG:Z

    if-eqz v0, :cond_f

    const-string v0, "MyZineWidgetProvider"

    const-string v1, "Initialize MyZineDataUtils!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_f
    invoke-static {p0}, Lcom/asus/mygazine/MyZineDataUtils;->getInstance(Landroid/content/Context;)Lcom/asus/mygazine/MyZineDataUtils;

    move-result-object v0

    sput-object v0, Lcom/asus/mygazine/MyZineWidgetProvider;->sUtils:Lcom/asus/mygazine/MyZineDataUtils;

    .line 56
    :cond_15
    sget-object v0, Lcom/asus/mygazine/MyZineWidgetProvider;->sUtils:Lcom/asus/mygazine/MyZineDataUtils;

    return-object v0
.end method

.method public static notifyRemoteViews(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 368
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/asus/mygazine/MyZineWidgetProvider;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 369
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 370
    sget-boolean v1, Lcom/asus/mygazine/MyZineWidgetProvider;->DBG:Z

    if-eqz v1, :cond_1a

    const-string v1, "MyZineWidgetProvider"

    const-string v2, "notifyRemoteViews notifyAppWidgetViewDataChanged is called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_1a
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    const v2, 0x7f0a000b

    invoke-virtual {v1, v0, v2}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    .line 372
    return-void
.end method

.method private updateMyZineViews(Landroid/content/Context;[I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetIds"    # [I

    .prologue
    .line 85
    sget-object v1, Lcom/asus/mygazine/MyZineWidgetProvider;->sUtils:Lcom/asus/mygazine/MyZineDataUtils;

    invoke-virtual {v1}, Lcom/asus/mygazine/MyZineDataUtils;->isGoogleMusic()Z

    move-result v1

    if-nez v1, :cond_24

    .line 86
    sget-boolean v1, Lcom/asus/mygazine/MyZineWidgetProvider;->DBG:Z

    if-eqz v1, :cond_13

    const-string v1, "MyZineWidgetProvider"

    const-string v2, "send broadcast to MediaPlaybackService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_13
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "update_myzine"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 91
    .end local v0    # "i":Landroid/content/Intent;
    :cond_24
    sget-object v1, Lcom/asus/mygazine/MyZineWidgetProvider;->sUtils:Lcom/asus/mygazine/MyZineDataUtils;

    invoke-virtual {v1}, Lcom/asus/mygazine/MyZineDataUtils;->getWidgetSizeDBHelper()Lcom/asus/mygazine/WidgetSizeDBHelper;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/asus/mygazine/WidgetSizeDBHelper;->updateWidget([I)V

    .line 92
    invoke-static {p1}, Lcom/asus/mygazine/MyZineWidgetProvider;->updateRemoteViews(Landroid/content/Context;)V

    .line 93
    return-void
.end method

.method public static updateRemoteViews(Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 328
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/asus/mygazine/MyZineWidgetProvider;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 329
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v3

    .line 331
    const/4 v0, 0x0

    :goto_10
    array-length v1, v3

    if-ge v0, v1, :cond_84

    .line 333
    sget-object v1, Lcom/asus/mygazine/MyZineWidgetProvider;->sUtils:Lcom/asus/mygazine/MyZineDataUtils;

    aget v2, v3, v0

    invoke-virtual {v1, v2}, Lcom/asus/mygazine/MyZineDataUtils;->findSizeById(I)I

    move-result v1

    .line 336
    packed-switch v1, :pswitch_data_86

    .line 355
    :pswitch_1e
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v4, 0x7f030004

    invoke-direct {v2, v1, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 356
    const/16 v1, 0xff

    .line 361
    :goto_2c
    aget v4, v3, v0

    invoke-static {p0, v1, v2, v4}, Lcom/asus/mygazine/MyZineWidgetProvider;->applyRemoteViews(Landroid/content/Context;ILandroid/widget/RemoteViews;I)V

    .line 362
    sget-boolean v1, Lcom/asus/mygazine/MyZineWidgetProvider;->DBG:Z

    if-eqz v1, :cond_3c

    const-string v1, "MyZineWidgetProvider"

    const-string v4, "updateRemoteViews updateAppWidget is called"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_3c
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    aget v4, v3, v0

    invoke-virtual {v1, v4, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 331
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 338
    :pswitch_48
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v4, 0x7f030008

    invoke-direct {v2, v1, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 339
    const/16 v1, 0xf0

    .line 340
    goto :goto_2c

    .line 342
    :pswitch_57
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v4, 0x7f030007

    invoke-direct {v2, v1, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 343
    const/16 v1, 0xc0

    .line 344
    goto :goto_2c

    .line 346
    :pswitch_66
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v4, 0x7f030006

    invoke-direct {v2, v1, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 347
    const/16 v1, 0x3f

    .line 349
    goto :goto_2c

    .line 351
    :pswitch_75
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v4, 0x7f030005

    invoke-direct {v2, v1, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 352
    const/16 v1, 0xf

    .line 353
    goto :goto_2c

    .line 365
    :cond_84
    return-void

    .line 336
    nop

    :pswitch_data_86
    .packed-switch 0x2
        :pswitch_75
        :pswitch_1e
        :pswitch_66
        :pswitch_57
        :pswitch_1e
        :pswitch_48
    .end packed-switch
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetIds"    # [I

    .prologue
    .line 34
    sget-boolean v0, Lcom/asus/mygazine/MyZineWidgetProvider;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "MyZineWidgetProvider"

    const-string v1, "onDeleted()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_b
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 36
    sget-object v0, Lcom/asus/mygazine/MyZineWidgetProvider;->sUtils:Lcom/asus/mygazine/MyZineDataUtils;

    invoke-virtual {v0}, Lcom/asus/mygazine/MyZineDataUtils;->getWidgetSizeDBHelper()Lcom/asus/mygazine/WidgetSizeDBHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/asus/mygazine/WidgetSizeDBHelper;->deleteWidget([I)V

    .line 37
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 41
    sget-boolean v0, Lcom/asus/mygazine/MyZineWidgetProvider;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "MyZineWidgetProvider"

    const-string v1, "onDisabled()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_c
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 43
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/asus/mygazine/MyZineService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 45
    sget-object v0, Lcom/asus/mygazine/MyZineWidgetProvider;->sUtils:Lcom/asus/mygazine/MyZineDataUtils;

    invoke-virtual {v0}, Lcom/asus/mygazine/MyZineDataUtils;->disabled()V

    .line 46
    sput-object v2, Lcom/asus/mygazine/MyZineWidgetProvider;->sUtils:Lcom/asus/mygazine/MyZineDataUtils;

    .line 47
    sput-object v2, Lcom/asus/mygazine/MyZineWidgetProvider;->sInstance:Lcom/asus/mygazine/MyZineWidgetProvider;

    .line 48
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 77
    sget-boolean v0, Lcom/asus/mygazine/MyZineWidgetProvider;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "MyZineWidgetProvider"

    const-string v1, "onEnabled()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_b
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 80
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/asus/mygazine/MyZineService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 82
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 64
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "action":Ljava/lang/String;
    sget-boolean v1, Lcom/asus/mygazine/MyZineWidgetProvider;->DBG:Z

    if-eqz v1, :cond_20

    const-string v1, "MyZineWidgetProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_20
    invoke-static {p1}, Lcom/asus/mygazine/MyZineWidgetProvider;->getOrNewDataUtils(Landroid/content/Context;)Lcom/asus/mygazine/MyZineDataUtils;

    move-result-object v1

    sput-object v1, Lcom/asus/mygazine/MyZineWidgetProvider;->sUtils:Lcom/asus/mygazine/MyZineDataUtils;

    .line 68
    const-string v1, "com.asus.appwidget.action.RESIZE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 69
    sget-object v1, Lcom/asus/mygazine/MyZineWidgetProvider;->sUtils:Lcom/asus/mygazine/MyZineDataUtils;

    invoke-virtual {v1, p2}, Lcom/asus/mygazine/MyZineDataUtils;->handleIntent(Landroid/content/Intent;)V

    .line 73
    :goto_33
    return-void

    .line 71
    :cond_34
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_33
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 97
    sget-boolean v0, Lcom/asus/mygazine/MyZineWidgetProvider;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "MyZineWidgetProvider"

    const-string v1, "onUpdate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_b
    invoke-direct {p0, p1, p3}, Lcom/asus/mygazine/MyZineWidgetProvider;->updateMyZineViews(Landroid/content/Context;[I)V

    .line 99
    return-void
.end method
