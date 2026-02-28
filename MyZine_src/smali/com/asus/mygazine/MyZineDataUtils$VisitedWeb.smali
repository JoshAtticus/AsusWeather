.class Lcom/asus/mygazine/MyZineDataUtils$VisitedWeb;
.super Ljava/lang/Object;
.source "MyZineDataUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/mygazine/MyZineDataUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VisitedWeb"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/mygazine/MyZineDataUtils;

.field thumbnail:Landroid/graphics/Bitmap;

.field title:Ljava/lang/String;

.field url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/asus/mygazine/MyZineDataUtils;)V
    .registers 2

    .prologue
    .line 1029
    iput-object p1, p0, Lcom/asus/mygazine/MyZineDataUtils$VisitedWeb;->this$0:Lcom/asus/mygazine/MyZineDataUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/asus/mygazine/MyZineDataUtils;Lcom/asus/mygazine/MyZineDataUtils$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/asus/mygazine/MyZineDataUtils;
    .param p2, "x1"    # Lcom/asus/mygazine/MyZineDataUtils$1;

    .prologue
    .line 1029
    invoke-direct {p0, p1}, Lcom/asus/mygazine/MyZineDataUtils$VisitedWeb;-><init>(Lcom/asus/mygazine/MyZineDataUtils;)V

    return-void
.end method
