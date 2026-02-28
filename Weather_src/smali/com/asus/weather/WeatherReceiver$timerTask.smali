.class public Lcom/asus/weather/WeatherReceiver$timerTask;
.super Ljava/util/TimerTask;
.source "WeatherReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/weather/WeatherReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "timerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/weather/WeatherReceiver;


# direct methods
.method public constructor <init>(Lcom/asus/weather/WeatherReceiver;)V
    .registers 2

    .prologue
    .line 306
    iput-object p1, p0, Lcom/asus/weather/WeatherReceiver$timerTask;->this$0:Lcom/asus/weather/WeatherReceiver;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 311
    const-string v1, "[WeatherReceiver]"

    const-string v2, "Test network again"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v1, p0, Lcom/asus/weather/WeatherReceiver$timerTask;->this$0:Lcom/asus/weather/WeatherReceiver;

    iget-object v2, p0, Lcom/asus/weather/WeatherReceiver$timerTask;->this$0:Lcom/asus/weather/WeatherReceiver;

    iget-object v2, v2, Lcom/asus/weather/WeatherReceiver;->context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/asus/weather/WeatherReceiver;->access$000(Lcom/asus/weather/WeatherReceiver;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 315
    const-string v1, "[WeatherReceiver]"

    const-string v2, "20 sec later:network is available."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v1, p0, Lcom/asus/weather/WeatherReceiver$timerTask;->this$0:Lcom/asus/weather/WeatherReceiver;

    invoke-virtual {v1}, Lcom/asus/weather/WeatherReceiver;->DoUpdate()V

    .line 327
    :goto_1f
    const-string v1, "[WeatherReceiver]"

    const-string v2, "End count 20 secs"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v1, p0, Lcom/asus/weather/WeatherReceiver$timerTask;->this$0:Lcom/asus/weather/WeatherReceiver;

    iget-object v1, v1, Lcom/asus/weather/WeatherReceiver;->timer:Ljava/util/Timer;

    if-eqz v1, :cond_3a

    .line 330
    iget-object v1, p0, Lcom/asus/weather/WeatherReceiver$timerTask;->this$0:Lcom/asus/weather/WeatherReceiver;

    iget-object v1, v1, Lcom/asus/weather/WeatherReceiver;->timer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 331
    const-string v1, "[WeatherReceiver]"

    const-string v2, "Cancel Timer"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_3a
    return-void

    .line 321
    :cond_3b
    iget-object v1, p0, Lcom/asus/weather/WeatherReceiver$timerTask;->this$0:Lcom/asus/weather/WeatherReceiver;

    invoke-virtual {v1}, Lcom/asus/weather/WeatherReceiver;->cancelCurrentAlarmManager()V

    .line 322
    const-string v1, "[WeatherReceiver]"

    const-string v2, "20 sec later: network is still not available"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.asus.weather.weatherIntentAction"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 324
    .local v0, "intentUpdate":Landroid/content/Intent;
    const-string v1, "CONTENT"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 325
    iget-object v1, p0, Lcom/asus/weather/WeatherReceiver$timerTask;->this$0:Lcom/asus/weather/WeatherReceiver;

    iget-object v1, v1, Lcom/asus/weather/WeatherReceiver;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1f
.end method
