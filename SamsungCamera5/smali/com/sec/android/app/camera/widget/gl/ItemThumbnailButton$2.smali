.class Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton$2;
.super Ljava/lang/Object;
.source "ItemThumbnailButton.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$ClickListener;


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
    .line 255
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton$2;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 4
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    const/4 v1, 0x0

    .line 258
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton$2;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;

    # getter for: Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;
    invoke-static {v2}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->access$300(Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;)Lcom/samsung/android/glview/GLView$ClickListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 259
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton$2;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;

    # getter for: Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mClickListener:Lcom/samsung/android/glview/GLView$ClickListener;
    invoke-static {v2}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->access$400(Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;)Lcom/samsung/android/glview/GLView$ClickListener;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton$2;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;

    invoke-interface {v2, v3}, Lcom/samsung/android/glview/GLView$ClickListener;->onClick(Lcom/samsung/android/glview/GLView;)Z

    move-result v0

    .line 260
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 261
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton$2;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;

    # getter for: Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;
    invoke-static {v2}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->access$500(Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;)Lcom/samsung/android/glview/GLSelectButton;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 262
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton$2;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;

    # getter for: Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButton:Lcom/samsung/android/glview/GLSelectButton;
    invoke-static {v2}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->access$500(Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;)Lcom/samsung/android/glview/GLSelectButton;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSelectButton;->setSelected(Z)V

    .line 263
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton$2;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;

    # getter for: Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButtonHighlight:Lcom/samsung/android/glview/GLNinePatch;
    invoke-static {v2}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->access$000(Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;)Lcom/samsung/android/glview/GLNinePatch;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 268
    .end local v0    # "result":Z
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
