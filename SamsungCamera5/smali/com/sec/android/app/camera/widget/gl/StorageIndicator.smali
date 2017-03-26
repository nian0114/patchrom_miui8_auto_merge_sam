.class public Lcom/sec/android/app/camera/widget/gl/StorageIndicator;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "StorageIndicator.java"


# instance fields
.field private mImageIcon:Lcom/samsung/android/glview/GLImage;

.field private mMMCIcon:Lcom/samsung/android/glview/GLImage;


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FF)V
    .locals 4
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 35
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    const v1, 0x7f02021e

    invoke-direct {v0, p1, v2, v2, v1}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StorageIndicator;->mMMCIcon:Lcom/samsung/android/glview/GLImage;

    .line 36
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StorageIndicator;->mMMCIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 37
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    const v1, 0x7f02021b

    invoke-direct {v0, p1, v2, v2, v1}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StorageIndicator;->mImageIcon:Lcom/samsung/android/glview/GLImage;

    .line 38
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StorageIndicator;->mImageIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 40
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StorageIndicator;->mMMCIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/StorageIndicator;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 41
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StorageIndicator;->mImageIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/StorageIndicator;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 42
    return-void
.end method


# virtual methods
.method public setStorage(I)V
    .locals 3
    .param p1, "storage"    # I

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 45
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 50
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StorageIndicator;->mImageIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 51
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StorageIndicator;->mMMCIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_0

    .line 54
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StorageIndicator;->mMMCIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    .line 55
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/StorageIndicator;->mImageIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
