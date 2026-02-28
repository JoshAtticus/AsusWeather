.class Lcom/asus/weather/accuWeather/BaseFeedParser$1;
.super Ljava/lang/Object;
.source "BaseFeedParser.java"

# interfaces
.implements Landroid/sax/EndElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/weather/accuWeather/BaseFeedParser;->parse()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/weather/accuWeather/BaseFeedParser;

.field final synthetic val$currentMessage:Lcom/asus/weather/accuWeather/Message;

.field final synthetic val$messages:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/asus/weather/accuWeather/BaseFeedParser;Ljava/util/List;Lcom/asus/weather/accuWeather/Message;)V
    .registers 4

    .prologue
    .line 163
    iput-object p1, p0, Lcom/asus/weather/accuWeather/BaseFeedParser$1;->this$0:Lcom/asus/weather/accuWeather/BaseFeedParser;

    iput-object p2, p0, Lcom/asus/weather/accuWeather/BaseFeedParser$1;->val$messages:Ljava/util/List;

    iput-object p3, p0, Lcom/asus/weather/accuWeather/BaseFeedParser$1;->val$currentMessage:Lcom/asus/weather/accuWeather/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end()V
    .registers 4

    .prologue
    .line 166
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x8

    if-ge v0, v1, :cond_13

    .line 168
    iget-object v1, p0, Lcom/asus/weather/accuWeather/BaseFeedParser$1;->val$messages:Ljava/util/List;

    iget-object v2, p0, Lcom/asus/weather/accuWeather/BaseFeedParser$1;->val$currentMessage:Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v2}, Lcom/asus/weather/accuWeather/Message;->copy()Lcom/asus/weather/accuWeather/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 170
    :cond_13
    return-void
.end method
