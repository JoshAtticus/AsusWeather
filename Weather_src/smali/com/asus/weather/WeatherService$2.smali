.class Lcom/asus/weather/WeatherService$2;
.super Ljava/lang/Object;
.source "WeatherService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/weather/WeatherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/weather/WeatherService;


# direct methods
.method constructor <init>(Lcom/asus/weather/WeatherService;)V
    .registers 2

    .prologue
    .line 218
    iput-object p1, p0, Lcom/asus/weather/WeatherService$2;->this$0:Lcom/asus/weather/WeatherService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 221
    iget-object v1, p0, Lcom/asus/weather/WeatherService$2;->this$0:Lcom/asus/weather/WeatherService;

    iget v2, v1, Lcom/asus/weather/WeatherService;->counts:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/asus/weather/WeatherService;->counts:I

    .line 223
    iget-object v1, p0, Lcom/asus/weather/WeatherService$2;->this$0:Lcom/asus/weather/WeatherService;

    iget-boolean v1, v1, Lcom/asus/weather/WeatherService;->flagGetPositionDone:Z

    if-nez v1, :cond_4b

    .line 225
    iget-object v1, p0, Lcom/asus/weather/WeatherService$2;->this$0:Lcom/asus/weather/WeatherService;

    iget v1, v1, Lcom/asus/weather/WeatherService;->counts:I

    const/16 v2, 0x3c

    if-le v1, v2, :cond_4c

    .line 228
    iget-object v1, p0, Lcom/asus/weather/WeatherService$2;->this$0:Lcom/asus/weather/WeatherService;

    iget-object v1, v1, Lcom/asus/weather/WeatherService;->locationListener:Landroid/location/LocationListener;

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/asus/weather/WeatherService$2;->this$0:Lcom/asus/weather/WeatherService;

    iget-object v1, v1, Lcom/asus/weather/WeatherService;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v1, :cond_4b

    .line 231
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.asus.weather.weatherIntentAction"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 232
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "CONTENT"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 233
    iget-object v1, p0, Lcom/asus/weather/WeatherService$2;->this$0:Lcom/asus/weather/WeatherService;

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 234
    iget-object v1, p0, Lcom/asus/weather/WeatherService$2;->this$0:Lcom/asus/weather/WeatherService;

    iget-object v1, v1, Lcom/asus/weather/WeatherService;->mLocationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/asus/weather/WeatherService$2;->this$0:Lcom/asus/weather/WeatherService;

    iget-object v2, v2, Lcom/asus/weather/WeatherService;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 235
    iget-object v1, p0, Lcom/asus/weather/WeatherService$2;->this$0:Lcom/asus/weather/WeatherService;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/asus/weather/WeatherService;->locationListener:Landroid/location/LocationListener;

    .line 236
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 244
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4b
    :goto_4b
    return-void

    .line 241
    :cond_4c
    iget-object v1, p0, Lcom/asus/weather/WeatherService$2;->this$0:Lcom/asus/weather/WeatherService;

    iget-object v1, v1, Lcom/asus/weather/WeatherService;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4b
.end method
