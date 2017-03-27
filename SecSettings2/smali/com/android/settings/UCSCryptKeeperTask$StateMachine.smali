.class public Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;
.super Ljava/lang/Object;
.source "UCSCryptKeeperTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/UCSCryptKeeperTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StateMachine"
.end annotation


# instance fields
.field final CONFIRM_PIN:I

.field final DONE:I

.field final ENTER_PIN:I

.field final ENTER_PUK:I

.field protected state:I

.field final synthetic this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/UCSCryptKeeperTask;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 328
    iput-object p1, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    iput v1, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;->ENTER_PUK:I

    .line 330
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;->ENTER_PIN:I

    .line 331
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;->CONFIRM_PIN:I

    .line 332
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;->DONE:I

    .line 333
    iput v1, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;->state:I

    return-void
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    .prologue
    .line 442
    iget v0, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;->state:I

    return v0
.end method

.method public next()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 336
    const/4 v0, 0x0

    .line 337
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    sget-object v2, Lcom/android/settings_ex/UCMHelpUtils;->miscInfo:Ljava/lang/String;

    const/4 v3, 0x0

    # invokes: Lcom/android/settings_ex/UCSCryptKeeperTask;->setMessageInUcsInfo(Ljava/lang/String;I)V
    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/UCSCryptKeeperTask;->access$200(Lcom/android/settings_ex/UCSCryptKeeperTask;Ljava/lang/String;I)V

    .line 338
    iget v1, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;->state:I

    if-nez v1, :cond_3

    .line 339
    iget-object v1, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    invoke-virtual {v1}, Lcom/android/settings_ex/UCSCryptKeeperTask;->checkPuk()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 340
    iput v4, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;->state:I

    .line 341
    const v0, 0x7f0e1748

    .line 345
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    invoke-virtual {v1, v4}, Lcom/android/settings_ex/UCSCryptKeeperTask;->resetPasswordText(Z)V

    .line 368
    :goto_1
    if-eqz v0, :cond_0

    .line 369
    iget-object v1, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/UCSCryptKeeperTask;->setHintOrMessageText(I)V

    .line 372
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    # getter for: Lcom/android/settings_ex/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings_ex/UCSCryptKeeperTask;->access$400(Lcom/android/settings_ex/UCSCryptKeeperTask;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 373
    iget-object v1, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    # getter for: Lcom/android/settings_ex/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings_ex/UCSCryptKeeperTask;->access$400(Lcom/android/settings_ex/UCSCryptKeeperTask;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 374
    iget-object v1, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    # getter for: Lcom/android/settings_ex/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings_ex/UCSCryptKeeperTask;->access$400(Lcom/android/settings_ex/UCSCryptKeeperTask;)Landroid/widget/EditText;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine$1;-><init>(Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 384
    :cond_1
    return-void

    .line 343
    :cond_2
    const v0, 0x7f0e173e

    goto :goto_0

    .line 346
    :cond_3
    iget v1, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;->state:I

    if-ne v1, v4, :cond_5

    .line 347
    iget-object v1, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    invoke-virtual {v1}, Lcom/android/settings_ex/UCSCryptKeeperTask;->checkPin()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 348
    iput v5, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;->state:I

    .line 349
    const v0, 0x7f0e1747

    .line 353
    :goto_2
    iget-object v1, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    invoke-virtual {v1, v4}, Lcom/android/settings_ex/UCSCryptKeeperTask;->resetPasswordText(Z)V

    goto :goto_1

    .line 351
    :cond_4
    const v0, 0x7f0e173d

    goto :goto_2

    .line 354
    :cond_5
    iget v1, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;->state:I

    if-ne v1, v5, :cond_7

    .line 355
    iget-object v1, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    invoke-virtual {v1}, Lcom/android/settings_ex/UCSCryptKeeperTask;->confirmPin()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 356
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;->state:I

    .line 357
    const v0, 0x7f0e173f

    .line 358
    iget-object v1, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    # invokes: Lcom/android/settings_ex/UCSCryptKeeperTask;->unlockUCSPUK()V
    invoke-static {v1}, Lcom/android/settings_ex/UCSCryptKeeperTask;->access$300(Lcom/android/settings_ex/UCSCryptKeeperTask;)V

    .line 359
    iget-object v1, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    invoke-virtual {v1, v4}, Lcom/android/settings_ex/UCSCryptKeeperTask;->resetPasswordText(Z)V

    goto :goto_1

    .line 361
    :cond_6
    iput v4, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;->state:I

    .line 362
    const v0, 0x7f0e07c9

    .line 363
    iget-object v1, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    # getter for: Lcom/android/settings_ex/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings_ex/UCSCryptKeeperTask;->access$400(Lcom/android/settings_ex/UCSCryptKeeperTask;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    goto :goto_1

    .line 366
    :cond_7
    iget-object v1, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    invoke-virtual {v1, v4}, Lcom/android/settings_ex/UCSCryptKeeperTask;->resetPasswordText(Z)V

    goto :goto_1
.end method

.method reset()V
    .locals 4

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    const-string v1, ""

    iput-object v1, v0, Lcom/android/settings_ex/UCSCryptKeeperTask;->mPinText:Ljava/lang/String;

    .line 388
    iget-object v0, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    const-string v1, ""

    iput-object v1, v0, Lcom/android/settings_ex/UCSCryptKeeperTask;->mPukText:Ljava/lang/String;

    .line 389
    iget-object v0, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/UCSCryptKeeperTask;->resetPasswordText(Z)V

    .line 390
    iget v0, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 392
    iget-object v0, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    const v1, 0x7f0e1745

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/UCSCryptKeeperTask;->setHintOrMessageText(I)V

    .line 394
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;->state:I

    .line 399
    iget-object v0, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    # getter for: Lcom/android/settings_ex/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings_ex/UCSCryptKeeperTask;->access$400(Lcom/android/settings_ex/UCSCryptKeeperTask;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 400
    iget-object v0, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    # getter for: Lcom/android/settings_ex/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings_ex/UCSCryptKeeperTask;->access$400(Lcom/android/settings_ex/UCSCryptKeeperTask;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 401
    iget-object v0, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    # getter for: Lcom/android/settings_ex/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings_ex/UCSCryptKeeperTask;->access$400(Lcom/android/settings_ex/UCSCryptKeeperTask;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine$2;-><init>(Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 411
    :cond_1
    return-void
.end method

.method reset(I)V
    .locals 4
    .param p1, "remainCnt"    # I

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    const-string v1, ""

    iput-object v1, v0, Lcom/android/settings_ex/UCSCryptKeeperTask;->mPinText:Ljava/lang/String;

    .line 415
    iget-object v0, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    const-string v1, ""

    iput-object v1, v0, Lcom/android/settings_ex/UCSCryptKeeperTask;->mPukText:Ljava/lang/String;

    .line 416
    iget-object v0, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/UCSCryptKeeperTask;->resetPasswordText(Z)V

    .line 417
    iget v0, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 420
    iget-object v0, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    iget-object v1, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    const v2, 0x7f0e1745

    invoke-virtual {v1, v2, p1}, Lcom/android/settings_ex/UCSCryptKeeperTask;->getUCSFailedAttemptMessage(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/UCSCryptKeeperTask;->setHintOrMessageText(Ljava/lang/CharSequence;)V

    .line 422
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;->state:I

    .line 427
    iget-object v0, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    # getter for: Lcom/android/settings_ex/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings_ex/UCSCryptKeeperTask;->access$400(Lcom/android/settings_ex/UCSCryptKeeperTask;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    # getter for: Lcom/android/settings_ex/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings_ex/UCSCryptKeeperTask;->access$400(Lcom/android/settings_ex/UCSCryptKeeperTask;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 429
    iget-object v0, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    # getter for: Lcom/android/settings_ex/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings_ex/UCSCryptKeeperTask;->access$400(Lcom/android/settings_ex/UCSCryptKeeperTask;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine$3;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine$3;-><init>(Lcom/android/settings_ex/UCSCryptKeeperTask$StateMachine;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 439
    :cond_1
    return-void
.end method
