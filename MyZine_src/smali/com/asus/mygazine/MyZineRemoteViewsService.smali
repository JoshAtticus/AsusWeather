.class public Lcom/asus/mygazine/MyZineRemoteViewsService;
.super Landroid/widget/RemoteViewsService;
.source "MyZineRemoteViewsService.java"


# static fields
.field private static final DBG:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 22
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_d

    :goto_a
    sput-boolean v0, Lcom/asus/mygazine/MyZineRemoteViewsService;->DBG:Z

    return-void

    :cond_d
    move v0, v1

    goto :goto_a
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/widget/RemoteViewsService;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 3

    .prologue
    .line 25
    sget-boolean v0, Lcom/asus/mygazine/MyZineRemoteViewsService;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "MyZineRemoteViewsService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_b
    return-void
.end method

.method public onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 30
    sget-boolean v0, Lcom/asus/mygazine/MyZineRemoteViewsService;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "MyZineRemoteViewsService"

    const-string v1, "onGetViewFactory"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_b
    new-instance v0, Lcom/asus/mygazine/MyZineRemoteViewsFactory;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/asus/mygazine/MyZineRemoteViewsFactory;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-object v0
.end method
