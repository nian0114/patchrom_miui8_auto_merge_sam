.class final Lcom/sec/android/app/camera/setting/CameraSettingsImpl$1;
.super Ljava/lang/Object;
.source "CameraSettingsImpl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/setting/CameraSettingsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/sec/android/app/camera/setting/CameraSettingsImpl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/app/camera/setting/CameraSettingsImpl;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 65
    sget-object v0, Lcom/sec/android/app/camera/Camera;->mSetting:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sec/android/app/camera/setting/CameraSettingsImpl;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 70
    new-array v0, p1, [Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl$1;->newArray(I)[Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    move-result-object v0

    return-object v0
.end method
