.class public Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;
.super Ljava/lang/Object;
.source "ConfirmUCMLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateMachine"
.end annotation


# static fields
.field private static mAtmRemain:I

.field private static mErrorState:I

.field static mInputPin:Ljava/lang/String;

.field static mInputPuk:Ljava/lang/String;

.field private static mState:I


# direct methods
.method public static getAttemptsRemaining()I
    .locals 1

    .prologue
    .line 810
    sget v0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mAtmRemain:I

    return v0
.end method

.method public static getErrorState()I
    .locals 1

    .prologue
    .line 806
    sget v0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mErrorState:I

    return v0
.end method

.method public static getState()I
    .locals 1

    .prologue
    .line 814
    sget v0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mState:I

    return v0
.end method

.method public static next(Ljava/lang/String;)V
    .locals 10
    .param p0, "mInput"    # Ljava/lang/String;

    .prologue
    const v4, 0x10002

    const v9, 0x10001

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 818
    invoke-static {}, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getState()I

    move-result v0

    .line 819
    .local v0, "mCurState":I
    packed-switch v0, :pswitch_data_0

    .line 865
    :cond_0
    :goto_0
    return-void

    .line 821
    :pswitch_0
    # getter for: Lcom/android/settings_ex/ConfirmUCMLockPassword;->mCsNameUri:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings_ex/ConfirmUCMLockPassword;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/settings_ex/UCMHelpUtils;->verfiyODEPin(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v2

    .line 822
    .local v2, "status":[I
    aget v3, v2, v7

    sput v3, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mAtmRemain:I

    .line 823
    aget v3, v2, v8

    sput v3, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mErrorState:I

    .line 825
    aget v3, v2, v6

    const/16 v4, 0x83

    if-ne v3, v4, :cond_1

    .line 826
    const v3, 0x10004

    sput v3, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mState:I

    .line 828
    :cond_1
    aget v3, v2, v6

    const/16 v4, 0x85

    if-ne v3, v4, :cond_2

    .line 829
    sput v9, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mState:I

    .line 831
    :cond_2
    aget v3, v2, v6

    const/16 v4, 0x84

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 836
    .end local v2    # "status":[I
    :pswitch_1
    sput-object p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mInputPuk:Ljava/lang/String;

    .line 837
    sput v4, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mState:I

    goto :goto_0

    .line 841
    :pswitch_2
    sput-object p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mInputPin:Ljava/lang/String;

    .line 842
    const v3, 0x10003

    sput v3, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mState:I

    goto :goto_0

    .line 846
    :pswitch_3
    sget-object v3, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mInputPin:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 847
    # getter for: Lcom/android/settings_ex/ConfirmUCMLockPassword;->mCsNameUri:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings_ex/ConfirmUCMLockPassword;->access$200()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mInputPuk:Ljava/lang/String;

    sget-object v5, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mInputPin:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/android/settings_ex/UCMHelpUtils;->verifyPUK(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    .line 848
    .local v1, "result":[I
    aget v3, v1, v8

    sput v3, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mErrorState:I

    .line 849
    aget v3, v1, v7

    sput v3, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mAtmRemain:I

    .line 850
    aget v3, v1, v6

    if-nez v3, :cond_3

    .line 851
    const v3, 0x10004

    sput v3, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mState:I

    .line 852
    sput v6, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mErrorState:I

    goto :goto_0

    .line 854
    :cond_3
    sput v9, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mState:I

    .line 855
    const/16 v3, 0x21

    sput v3, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mErrorState:I

    goto :goto_0

    .line 858
    .end local v1    # "result":[I
    :cond_4
    sput v4, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mState:I

    .line 859
    const v3, 0x10006

    sput v3, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mErrorState:I

    goto :goto_0

    .line 819
    nop

    :pswitch_data_0
    .packed-switch 0x10000
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static setErrorState(I)V
    .locals 0
    .param p0, "state"    # I

    .prologue
    .line 802
    sput p0, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mErrorState:I

    .line 803
    return-void
.end method

.method public static setState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 781
    # getter for: Lcom/android/settings_ex/ConfirmUCMLockPassword;->mCsNameUri:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings_ex/ConfirmUCMLockPassword;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/UCMHelpUtils;->getStatus(Ljava/lang/String;)[I

    move-result-object v0

    .line 782
    .local v0, "retStatusFromCard":[I
    const/4 v1, 0x1

    aget v1, v0, v1

    sput v1, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mAtmRemain:I

    .line 783
    const/4 v1, 0x2

    aget v1, v0, v1

    sput v1, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mErrorState:I

    .line 786
    sput v2, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mErrorState:I

    .line 788
    aget v1, v0, v2

    packed-switch v1, :pswitch_data_0

    .line 797
    const v1, 0x10005

    sput v1, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mState:I

    .line 799
    :goto_0
    return-void

    .line 791
    :pswitch_0
    const/high16 v1, 0x10000

    sput v1, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mState:I

    goto :goto_0

    .line 794
    :pswitch_1
    const v1, 0x10001

    sput v1, Lcom/android/settings_ex/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mState:I

    goto :goto_0

    .line 788
    nop

    :pswitch_data_0
    .packed-switch 0x83
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
