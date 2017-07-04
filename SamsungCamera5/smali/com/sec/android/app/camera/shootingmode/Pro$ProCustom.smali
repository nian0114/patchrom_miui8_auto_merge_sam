.class Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;
.super Ljava/lang/Object;
.source "Pro.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/Pro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProCustom"
.end annotation


# instance fields
.field private customId:I

.field private customKey:Ljava/lang/String;

.field private mColorTune:I

.field private mExposureValue:I

.field private mISO:I

.field private mKelvin:I

.field private mManualFocus:I

.field private mShutterSpeed:I

.field private mWB:I

.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/Pro;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/shootingmode/Pro;Ljava/lang/String;I)V
    .locals 1
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    const/4 v0, 0x0

    .line 3565
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3553
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->mExposureValue:I

    .line 3554
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->mShutterSpeed:I

    .line 3555
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->mISO:I

    .line 3556
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->mWB:I

    .line 3557
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->mKelvin:I

    .line 3558
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->mManualFocus:I

    .line 3560
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->mColorTune:I

    .line 3566
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->customKey:Ljava/lang/String;

    .line 3567
    iput p3, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->customId:I

    .line 3568
    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;

    .prologue
    .line 3552
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->getProCustomSettings()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;

    .prologue
    .line 3552
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->saveProCustomSettings()V

    return-void
.end method

.method private getProCustomSettings()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3650
    const-string v4, "Pro"

    const-string v7, "getProCustomSettings"

    invoke-static {v4, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3652
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v4}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1200(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->customKey:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v4, v7, v8}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3653
    .local v2, "prefCustomValue":Ljava/lang/String;
    if-nez v2, :cond_0

    move v4, v5

    .line 3684
    :goto_0
    return v4

    .line 3657
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3658
    .local v3, "splitCustomValue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3660
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->mExposureValue:I

    .line 3661
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->mShutterSpeed:I

    .line 3662
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->mISO:I

    .line 3663
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->mWB:I

    .line 3664
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->mKelvin:I

    .line 3665
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->mManualFocus:I

    .line 3666
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->mColorTune:I

    .line 3668
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->mColorTune:I

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3669
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->mColorTune:I

    # invokes: Lcom/sec/android/app/camera/shootingmode/Pro;->getProColorTune(I)Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;
    invoke-static {v4, v7}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$3700(Lcom/sec/android/app/camera/shootingmode/Pro;I)Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;

    move-result-object v0

    .line 3671
    .local v0, "colorTune":Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v5, v4}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->setColortuneValue(II)V

    .line 3672
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v6, v4}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->setColortuneValue(II)V

    .line 3673
    const/4 v5, 0x2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v5, v4}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->setColortuneValue(II)V

    .line 3674
    const/4 v5, 0x3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v5, v4}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->setColortuneValue(II)V

    .line 3675
    const/4 v5, 0x4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v5, v4}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->setColortuneValue(II)V

    .line 3676
    const/4 v5, 0x5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v5, v4}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->setColortuneValue(II)V

    .line 3678
    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->saveColorTuneValues()V

    .line 3679
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneArray:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$3800(Lcom/sec/android/app/camera/shootingmode/Pro;)Landroid/util/SparseArray;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->mColorTune:I

    invoke-virtual {v4, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3682
    .end local v0    # "colorTune":Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->updateProSettings()V

    move v4, v6

    .line 3684
    goto/16 :goto_0
.end method

.method private saveProCustomSettings()V
    .locals 5

    .prologue
    .line 3688
    const-string v2, "Pro"

    const-string v3, "saveProCustomSettings"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3690
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3692
    .local v1, "sbValue":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1700(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getExposureValue()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->mExposureValue:I

    .line 3693
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1700(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->mShutterSpeed:I

    .line 3694
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1700(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraISO()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->mISO:I

    .line 3695
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1700(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getWhiteBalance()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->mWB:I

    .line 3696
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1700(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getKelvinValue()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->mKelvin:I

    .line 3697
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1700(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->mManualFocus:I

    .line 3698
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1700(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->mColorTune:I

    .line 3700
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->mExposureValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3701
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->mShutterSpeed:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3702
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->mISO:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3703
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->mWB:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3704
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->mKelvin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3705
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->mManualFocus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3706
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->mColorTune:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3708
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->mColorTune:I

    if-eqz v2, :cond_0

    .line 3709
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->mColorTune:I

    # invokes: Lcom/sec/android/app/camera/shootingmode/Pro;->getProColorTune(I)Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;
    invoke-static {v2, v3}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$3700(Lcom/sec/android/app/camera/shootingmode/Pro;I)Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;

    move-result-object v0

    .line 3711
    .local v0, "colorTune":Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3712
    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getColorTuneSliderValues()[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3713
    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getColorTuneSliderValues()[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3714
    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getColorTuneSliderValues()[I

    move-result-object v2

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3715
    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getColorTuneSliderValues()[I

    move-result-object v2

    const/4 v3, 0x3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3716
    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getColorTuneSliderValues()[I

    move-result-object v2

    const/4 v3, 0x4

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3717
    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;->getColorTuneSliderValues()[I

    move-result-object v2

    const/4 v3, 0x5

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3720
    .end local v0    # "colorTune":Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTune;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1200(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->customKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3721
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 3572
    return-void
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 3575
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->customId:I

    return v0
.end method

.method public isProCustomSaved()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3580
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1200(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->customKey:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3581
    .local v0, "prefCustomValue":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 3588
    :cond_0
    :goto_0
    return v1

    .line 3585
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3588
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public updateProSettings()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 3592
    const-string v0, "Pro"

    const-string v1, "updateProSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3595
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1200(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    const/16 v1, 0xe

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->mColorTune:I

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3596
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1200(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    const/16 v1, 0x1f

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->mShutterSpeed:I

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3597
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1200(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    const/16 v1, 0x18

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->mManualFocus:I

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    .line 3599
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1700(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->mExposureValue:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setExposureValue(I)V

    .line 3600
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1700(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->mShutterSpeed:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setShutterSpeed(I)V

    .line 3601
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1700(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->mISO:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraISO(I)V

    .line 3602
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1700(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->mWB:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setWhiteBalance(I)V

    .line 3603
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1700(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->mManualFocus:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFocusLength(I)V

    .line 3604
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1700(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->mKelvin:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setKelvinValue(I)V

    .line 3606
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->mColorTune:I

    # invokes: Lcom/sec/android/app/camera/shootingmode/Pro;->changeColorTuneMenu(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1800(Lcom/sec/android/app/camera/shootingmode/Pro;I)V

    .line 3608
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProSlider;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1900(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/menu/ProSlider;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->mExposureValue:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ProSlider;->updateValue(I)V

    .line 3609
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$2000(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/menu/ProSlider;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->mShutterSpeed:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ProSlider;->updateValue(I)V

    .line 3610
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Pro;->mRecordingShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$2100(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/menu/ProSlider;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->mShutterSpeed:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ProSlider;->updateValue(I)V

    .line 3611
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Pro;->mISOSlider:Lcom/sec/android/app/camera/menu/ProSlider;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$2200(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/menu/ProSlider;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->mISO:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ProSlider;->updateValue(I)V

    .line 3612
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Pro;->mWBSlider:Lcom/sec/android/app/camera/menu/ProSlider;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$2300(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/menu/ProSlider;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->mWB:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ProSlider;->updateValue(I)V

    .line 3613
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusSlider:Lcom/sec/android/app/camera/menu/ProSlider;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$2400(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/menu/ProSlider;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->mManualFocus:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ProSlider;->updateValue(I)V

    .line 3614
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Pro;->mWBSlider:Lcom/sec/android/app/camera/menu/ProSlider;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$2300(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/menu/ProSlider;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->mKelvin:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/ProSlider;->updateKelvin(I)V

    .line 3616
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->mShutterSpeed:I

    if-ne v0, v4, :cond_0

    .line 3617
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$2500(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Pro;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProSlider;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1900(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/menu/ProSlider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProSlider;->getSliderValueText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    .line 3619
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$2600(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Pro;->mShutterSpeedSlider:Lcom/sec/android/app/camera/menu/ProSlider;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$2000(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/menu/ProSlider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProSlider;->getSliderValueText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    .line 3620
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Pro;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$2700(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Pro;->mISOSlider:Lcom/sec/android/app/camera/menu/ProSlider;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$2200(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/menu/ProSlider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProSlider;->getSliderValueText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    .line 3621
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Pro;->mWhiteBalanceButton:Lcom/sec/android/app/camera/widget/gl/ProItem;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$2900(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1700(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getWhiteBalance()I

    move-result v2

    # invokes: Lcom/sec/android/app/camera/shootingmode/Pro;->getKelvinStringFromWBSetting(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$2800(Lcom/sec/android/app/camera/shootingmode/Pro;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    .line 3622
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusButton:Lcom/sec/android/app/camera/widget/gl/ProItem;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$3100(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1700(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result v2

    # invokes: Lcom/sec/android/app/camera/shootingmode/Pro;->getFocusStringFromMFSetting(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$3000(Lcom/sec/android/app/camera/shootingmode/Pro;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Pro;->mManualFocusSlider:Lcom/sec/android/app/camera/menu/ProSlider;
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$2400(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/menu/ProSlider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/ProSlider;->getSliderValueText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 3623
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Pro;->mColorTuneButton:Lcom/sec/android/app/camera/widget/gl/ProItem;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$3300(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1700(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTune()I

    move-result v2

    # invokes: Lcom/sec/android/app/camera/shootingmode/Pro;->getColorTuneString(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$3200(Lcom/sec/android/app/camera/shootingmode/Pro;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    .line 3625
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1700(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v0

    if-eq v0, v4, :cond_2

    .line 3626
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    # invokes: Lcom/sec/android/app/camera/shootingmode/Pro;->setShutterPriorityActivate(Z)V
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$3400(Lcom/sec/android/app/camera/shootingmode/Pro;Z)V

    .line 3631
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1700(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result v0

    if-gez v0, :cond_3

    .line 3632
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1700(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->resetOverriddenFocusMode()V

    .line 3640
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1700(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiAFMode()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 3641
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1700(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result v0

    if-gez v0, :cond_5

    .line 3642
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    # invokes: Lcom/sec/android/app/camera/shootingmode/Pro;->enableMultiAF(Z)V
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$3600(Lcom/sec/android/app/camera/shootingmode/Pro;Z)V

    .line 3647
    :cond_1
    :goto_2
    return-void

    .line 3628
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    # invokes: Lcom/sec/android/app/camera/shootingmode/Pro;->setShutterPriorityActivate(Z)V
    invoke-static {v0, v5}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$3400(Lcom/sec/android/app/camera/shootingmode/Pro;Z)V

    goto :goto_0

    .line 3634
    :cond_3
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_OBJECT_TRACKING_AF:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$3500(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isObjectTrackingAFStarted()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3635
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Pro;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$3500(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopObjectTrackingAF()V

    .line 3637
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Pro;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1700(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->overrideFocusMode(I)V

    goto :goto_1

    .line 3644
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProCustom;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    # invokes: Lcom/sec/android/app/camera/shootingmode/Pro;->enableMultiAF(Z)V
    invoke-static {v0, v5}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$3600(Lcom/sec/android/app/camera/shootingmode/Pro;Z)V

    goto :goto_2
.end method
