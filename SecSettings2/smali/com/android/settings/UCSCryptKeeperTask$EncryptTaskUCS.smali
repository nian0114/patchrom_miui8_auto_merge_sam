.class Lcom/android/settings_ex/UCSCryptKeeperTask$EncryptTaskUCS;
.super Landroid/os/AsyncTask;
.source "UCSCryptKeeperTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/UCSCryptKeeperTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EncryptTaskUCS"
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
    .line 853
    iput-object p1, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/UCSCryptKeeperTask;Lcom/android/settings_ex/UCSCryptKeeperTask$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/UCSCryptKeeperTask;
    .param p2, "x1"    # Lcom/android/settings_ex/UCSCryptKeeperTask$1;

    .prologue
    .line 853
    invoke-direct {p0, p1}, Lcom/android/settings_ex/UCSCryptKeeperTask$EncryptTaskUCS;-><init>(Lcom/android/settings_ex/UCSCryptKeeperTask;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 853
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/UCSCryptKeeperTask$EncryptTaskUCS;->doInBackground([Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)[I
    .locals 14
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 862
    iget-object v9, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    # invokes: Lcom/android/settings_ex/UCSCryptKeeperTask;->getMountService()Landroid/os/storage/IMountService;
    invoke-static {v9}, Lcom/android/settings_ex/UCSCryptKeeperTask;->access$1300(Lcom/android/settings_ex/UCSCryptKeeperTask;)Landroid/os/storage/IMountService;

    move-result-object v5

    .line 863
    .local v5, "service":Landroid/os/storage/IMountService;
    const/4 v9, 0x3

    new-array v4, v9, [I

    .line 865
    .local v4, "ret":[I
    aput v11, v4, v12

    .line 866
    aput v11, v4, v13

    .line 867
    aput v11, v4, v10

    .line 871
    if-eqz v5, :cond_7

    .line 872
    :try_start_0
    const-string v9, "UCSCryptKeeperTask"

    const-string v10, "EncryptTask isUcsOdeEnabled : true"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    const-string v7, ""

    .line 876
    .local v7, "uri":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    # getter for: Lcom/android/settings_ex/UCSCryptKeeperTask;->mUri:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/settings_ex/UCSCryptKeeperTask;->access$1400(Lcom/android/settings_ex/UCSCryptKeeperTask;)Ljava/lang/String;

    move-result-object v7

    .line 878
    iget-object v9, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    # getter for: Lcom/android/settings_ex/UCSCryptKeeperTask;->mIsPukState:Z
    invoke-static {v9}, Lcom/android/settings_ex/UCSCryptKeeperTask;->access$600(Lcom/android/settings_ex/UCSCryptKeeperTask;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 879
    const/4 v3, 0x0

    .line 880
    .local v3, "pukRet":[I
    iget-object v9, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    iget-object v9, v9, Lcom/android/settings_ex/UCSCryptKeeperTask;->mPukText:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    iget-object v10, v10, Lcom/android/settings_ex/UCSCryptKeeperTask;->mPinText:Ljava/lang/String;

    invoke-static {v7, v9, v10}, Lcom/android/settings_ex/UCMHelpUtils;->verifyPUK(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v3

    .line 883
    const/4 v9, 0x0

    const/4 v10, 0x0

    aget v10, v3, v10

    aput v10, v4, v9

    .line 884
    const/4 v9, 0x1

    const/4 v10, 0x1

    aget v10, v3, v10

    aput v10, v4, v9

    .line 885
    const/4 v9, 0x2

    const/4 v10, 0x2

    aget v10, v3, v10

    aput v10, v4, v9

    .line 907
    .end local v3    # "pukRet":[I
    :goto_0
    const-string v9, "UCSCryptKeeperTask"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Return Values are "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget v11, v4, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget v11, v4, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x2

    aget v11, v4, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    const/4 v9, 0x0

    aget v9, v4, v9

    if-nez v9, :cond_6

    .line 912
    const-string v9, "persist.security.ucs"

    const-string v10, "1"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    const-string v9, "security.ode.encrypting"

    const-string v10, "true"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    const-string v9, "sys.sec_device_encryption"

    const-string v10, "fast"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    const-string v6, ""

    .line 916
    .local v6, "ucsPassword":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    # getter for: Lcom/android/settings_ex/UCSCryptKeeperTask;->mEnabledWrap:I
    invoke-static {v9}, Lcom/android/settings_ex/UCSCryptKeeperTask;->access$1800(Lcom/android/settings_ex/UCSCryptKeeperTask;)I

    move-result v9

    if-ne v9, v13, :cond_5

    .line 917
    const-string v6, "ucs_savein_false"

    .line 921
    :goto_1
    const/4 v9, 0x0

    invoke-interface {v5, v9, v6}, Landroid/os/storage/IMountService;->encryptStorage(ILjava/lang/String;)I

    .line 922
    const/4 v9, 0x2

    const/4 v10, 0x0

    aput v10, v4, v9

    .line 923
    const-string v9, "UCSCryptKeeperTask"

    const-string v10, "EncryptStorage passed"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    const-string v9, "security.ucs.error_code"

    const-string v10, "NONE"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 926
    .local v1, "errorCode":Ljava/lang/String;
    const-string v9, "security.ucs.error_code"

    const-string v10, "NONE"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    const-string v9, "NONE"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 928
    const/4 v9, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v4, v9

    .line 935
    .end local v1    # "errorCode":Ljava/lang/String;
    .end local v6    # "ucsPassword":Ljava/lang/String;
    :cond_0
    :goto_2
    const/4 v9, 0x0

    aget-object v9, p1, v9

    invoke-virtual {v9}, Ljava/lang/String;->clear()V

    .line 936
    # getter for: Lcom/android/settings_ex/UCSCryptKeeperTask;->mSavedPassword:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings_ex/UCSCryptKeeperTask;->access$700()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->clear()V

    .line 943
    .end local v4    # "ret":[I
    .end local v7    # "uri":Ljava/lang/String;
    :goto_3
    return-object v4

    .line 888
    .restart local v4    # "ret":[I
    .restart local v7    # "uri":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .line 889
    .local v2, "pinRet":[I
    const/4 v9, 0x0

    aget-object v9, p1, v9

    invoke-static {v9, v7}, Lcom/android/settings_ex/UCMHelpUtils;->verfiyODEPin(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v2

    .line 891
    const/4 v9, 0x0

    aget v9, v2, v9

    const/16 v10, 0x83

    if-ne v9, v10, :cond_2

    .line 892
    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v4, v9

    .line 893
    const/4 v9, 0x1

    const/4 v10, 0x1

    aget v10, v2, v10

    aput v10, v4, v9

    .line 904
    :goto_4
    const/4 v9, 0x2

    const/4 v10, 0x2

    aget v10, v2, v10

    aput v10, v4, v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 940
    .end local v2    # "pinRet":[I
    .end local v7    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 941
    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "UCSCryptKeeperTask"

    const-string v10, "Error while encrypting..."

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 942
    aget-object v9, p1, v12

    invoke-virtual {v9}, Ljava/lang/String;->clear()V

    move-object v4, v8

    .line 943
    goto :goto_3

    .line 894
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "pinRet":[I
    .restart local v7    # "uri":Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    :try_start_1
    aget v9, v2, v9

    const/16 v10, 0x84

    if-ne v9, v10, :cond_3

    .line 895
    const/4 v9, 0x0

    const/4 v10, -0x1

    aput v10, v4, v9

    .line 896
    const/4 v9, 0x1

    const/4 v10, 0x1

    aget v10, v2, v10

    aput v10, v4, v9

    goto :goto_4

    .line 897
    :cond_3
    const/4 v9, 0x0

    aget v9, v2, v9

    const/16 v10, 0x85

    if-ne v9, v10, :cond_4

    .line 898
    const/4 v9, 0x0

    const v10, 0xffef

    aput v10, v4, v9

    .line 899
    const/4 v9, 0x1

    const/4 v10, 0x1

    aget v10, v2, v10

    aput v10, v4, v9

    goto :goto_4

    .line 901
    :cond_4
    const/4 v9, 0x0

    const/4 v10, -0x1

    aput v10, v4, v9

    .line 902
    const/4 v9, 0x1

    const/4 v10, 0x1

    aget v10, v2, v10

    aput v10, v4, v9

    goto :goto_4

    .line 919
    .end local v2    # "pinRet":[I
    .restart local v6    # "ucsPassword":Ljava/lang/String;
    :cond_5
    const-string v6, "ucs_savein_true"

    goto/16 :goto_1

    .line 932
    .end local v6    # "ucsPassword":Ljava/lang/String;
    :cond_6
    const-string v9, "UCSCryptKeeperTask"

    const-string v10, "EncryptTask Not able to verify Pin, no use of decrypt op"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .end local v7    # "uri":Ljava/lang/String;
    :cond_7
    move-object v4, v8

    .line 939
    goto :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 853
    check-cast p1, [I

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/UCSCryptKeeperTask$EncryptTaskUCS;->onPostExecute([I)V

    return-void
.end method

.method protected onPostExecute([I)V
    .locals 6
    .param p1, "status"    # [I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 951
    if-nez p1, :cond_0

    .line 952
    iget-object v1, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    const/4 v2, 0x0

    # invokes: Lcom/android/settings_ex/UCSCryptKeeperTask;->handleBadAttemptUCS([I)V
    invoke-static {v1, v2}, Lcom/android/settings_ex/UCSCryptKeeperTask;->access$1600(Lcom/android/settings_ex/UCSCryptKeeperTask;[I)V

    .line 971
    :goto_0
    return-void

    .line 956
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    sget-object v2, Lcom/android/settings_ex/UCMHelpUtils;->miscInfo:Ljava/lang/String;

    aget v3, p1, v5

    # invokes: Lcom/android/settings_ex/UCSCryptKeeperTask;->setMessageInUcsInfo(Ljava/lang/String;I)V
    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/UCSCryptKeeperTask;->access$200(Lcom/android/settings_ex/UCSCryptKeeperTask;Ljava/lang/String;I)V

    .line 958
    aget v1, p1, v5

    if-nez v1, :cond_2

    aget v1, p1, v4

    if-nez v1, :cond_2

    .line 961
    iget-object v1, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    # getter for: Lcom/android/settings_ex/UCSCryptKeeperTask;->mEmergencyCall:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/settings_ex/UCSCryptKeeperTask;->access$1700(Lcom/android/settings_ex/UCSCryptKeeperTask;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 962
    iget-object v1, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    # getter for: Lcom/android/settings_ex/UCSCryptKeeperTask;->mEmergencyCall:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/settings_ex/UCSCryptKeeperTask;->access$1700(Lcom/android/settings_ex/UCSCryptKeeperTask;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 964
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    # getter for: Lcom/android/settings_ex/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings_ex/CryptKeeper;
    invoke-static {v1}, Lcom/android/settings_ex/UCSCryptKeeperTask;->access$800(Lcom/android/settings_ex/UCSCryptKeeperTask;)Lcom/android/settings_ex/CryptKeeper;

    move-result-object v1

    const v2, 0x7f0d0147

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 965
    .local v0, "statusView":Landroid/widget/TextView;
    const v1, 0x7f0e0c2a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 966
    const-string v1, "security.ode.cryptkeeper.status"

    const-string v2, "passed"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 969
    .end local v0    # "statusView":Landroid/widget/TextView;
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    # invokes: Lcom/android/settings_ex/UCSCryptKeeperTask;->handleBadAttemptUCS([I)V
    invoke-static {v1, p1}, Lcom/android/settings_ex/UCSCryptKeeperTask;->access$1600(Lcom/android/settings_ex/UCSCryptKeeperTask;[I)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 856
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 857
    iget-object v0, p0, Lcom/android/settings_ex/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings_ex/UCSCryptKeeperTask;

    # invokes: Lcom/android/settings_ex/UCSCryptKeeperTask;->beginAttempt()V
    invoke-static {v0}, Lcom/android/settings_ex/UCSCryptKeeperTask;->access$1200(Lcom/android/settings_ex/UCSCryptKeeperTask;)V

    .line 858
    return-void
.end method
