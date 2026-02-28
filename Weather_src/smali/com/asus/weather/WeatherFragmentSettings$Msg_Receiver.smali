.class public Lcom/asus/weather/WeatherFragmentSettings$Msg_Receiver;
.super Landroid/content/BroadcastReceiver;
.source "WeatherFragmentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/weather/WeatherFragmentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Msg_Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/weather/WeatherFragmentSettings;


# direct methods
.method public constructor <init>(Lcom/asus/weather/WeatherFragmentSettings;)V
    .registers 2

    .prologue
    .line 782
    iput-object p1, p0, Lcom/asus/weather/WeatherFragmentSettings$Msg_Receiver;->this$0:Lcom/asus/weather/WeatherFragmentSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 788
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 790
    .local v0, "action":Ljava/lang/String;
    const-string v3, "com.asus.weather.weatherIntentAction"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 792
    const-string v3, "CONTENT"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 794
    .local v1, "intContent":I
    packed-switch v1, :pswitch_data_78

    .line 842
    .end local v1    # "intContent":I
    :cond_18
    :goto_18
    :pswitch_18
    return-void

    .line 800
    .restart local v1    # "intContent":I
    :pswitch_19
    iget-object v3, p0, Lcom/asus/weather/WeatherFragmentSettings$Msg_Receiver;->this$0:Lcom/asus/weather/WeatherFragmentSettings;

    invoke-static {v3}, Lcom/asus/weather/WeatherFragmentSettings;->access$700(Lcom/asus/weather/WeatherFragmentSettings;)Lcom/asus/weather/ButtonPreference;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 801
    iget-object v3, p0, Lcom/asus/weather/WeatherFragmentSettings$Msg_Receiver;->this$0:Lcom/asus/weather/WeatherFragmentSettings;

    invoke-static {v3}, Lcom/asus/weather/WeatherFragmentSettings;->access$700(Lcom/asus/weather/WeatherFragmentSettings;)Lcom/asus/weather/ButtonPreference;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/asus/weather/ButtonPreference;->setButton(Z)V

    .line 804
    const/4 v3, 0x2

    if-ne v1, v3, :cond_39

    .line 806
    iget-object v3, p0, Lcom/asus/weather/WeatherFragmentSettings$Msg_Receiver;->this$0:Lcom/asus/weather/WeatherFragmentSettings;

    invoke-virtual {v3}, Lcom/asus/weather/WeatherFragmentSettings;->cancelDialog()V

    .line 807
    iget-object v3, p0, Lcom/asus/weather/WeatherFragmentSettings$Msg_Receiver;->this$0:Lcom/asus/weather/WeatherFragmentSettings;

    invoke-static {v3}, Lcom/asus/weather/WeatherFragmentSettings;->access$800(Lcom/asus/weather/WeatherFragmentSettings;)V

    goto :goto_18

    .line 811
    :cond_39
    iget-object v3, p0, Lcom/asus/weather/WeatherFragmentSettings$Msg_Receiver;->this$0:Lcom/asus/weather/WeatherFragmentSettings;

    invoke-virtual {v3}, Lcom/asus/weather/WeatherFragmentSettings;->cancelDialog()V

    .line 812
    const-string v3, "SHOWTOAST"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 813
    .local v2, "showToast":Z
    if-eqz v2, :cond_18

    .line 815
    iget-object v3, p0, Lcom/asus/weather/WeatherFragmentSettings$Msg_Receiver;->this$0:Lcom/asus/weather/WeatherFragmentSettings;

    const v4, 0x7f06000b

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_18

    .line 822
    .end local v2    # "showToast":Z
    :pswitch_53
    iget-object v3, p0, Lcom/asus/weather/WeatherFragmentSettings$Msg_Receiver;->this$0:Lcom/asus/weather/WeatherFragmentSettings;

    const v4, 0x7f060023

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_18

    .line 828
    :pswitch_60
    iget-object v3, p0, Lcom/asus/weather/WeatherFragmentSettings$Msg_Receiver;->this$0:Lcom/asus/weather/WeatherFragmentSettings;

    const v4, 0x7f060024

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_18

    .line 834
    :pswitch_6d
    iget-object v3, p0, Lcom/asus/weather/WeatherFragmentSettings$Msg_Receiver;->this$0:Lcom/asus/weather/WeatherFragmentSettings;

    invoke-static {v3}, Lcom/asus/weather/WeatherFragmentSettings;->access$900(Lcom/asus/weather/WeatherFragmentSettings;)V

    .line 835
    iget-object v3, p0, Lcom/asus/weather/WeatherFragmentSettings$Msg_Receiver;->this$0:Lcom/asus/weather/WeatherFragmentSettings;

    invoke-static {v3}, Lcom/asus/weather/WeatherFragmentSettings;->access$1000(Lcom/asus/weather/WeatherFragmentSettings;)V

    goto :goto_18

    .line 794
    :pswitch_data_78
    .packed-switch 0x2
        :pswitch_19
        :pswitch_19
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_53
        :pswitch_60
        :pswitch_6d
    .end packed-switch
.end method
