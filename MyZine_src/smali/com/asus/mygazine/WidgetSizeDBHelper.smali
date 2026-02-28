.class public Lcom/asus/mygazine/WidgetSizeDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "WidgetSizeDBHelper.java"


# static fields
.field private static final DBG:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 22
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_d

    :goto_a
    sput-boolean v0, Lcom/asus/mygazine/WidgetSizeDBHelper;->DBG:Z

    return-void

    :cond_d
    move v0, v1

    goto :goto_a
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    const-string v0, "widgetsize.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 27
    return-void
.end method


# virtual methods
.method public deleteWidget([I)V
    .registers 7
    .param p1, "appWidgetIds"    # [I

    .prologue
    .line 86
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 87
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v2, p1

    if-ge v1, v2, :cond_51

    .line 88
    sget-boolean v2, Lcom/asus/mygazine/WidgetSizeDBHelper;->DBG:Z

    if-eqz v2, :cond_30

    const-string v2, "WidgetSizeDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteWidget- appWidgetIds["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DELETE FROM widgetsize WHERE widgetId =\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 92
    :cond_51
    return-void
.end method

.method public disableWidget()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 95
    sget-boolean v1, Lcom/asus/mygazine/WidgetSizeDBHelper;->DBG:Z

    if-eqz v1, :cond_c

    const-string v1, "WidgetSizeDBHelper"

    const-string v2, "disableWidget"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_c
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 97
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "widgetsize"

    invoke-virtual {v0, v1, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 98
    return-void
.end method

.method public findWidthSizeById(I)I
    .registers 13
    .param p1, "widgetId"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 67
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 68
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-array v2, v6, [Ljava/lang/String;

    const-string v1, "width"

    aput-object v1, v2, v3

    .line 69
    .local v2, "WIDGET_SIZE_PROJECTIONS":[Ljava/lang/String;
    new-array v4, v6, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    .line 70
    .local v4, "selectArgs":[Ljava/lang/String;
    const-string v1, "widgetsize"

    const-string v3, "widgetId=?"

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 72
    .local v9, "cur":Landroid/database/Cursor;
    const/4 v10, -0x1

    .line 73
    .local v10, "size":I
    if-eqz v9, :cond_31

    .line 75
    :try_start_23
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 76
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_32

    move-result v10

    .line 79
    :cond_2e
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 82
    :cond_31
    return v10

    .line 79
    :catchall_32
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 31
    const-string v0, "CREATE TABLE widgetsize (_id INTEGER PRIMARY KEY,widgetId INTEGER UNIQUE ON CONFLICT REPLACE,width INTEGER,height INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 42
    return-void
.end method

.method public updateWidget([I)V
    .registers 15
    .param p1, "appWidgetIds"    # [I

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v5, 0x0

    .line 45
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 46
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "width"

    aput-object v1, v2, v11

    const-string v1, "height"

    aput-object v1, v2, v12

    .line 48
    .local v2, "WIDGET_SIZE_PROJECTIONS":[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_13
    array-length v1, p1

    if-ge v10, v1, :cond_78

    .line 49
    new-array v4, v12, [Ljava/lang/String;

    aget v1, p1, v10

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v11

    .line 50
    .local v4, "selectArgs":[Ljava/lang/String;
    const-string v1, "widgetsize"

    const-string v3, "widgetId=?"

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 53
    .local v9, "cur":Landroid/database/Cursor;
    if-eqz v9, :cond_35

    if-eqz v9, :cond_69

    :try_start_2f
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_69

    .line 54
    :cond_35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INSERT INTO widgetsize (widgetId,width,height) VALUES (\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v3, p1, v10

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\',\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\',\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\')"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_69
    .catchall {:try_start_2f .. :try_end_69} :catchall_71

    .line 60
    :cond_69
    if-eqz v9, :cond_6e

    .line 61
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 48
    :cond_6e
    add-int/lit8 v10, v10, 0x1

    goto :goto_13

    .line 60
    :catchall_71
    move-exception v1

    if-eqz v9, :cond_77

    .line 61
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_77
    throw v1

    .line 64
    .end local v4    # "selectArgs":[Ljava/lang/String;
    .end local v9    # "cur":Landroid/database/Cursor;
    :cond_78
    return-void
.end method
