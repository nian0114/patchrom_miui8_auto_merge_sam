.class Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu$2;
.super Ljava/lang/Object;
.source "EffectLevelSliderMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLSlider$SliderChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu$2;->this$0:Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStepChanged(I)V
    .locals 1
    .param p1, "step"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu$2;->this$0:Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setEffectStrengthLevel(I)V

    .line 109
    return-void
.end method
