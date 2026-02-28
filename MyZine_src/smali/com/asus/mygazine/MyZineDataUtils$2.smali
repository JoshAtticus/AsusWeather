.class Lcom/asus/mygazine/MyZineDataUtils$2;
.super Landroid/database/ContentObserver;
.source "MyZineDataUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/mygazine/MyZineDataUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/mygazine/MyZineDataUtils;


# direct methods
.method constructor <init>(Lcom/asus/mygazine/MyZineDataUtils;Landroid/os/Handler;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/asus/mygazine/MyZineDataUtils$2;->this$0:Lcom/asus/mygazine/MyZineDataUtils;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 218
    iget-object v0, p0, Lcom/asus/mygazine/MyZineDataUtils$2;->this$0:Lcom/asus/mygazine/MyZineDataUtils;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/asus/mygazine/MyZineDataUtils;->access$000(Lcom/asus/mygazine/MyZineDataUtils;I)V

    .line 219
    return-void
.end method
