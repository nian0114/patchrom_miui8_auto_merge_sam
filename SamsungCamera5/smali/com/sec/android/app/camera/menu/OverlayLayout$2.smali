.class Lcom/sec/android/app/camera/menu/OverlayLayout$2;
.super Ljava/lang/Object;
.source "OverlayLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/OverlayLayout;->hideFaceRect(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/OverlayLayout;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$2;->this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 241
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$2;->this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/OverlayLayout;->access$100(Lcom/sec/android/app/camera/menu/OverlayLayout;)[Lcom/samsung/android/glview/GLCircle;

    move-result-object v1

    aget-object v1, v1, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLCircle;->setVisibility(I)V

    .line 243
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$2;->this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayLayout;->mFaceCircle:[Lcom/samsung/android/glview/GLCircle;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/OverlayLayout;->access$100(Lcom/sec/android/app/camera/menu/OverlayLayout;)[Lcom/samsung/android/glview/GLCircle;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLCircle;->resetTranslate()V

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 249
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 253
    return-void
.end method
