.class Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton$4;
.super Ljava/lang/Object;
.source "ItemThumbnailButton.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$FocusListener;


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
    .line 289
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton$4;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChanged(Lcom/samsung/android/glview/GLView;I)Z
    .locals 6
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "focusStatus"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 292
    sget-boolean v4, Lcom/sec/android/app/camera/feature/Feature;->KEYPAD:Z

    if-eqz v4, :cond_0

    .line 293
    if-ne p2, v2, :cond_1

    .line 294
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton$4;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;

    # getter for: Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButtonHighlight:Lcom/samsung/android/glview/GLNinePatch;
    invoke-static {v4}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->access$000(Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;)Lcom/samsung/android/glview/GLNinePatch;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 295
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getNextFocusUpId()I

    move-result v0

    .line 296
    .local v0, "mCloseButtonId":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 297
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton$4;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/samsung/android/glview/GLContext;->findViewById(I)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    .line 298
    .local v1, "mCloseButtonView":Lcom/samsung/android/glview/GLView;
    if-eqz v1, :cond_0

    .line 299
    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLView;->setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z

    .line 305
    .end local v0    # "mCloseButtonId":I
    .end local v1    # "mCloseButtonView":Lcom/samsung/android/glview/GLView;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton$4;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;

    # getter for: Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;
    invoke-static {v4}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->access$1000(Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;)Lcom/samsung/android/glview/GLView$FocusListener;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 306
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton$4;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;

    # getter for: Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mFocusListener:Lcom/samsung/android/glview/GLView$FocusListener;
    invoke-static {v3}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->access$1100(Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;)Lcom/samsung/android/glview/GLView$FocusListener;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/samsung/android/glview/GLView$FocusListener;->onFocusChanged(Lcom/samsung/android/glview/GLView;I)Z

    .line 309
    :goto_1
    return v2

    .line 302
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton$4;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;

    # getter for: Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->mButtonHighlight:Lcom/samsung/android/glview/GLNinePatch;
    invoke-static {v4}, Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;->access$000(Lcom/sec/android/app/camera/widget/gl/ItemThumbnailButton;)Lcom/samsung/android/glview/GLNinePatch;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v2, v3

    .line 309
    goto :goto_1
.end method
