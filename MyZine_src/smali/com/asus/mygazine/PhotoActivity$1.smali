.class Lcom/asus/mygazine/PhotoActivity$1;
.super Ljava/lang/Object;
.source "PhotoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/mygazine/PhotoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/mygazine/PhotoActivity;


# direct methods
.method constructor <init>(Lcom/asus/mygazine/PhotoActivity;)V
    .registers 2

    .prologue
    .line 33
    iput-object p1, p0, Lcom/asus/mygazine/PhotoActivity$1;->this$0:Lcom/asus/mygazine/PhotoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/asus/mygazine/PhotoActivity$1;->this$0:Lcom/asus/mygazine/PhotoActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 37
    iget-object v0, p0, Lcom/asus/mygazine/PhotoActivity$1;->this$0:Lcom/asus/mygazine/PhotoActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 38
    return-void
.end method
