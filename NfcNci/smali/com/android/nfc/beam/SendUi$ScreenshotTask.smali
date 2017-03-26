.class final Lcom/android/nfc/beam/SendUi$ScreenshotTask;
.super Landroid/os/AsyncTask;
.source "SendUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/beam/SendUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ScreenshotTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/beam/SendUi;


# direct methods
.method constructor <init>(Lcom/android/nfc/beam/SendUi;)V
    .locals 0

    .prologue
    .line 574
    iput-object p1, p0, Lcom/android/nfc/beam/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/beam/SendUi;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/beam/SendUi;

    invoke-virtual {v0}, Lcom/android/nfc/beam/SendUi;->createScreenshot()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 574
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/nfc/beam/SendUi$ScreenshotTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 583
    iget-object v3, p0, Lcom/android/nfc/beam/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/beam/SendUi;

    iget-object v3, v3, Lcom/android/nfc/beam/SendUi;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    invoke-static {v3}, Lcom/android/nfc/beam/SendUi;->getDegreesForRotation(I)F

    move-result v0

    .line 585
    .local v0, "degrees":F
    if-nez p1, :cond_1

    .line 587
    const-string v3, "SendUi"

    const-string v4, "fail to screen capture, so use dummy image"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    const/high16 v3, 0x42b40000    # 90.0f

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_0

    const/high16 v3, 0x43870000    # 270.0f

    cmpl-float v3, v0, v3

    if-nez v3, :cond_2

    .line 591
    :cond_0
    iget-object v3, p0, Lcom/android/nfc/beam/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/beam/SendUi;

    iget-object v3, v3, Lcom/android/nfc/beam/SendUi;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02000a

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 592
    const-string v3, "SendUi"

    const-string v4, "Landscape image"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/nfc/beam/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/beam/SendUi;

    iget v3, v3, Lcom/android/nfc/beam/SendUi;->mState:I

    if-ne v3, v1, :cond_3

    .line 603
    iget-object v2, p0, Lcom/android/nfc/beam/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/beam/SendUi;

    iput-object p1, v2, Lcom/android/nfc/beam/SendUi;->mScreenshotBitmap:Landroid/graphics/Bitmap;

    .line 604
    iget-object v2, p0, Lcom/android/nfc/beam/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/beam/SendUi;

    iput v6, v2, Lcom/android/nfc/beam/SendUi;->mState:I

    .line 617
    :goto_1
    return-void

    .line 596
    :cond_2
    iget-object v3, p0, Lcom/android/nfc/beam/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/beam/SendUi;

    iget-object v3, v3, Lcom/android/nfc/beam/SendUi;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020009

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 597
    const-string v3, "SendUi"

    const-string v4, "Portrait image"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 605
    :cond_3
    iget-object v3, p0, Lcom/android/nfc/beam/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/beam/SendUi;

    iget v3, v3, Lcom/android/nfc/beam/SendUi;->mState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    .line 607
    iget-object v3, p0, Lcom/android/nfc/beam/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/beam/SendUi;

    iput v2, v3, Lcom/android/nfc/beam/SendUi;->mState:I

    goto :goto_1

    .line 608
    :cond_4
    iget-object v3, p0, Lcom/android/nfc/beam/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/beam/SendUi;

    iget v3, v3, Lcom/android/nfc/beam/SendUi;->mState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lcom/android/nfc/beam/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/beam/SendUi;

    iget v3, v3, Lcom/android/nfc/beam/SendUi;->mState:I

    if-ne v3, v5, :cond_7

    .line 610
    :cond_5
    iget-object v3, p0, Lcom/android/nfc/beam/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/beam/SendUi;

    iput-object p1, v3, Lcom/android/nfc/beam/SendUi;->mScreenshotBitmap:Landroid/graphics/Bitmap;

    .line 611
    iget-object v3, p0, Lcom/android/nfc/beam/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/beam/SendUi;

    iget v3, v3, Lcom/android/nfc/beam/SendUi;->mState:I

    if-ne v3, v5, :cond_6

    .line 612
    .local v1, "requestTap":Z
    :goto_2
    iget-object v2, p0, Lcom/android/nfc/beam/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/beam/SendUi;

    iput v6, v2, Lcom/android/nfc/beam/SendUi;->mState:I

    .line 613
    iget-object v2, p0, Lcom/android/nfc/beam/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/beam/SendUi;

    invoke-virtual {v2, v1}, Lcom/android/nfc/beam/SendUi;->showPreSend(Z)V

    goto :goto_1

    .end local v1    # "requestTap":Z
    :cond_6
    move v1, v2

    .line 611
    goto :goto_2

    .line 615
    :cond_7
    const-string v2, "SendUi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid state on screenshot completion: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/nfc/beam/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/beam/SendUi;

    iget v4, v4, Lcom/android/nfc/beam/SendUi;->mState:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 574
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/nfc/beam/SendUi$ScreenshotTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
