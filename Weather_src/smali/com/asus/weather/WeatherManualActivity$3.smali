.class Lcom/asus/weather/WeatherManualActivity$3;
.super Ljava/lang/Object;
.source "WeatherManualActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/weather/WeatherManualActivity;
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
    .line 246
    iput-object p1, p0, Lcom/asus/weather/WeatherManualActivity$3;->this$0:Lcom/asus/weather/WeatherManualActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 249
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/asus/weather/WeatherManualActivity;->cityname:Ljava/lang/String;

    .line 250
    iget-object v0, p0, Lcom/asus/weather/WeatherManualActivity$3;->this$0:Lcom/asus/weather/WeatherManualActivity;

    sget-object v1, Lcom/asus/weather/WeatherManualActivity;->cityname:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/asus/weather/WeatherManualActivity;->access$000(Lcom/asus/weather/WeatherManualActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/asus/weather/WeatherManualActivity;->cityname:Ljava/lang/String;

    .line 251
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 255
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 259
    return-void
.end method
