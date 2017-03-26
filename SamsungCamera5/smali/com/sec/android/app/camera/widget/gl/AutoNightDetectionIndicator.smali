.class public Lcom/sec/android/app/camera/widget/gl/AutoNightDetectionIndicator;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "AutoNightDetectionIndicator.java"


# static fields
.field public static final LOWLIGHT_DETECTED:I = 0x0

.field public static final LOWLIGHT_NOT_DETECTED:I = 0x1

.field protected static final TAG:Ljava/lang/String; = "AutoNightDetectionIndicator"


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FF)V
    .locals 3
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 35
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    const v1, 0x7f02021d

    invoke-direct {v0, p1, v2, v2, v1}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/AutoNightDetectionIndicator;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/AutoNightDetectionIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setVisibility(I)V

    .line 37
    return-void
.end method


# virtual methods
.method public setAutoNightDetectionIndicatorStatus(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 40
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 46
    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/AutoNightDetectionIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setVisibility(I)V

    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    goto :goto_0

    .line 49
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/AutoNightDetectionIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
