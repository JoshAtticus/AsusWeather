.class public Lcom/asus/mygazine/WidgetData;
.super Ljava/lang/Object;
.source "WidgetData.java"


# instance fields
.field public mAlbumName:Ljava/lang/String;

.field public mAlbumURI:Landroid/net/Uri;

.field public mArtistName:Ljava/lang/String;

.field public mBookMIME:Ljava/lang/String;

.field public mCalendarEventCount:I

.field public mDate:Ljava/lang/String;

.field public mEmailCount:I

.field public mIsOnlineMusic:Z

.field public mPhotoData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/asus/mygazine/Snapshot;",
            ">;"
        }
    .end annotation
.end field

.field public mReaderBooksNumber:I

.field public mReaderPath:Ljava/lang/String;

.field public mSongName:Ljava/lang/String;

.field public mWeatherCityName:Ljava/lang/String;

.field public mWeatherContent:Ljava/lang/String;

.field public mWeatherDegreeAndUnit:Ljava/lang/String;

.field public mWeatherHumidity:Ljava/lang/String;

.field public mWeatherIconId:I

.field public mWeatherSpeedUnit:Ljava/lang/String;

.field public mWeatherTemperature:Ljava/lang/String;

.field public mWeatherTemperatureInfo:Ljava/lang/String;

.field public mWeatherText:Ljava/lang/String;

.field public mWeatherTypes:Ljava/lang/String;

.field public mWeatherUnit:Ljava/lang/String;

.field public mWeatherWindSpeed:Ljava/lang/String;

.field public mWebThumbNail:Landroid/graphics/Bitmap;

.field public mWebTitle:Ljava/lang/String;

.field public mWebUrl:Ljava/lang/String;

.field public mWidgetLayoutId:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/mygazine/WidgetData;->mPhotoData:Ljava/util/List;

    return-void
.end method
