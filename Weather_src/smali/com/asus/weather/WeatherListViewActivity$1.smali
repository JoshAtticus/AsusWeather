.class Lcom/asus/weather/WeatherListViewActivity$1;
.super Ljava/lang/Object;
.source "WeatherListViewActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/weather/WeatherListViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/weather/WeatherListViewActivity;


# direct methods
.method constructor <init>(Lcom/asus/weather/WeatherListViewActivity;)V
    .registers 2

    .prologue
    .line 39
    iput-object p1, p0, Lcom/asus/weather/WeatherListViewActivity$1;->this$0:Lcom/asus/weather/WeatherListViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "a":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.asus.weather.weatherIntentAction"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "CONTENT"

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ITEM"

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 45
    .local v0, "broadcastintent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/asus/weather/WeatherListViewActivity$1;->this$0:Lcom/asus/weather/WeatherListViewActivity;

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 46
    iget-object v1, p0, Lcom/asus/weather/WeatherListViewActivity$1;->this$0:Lcom/asus/weather/WeatherListViewActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 47
    return-void
.end method
