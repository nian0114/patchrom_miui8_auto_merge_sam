.class Lcom/android/settings_ex/UCSCryptKeeperTask$DecryptTaskUCS;
.super Landroid/os/AsyncTask;
.source "UCSCryptKeeperTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/UCSCryptKeeperTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecryptTaskUCS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "[I>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/UCSCryptKeeperTask;)V
    .locals 0

    .prologue
    .line 730
    iput-object p1, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$DecryptTaskUCS;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/UCSCryptKeeperTask;Lcom/android/settings_ex/UCSCryptKeeperTask$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/UCSCryptKeeperTask;
    .param p2, "x1"    # Lcom/android/settings_ex/UCSCryptKeeperTask$1;

    .prologue
    .line 730
    invoke-direct {p0, p1}, Lcom/android/settings_ex/UCSCryptKeeperTask$DecryptTaskUCS;-><init>(Lcom/android/settings_ex/UCSCryptKeeperTask;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 730
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/UCSCryptKeeperTask$DecryptTaskUCS;->doInBackground([Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)[I
    .locals 12
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 739
    iget-object v9, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$DecryptTaskUCS;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    # invokes: Lcom/android/settings_ex/UCSCryptKeeperTask;->getMountService()Landroid/os/storage/IMountService;
    invoke-static {v9}, Lcom/android/settings_ex/UCSCryptKeeperTask;->access$1300(Lcom/android/settings_ex/UCSCryptKeeperTask;)Landroid/os/storage/IMountService;

    move-result-object v7

    .line 740
    .local v7, "service":Landroid/os/storage/IMountService;
    const/4 v9, 0x3

    new-array v5, v9, [I

    .line 742
    .local v5, "ret":[I
    const/4 v9, 0x0

    const/4 v10, -0x1

    aput v10, v5, v9

    .line 743
    const/4 v9, 0x1

    const/4 v10, -0x1

    aput v10, v5, v9

    .line 744
    const/4 v9, 0x2

    const/4 v10, -0x1

    aput v10, v5, v9

    .line 748
    if-eqz v7, :cond_7

    .line 749
    :try_start_0
    const-string v9, "UCSCryptKeeperTask"

    const-string v10, "DecryptTask isUcsOdeEnabled : true"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    const-string v8, ""

    .line 753
    .local v8, "uri":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$DecryptTaskUCS;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    # getter for: Lcom/android/settings_ex/UCSCryptKeeperTask;->mUri:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/settings_ex/UCSCryptKeeperTask;->access$1400(Lcom/android/settings_ex/UCSCryptKeeperTask;)Ljava/lang/String;

    move-result-object v8

    .line 755
    iget-object v9, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$DecryptTaskUCS;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    # getter for: Lcom/android/settings_ex/UCSCryptKeeperTask;->mIsPukState:Z
    invoke-static {v9}, Lcom/android/settings_ex/UCSCryptKeeperTask;->access$600(Lcom/android/settings_ex/UCSCryptKeeperTask;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 756
    const/4 v4, 0x0

    .line 757
    .local v4, "pukRet":[I
    iget-object v9, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$DecryptTaskUCS;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    iget-object v9, v9, Lcom/android/settings_ex/UCSCryptKeeperTask;->mPukText:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$DecryptTaskUCS;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    iget-object v10, v10, Lcom/android/settings_ex/UCSCryptKeeperTask;->mPinText:Ljava/lang/String;

    invoke-static {v8, v9, v10}, Lcom/android/settings_ex/UCMHelpUtils;->verifyPUK(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v4

    .line 760
    const/4 v9, 0x0

    const/4 v10, 0x0

    aget v10, v4, v10

    aput v10, v5, v9

    .line 761
    const/4 v9, 0x1

    const/4 v10, 0x1

    aget v10, v4, v10

    aput v10, v5, v9

    .line 762
    const/4 v9, 0x2

    const/4 v10, 0x2

    aget v10, v4, v10

    aput v10, v5, v9

    .line 785
    .end local v4    # "pukRet":[I
    :goto_0
    const-string v9, "UCSCryptKeeperTask"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Return Values are "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget v11, v5, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget v11, v5, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x2

    aget v11, v5, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    const/4 v9, 0x0

    aget v9, v5, v9

    if-nez v9, :cond_6

    .line 788
    const/4 v6, -0x1

    .line 791
    .local v6, "retcrypto":I
    iget-object v9, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$DecryptTaskUCS;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    # getter for: Lcom/android/settings_ex/UCSCryptKeeperTask;->mOdeUCMEnabled:Z
    invoke-static {v9}, Lcom/android/settings_ex/UCSCryptKeeperTask;->access$1500(Lcom/android/settings_ex/UCSCryptKeeperTask;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 792
    const-string v9, "boot_test"

    invoke-interface {v7, v9}, Landroid/os/storage/IMountService;->decryptStorage(Ljava/lang/String;)I

    move-result v6

    .line 798
    :goto_1
    const-string v9, "UCSCryptKeeperTask"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "decryptStorage return "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    if-eqz v6, :cond_0

    .line 802
    const/4 v9, 0x2

    const v10, 0xfffe

    aput v10, v5, v9

    .line 803
    const-string v9, "security.ucs.error_code"

    const-string v10, "NONE"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 804
    .local v1, "errorCode":Ljava/lang/String;
    const-string v9, "security.ucs.error_code"

    const-string v10, "NONE"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    const-string v9, "NONE"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 806
    const/4 v9, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v5, v9

    .line 814
    .end local v1    # "errorCode":Ljava/lang/String;
    .end local v6    # "retcrypto":I
    :cond_0
    :goto_2
    const/4 v9, 0x0

    aget-object v9, p1, v9

    invoke-virtual {v9}, Ljava/lang/String;->clear()V

    .line 815
    # getter for: Lcom/android/settings_ex/UCSCryptKeeperTask;->mSavedPassword:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings_ex/UCSCryptKeeperTask;->access$700()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->clear()V

    .line 822
    .end local v5    # "ret":[I
    .end local v8    # "uri":Ljava/lang/String;
    :goto_3
    return-object v5

    .line 765
    .restart local v5    # "ret":[I
    .restart local v8    # "uri":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    .line 766
    .local v3, "pinRet":[I
    const/4 v9, 0x0

    aget-object v9, p1, v9

    invoke-static {v9, v8}, Lcom/android/settings_ex/UCMHelpUtils;->verfiyODEPin(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v3

    .line 768
    const/4 v9, 0x0

    aget v9, v3, v9

    const/16 v10, 0x83

    if-ne v9, v10, :cond_2

    .line 769
    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v5, v9

    .line 770
    const/4 v9, 0x1

    const/4 v10, 0x1

    aget v10, v3, v10

    aput v10, v5, v9

    .line 781
    :goto_4
    const/4 v9, 0x2

    const/4 v10, 0x2

    aget v10, v3, v10

    aput v10, v5, v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 819
    .end local v3    # "pinRet":[I
    .end local v8    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 820
    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "UCSCryptKeeperTask"

    const-string v10, "Error while decrypting..."

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 821
    const/4 v9, 0x0

    aget-object v9, p1, v9

    invoke-virtual {v9}, Ljava/lang/String;->clear()V

    .line 822
    const/4 v5, 0x0

    goto :goto_3

    .line 771
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "pinRet":[I
    .restart local v8    # "uri":Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    :try_start_1
    aget v9, v3, v9

    const/16 v10, 0x84

    if-ne v9, v10, :cond_3

    .line 772
    const/4 v9, 0x0

    const/4 v10, -0x1

    aput v10, v5, v9

    .line 773
    const/4 v9, 0x1

    const/4 v10, 0x1

    aget v10, v3, v10

    aput v10, v5, v9

    goto :goto_4

    .line 774
    :cond_3
    const/4 v9, 0x0

    aget v9, v3, v9

    const/16 v10, 0x85

    if-ne v9, v10, :cond_4

    .line 775
    const/4 v9, 0x0

    const v10, 0xffef

    aput v10, v5, v9

    .line 776
    const/4 v9, 0x1

    const/4 v10, 0x1

    aget v10, v3, v10

    aput v10, v5, v9

    goto :goto_4

    .line 778
    :cond_4
    const/4 v9, 0x0

    const/4 v10, -0x1

    aput v10, v5, v9

    .line 779
    const/4 v9, 0x1

    const/4 v10, 0x1

    aget v10, v3, v10

    aput v10, v5, v9

    goto :goto_4

    .line 794
    .end local v3    # "pinRet":[I
    .restart local v6    # "retcrypto":I
    :cond_5
    invoke-static {v8}, Lcom/android/settings_ex/UCMHelpUtils;->generatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 795
    .local v2, "password":Ljava/lang/String;
    invoke-interface {v7, v2}, Landroid/os/storage/IMountService;->decryptStorage(Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_1

    .line 811
    .end local v2    # "password":Ljava/lang/String;
    .end local v6    # "retcrypto":I
    :cond_6
    const-string v9, "UCSCryptKeeperTask"

    const-string v10, "DecryptTask Not able to verify Pin, no use of decrypt op"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 818
    .end local v8    # "uri":Ljava/lang/String;
    :cond_7
    const/4 v5, 0x0

    goto :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 730
    check-cast p1, [I

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/UCSCryptKeeperTask$DecryptTaskUCS;->onPostExecute([I)V

    return-void
.end method

.method protected onPostExecute([I)V
    .locals 6
    .param p1, "status"    # [I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 830
    if-nez p1, :cond_0

    .line 831
    iget-object v1, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$DecryptTaskUCS;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    const/4 v2, 0x0

    # invokes: Lcom/android/settings_ex/UCSCryptKeeperTask;->handleBadAttemptUCS([I)V
    invoke-static {v1, v2}, Lcom/android/settings_ex/UCSCryptKeeperTask;->access$1600(Lcom/android/settings_ex/UCSCryptKeeperTask;[I)V

    .line 850
    :goto_0
    return-void

    .line 835
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$DecryptTaskUCS;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    sget-object v2, Lcom/android/settings_ex/UCMHelpUtils;->miscInfo:Ljava/lang/String;

    aget v3, p1, v5

    # invokes: Lcom/android/settings_ex/UCSCryptKeeperTask;->setMessageInUcsInfo(Ljava/lang/String;I)V
    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/UCSCryptKeeperTask;->access$200(Lcom/android/settings_ex/UCSCryptKeeperTask;Ljava/lang/String;I)V

    .line 837
    aget v1, p1, v5

    if-nez v1, :cond_2

    aget v1, p1, v4

    if-nez v1, :cond_2

    .line 840
    iget-object v1, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$DecryptTaskUCS;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    # getter for: Lcom/android/settings_ex/UCSCryptKeeperTask;->mEmergencyCall:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/settings_ex/UCSCryptKeeperTask;->access$1700(Lcom/android/settings_ex/UCSCryptKeeperTask;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 841
    iget-object v1, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$DecryptTaskUCS;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    # getter for: Lcom/android/settings_ex/UCSCryptKeeperTask;->mEmergencyCall:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/settings_ex/UCSCryptKeeperTask;->access$1700(Lcom/android/settings_ex/UCSCryptKeeperTask;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 843
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$DecryptTaskUCS;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    # getter for: Lcom/android/settings_ex/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings_ex/CryptKeeper;
    invoke-static {v1}, Lcom/android/settings_ex/UCSCryptKeeperTask;->access$800(Lcom/android/settings_ex/UCSCryptKeeperTask;)Lcom/android/settings_ex/CryptKeeper;

    move-result-object v1

    const v2, 0x7f0d0147

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 844
    .local v0, "statusView":Landroid/widget/TextView;
    const v1, 0x7f0e0c2a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 845
    const-string v1, "security.ode.cryptkeeper.status"

    const-string v2, "passed"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 848
    .end local v0    # "statusView":Landroid/widget/TextView;
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$DecryptTaskUCS;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    # invokes: Lcom/android/settings_ex/UCSCryptKeeperTask;->handleBadAttemptUCS([I)V
    invoke-static {v1, p1}, Lcom/android/settings_ex/UCSCryptKeeperTask;->access$1600(Lcom/android/settings_ex/UCSCryptKeeperTask;[I)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 733
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 734
    iget-object v0, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$DecryptTaskUCS;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    # invokes: Lcom/android/settings_ex/UCSCryptKeeperTask;->beginAttempt()V
    invoke-static {v0}, Lcom/android/settings_ex/UCSCryptKeeperTask;->access$1200(Lcom/android/settings_ex/UCSCryptKeeperTask;)V

    .line 735
    return-void
.end method
