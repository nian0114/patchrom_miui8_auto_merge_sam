.class public interface abstract Lcom/sec/android/app/camera/interfaces/BaseMenuController;
.super Ljava/lang/Object;
.source "BaseMenuController.java"


# static fields
.field public static final ALL:I = -0x1

.field public static final INDICATORS:I = 0x40

.field public static final OVERLAY_LAYOUT:I = 0x80

.field public static final RECORDING_BUTTON:I = 0x2

.field public static final SHOOTING_MODE_BUTTON:I = 0x10

.field public static final SHOOTING_MODE_VIEW:I = 0x100

.field public static final SHUTTER_BUTTON:I = 0x1

.field public static final SIDE_QUICK_MENU:I = 0x20

.field public static final SWITCH_CAMERA_BUTTON:I = 0x4

.field public static final THUMBNAIL_BUTTON:I = 0x8


# virtual methods
.method public abstract clearSideQuickSetting()V
.end method

.method public abstract disableView(I)V
.end method

.method public abstract enableRecordingAnimation()V
.end method

.method public abstract enableView(I)V
.end method

.method public abstract endShutterProgressWheel()V
.end method

.method public abstract getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;
.end method

.method public abstract hideCaptureProgressText()V
.end method

.method public abstract hideQuickView()V
.end method

.method public abstract hideReview(Z)V
.end method

.method public abstract hideView(I)V
.end method

.method public abstract isAnimationRunning()Z
.end method

.method public abstract isDimmed(I)Z
.end method

.method public abstract isPressed(I)Z
.end method

.method public abstract isQuickViewImageUpdated()Z
.end method

.method public abstract isQuickViewShowing()Z
.end method

.method public abstract isReviewShowing()Z
.end method

.method public abstract isShareViaWorking()Z
.end method

.method public abstract isShutterProgressWheelVisible()Z
.end method

.method public abstract onQuickViewTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract registerEAM()V
.end method

.method public abstract requestFocus(I)V
.end method

.method public abstract setBaseMenuAlpha(F)V
.end method

.method public abstract setCapturingProgress(I)V
.end method

.method public abstract setCoverCamera(Z)V
.end method

.method public abstract setDim(IZ)V
.end method

.method public abstract setRecordingButtonForAnimation(Lcom/samsung/android/glview/GLButton;Lcom/samsung/android/glview/GLButton;Lcom/samsung/android/glview/GLButton;)V
.end method

.method public abstract setShutterProgress(I)V
.end method

.method public abstract setThumbnailOrientation(I)V
.end method

.method public abstract setThumbnailUri(Landroid/net/Uri;)V
.end method

.method public abstract showCaptureProgressText()V
.end method

.method public abstract showQuickView()V
.end method

.method public abstract showReview(Landroid/graphics/Bitmap;ILjava/lang/String;Landroid/net/Uri;)V
.end method

.method public abstract showView(I)V
.end method

.method public abstract startShutterProgressWheel()V
.end method

.method public abstract unregisterEAM()V
.end method

.method public abstract updateQuickView(Landroid/graphics/Bitmap;ILjava/lang/String;Landroid/net/Uri;)V
.end method

.method public varargs abstract updateSideQuickSetting([I)V
.end method

.method public abstract updateThumbnailButton()V
.end method

.method public abstract updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V
.end method
