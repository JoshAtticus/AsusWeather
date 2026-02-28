.class Lcom/asus/weather/WeatherFragmentSettings$2;
.super Ljava/lang/Object;
.source "WeatherFragmentSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/weather/WeatherFragmentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/weather/WeatherFragmentSettings;


# direct methods
.method constructor <init>(Lcom/asus/weather/WeatherFragmentSettings;)V
    .registers 2

    .prologue
    .line 280
    iput-object p1, p0, Lcom/asus/weather/WeatherFragmentSettings$2;->this$0:Lcom/asus/weather/WeatherFragmentSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 20
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 285
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/asus/weather/WeatherFragmentSettings$2;->this$0:Lcom/asus/weather/WeatherFragmentSettings;

    invoke-static {v13}, Lcom/asus/weather/WeatherFragmentSettings;->access$000(Lcom/asus/weather/WeatherFragmentSettings;)Landroid/content/SharedPreferences;

    move-result-object v13

    const-string v14, "Radiochoice"

    const/4 v15, -0x1

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 286
    .local v4, "existingRadio":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/asus/weather/WeatherFragmentSettings$2;->this$0:Lcom/asus/weather/WeatherFragmentSettings;

    invoke-static {v13}, Lcom/asus/weather/WeatherFragmentSettings;->access$100(Lcom/asus/weather/WeatherFragmentSettings;)I

    move-result v10

    .line 288
    .local v10, "newRadio":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/asus/weather/WeatherFragmentSettings$2;->this$0:Lcom/asus/weather/WeatherFragmentSettings;

    invoke-static {v13}, Lcom/asus/weather/WeatherFragmentSettings;->access$000(Lcom/asus/weather/WeatherFragmentSettings;)Landroid/content/SharedPreferences;

    move-result-object v13

    const-string v14, "Manual_city"

    const-string v15, ""

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 290
    .local v2, "existingCity":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/asus/weather/WeatherFragmentSettings$2;->this$0:Lcom/asus/weather/WeatherFragmentSettings;

    invoke-static {v13}, Lcom/asus/weather/WeatherFragmentSettings;->access$200(Lcom/asus/weather/WeatherFragmentSettings;)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    const-string v14, "Manual_city"

    sget-object v15, Lcom/asus/weather/WeatherFragmentSettings;->strCityinfo:[Ljava/lang/String;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 291
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/asus/weather/WeatherFragmentSettings$2;->this$0:Lcom/asus/weather/WeatherFragmentSettings;

    invoke-static {v13}, Lcom/asus/weather/WeatherFragmentSettings;->access$200(Lcom/asus/weather/WeatherFragmentSettings;)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    const-string v14, "Manual_country"

    sget-object v15, Lcom/asus/weather/WeatherFragmentSettings;->strCityinfo:[Ljava/lang/String;

    const/16 v16, 0x1

    aget-object v15, v15, v16

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 292
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/asus/weather/WeatherFragmentSettings$2;->this$0:Lcom/asus/weather/WeatherFragmentSettings;

    invoke-static {v13}, Lcom/asus/weather/WeatherFragmentSettings;->access$200(Lcom/asus/weather/WeatherFragmentSettings;)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    const-string v14, "Manual_adminarea"

    sget-object v15, Lcom/asus/weather/WeatherFragmentSettings;->strCityinfo:[Ljava/lang/String;

    const/16 v16, 0x2

    aget-object v15, v15, v16

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 293
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/asus/weather/WeatherFragmentSettings$2;->this$0:Lcom/asus/weather/WeatherFragmentSettings;

    invoke-static {v13}, Lcom/asus/weather/WeatherFragmentSettings;->access$200(Lcom/asus/weather/WeatherFragmentSettings;)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    const-string v14, "Manual_location"

    sget-object v15, Lcom/asus/weather/WeatherFragmentSettings;->strCityinfo:[Ljava/lang/String;

    const/16 v16, 0x3

    aget-object v15, v15, v16

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 294
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/asus/weather/WeatherFragmentSettings$2;->this$0:Lcom/asus/weather/WeatherFragmentSettings;

    invoke-static {v13}, Lcom/asus/weather/WeatherFragmentSettings;->access$200(Lcom/asus/weather/WeatherFragmentSettings;)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 297
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/asus/weather/WeatherFragmentSettings$2;->this$0:Lcom/asus/weather/WeatherFragmentSettings;

    invoke-static {v13}, Lcom/asus/weather/WeatherFragmentSettings;->access$000(Lcom/asus/weather/WeatherFragmentSettings;)Landroid/content/SharedPreferences;

    move-result-object v13

    const-string v14, "FreqSpinner"

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 298
    .local v3, "existingFreq":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/asus/weather/WeatherFragmentSettings$2;->this$0:Lcom/asus/weather/WeatherFragmentSettings;

    invoke-static {v13}, Lcom/asus/weather/WeatherFragmentSettings;->access$300(Lcom/asus/weather/WeatherFragmentSettings;)I

    move-result v9

    .line 301
    .local v9, "newFreq":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/asus/weather/WeatherFragmentSettings$2;->this$0:Lcom/asus/weather/WeatherFragmentSettings;

    invoke-static {v13}, Lcom/asus/weather/WeatherFragmentSettings;->access$000(Lcom/asus/weather/WeatherFragmentSettings;)Landroid/content/SharedPreferences;

    move-result-object v13

    const-string v14, "UnitSpinner"

    const-string v15, ""

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 302
    .local v5, "existingUnit":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/asus/weather/WeatherFragmentSettings$2;->this$0:Lcom/asus/weather/WeatherFragmentSettings;

    invoke-static {v13}, Lcom/asus/weather/WeatherFragmentSettings;->access$400(Lcom/asus/weather/WeatherFragmentSettings;)Ljava/lang/String;

    move-result-object v11

    .line 307
    .local v11, "newUnit":Ljava/lang/String;
    if-eq v3, v9, :cond_dc

    .line 310
    sget-object v13, Lcom/asus/weather/P;->PREF_FREQLIST:[I

    const/4 v14, 0x5

    aget v13, v13, v14

    if-eq v9, v13, :cond_12f

    .line 313
    new-instance v6, Landroid/content/Intent;

    const-string v13, "com.asus.weather.weatherIntentAction"

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 314
    .local v6, "intent":Landroid/content/Intent;
    const-string v13, "CONTENT"

    const/4 v14, 0x4

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 315
    const-string v13, "PERIOD"

    int-to-long v14, v9

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    const-wide/16 v16, 0x3c

    mul-long v14, v14, v16

    const-wide/16 v16, 0x3c

    mul-long v14, v14, v16

    invoke-virtual {v6, v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 317
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/asus/weather/WeatherFragmentSettings$2;->this$0:Lcom/asus/weather/WeatherFragmentSettings;

    invoke-virtual {v13, v6}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 334
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_dc
    :goto_dc
    if-ne v4, v10, :cond_fc

    invoke-virtual {v5, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_fc

    const/4 v13, 0x1

    if-ne v10, v13, :cond_127

    sget-object v13, Lcom/asus/weather/WeatherFragmentSettings;->strCityinfo:[Ljava/lang/String;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_127

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/asus/weather/WeatherFragmentSettings$2;->this$0:Lcom/asus/weather/WeatherFragmentSettings;

    invoke-static {v13}, Lcom/asus/weather/WeatherFragmentSettings;->access$500(Lcom/asus/weather/WeatherFragmentSettings;)Z

    move-result v13

    if-eqz v13, :cond_127

    .line 340
    :cond_fc
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/asus/weather/WeatherFragmentSettings$2;->this$0:Lcom/asus/weather/WeatherFragmentSettings;

    invoke-static {v13}, Lcom/asus/weather/WeatherFragmentSettings;->access$600(Lcom/asus/weather/WeatherFragmentSettings;)Z

    move-result v13

    if-eqz v13, :cond_15f

    .line 343
    new-instance v8, Landroid/content/Intent;

    const-string v13, "com.asus.weather.weatherIntentAction"

    invoke-direct {v8, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 344
    .local v8, "intentUpdate":Landroid/content/Intent;
    const-string v13, "CONTENT"

    const/4 v14, 0x1

    invoke-virtual {v8, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 345
    const-string v13, "CHECKNETWORK"

    const/4 v14, 0x1

    invoke-virtual {v8, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 346
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/asus/weather/WeatherFragmentSettings$2;->this$0:Lcom/asus/weather/WeatherFragmentSettings;

    invoke-virtual {v13, v8}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 347
    const-string v13, "[WeatherFragmentSettings]"

    const-string v14, "sendBroadcast"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    .end local v8    # "intentUpdate":Landroid/content/Intent;
    :cond_127
    :goto_127
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/asus/weather/WeatherFragmentSettings$2;->this$0:Lcom/asus/weather/WeatherFragmentSettings;

    invoke-virtual {v13}, Lcom/asus/weather/WeatherFragmentSettings;->finish()V

    .line 358
    return-void

    .line 322
    :cond_12f
    new-instance v7, Landroid/content/Intent;

    const-string v13, "com.asus.weather.weatherIntentAction"

    invoke-direct {v7, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 323
    .local v7, "intent1":Landroid/content/Intent;
    const-string v13, "CONTENT"

    const/4 v14, 0x1

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 324
    const-string v13, "CHECKNETWORK"

    const/4 v14, 0x0

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 325
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/asus/weather/WeatherFragmentSettings$2;->this$0:Lcom/asus/weather/WeatherFragmentSettings;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v13, v14, v7, v15}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 326
    .local v12, "pendingIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/asus/weather/WeatherFragmentSettings$2;->this$0:Lcom/asus/weather/WeatherFragmentSettings;

    const-string v14, "alarm"

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 327
    .local v1, "alarm":Landroid/app/AlarmManager;
    if-eqz v1, :cond_dc

    .line 329
    invoke-virtual {v1, v12}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_dc

    .line 351
    .end local v1    # "alarm":Landroid/app/AlarmManager;
    .end local v7    # "intent1":Landroid/content/Intent;
    .end local v12    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_15f
    new-instance v6, Landroid/content/Intent;

    const-string v13, "com.asus.weather.weatherIntentAction"

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 352
    .restart local v6    # "intent":Landroid/content/Intent;
    const-string v13, "CONTENT"

    const/16 v14, 0xa

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 353
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/asus/weather/WeatherFragmentSettings$2;->this$0:Lcom/asus/weather/WeatherFragmentSettings;

    invoke-virtual {v13, v6}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_127
.end method
