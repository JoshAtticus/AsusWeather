.class public Lcom/asus/mygazine/PhotoConverter;
.super Ljava/lang/Object;
.source "PhotoConverter.java"


# static fields
.field private static final DBG:Z


# instance fields
.field public mContext:Landroid/content/Context;

.field public final mSnapshotDir:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 66
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_d

    :goto_a
    sput-boolean v0, Lcom/asus/mygazine/PhotoConverter;->DBG:Z

    return-void

    :cond_d
    move v0, v1

    goto :goto_a
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/asus/mygazine/PhotoConverter;->mContext:Landroid/content/Context;

    .line 73
    iget-object v0, p0, Lcom/asus/mygazine/PhotoConverter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/mygazine/PhotoConverter;->mSnapshotDir:Ljava/lang/String;

    .line 74
    invoke-direct {p0}, Lcom/asus/mygazine/PhotoConverter;->checkSnapshotDir()Z

    .line 75
    return-void
.end method

.method private checkSnapshotDir()Z
    .registers 6

    .prologue
    .line 78
    const/4 v1, 0x0

    .line 81
    .local v1, "isSuccess":Z
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/asus/mygazine/PhotoConverter;->mSnapshotDir:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 83
    if-nez v1, :cond_12

    .line 84
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    .line 86
    :cond_12
    if-nez v1, :cond_2f

    .line 87
    const-string v2, "MyZinePhotoConverter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to create folder:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/mygazine/PhotoConverter;->mSnapshotDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v1, 0x0

    .line 91
    .end local v1    # "isSuccess":Z
    :cond_2f
    return v1
.end method

.method private deleteFiles(Ljava/lang/String;Z)V
    .registers 12
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "folder"    # Z

    .prologue
    .line 219
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 220
    .local v2, "file":Ljava/io/File;
    sget-boolean v6, Lcom/asus/mygazine/PhotoConverter;->DBG:Z

    if-eqz v6, :cond_25

    const-string v6, "MyZinePhotoConverter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delete folder:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_25
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2c

    .line 232
    :cond_2b
    :goto_2b
    return-void

    .line 224
    :cond_2c
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 225
    .local v3, "files":[Ljava/io/File;
    move-object v0, v3

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_33
    if-ge v4, v5, :cond_3d

    aget-object v1, v0, v4

    .line 226
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 225
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    .line 229
    .end local v1    # "f":Ljava/io/File;
    :cond_3d
    if-eqz p2, :cond_2b

    .line 230
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_2b
.end method


# virtual methods
.method public deleteAllSnapshots()V
    .registers 4

    .prologue
    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/asus/mygazine/PhotoConverter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/thumbnails"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "oldSnapShotDir":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/asus/mygazine/PhotoConverter;->deleteFiles(Ljava/lang/String;Z)V

    .line 240
    iget-object v1, p0, Lcom/asus/mygazine/PhotoConverter;->mSnapshotDir:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/asus/mygazine/PhotoConverter;->deleteFiles(Ljava/lang/String;Z)V

    .line 241
    return-void
.end method

.method public makeThumbnail(Lcom/asus/mygazine/Snapshot;)Z
    .registers 21
    .param p1, "snap"    # Lcom/asus/mygazine/Snapshot;

    .prologue
    .line 96
    invoke-direct/range {p0 .. p0}, Lcom/asus/mygazine/PhotoConverter;->checkSnapshotDir()Z

    move-result v2

    if-nez v2, :cond_9

    .line 97
    const/16 v18, 0x0

    .line 213
    :cond_8
    :goto_8
    return v18

    .line 101
    :cond_9
    const/4 v15, 0x0

    .line 102
    .local v15, "snapshotFile":Ljava/io/File;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/asus/mygazine/Snapshot;->name:Ljava/lang/String;

    if-eqz v2, :cond_4c

    .line 103
    new-instance v15, Ljava/io/File;

    .end local v15    # "snapshotFile":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/asus/mygazine/PhotoConverter;->mSnapshotDir:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/asus/mygazine/Snapshot;->name:Ljava/lang/String;

    invoke-direct {v15, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .restart local v15    # "snapshotFile":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 105
    sget-boolean v2, Lcom/asus/mygazine/PhotoConverter;->DBG:Z

    if-eqz v2, :cond_49

    const-string v2, "MyZinePhotoConverter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "snapshot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has already been created, skip"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_49
    const/16 v18, 0x1

    goto :goto_8

    .line 112
    :cond_4c
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/asus/mygazine/Snapshot;->originName:Ljava/lang/String;

    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .local v10, "file":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_80

    .line 114
    const-string v2, "MyZinePhotoConverter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "originName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/asus/mygazine/Snapshot;->originName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not existed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/16 v18, 0x0

    goto :goto_8

    .line 118
    :cond_80
    const/4 v8, 0x0

    .line 119
    .local v8, "compressed":[B
    const/16 v16, 0x0

    .line 122
    .local v16, "stream":Ljava/io/FileInputStream;
    :try_start_83
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v8, v2, [B

    .line 123
    new-instance v17, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_91} :catch_10a
    .catchall {:try_start_83 .. :try_end_91} :catchall_133

    .line 124
    .end local v16    # "stream":Ljava/io/FileInputStream;
    .local v17, "stream":Ljava/io/FileInputStream;
    :try_start_91
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/io/InputStream;->read([B)I
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_96} :catch_265
    .catchall {:try_start_91 .. :try_end_96} :catchall_260

    .line 129
    if-eqz v17, :cond_9b

    .line 130
    :try_start_98
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9b} :catch_25b

    :cond_9b
    move-object/from16 v16, v17

    .line 137
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    :goto_9d
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/asus/mygazine/Snapshot;->name:Ljava/lang/String;

    .line 138
    if-nez v15, :cond_b4

    .line 139
    new-instance v15, Ljava/io/File;

    .end local v15    # "snapshotFile":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/asus/mygazine/PhotoConverter;->mSnapshotDir:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/asus/mygazine/Snapshot;->name:Ljava/lang/String;

    invoke-direct {v15, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .restart local v15    # "snapshotFile":Ljava/io/File;
    :cond_b4
    const/4 v1, 0x0

    .line 145
    .local v1, "bm":Landroid/graphics/Bitmap;
    :try_start_b5
    new-instance v14, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v14}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 146
    .local v14, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v14, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 147
    const/4 v2, 0x1

    iput v2, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 148
    const/4 v2, 0x0

    array-length v3, v8

    invoke-static {v8, v2, v3, v14}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 151
    iget-object v12, v14, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 152
    .local v12, "mimeType":Ljava/lang/String;
    if-eqz v12, :cond_e1

    const-string v2, "image/jpeg"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13a

    const-string v2, "image/png"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13a

    const-string v2, "image/bmp"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13a

    .line 153
    :cond_e1
    const-string v2, "MyZinePhotoConverter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "outMimeType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v14, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not accepted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_101} :catch_159
    .catchall {:try_start_b5 .. :try_end_101} :catchall_254

    .line 154
    const/16 v18, 0x0

    .line 212
    if-eqz v1, :cond_8

    .line 213
    #Replaced unresolvable odex instruction with a throw
    throw v1

    goto/16 :goto_8

    .line 125
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    .end local v12    # "mimeType":Ljava/lang/String;
    .end local v14    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_10a
    move-exception v9

    .line 126
    .local v9, "e":Ljava/io/IOException;
    :goto_10b
    :try_start_10b
    const-string v2, "MyZinePhotoConverter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to read file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/asus/mygazine/Snapshot;->originName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_127
    .catchall {:try_start_10b .. :try_end_127} :catchall_133

    .line 127
    const/16 v18, 0x0

    .line 129
    if-eqz v16, :cond_8

    .line 130
    :try_start_12b
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_8

    .line 133
    .end local v9    # "e":Ljava/io/IOException;
    :catch_130
    move-exception v2

    goto/16 :goto_9d

    .line 129
    :catchall_133
    move-exception v2

    :goto_134
    if-eqz v16, :cond_139

    .line 130
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V

    :cond_139
    throw v2
    :try_end_13a
    .catch Ljava/io/IOException; {:try_start_12b .. :try_end_13a} :catch_130

    .line 158
    .restart local v1    # "bm":Landroid/graphics/Bitmap;
    .restart local v12    # "mimeType":Ljava/lang/String;
    .restart local v14    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_13a
    :goto_13a
    :try_start_13a
    iget v2, v14, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/16 v3, 0x640

    if-gt v2, v3, :cond_146

    iget v2, v14, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v3, 0x640

    if-le v2, v3, :cond_16c

    .line 159
    :cond_146
    iget v2, v14, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/lit8 v2, v2, 0x2

    iput v2, v14, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 160
    iget v2, v14, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/lit8 v2, v2, 0x2

    iput v2, v14, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 161
    iget v2, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_158
    .catch Ljava/lang/Exception; {:try_start_13a .. :try_end_158} :catch_159
    .catchall {:try_start_13a .. :try_end_158} :catchall_254

    goto :goto_13a

    .line 208
    .end local v12    # "mimeType":Ljava/lang/String;
    .end local v14    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_159
    move-exception v9

    .line 209
    .local v9, "e":Ljava/lang/Exception;
    :try_start_15a
    const-string v2, "MyZinePhotoConverter"

    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_163
    .catchall {:try_start_15a .. :try_end_163} :catchall_254

    .line 210
    const/16 v18, 0x0

    .line 212
    if-eqz v1, :cond_8

    .line 213
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_8

    .line 163
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v12    # "mimeType":Ljava/lang/String;
    .restart local v14    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_16c
    :try_start_16c
    iget v2, v14, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, p1

    iput v2, v0, Lcom/asus/mygazine/Snapshot;->width:I

    .line 164
    iget v2, v14, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move-object/from16 v0, p1

    iput v2, v0, Lcom/asus/mygazine/Snapshot;->height:I

    .line 166
    iget v2, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1b3

    .line 169
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/asus/mygazine/Snapshot;->recompress:Z

    .line 176
    :goto_182
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/asus/mygazine/Snapshot;->recompress:Z

    if-eqz v2, :cond_1bd

    move-object/from16 v0, p1

    iget v2, v0, Lcom/asus/mygazine/Snapshot;->orientation:I

    if-eqz v2, :cond_1bd

    if-nez v1, :cond_1bd

    .line 177
    const-string v2, "MyZinePhotoConverter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to create bitmap:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1aa
    .catch Ljava/lang/Exception; {:try_start_16c .. :try_end_1aa} :catch_159
    .catchall {:try_start_16c .. :try_end_1aa} :catchall_254

    .line 178
    const/16 v18, 0x0

    .line 212
    if-eqz v1, :cond_8

    .line 213
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_8

    .line 172
    :cond_1b3
    const/4 v2, 0x0

    :try_start_1b4
    iput-boolean v2, v14, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 173
    const/4 v2, 0x0

    array-length v3, v8

    invoke-static {v8, v2, v3, v14}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_182

    .line 181
    :cond_1bd
    const/16 v18, 0x0

    .line 182
    .local v18, "success":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/asus/mygazine/PhotoConverter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/asus/mygazine/Snapshot;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/asus/mygazine/PhotoConverter;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v11

    .line 183
    .local v11, "fout":Ljava/io/FileOutputStream;
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/asus/mygazine/Snapshot;->recompress:Z

    if-nez v2, :cond_218

    move-object/from16 v0, p1

    iget v2, v0, Lcom/asus/mygazine/Snapshot;->orientation:I

    if-nez v2, :cond_218

    .line 186
    invoke-virtual {v11, v8}, Ljava/io/OutputStream;->write([B)V

    .line 187
    const/16 v18, 0x1

    .line 204
    :goto_1e1
    invoke-virtual {v11}, Ljava/io/OutputStream;->flush()V

    .line 205
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 206
    sget-boolean v2, Lcom/asus/mygazine/PhotoConverter;->DBG:Z

    if-eqz v2, :cond_211

    const-string v2, "MyZinePhotoConverter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeThumbnail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " success:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_211
    .catch Ljava/lang/Exception; {:try_start_1b4 .. :try_end_211} :catch_159
    .catchall {:try_start_1b4 .. :try_end_211} :catchall_254

    .line 212
    :cond_211
    if-eqz v1, :cond_8

    .line 213
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_8

    .line 189
    :cond_218
    :try_start_218
    move-object/from16 v0, p1

    iget v2, v0, Lcom/asus/mygazine/Snapshot;->orientation:I

    if-eqz v2, :cond_24b

    .line 190
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 191
    .local v6, "mtx":Landroid/graphics/Matrix;
    move-object/from16 v0, p1

    iget v2, v0, Lcom/asus/mygazine/Snapshot;->orientation:I

    int-to-float v2, v2

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 193
    if-nez v1, :cond_234

    .line 194
    const/4 v2, 0x0

    array-length v3, v8

    const/4 v4, 0x0

    invoke-static {v8, v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 196
    :cond_234
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    iget v4, v0, Lcom/asus/mygazine/Snapshot;->width:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/asus/mygazine/Snapshot;->height:I

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 197
    .local v13, "nbm":Landroid/graphics/Bitmap;
    if-eqz v13, :cond_24b

    if-eq v13, v1, :cond_24b

    .line 198
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 199
    move-object v1, v13

    .line 202
    .end local v6    # "mtx":Landroid/graphics/Matrix;
    .end local v13    # "nbm":Landroid/graphics/Bitmap;
    :cond_24b
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x55

    invoke-virtual {v1, v2, v3, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_252
    .catch Ljava/lang/Exception; {:try_start_218 .. :try_end_252} :catch_159
    .catchall {:try_start_218 .. :try_end_252} :catchall_254

    move-result v18

    goto :goto_1e1

    .line 212
    .end local v11    # "fout":Ljava/io/FileOutputStream;
    .end local v12    # "mimeType":Ljava/lang/String;
    .end local v14    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v18    # "success":Z
    :catchall_254
    move-exception v2

    if-eqz v1, :cond_25a

    .line 213
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_25a
    throw v2

    .line 133
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    .end local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    :catch_25b
    move-exception v2

    move-object/from16 v16, v17

    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_9d

    .line 129
    .end local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    :catchall_260
    move-exception v2

    move-object/from16 v16, v17

    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_134

    .line 125
    .end local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    :catch_265
    move-exception v9

    move-object/from16 v16, v17

    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_10b
.end method
