.class Lcom/asus/mygazine/Snapshot;
.super Ljava/lang/Object;
.source "PhotoConverter.java"


# instance fields
.field date:Ljava/lang/String;

.field height:I

.field name:Ljava/lang/String;

.field orientation:I

.field originName:Ljava/lang/String;

.field recompress:Z

.field width:I


# direct methods
.method constructor <init>(Lcom/asus/mygazine/Snapshot;)V
    .registers 4
    .param p1, "snap"    # Lcom/asus/mygazine/Snapshot;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v1, p0, Lcom/asus/mygazine/Snapshot;->originName:Ljava/lang/String;

    .line 20
    iput-object v1, p0, Lcom/asus/mygazine/Snapshot;->date:Ljava/lang/String;

    .line 21
    iput v0, p0, Lcom/asus/mygazine/Snapshot;->orientation:I

    .line 22
    iput v0, p0, Lcom/asus/mygazine/Snapshot;->width:I

    .line 23
    iput v0, p0, Lcom/asus/mygazine/Snapshot;->height:I

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asus/mygazine/Snapshot;->recompress:Z

    .line 33
    invoke-virtual {p0, p1}, Lcom/asus/mygazine/Snapshot;->copy(Lcom/asus/mygazine/Snapshot;)V

    .line 34
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "date"    # Ljava/lang/String;
    .param p3, "orientation"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v1, p0, Lcom/asus/mygazine/Snapshot;->originName:Ljava/lang/String;

    .line 20
    iput-object v1, p0, Lcom/asus/mygazine/Snapshot;->date:Ljava/lang/String;

    .line 21
    iput v0, p0, Lcom/asus/mygazine/Snapshot;->orientation:I

    .line 22
    iput v0, p0, Lcom/asus/mygazine/Snapshot;->width:I

    .line 23
    iput v0, p0, Lcom/asus/mygazine/Snapshot;->height:I

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asus/mygazine/Snapshot;->recompress:Z

    .line 27
    iput-object p1, p0, Lcom/asus/mygazine/Snapshot;->originName:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/asus/mygazine/Snapshot;->date:Ljava/lang/String;

    .line 29
    iput p3, p0, Lcom/asus/mygazine/Snapshot;->orientation:I

    .line 30
    return-void
.end method


# virtual methods
.method public copy(Lcom/asus/mygazine/Snapshot;)V
    .registers 3
    .param p1, "snap"    # Lcom/asus/mygazine/Snapshot;

    .prologue
    .line 37
    if-nez p1, :cond_3

    .line 46
    :goto_2
    return-void

    .line 39
    :cond_3
    iget-object v0, p1, Lcom/asus/mygazine/Snapshot;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/asus/mygazine/Snapshot;->name:Ljava/lang/String;

    .line 40
    iget-object v0, p1, Lcom/asus/mygazine/Snapshot;->originName:Ljava/lang/String;

    iput-object v0, p0, Lcom/asus/mygazine/Snapshot;->originName:Ljava/lang/String;

    .line 41
    iget-object v0, p1, Lcom/asus/mygazine/Snapshot;->date:Ljava/lang/String;

    iput-object v0, p0, Lcom/asus/mygazine/Snapshot;->date:Ljava/lang/String;

    .line 42
    iget v0, p1, Lcom/asus/mygazine/Snapshot;->orientation:I

    iput v0, p0, Lcom/asus/mygazine/Snapshot;->orientation:I

    .line 43
    iget v0, p1, Lcom/asus/mygazine/Snapshot;->width:I

    iput v0, p0, Lcom/asus/mygazine/Snapshot;->width:I

    .line 44
    iget v0, p1, Lcom/asus/mygazine/Snapshot;->height:I

    iput v0, p0, Lcom/asus/mygazine/Snapshot;->height:I

    .line 45
    iget-boolean v0, p1, Lcom/asus/mygazine/Snapshot;->recompress:Z

    iput-boolean v0, p0, Lcom/asus/mygazine/Snapshot;->recompress:Z

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "originName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/mygazine/Snapshot;->originName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/mygazine/Snapshot;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " date:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/mygazine/Snapshot;->date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " orientation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/asus/mygazine/Snapshot;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/asus/mygazine/Snapshot;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/asus/mygazine/Snapshot;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " recompress:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/asus/mygazine/Snapshot;->recompress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
