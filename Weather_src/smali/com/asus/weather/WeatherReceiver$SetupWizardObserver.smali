.class Lcom/asus/weather/WeatherReceiver$SetupWizardObserver;
.super Landroid/database/ContentObserver;
.source "WeatherReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/weather/WeatherReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetupWizardObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/weather/WeatherReceiver;


# direct methods
.method public constructor <init>(Lcom/asus/weather/WeatherReceiver;)V
    .registers 3

    .prologue
    .line 373
    iput-object p1, p0, Lcom/asus/weather/WeatherReceiver$SetupWizardObserver;->this$0:Lcom/asus/weather/WeatherReceiver;

    .line 374
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 375
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 9
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 380
    iget-object v4, p0, Lcom/asus/weather/WeatherReceiver$SetupWizardObserver;->this$0:Lcom/asus/weather/WeatherReceiver;

    iget-object v4, v4, Lcom/asus/weather/WeatherReceiver;->receiverContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "device_provisioned"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_4d

    move v0, v2

    .line 383
    .local v0, "device_provisioned":Z
    :goto_13
    const-string v4, "[WeatherReceiver]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SetupWizardObserver onChange():device_provisioned="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    if-ne v0, v2, :cond_4c

    .line 387
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.asus.weather.weatherIntentAction"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 388
    .local v1, "intentUpdate":Landroid/content/Intent;
    const-string v4, "CONTENT"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 389
    const-string v2, "CHECKNETWORK"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 390
    iget-object v2, p0, Lcom/asus/weather/WeatherReceiver$SetupWizardObserver;->this$0:Lcom/asus/weather/WeatherReceiver;

    iget-object v2, v2, Lcom/asus/weather/WeatherReceiver;->receiverContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 391
    const-string v2, "[WeatherReceiver]"

    const-string v3, "SetupWizardObserver onChange():sendBroadcast(P.UPDATE_REQUEST)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    .end local v1    # "intentUpdate":Landroid/content/Intent;
    :cond_4c
    return-void

    .end local v0    # "device_provisioned":Z
    :cond_4d
    move v0, v3

    .line 380
    goto :goto_13
.end method
