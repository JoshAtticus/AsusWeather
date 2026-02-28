.class public Lcom/asus/weather/WeatherListViewActivity;
.super Landroid/app/Activity;
.source "WeatherListViewActivity.java"


# instance fields
.field private listCity:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getCityFindStringList(Landroid/widget/ListView;)Z
    .registers 12
    .param p1, "listCity"    # Landroid/widget/ListView;

    .prologue
    const/4 v3, 0x0

    .line 54
    const-string v2, "content://com.asus.weather.revived.provider/cityfind"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 56
    .local v1, "CONTENT_URI":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 57
    .local v0, "content":Landroid/content/ContentResolver;
    sget-object v2, Lcom/asus/weather/P;->WEATHER_QUERY_COLUMNS2:[Ljava/lang/String;

    const-string v5, "_id"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 59
    .local v9, "weatherCursor":Landroid/database/Cursor;
    if-eqz v9, :cond_60

    .line 61
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 62
    .local v7, "iColnum":I
    new-array v8, v7, [Ljava/lang/String;

    .line 63
    .local v8, "strCityList":[Ljava/lang/String;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 64
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_20
    if-ge v6, v7, :cond_52

    .line 66
    if-eqz v9, :cond_4f

    .line 68
    const-string v2, "country"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v6

    .line 69
    aget-object v2, v8, v6

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v6

    .line 70
    aget-object v2, v8, v6

    const-string v3, "adminArea"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v6

    .line 71
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 64
    :cond_4f
    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    .line 74
    :cond_52
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 76
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090003

    invoke-direct {v2, p0, v3, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 79
    .end local v6    # "i":I
    .end local v7    # "iColnum":I
    .end local v8    # "strCityList":[Ljava/lang/String;
    :cond_60
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v2, 0x7f030001

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 26
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 27
    .local v0, "conf":Landroid/content/res/Configuration;
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 28
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 30
    const v2, 0x7f080002

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/asus/weather/WeatherListViewActivity;->listCity:Landroid/widget/ListView;

    .line 32
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 33
    .local v1, "titleView":Landroid/widget/TextView;
    const v2, 0x7f060009

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 34
    iget-object v2, p0, Lcom/asus/weather/WeatherListViewActivity;->listCity:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 36
    iget-object v2, p0, Lcom/asus/weather/WeatherListViewActivity;->listCity:Landroid/widget/ListView;

    invoke-direct {p0, v2}, Lcom/asus/weather/WeatherListViewActivity;->getCityFindStringList(Landroid/widget/ListView;)Z

    .line 38
    iget-object v2, p0, Lcom/asus/weather/WeatherListViewActivity;->listCity:Landroid/widget/ListView;

    new-instance v3, Lcom/asus/weather/WeatherListViewActivity$1;

    invoke-direct {v3, p0}, Lcom/asus/weather/WeatherListViewActivity$1;-><init>(Lcom/asus/weather/WeatherListViewActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 49
    return-void
.end method
