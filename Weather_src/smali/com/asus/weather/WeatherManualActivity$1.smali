.class Lcom/asus/weather/WeatherManualActivity$1;
.super Ljava/lang/Object;
.source "WeatherManualActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 73
    iput-object p1, p0, Lcom/asus/weather/WeatherManualActivity$1;->this$0:Lcom/asus/weather/WeatherManualActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/asus/weather/WeatherManualActivity$1;->this$0:Lcom/asus/weather/WeatherManualActivity;

    iget-object v0, v0, Lcom/asus/weather/WeatherManualActivity;->editText:Landroid/widget/EditText;

    if-ne p1, v0, :cond_10

    const/4 v0, 0x3

    if-ne p2, v0, :cond_10

    .line 78
    iget-object v0, p0, Lcom/asus/weather/WeatherManualActivity$1;->this$0:Lcom/asus/weather/WeatherManualActivity;

    invoke-virtual {v0}, Lcom/asus/weather/WeatherManualActivity;->doSearch()V

    .line 79
    const/4 v0, 0x1

    .line 81
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
