.class public Lcom/asus/mygazine/PhotoActivity;
.super Landroid/app/Activity;
.source "PhotoActivity.java"


# static fields
.field private static final DBG:Z


# instance fields
.field private mListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 21
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_d

    :goto_a
    sput-boolean v0, Lcom/asus/mygazine/PhotoActivity;->DBG:Z

    return-void

    :cond_d
    move v0, v1

    goto :goto_a
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    new-instance v0, Lcom/asus/mygazine/PhotoActivity$2;

    invoke-direct {v0, p0}, Lcom/asus/mygazine/PhotoActivity$2;-><init>(Lcom/asus/mygazine/PhotoActivity;)V

    iput-object v0, p0, Lcom/asus/mygazine/PhotoActivity;->mListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 15
    sget-boolean v0, Lcom/asus/mygazine/PhotoActivity;->DBG:Z

    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 12
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    .line 63
    sget-boolean v4, Lcom/asus/mygazine/PhotoActivity;->DBG:Z

    if-eqz v4, :cond_27

    const-string v4, "PhotoActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,resultCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_27
    const/4 v4, -0x1

    if-eq p2, v4, :cond_2e

    .line 65
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 91
    :cond_2d
    :goto_2d
    return-void

    .line 69
    :cond_2e
    if-ne p1, v7, :cond_8d

    .line 70
    if-eqz p3, :cond_89

    .line 71
    const-string v4, "album-path"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "albumPath":Ljava/lang/String;
    const-string v4, "album-name"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "albumName":Ljava/lang/String;
    sget-boolean v4, Lcom/asus/mygazine/PhotoActivity;->DBG:Z

    if-eqz v4, :cond_5a

    const-string v4, "PhotoActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onActivityResult albumName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_5a
    if-eqz v1, :cond_89

    .line 75
    const-string v4, "/local/image/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, "token":[Ljava/lang/String;
    sget-boolean v4, Lcom/asus/mygazine/PhotoActivity;->DBG:Z

    if-eqz v4, :cond_80

    const-string v4, "PhotoActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get album path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_80
    invoke-static {p0}, Lcom/asus/mygazine/MyZineWidgetProvider;->getOrNewDataUtils(Landroid/content/Context;)Lcom/asus/mygazine/MyZineDataUtils;

    move-result-object v4

    aget-object v5, v3, v7

    invoke-virtual {v4, v5, v0}, Lcom/asus/mygazine/MyZineDataUtils;->setAlbumPath(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .end local v0    # "albumName":Ljava/lang/String;
    .end local v1    # "albumPath":Ljava/lang/String;
    .end local v3    # "token":[Ljava/lang/String;
    :cond_89
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2d

    .line 82
    :cond_8d
    const/4 v4, 0x2

    if-ne p1, v4, :cond_2d

    .line 83
    if-eqz p3, :cond_a5

    .line 84
    const-string v4, "album-name"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .restart local v0    # "albumName":Ljava/lang/String;
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 86
    .local v2, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/asus/mygazine/MyZineWidgetProvider;->getOrNewDataUtils(Landroid/content/Context;)Lcom/asus/mygazine/MyZineDataUtils;

    move-result-object v4

    invoke-virtual {v4, v2, v0}, Lcom/asus/mygazine/MyZineDataUtils;->setPhotoPath(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 88
    .end local v0    # "albumName":Ljava/lang/String;
    .end local v2    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_a5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2d
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    sget-boolean v2, Lcom/asus/mygazine/PhotoActivity;->DBG:Z

    if-eqz v2, :cond_e

    const-string v2, "PhotoActivity"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :cond_e
    const v2, 0x7f060017

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setTitle(I)V

    .line 28
    const/high16 v2, 0x7f030000

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 29
    const/high16 v2, 0x7f0a0000

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    .line 30
    .local v1, "rg":Landroid/widget/RadioGroup;
    iget-object v2, p0, Lcom/asus/mygazine/PhotoActivity;->mListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 32
    const v2, 0x7f0a0003

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 33
    .local v0, "cancel":Landroid/widget/Button;
    new-instance v2, Lcom/asus/mygazine/PhotoActivity$1;

    invoke-direct {v2, p0}, Lcom/asus/mygazine/PhotoActivity$1;-><init>(Lcom/asus/mygazine/PhotoActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 95
    sget-boolean v0, Lcom/asus/mygazine/PhotoActivity;->DBG:Z

    if-eqz v0, :cond_e

    const-string v0, "PhotoActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_e
    return-void
.end method
