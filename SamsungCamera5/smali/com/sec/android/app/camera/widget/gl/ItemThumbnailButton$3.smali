.class Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton$3;
.super Ljava/lang/Object;
.source "ItemThumbnailButton.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$TouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->refreshButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton$3;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 274
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton$3;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;

    # getter for: Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;
    invoke-static {v1}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->access$600(Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;)Lcom/samsung/android/glview/GLView$TouchListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 275
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 276
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton$3;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;

    # getter for: Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButtonHighlight:Lcom/samsung/android/glview/GLNinePatch;
    invoke-static {v1}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->access$000(Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;)Lcom/samsung/android/glview/GLNinePatch;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 284
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton$3;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;

    # getter for: Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->access$900(Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;)Lcom/samsung/android/glview/GLView$TouchListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton$3;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;

    invoke-interface {v0, v1, p2}, Lcom/samsung/android/glview/GLView$TouchListener;->onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 286
    :cond_1
    return v0

    .line 277
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 278
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton$3;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;

    # getter for: Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v1}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->access$800(Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton$3;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;

    # getter for: Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mCommandId:I
    invoke-static {v2}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->access$700(Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;)I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValue(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton$3;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;

    # getter for: Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mCommandId:I
    invoke-static {v2}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->access$700(Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;)I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 279
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton$3;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;

    # getter for: Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButtonHighlight:Lcom/samsung/android/glview/GLNinePatch;
    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->access$000(Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;)Lcom/samsung/android/glview/GLNinePatch;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    goto :goto_0

    .line 281
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton$3;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;

    # getter for: Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButtonHighlight:Lcom/samsung/android/glview/GLNinePatch;
    invoke-static {v1}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->access$000(Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;)Lcom/samsung/android/glview/GLNinePatch;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    goto :goto_0
.end method
