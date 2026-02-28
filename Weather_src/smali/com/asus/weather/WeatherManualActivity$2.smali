.class Lcom/asus/weather/WeatherManualActivity$2;
.super Ljava/lang/Object;
.source "WeatherManualActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/weather/WeatherManualActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/weather/WeatherManualActivity;


# direct methods
.method constructor <init>(Lcom/asus/weather/WeatherManualActivity;)V
    .registers 2

    .prologue
    .line 86
    iput-object p1, p0, Lcom/asus/weather/WeatherManualActivity$2;->this$0:Lcom/asus/weather/WeatherManualActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 89
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2d

    .line 91
    const/16 v0, 0x42

    if-eq p2, v0, :cond_e

    const/16 v0, 0x54

    if-ne p2, v0, :cond_2d

    .line 93
    :cond_e
    const-string v0, "[WeatherManualActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/asus/weather/WeatherManualActivity$2;->this$0:Lcom/asus/weather/WeatherManualActivity;

    invoke-virtual {v0}, Lcom/asus/weather/WeatherManualActivity;->doSearch()V

    .line 95
    const/4 v0, 0x1

    .line 98
    :goto_2c
    return v0

    :cond_2d
    const/4 v0, 0x0

    goto :goto_2c
.end method
