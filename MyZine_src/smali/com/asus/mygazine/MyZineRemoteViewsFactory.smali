.class Lcom/asus/mygazine/MyZineRemoteViewsFactory;
.super Ljava/lang/Object;
.source "MyZineRemoteViewsService.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# static fields
.field private static final DBG:Z

.field private static sUtils:Lcom/asus/mygazine/MyZineDataUtils;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 37
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_10

    :goto_a
    sput-boolean v0, Lcom/asus/mygazine/MyZineRemoteViewsFactory;->DBG:Z

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/asus/mygazine/MyZineRemoteViewsFactory;->sUtils:Lcom/asus/mygazine/MyZineDataUtils;

    return-void

    :cond_10
    move v0, v1

    .line 37
    goto :goto_a
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/asus/mygazine/MyZineRemoteViewsFactory;->mContext:Landroid/content/Context;

    .line 44
    invoke-static {p1}, Lcom/asus/mygazine/MyZineWidgetProvider;->getOrNewDataUtils(Landroid/content/Context;)Lcom/asus/mygazine/MyZineDataUtils;

    move-result-object v0

    sput-object v0, Lcom/asus/mygazine/MyZineRemoteViewsFactory;->sUtils:Lcom/asus/mygazine/MyZineDataUtils;

    .line 45
    sget-boolean v0, Lcom/asus/mygazine/MyZineRemoteViewsFactory;->DBG:Z

    if-eqz v0, :cond_16

    const-string v0, "MyZineRemoteViewsFactory"

    const-string v1, "MyZineRemoteViewsFactory is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_16
    return-void
.end method

.method private getImageContentUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 14
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 148
    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 149
    .local v6, "MEDIA_URI":Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "limit"

    const-string v9, "1"

    invoke-virtual {v0, v3, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 150
    .local v1, "query":Landroid/net/Uri;
    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v10

    .line 151
    .local v2, "IMAGE_DATA_PROJECTION":[Ljava/lang/String;
    new-array v4, v11, [Ljava/lang/String;

    aput-object p1, v4, v10

    .line 153
    .local v4, "selectArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/asus/mygazine/MyZineRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "_data=?"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 158
    .local v7, "cur":Landroid/database/Cursor;
    if-eqz v7, :cond_4d

    .line 160
    :try_start_2d
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4e

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 161
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 162
    .local v8, "id":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
    :try_end_49
    .catchall {:try_start_2d .. :try_end_49} :catchall_52

    move-result-object v5

    .line 165
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 168
    .end local v8    # "id":Ljava/lang/String;
    :cond_4d
    :goto_4d
    return-object v5

    .line 165
    :cond_4e
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_4d

    :catchall_52
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private setPhotoClickListener(Landroid/widget/RemoteViews;Ljava/lang/String;)V
    .registers 10
    .param p1, "rv"    # Landroid/widget/RemoteViews;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 122
    if-eqz p2, :cond_3b

    .line 123
    invoke-direct {p0, p2}, Lcom/asus/mygazine/MyZineRemoteViewsFactory;->getImageContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 124
    .local v3, "u":Landroid/net/Uri;
    if-nez v3, :cond_20

    .line 125
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 127
    :cond_20
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 128
    .local v1, "photo_intent":Landroid/content/Intent;
    invoke-static {p2}, Landroid/media/MediaFile;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "mediaFile_mime":Ljava/lang/String;
    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    iget-object v4, p0, Lcom/asus/mygazine/MyZineRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-static {v4, v6, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 144
    .end local v0    # "mediaFile_mime":Ljava/lang/String;
    .end local v3    # "u":Landroid/net/Uri;
    .local v2, "photo_pendingIntent":Landroid/app/PendingIntent;
    :goto_34
    const v4, 0x7f0a0004

    invoke-virtual {p1, v4, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 145
    return-void

    .line 133
    .end local v1    # "photo_intent":Landroid/content/Intent;
    .end local v2    # "photo_pendingIntent":Landroid/app/PendingIntent;
    :cond_3b
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    .restart local v1    # "photo_intent":Landroid/content/Intent;
    sget-object v4, Lcom/asus/mygazine/MyZineRemoteViewsFactory;->sUtils:Lcom/asus/mygazine/MyZineDataUtils;

    invoke-virtual {v4}, Lcom/asus/mygazine/MyZineDataUtils;->isGoogleGallery()Z

    move-result v4

    if-eqz v4, :cond_63

    .line 135
    sget-boolean v4, Lcom/asus/mygazine/MyZineRemoteViewsFactory;->DBG:Z

    if-eqz v4, :cond_55

    const-string v4, "MyZineRemoteViewsFactory"

    const-string v5, "com.google.android.gallery3d"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_55
    const-string v4, "com.google.android.gallery3d"

    const-string v5, "com.android.gallery3d.app.Gallery"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    :goto_5c
    iget-object v4, p0, Lcom/asus/mygazine/MyZineRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-static {v4, v6, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .restart local v2    # "photo_pendingIntent":Landroid/app/PendingIntent;
    goto :goto_34

    .line 139
    .end local v2    # "photo_pendingIntent":Landroid/app/PendingIntent;
    :cond_63
    sget-boolean v4, Lcom/asus/mygazine/MyZineRemoteViewsFactory;->DBG:Z

    if-eqz v4, :cond_6e

    const-string v4, "MyZineRemoteViewsFactory"

    const-string v5, "com.android.gallery3d"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_6e
    const-string v4, "com.android.gallery3d"

    const-string v5, "com.android.gallery3d.app.Gallery"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5c
.end method

.method private setPhotoDate(Landroid/widget/RemoteViews;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 13
    .param p1, "rv"    # Landroid/widget/RemoteViews;
    .param p2, "date"    # Ljava/lang/String;
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "isShow"    # Z

    .prologue
    const/4 v5, 0x4

    const v7, 0x7f0a0005

    .line 65
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, p3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 66
    .local v0, "dateFormatter":Ljava/text/SimpleDateFormat;
    const-wide/16 v2, 0x0

    .line 67
    .local v2, "snap_date":J
    if-eqz p4, :cond_29

    const/4 v4, 0x0

    :goto_10
    invoke-virtual {p1, v7, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 68
    if-eqz p2, :cond_59

    .line 70
    :try_start_15
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 71
    const v4, 0x7f0a0005

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {p3, v5}, Lcom/asus/mygazine/MyZineDataUtils;->getDateByFormat(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_28
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_28} :catch_2b

    .line 79
    :goto_28
    return-void

    :cond_29
    move v4, v5

    .line 67
    goto :goto_10

    .line 72
    :catch_2b
    move-exception v1

    .line 73
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v4, "MyZineRemoteViewsFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPhotoDate NumberFormatException = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v4, p0, Lcom/asus/mygazine/MyZineRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v7, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_28

    .line 77
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_59
    invoke-virtual {p1, v7, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_28
.end method


# virtual methods
.method public getCount()I
    .registers 4

    .prologue
    .line 49
    sget-object v0, Lcom/asus/mygazine/MyZineRemoteViewsFactory;->sUtils:Lcom/asus/mygazine/MyZineDataUtils;

    invoke-virtual {v0}, Lcom/asus/mygazine/MyZineDataUtils;->getPhotoCount()I

    move-result v0

    iput v0, p0, Lcom/asus/mygazine/MyZineRemoteViewsFactory;->mCount:I

    .line 50
    sget-boolean v0, Lcom/asus/mygazine/MyZineRemoteViewsFactory;->DBG:Z

    if-eqz v0, :cond_26

    const-string v0, "MyZineRemoteViewsFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/asus/mygazine/MyZineRemoteViewsFactory;->mCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_26
    iget v0, p0, Lcom/asus/mygazine/MyZineRemoteViewsFactory;->mCount:I

    return v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 55
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .registers 4

    .prologue
    .line 59
    sget-boolean v1, Lcom/asus/mygazine/MyZineRemoteViewsFactory;->DBG:Z

    if-eqz v1, :cond_b

    const-string v1, "MyZineRemoteViewsFactory"

    const-string v2, "getLoadingView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_b
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/asus/mygazine/MyZineRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030003

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 61
    .local v0, "rv":Landroid/widget/RemoteViews;
    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .registers 11
    .param p1, "position"    # I

    .prologue
    const v8, 0x7f0a0004

    .line 82
    sget-boolean v5, Lcom/asus/mygazine/MyZineRemoteViewsFactory;->DBG:Z

    if-eqz v5, :cond_1f

    const-string v5, "MyZineRemoteViewsFactory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getView position = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_1f
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v5, p0, Lcom/asus/mygazine/MyZineRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f030001

    invoke-direct {v1, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 87
    .local v1, "rv":Landroid/widget/RemoteViews;
    sget-object v5, Lcom/asus/mygazine/MyZineRemoteViewsFactory;->sUtils:Lcom/asus/mygazine/MyZineDataUtils;

    invoke-virtual {v5}, Lcom/asus/mygazine/MyZineDataUtils;->getConverter()Lcom/asus/mygazine/PhotoConverter;

    move-result-object v0

    .line 88
    .local v0, "converter":Lcom/asus/mygazine/PhotoConverter;
    sget-object v5, Lcom/asus/mygazine/MyZineRemoteViewsFactory;->sUtils:Lcom/asus/mygazine/MyZineDataUtils;

    invoke-virtual {v5, p1}, Lcom/asus/mygazine/MyZineDataUtils;->getPhoto(I)Lcom/asus/mygazine/Snapshot;

    move-result-object v3

    .line 89
    .local v3, "snap":Lcom/asus/mygazine/Snapshot;
    if-eqz v3, :cond_41

    invoke-virtual {v0, v3}, Lcom/asus/mygazine/PhotoConverter;->makeThumbnail(Lcom/asus/mygazine/Snapshot;)Z

    move-result v5

    if-nez v5, :cond_75

    .line 90
    :cond_41
    const-string v5, "MyZineRemoteViewsFactory"

    const-string v6, "Fail to get photo or makeThumbnail is false"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const v5, 0x7f020031

    invoke-virtual {v1, v8, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 98
    :goto_4e
    sget-object v5, Lcom/asus/mygazine/MyZineRemoteViewsFactory;->sUtils:Lcom/asus/mygazine/MyZineDataUtils;

    invoke-virtual {v5}, Lcom/asus/mygazine/MyZineDataUtils;->getSettingsConfig()Lcom/asus/mygazine/SettingsConfig;

    move-result-object v2

    .line 99
    .local v2, "sc":Lcom/asus/mygazine/SettingsConfig;
    iget-object v5, v2, Lcom/asus/mygazine/SettingsConfig;->mScaleType:Ljava/lang/String;

    const-string v6, "fitCenter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9d

    .line 103
    const-string v5, "setScaleType"

    const/4 v6, 0x3

    invoke-virtual {v1, v8, v5, v6}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 111
    :goto_64
    if-eqz v3, :cond_74

    .line 112
    iget-object v5, v3, Lcom/asus/mygazine/Snapshot;->originName:Ljava/lang/String;

    invoke-direct {p0, v1, v5}, Lcom/asus/mygazine/MyZineRemoteViewsFactory;->setPhotoClickListener(Landroid/widget/RemoteViews;Ljava/lang/String;)V

    .line 113
    iget-object v5, v3, Lcom/asus/mygazine/Snapshot;->date:Ljava/lang/String;

    iget-object v6, v2, Lcom/asus/mygazine/SettingsConfig;->mDateFormat:Ljava/lang/String;

    iget-boolean v7, v2, Lcom/asus/mygazine/SettingsConfig;->mIsShowPhotoDateTag:Z

    invoke-direct {p0, v1, v5, v6, v7}, Lcom/asus/mygazine/MyZineRemoteViewsFactory;->setPhotoDate(Landroid/widget/RemoteViews;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 116
    :cond_74
    return-object v1

    .line 93
    .end local v2    # "sc":Lcom/asus/mygazine/SettingsConfig;
    :cond_75
    sget-object v5, Lcom/asus/mygazine/MyZineRemoteViewsFactory;->sUtils:Lcom/asus/mygazine/MyZineDataUtils;

    invoke-virtual {v5, p1, v3}, Lcom/asus/mygazine/MyZineDataUtils;->updatePhoto(ILcom/asus/mygazine/Snapshot;)V

    .line 94
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/asus/mygazine/PhotoConverter;->mSnapshotDir:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/asus/mygazine/Snapshot;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 95
    .local v4, "thumb_path":Ljava/lang/String;
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v8, v5}, Landroid/widget/RemoteViews;->setImageViewUri(ILandroid/net/Uri;)V

    goto :goto_4e

    .line 108
    .end local v4    # "thumb_path":Ljava/lang/String;
    .restart local v2    # "sc":Lcom/asus/mygazine/SettingsConfig;
    :cond_9d
    const-string v5, "setScaleType"

    const/4 v6, 0x6

    invoke-virtual {v1, v8, v5, v6}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_64
.end method

.method public getViewTypeCount()I
    .registers 3

    .prologue
    .line 172
    sget-boolean v0, Lcom/asus/mygazine/MyZineRemoteViewsFactory;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "MyZineRemoteViewsFactory"

    const-string v1, "getViewTypeCount"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public hasStableIds()Z
    .registers 3

    .prologue
    .line 177
    sget-boolean v0, Lcom/asus/mygazine/MyZineRemoteViewsFactory;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "MyZineRemoteViewsFactory"

    const-string v1, "hasStableIds"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 182
    sget-boolean v0, Lcom/asus/mygazine/MyZineRemoteViewsFactory;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "MyZineRemoteViewsFactory"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_b
    return-void
.end method

.method public onDataSetChanged()V
    .registers 3

    .prologue
    .line 186
    sget-boolean v0, Lcom/asus/mygazine/MyZineRemoteViewsFactory;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "MyZineRemoteViewsFactory"

    const-string v1, "onDataSetChanged - queryPhotoData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_b
    sget-object v0, Lcom/asus/mygazine/MyZineRemoteViewsFactory;->sUtils:Lcom/asus/mygazine/MyZineDataUtils;

    iget-object v1, p0, Lcom/asus/mygazine/MyZineRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/asus/mygazine/MyZineDataUtils;->queryPhotoData(Landroid/content/Context;)V

    .line 188
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 191
    sget-boolean v0, Lcom/asus/mygazine/MyZineRemoteViewsFactory;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "MyZineRemoteViewsFactory"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_b
    sget-object v0, Lcom/asus/mygazine/MyZineRemoteViewsFactory;->sUtils:Lcom/asus/mygazine/MyZineDataUtils;

    if-eqz v0, :cond_12

    .line 193
    const/4 v0, 0x0

    sput-object v0, Lcom/asus/mygazine/MyZineRemoteViewsFactory;->sUtils:Lcom/asus/mygazine/MyZineDataUtils;

    .line 195
    :cond_12
    return-void
.end method
