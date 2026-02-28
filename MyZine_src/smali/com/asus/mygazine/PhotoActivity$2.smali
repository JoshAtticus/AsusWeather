.class Lcom/asus/mygazine/PhotoActivity$2;
.super Ljava/lang/Object;
.source "PhotoActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/mygazine/PhotoActivity;
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
    .line 43
    iput-object p1, p0, Lcom/asus/mygazine/PhotoActivity$2;->this$0:Lcom/asus/mygazine/PhotoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 8
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    const/4 v4, 0x1

    .line 46
    invoke-static {}, Lcom/asus/mygazine/PhotoActivity;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1f

    const-string v1, "PhotoActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkedId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_1f
    const v1, 0x7f0a0001

    if-ne p2, v1, :cond_38

    .line 49
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.gallery3d.ACTION_PICK_ALBUM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.gallery3d"

    const-string v2, "com.android.gallery3d.app.AlbumPicker"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    iget-object v1, p0, Lcom/asus/mygazine/PhotoActivity$2;->this$0:Lcom/asus/mygazine/PhotoActivity;

    invoke-virtual {v1, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 59
    :goto_37
    return-void

    .line 54
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_38
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.gallery3d.ACTION_GET_PHOTOS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string v1, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 57
    iget-object v1, p0, Lcom/asus/mygazine/PhotoActivity$2;->this$0:Lcom/asus/mygazine/PhotoActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_37
.end method
