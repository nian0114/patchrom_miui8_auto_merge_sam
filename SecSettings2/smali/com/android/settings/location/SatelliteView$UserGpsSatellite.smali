.class public Lcom/android/settings_ex/location/SatelliteView$UserGpsSatellite;
.super Ljava/lang/Object;
.source "SatelliteView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/location/SatelliteView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserGpsSatellite"
.end annotation


# instance fields
.field private mSV:I

.field private mSat:Landroid/location/GpsSatellite;


# direct methods
.method public constructor <init>(Landroid/location/GpsSatellite;I)V
    .locals 0
    .param p1, "sat"    # Landroid/location/GpsSatellite;
    .param p2, "sv"    # I

    .prologue
    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    iput-object p1, p0, Lcom/android/settings_ex/location/SatelliteView$UserGpsSatellite;->mSat:Landroid/location/GpsSatellite;

    .line 448
    iput p2, p0, Lcom/android/settings_ex/location/SatelliteView$UserGpsSatellite;->mSV:I

    .line 449
    return-void
.end method


# virtual methods
.method public getSat()Landroid/location/GpsSatellite;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/settings_ex/location/SatelliteView$UserGpsSatellite;->mSat:Landroid/location/GpsSatellite;

    return-object v0
.end method
