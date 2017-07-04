.class public Lcom/sec/android/app/camera/widget/gl/FlashIndicator;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "FlashIndicator.java"


# instance fields
.field private mFlashIcon:Lcom/samsung/android/glview/GLImage;

.field private mFlashRedEye:Lcom/samsung/android/glview/GLImage;


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FF)V
    .locals 5
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 33
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    const v1, 0x7f020218

    invoke-direct {v0, p1, v2, v2, v1}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FlashIndicator;->mFlashIcon:Lcom/samsung/android/glview/GLImage;

    .line 34
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    const v1, 0x7f020219

    invoke-direct {v0, p1, v2, v2, v1}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FlashIndicator;->mFlashRedEye:Lcom/samsung/android/glview/GLImage;

    .line 36
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FlashIndicator;->mFlashIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/FlashIndicator;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FlashIndicator;->mFlashRedEye:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/FlashIndicator;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FlashIndicator;->mFlashIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(IZ)V

    .line 40
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FlashIndicator;->mFlashRedEye:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(IZ)V

    .line 41
    return-void
.end method


# virtual methods
.method public setFlashStatus(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 44
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 51
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FlashIndicator;->mFlashIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(IZ)V

    .line 52
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FlashIndicator;->mFlashRedEye:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(IZ)V

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    goto :goto_0

    .line 55
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FlashIndicator;->mFlashIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(IZ)V

    .line 56
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FlashIndicator;->mFlashRedEye:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(IZ)V

    goto :goto_0

    .line 59
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FlashIndicator;->mFlashIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(IZ)V

    .line 60
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FlashIndicator;->mFlashRedEye:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(IZ)V

    goto :goto_0

    .line 63
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FlashIndicator;->mFlashRedEye:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(IZ)V

    .line 64
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FlashIndicator;->mFlashIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(IZ)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
