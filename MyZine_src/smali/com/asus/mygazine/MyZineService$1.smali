.class Lcom/asus/mygazine/MyZineService$1;
.super Landroid/content/BroadcastReceiver;
.source "MyZineService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/mygazine/MyZineService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/mygazine/MyZineService;


# direct methods
.method constructor <init>(Lcom/asus/mygazine/MyZineService;)V
    .registers 2

    .prologue
    .line 15
    iput-object p1, p0, Lcom/asus/mygazine/MyZineService$1;->this$0:Lcom/asus/mygazine/MyZineService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 18
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 19
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcom/asus/mygazine/MyZineService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_22

    const-string v1, "MyZineService"

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

    .line 20
    :cond_22
    invoke-static {p1}, Lcom/asus/mygazine/MyZineWidgetProvider;->getOrNewDataUtils(Landroid/content/Context;)Lcom/asus/mygazine/MyZineDataUtils;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/asus/mygazine/MyZineDataUtils;->handleIntent(Landroid/content/Intent;)V

    .line 21
    return-void
.end method
