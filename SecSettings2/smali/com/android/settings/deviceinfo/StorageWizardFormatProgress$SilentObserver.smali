.class Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$SilentObserver;
.super Landroid/content/pm/IPackageMoveObserver$Stub;
.source "StorageWizardFormatProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SilentObserver"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 309
    invoke-direct {p0}, Landroid/content/pm/IPackageMoveObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$1;

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$SilentObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreated(ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "moveId"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 313
    return-void
.end method

.method public onStatusChanged(IIJ)V
    .locals 0
    .param p1, "moveId"    # I
    .param p2, "status"    # I
    .param p3, "estMillis"    # J

    .prologue
    .line 318
    return-void
.end method
