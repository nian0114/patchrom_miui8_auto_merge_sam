.class Lcom/android/settings_ex/CryptKeeper$ValidationTask;
.super Landroid/os/AsyncTask;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValidationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field state:I

.field final synthetic this$0:Lcom/android/settings_ex/CryptKeeper;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/CryptKeeper;)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lcom/android/settings_ex/CryptKeeper$ValidationTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/CryptKeeper;Lcom/android/settings_ex/CryptKeeper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/CryptKeeper;
    .param p2, "x1"    # Lcom/android/settings_ex/CryptKeeper$1;

    .prologue
    .line 433
    invoke-direct {p0, p1}, Lcom/android/settings_ex/CryptKeeper$ValidationTask;-><init>(Lcom/android/settings_ex/CryptKeeper;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v3, 0x1

    .line 438
    iget-object v2, p0, Lcom/android/settings_ex/CryptKeeper$ValidationTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    # invokes: Lcom/android/settings_ex/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;
    invoke-static {v2}, Lcom/android/settings_ex/CryptKeeper;->access$400(Lcom/android/settings_ex/CryptKeeper;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 440
    .local v1, "service":Landroid/os/storage/IMountService;
    :try_start_0
    const-string v2, "CryptKeeper"

    const-string v4, "Validating encryption state."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-interface {v1}, Landroid/os/storage/IMountService;->getEncryptionState()I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/CryptKeeper$ValidationTask;->state:I

    .line 442
    iget v2, p0, Lcom/android/settings_ex/CryptKeeper$ValidationTask;->state:I

    if-ne v2, v3, :cond_0

    .line 443
    const-string v2, "CryptKeeper"

    const-string v4, "Unexpectedly in CryptKeeper even though there is no encryption."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 461
    :goto_0
    return-object v2

    .line 447
    :cond_0
    iget v2, p0, Lcom/android/settings_ex/CryptKeeper$ValidationTask;->state:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    .line 448
    const-string v2, "CryptKeeper"

    const-string v4, "Data partition is damaged during en/decryption"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v2, p0, Lcom/android/settings_ex/CryptKeeper$ValidationTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    const/4 v4, 0x1

    # setter for: Lcom/android/settings_ex/CryptKeeper;->mEncryptionGoneBad:I
    invoke-static {v2, v4}, Lcom/android/settings_ex/CryptKeeper;->access$1002(Lcom/android/settings_ex/CryptKeeper;I)I

    .line 458
    :goto_1
    iget v2, p0, Lcom/android/settings_ex/CryptKeeper$ValidationTask;->state:I

    if-nez v2, :cond_4

    move v2, v3

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 450
    :cond_1
    iget v2, p0, Lcom/android/settings_ex/CryptKeeper$ValidationTask;->state:I

    const/4 v4, -0x6

    if-ne v2, v4, :cond_2

    .line 451
    iget-object v2, p0, Lcom/android/settings_ex/CryptKeeper$ValidationTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    const/4 v4, 0x2

    # setter for: Lcom/android/settings_ex/CryptKeeper;->mEncryptionGoneBad:I
    invoke-static {v2, v4}, Lcom/android/settings_ex/CryptKeeper;->access$1002(Lcom/android/settings_ex/CryptKeeper;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CryptKeeper"

    const-string v4, "Unable to get encryption state properly"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 452
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    iget v2, p0, Lcom/android/settings_ex/CryptKeeper$ValidationTask;->state:I

    const/4 v4, -0x7

    if-ne v2, v4, :cond_3

    .line 453
    iget-object v2, p0, Lcom/android/settings_ex/CryptKeeper$ValidationTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    const/4 v4, 0x4

    # setter for: Lcom/android/settings_ex/CryptKeeper;->mEncryptionGoneBad:I
    invoke-static {v2, v4}, Lcom/android/settings_ex/CryptKeeper;->access$1002(Lcom/android/settings_ex/CryptKeeper;I)I

    goto :goto_1

    .line 455
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/CryptKeeper$ValidationTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    const/4 v4, 0x3

    # setter for: Lcom/android/settings_ex/CryptKeeper;->mEncryptionGoneBad:I
    invoke-static {v2, v4}, Lcom/android/settings_ex/CryptKeeper;->access$1002(Lcom/android/settings_ex/CryptKeeper;I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 458
    :cond_4
    const/4 v2, 0x0

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 433
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/CryptKeeper$ValidationTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeper$ValidationTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings_ex/CryptKeeper;->mValidationComplete:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/CryptKeeper;->access$1102(Lcom/android/settings_ex/CryptKeeper;Z)Z

    .line 468
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    const-string v0, "CryptKeeper"

    const-string v1, "Incomplete, or corrupted encryption detected. Prompting user to wipe."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeper$ValidationTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    # invokes: Lcom/android/settings_ex/CryptKeeper;->setupUi()V
    invoke-static {v0}, Lcom/android/settings_ex/CryptKeeper;->access$1200(Lcom/android/settings_ex/CryptKeeper;)V

    .line 480
    return-void

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeper$ValidationTask;->this$0:Lcom/android/settings_ex/CryptKeeper;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings_ex/CryptKeeper;->mEncryptionGoneBad:I
    invoke-static {v0, v1}, Lcom/android/settings_ex/CryptKeeper;->access$1002(Lcom/android/settings_ex/CryptKeeper;I)I

    .line 477
    const-string v0, "CryptKeeper"

    const-string v1, "Encryption state validated. Proceeding to configure UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 433
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/CryptKeeper$ValidationTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
