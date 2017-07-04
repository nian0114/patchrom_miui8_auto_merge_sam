.class public Lcom/sec/android/app/camera/widget/CameraToast;
.super Ljava/lang/Object;
.source "CameraToast.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeLocationToast(Lcom/sec/android/app/camera/interfaces/CameraContext;Ljava/lang/String;I)Landroid/widget/Toast;
    .locals 8
    .param p0, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "duration"    # I

    .prologue
    const/16 v7, 0x50

    const/4 v6, 0x0

    .line 42
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 43
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f04000b

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 44
    .local v1, "layout":Landroid/view/View;
    const v4, 0x7f0e0013

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 45
    .local v2, "text":Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    new-instance v3, Landroid/widget/Toast;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 48
    .local v3, "toast":Landroid/widget/Toast;
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v4

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_0

    .line 49
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09025e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v7, v6, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 53
    :goto_0
    invoke-virtual {v3, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 54
    invoke-virtual {v3, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 56
    return-object v3

    .line 51
    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09025d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v7, v6, v4}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_0
.end method

.method public static makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;
    .locals 6
    .param p0, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p1, "strId"    # I
    .param p2, "duration"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ShowToast"
        }
    .end annotation

    .prologue
    const/16 v5, 0x50

    const/4 v4, 0x0

    .line 61
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 62
    .local v1, "toast":Landroid/widget/Toast;
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    .line 63
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09025e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v5, v4, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 67
    :goto_0
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    .line 68
    .local v0, "mGLContext":Lcom/samsung/android/glview/GLContext;
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->isTalkBackEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isBargeInEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLContext;->speakTts(Ljava/lang/String;)V

    .line 73
    :cond_0
    return-object v1

    .line 65
    .end local v0    # "mGLContext":Lcom/samsung/android/glview/GLContext;
    :cond_1
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09025d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v5, v4, v2}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_0
.end method

.method public static makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;Ljava/lang/String;I)Landroid/widget/Toast;
    .locals 6
    .param p0, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "duration"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ShowToast"
        }
    .end annotation

    .prologue
    const/16 v5, 0x50

    const/4 v4, 0x0

    .line 78
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 79
    .local v1, "toast":Landroid/widget/Toast;
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    .line 80
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09025e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v5, v4, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 84
    :goto_0
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    .line 85
    .local v0, "mGLContext":Lcom/samsung/android/glview/GLContext;
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->isTalkBackEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isBargeInEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLContext;->speakTts(Ljava/lang/String;)V

    .line 90
    :cond_0
    return-object v1

    .line 82
    .end local v0    # "mGLContext":Lcom/samsung/android/glview/GLContext;
    :cond_1
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09025d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v5, v4, v2}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_0
.end method
