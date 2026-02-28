.class public Lcom/asus/mygazine/WeatherConfig;
.super Ljava/lang/Object;
.source "WeatherConfig.java"


# static fields
.field public static final ICON_TABLE:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const/16 v0, 0x2c

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/asus/mygazine/WeatherConfig;->ICON_TABLE:[I

    return-void

    :array_a
    .array-data 4
        0x7f02002d
        0x7f020022
        0x7f020024
        0x7f02001c
        0x7f02001a
        0x7f02001d
        0x7f020015
        0x7f020016
        0x0
        0x0
        0x7f020018
        0x7f02002a
        0x7f02001f
        0x7f020026
        0x7f02002e
        0x7f020021
        0x7f020027
        0x7f020028
        0x7f020017
        0x7f02001e
        0x7f020025
        0x7f02002c
        0x7f020020
        0x7f02001b
        0x7f02002b
        0x7f020019
        0x0
        0x0
        0x7f020029
        0x7f02002d
        0x7f02001b
        0x7f02002f
        0x7f02002d
        0x7f020022
        0x7f020024
        0x7f02001c
        0x7f02001a
        0x7f02001d
        0x7f020015
        0x7f020016
        0x7f020018
        0x7f02002a
        0x7f02001f
        0x7f020026
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
