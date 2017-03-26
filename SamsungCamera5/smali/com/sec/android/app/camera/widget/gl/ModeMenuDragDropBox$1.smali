.class Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox$1;
.super Ljava/lang/Object;
.source "ModeMenuDragDropBox.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$AnimationEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->relocateItem(Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;Lcom/samsung/android/glview/GLView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox$1;->this$0:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/samsung/android/glview/GLView;Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x1

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox$1;->this$0:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->mRelocating:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->access$002(Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;Z)Z

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox$1;->this$0:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->setDroppability(Z)V

    .line 251
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox$1;->this$0:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->mView:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox$1;->this$0:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->mView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLView;->setClipping(Z)V

    .line 254
    :cond_0
    return-void
.end method

.method public onAnimationStart(Lcom/samsung/android/glview/GLView;Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 259
    return-void
.end method
