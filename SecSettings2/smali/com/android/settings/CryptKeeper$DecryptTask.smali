.class Lcom/android/settings_ex/CryptKeeper$DecryptTask;
.super Landroid/os/AsyncTask;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecryptTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/CryptKeeper;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/CryptKeeper;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/CryptKeeper;Lcom/android/settings_ex/CryptKeeper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/CryptKeeper;
    .param p2, "x1"    # Lcom/android/settings_ex/CryptKeeper$1;

    .prologue
    .line 257
    invoke-direct {p0, p1}, Lcom/android/settings_ex/CryptKeeper$DecryptTask;-><init>(Lcom/android/settings_ex/CryptKeeper;)V

    return-void
.end method

.method private hide(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 259
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    invoke-virtual {v1, p1}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 260
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 261
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 263
    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 6
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 273
    iget-object v3, p0, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    # invokes: Lcom/android/settings_ex/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;
    invoke-static {v3}, Lcom/android/settings_ex/CryptKeeper;->access$400(Lcom/android/settings_ex/CryptKeeper;)Landroid/os/storage/IMountService;

    move-result-object v2

    .line 276
    .local v2, "service":Landroid/os/storage/IMountService;
    if-eqz v2, :cond_0

    .line 277
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, p1, v3

    invoke-interface {v2, v3}, Landroid/os/storage/IMountService;->decryptStorage(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 278
    .local v1, "ret":Ljava/lang/Integer;
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/String;->clear()V

    .line 279
    # getter for: Lcom/android/settings_ex/CryptKeeper;->mSavedPassword:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings_ex/CryptKeeper;->access$500()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    .end local v1    # "ret":Ljava/lang/Integer;
    :goto_0
    return-object v1

    .line 282
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "CryptKeeper"

    const-string v4, "Error while decrypting..."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 288
    aget-object v3, p1, v5

    invoke-virtual {v3}, Ljava/lang/String;->clear()V

    .line 290
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 257
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6
    .param p1, "failedAttempts"    # Ljava/lang/Integer;

    .prologue
    const/4 v1, 0x0

    .line 297
    # setter for: Lcom/android/settings_ex/CryptKeeper;->mfailedAttemptCounts:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/android/settings_ex/CryptKeeper;->access$002(Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 299
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    .line 302
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    # getter for: Lcom/android/settings_ex/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v1}, Lcom/android/settings_ex/CryptKeeper;->access$200(Lcom/android/settings_ex/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    # getter for: Lcom/android/settings_ex/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v1}, Lcom/android/settings_ex/CryptKeeper;->access$200(Lcom/android/settings_ex/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    # getter for: Lcom/android/settings_ex/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/settings_ex/CryptKeeper;->access$600(Lcom/android/settings_ex/CryptKeeper;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 304
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    # getter for: Lcom/android/settings_ex/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v1}, Lcom/android/settings_ex/CryptKeeper;->access$200(Lcom/android/settings_ex/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    # getter for: Lcom/android/settings_ex/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/settings_ex/CryptKeeper;->access$600(Lcom/android/settings_ex/CryptKeeper;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 306
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    const v2, 0x7f0d0147

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 307
    .local v0, "status":Landroid/widget/TextView;
    const v1, 0x7f0e0c2a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 309
    const-string v1, "security.ode.cryptkeeper.status"

    const-string v2, "passed"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const v1, 0x7f0d0151

    invoke-direct {p0, v1}, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->hide(I)V

    .line 312
    const v1, 0x7f0d0164

    invoke-direct {p0, v1}, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->hide(I)V

    .line 313
    const v1, 0x7f0d0111

    invoke-direct {p0, v1}, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->hide(I)V

    .line 314
    const v1, 0x7f0d014f

    invoke-direct {p0, v1}, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->hide(I)V

    .line 315
    const v1, 0x7f0d0146

    invoke-direct {p0, v1}, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->hide(I)V

    .line 329
    .end local v0    # "status":Landroid/widget/TextView;
    :goto_0
    return-void

    .line 316
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    # getter for: Lcom/android/settings_ex/CryptKeeper;->mMaxFailedAttempts:I
    invoke-static {}, Lcom/android/settings_ex/CryptKeeper;->access$700()I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 318
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    # invokes: Lcom/android/settings_ex/CryptKeeper;->wipeStorage()V
    invoke-static {v1}, Lcom/android/settings_ex/CryptKeeper;->access$800(Lcom/android/settings_ex/CryptKeeper;)V

    goto :goto_0

    .line 319
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 323
    new-instance v2, Lcom/android/settings_ex/CryptKeeper$ValidationTask;

    iget-object v3, p0, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    invoke-direct {v2, v3, v1}, Lcom/android/settings_ex/CryptKeeper$ValidationTask;-><init>(Lcom/android/settings_ex/CryptKeeper;Lcom/android/settings_ex/CryptKeeper$1;)V

    check-cast v1, [Ljava/lang/Void;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/CryptKeeper$ValidationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 327
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    # invokes: Lcom/android/settings_ex/CryptKeeper;->handleBadAttempt(Ljava/lang/Integer;)V
    invoke-static {v1, p1}, Lcom/android/settings_ex/CryptKeeper;->access$100(Lcom/android/settings_ex/CryptKeeper;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 257
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 267
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 268
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    # invokes: Lcom/android/settings_ex/CryptKeeper;->beginAttempt()V
    invoke-static {v0}, Lcom/android/settings_ex/CryptKeeper;->access$300(Lcom/android/settings_ex/CryptKeeper;)V

    .line 269
    return-void
.end method
