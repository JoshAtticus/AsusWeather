.class Lcom/asus/weather/accuWeather/BaseFeedParser$18;
.super Ljava/lang/Object;
.source "BaseFeedParser.java"

# interfaces
.implements Landroid/sax/EndTextElementListener;


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


# direct methods
.method constructor <init>(Lcom/asus/weather/accuWeather/BaseFeedParser;Lcom/asus/weather/accuWeather/Message;)V
    .registers 3

    .prologue
    .line 318
    iput-object p1, p0, Lcom/asus/weather/accuWeather/BaseFeedParser$18;->this$0:Lcom/asus/weather/accuWeather/BaseFeedParser;

    iput-object p2, p0, Lcom/asus/weather/accuWeather/BaseFeedParser$18;->val$currentMessage:Lcom/asus/weather/accuWeather/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end(Ljava/lang/String;)V
    .registers 4
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 321
    iget-object v0, p0, Lcom/asus/weather/accuWeather/BaseFeedParser$18;->val$currentMessage:Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v0, p1}, Lcom/asus/weather/accuWeather/Message;->setDay(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/asus/weather/accuWeather/BaseFeedParser$18;->this$0:Lcom/asus/weather/accuWeather/BaseFeedParser;

    iget v1, v0, Lcom/asus/weather/accuWeather/BaseFeedParser;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/asus/weather/accuWeather/BaseFeedParser;->index:I

    .line 323
    return-void
.end method
