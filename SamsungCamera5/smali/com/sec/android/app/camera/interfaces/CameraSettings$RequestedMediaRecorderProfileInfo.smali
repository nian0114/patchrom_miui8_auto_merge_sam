.class public Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;
.super Ljava/lang/Object;
.source "CameraSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/interfaces/CameraSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestedMediaRecorderProfileInfo"
.end annotation


# instance fields
.field public audioBitrate:I

.field public audioChannels:I

.field public audioEncoder:I

.field public audioSamplingRate:I

.field public fileSizeInterval:I

.field public outputFormat:I

.field public videoBitrate:I

.field public videoEncoder:I

.field public videoFps:I


# direct methods
.method public constructor <init>(IIIIIIIII)V
    .locals 1
    .param p1, "videoEncoder"    # I
    .param p2, "videoBitrate"    # I
    .param p3, "videoFps"    # I
    .param p4, "outputFormat"    # I
    .param p5, "audioEncoder"    # I
    .param p6, "audioBitrate"    # I
    .param p7, "audioChannels"    # I
    .param p8, "audioSamplingRate"    # I
    .param p9, "fileSizeInterval"    # I

    .prologue
    const/4 v0, -0x1

    .line 1703
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1692
    iput v0, p0, Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;->videoEncoder:I

    .line 1693
    iput v0, p0, Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;->videoBitrate:I

    .line 1694
    iput v0, p0, Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;->videoFps:I

    .line 1695
    iput v0, p0, Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;->outputFormat:I

    .line 1696
    iput v0, p0, Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;->audioEncoder:I

    .line 1697
    iput v0, p0, Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;->audioBitrate:I

    .line 1698
    iput v0, p0, Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;->audioChannels:I

    .line 1699
    iput v0, p0, Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;->audioSamplingRate:I

    .line 1700
    iput v0, p0, Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;->fileSizeInterval:I

    .line 1704
    iput p1, p0, Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;->videoEncoder:I

    .line 1705
    iput p2, p0, Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;->videoBitrate:I

    .line 1706
    iput p3, p0, Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;->videoFps:I

    .line 1707
    iput p4, p0, Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;->outputFormat:I

    .line 1708
    iput p5, p0, Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;->audioEncoder:I

    .line 1709
    iput p6, p0, Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;->audioBitrate:I

    .line 1710
    iput p7, p0, Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;->audioChannels:I

    .line 1711
    iput p8, p0, Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;->audioSamplingRate:I

    .line 1712
    iput p9, p0, Lcom/sec/android/app/camera/interfaces/CameraSettings$RequestedMediaRecorderProfileInfo;->fileSizeInterval:I

    .line 1713
    return-void
.end method
