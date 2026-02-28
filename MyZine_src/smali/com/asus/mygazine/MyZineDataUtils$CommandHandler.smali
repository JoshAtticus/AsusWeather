.class Lcom/asus/mygazine/MyZineDataUtils$CommandHandler;
.super Landroid/os/Handler;
.source "MyZineDataUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/mygazine/MyZineDataUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommandHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/mygazine/MyZineDataUtils;


# direct methods
.method public constructor <init>(Lcom/asus/mygazine/MyZineDataUtils;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/asus/mygazine/MyZineDataUtils$CommandHandler;->this$0:Lcom/asus/mygazine/MyZineDataUtils;

    .line 268
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 269
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 273
    iget v0, p1, Landroid/os/Message;->what:I

    .line 274
    .local v0, "cmd":I
    invoke-static {}, Lcom/asus/mygazine/MyZineDataUtils;->access$100()Z

    move-result v1

    if-eqz v1, :cond_26

    const-string v1, "MyZineDataUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage, what:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/mygazine/MyZineDataUtils$CommandHandler;->this$0:Lcom/asus/mygazine/MyZineDataUtils;

    invoke-static {v3, v0}, Lcom/asus/mygazine/MyZineDataUtils;->access$200(Lcom/asus/mygazine/MyZineDataUtils;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_26
    const/4 v1, -0x1

    if-eq v0, v1, :cond_42

    iget-object v1, p0, Lcom/asus/mygazine/MyZineDataUtils$CommandHandler;->this$0:Lcom/asus/mygazine/MyZineDataUtils;

    invoke-static {v1, v0}, Lcom/asus/mygazine/MyZineDataUtils;->access$300(Lcom/asus/mygazine/MyZineDataUtils;I)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 277
    iget-object v1, p0, Lcom/asus/mygazine/MyZineDataUtils$CommandHandler;->this$0:Lcom/asus/mygazine/MyZineDataUtils;

    invoke-static {v1}, Lcom/asus/mygazine/MyZineDataUtils;->access$400(Lcom/asus/mygazine/MyZineDataUtils;)Z

    move-result v1

    if-nez v1, :cond_43

    .line 278
    iget-object v1, p0, Lcom/asus/mygazine/MyZineDataUtils$CommandHandler;->this$0:Lcom/asus/mygazine/MyZineDataUtils;

    invoke-static {v1}, Lcom/asus/mygazine/MyZineDataUtils;->access$500(Lcom/asus/mygazine/MyZineDataUtils;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/asus/mygazine/MyZineWidgetProvider;->updateRemoteViews(Landroid/content/Context;)V

    .line 282
    :cond_42
    :goto_42
    return-void

    .line 280
    :cond_43
    iget-object v1, p0, Lcom/asus/mygazine/MyZineDataUtils$CommandHandler;->this$0:Lcom/asus/mygazine/MyZineDataUtils;

    invoke-static {v1}, Lcom/asus/mygazine/MyZineDataUtils;->access$500(Lcom/asus/mygazine/MyZineDataUtils;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/asus/mygazine/MyZineWidgetProvider;->notifyRemoteViews(Landroid/content/Context;)V

    goto :goto_42
.end method
