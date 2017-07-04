.class public Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;
.super Ljava/lang/Object;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "KoreanAddressSeparator"
.end annotation


# static fields
.field static final SEND_ADDRESS_SEPARATOR:Ljava/lang/String; = "/"


# instance fields
.field public mCurIndex:I

.field public mDestAddr:Ljava/lang/String;

.field public mSenderAddr:Ljava/lang/String;

.field public mTID:I

.field public mTotalCnt:I

.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;Ljava/lang/String;)V
    .locals 9
    .param p2, "addr"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2876
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2877
    const-string v3, "/"

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2879
    .local v2, "tokens":[Ljava/lang/String;
    iput-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mDestAddr:Ljava/lang/String;

    .line 2880
    iput-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mSenderAddr:Ljava/lang/String;

    .line 2881
    iput v5, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mCurIndex:I

    .line 2882
    iput v5, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mTotalCnt:I

    .line 2883
    iput v6, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mTID:I

    .line 2885
    array-length v3, v2

    if-ne v3, v5, :cond_3

    .line 2886
    aget-object v3, v2, v6

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mDestAddr:Ljava/lang/String;

    .line 2906
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mSenderAddr:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mSenderAddr:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2907
    :cond_0
    const-string v3, "SMSDispatcher"

    const-string v4, "No sender address info. Set to getLine1Number()"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2910
    :try_start_0
    iget-object v3, p1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 2911
    .local v1, "sendAddr":Ljava/lang/String;
    const-string v3, "+82"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2912
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2915
    :cond_1
    iput-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mSenderAddr:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2923
    .end local v1    # "sendAddr":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 2887
    :cond_3
    array-length v3, v2

    if-ne v3, v7, :cond_4

    .line 2888
    aget-object v3, v2, v6

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mDestAddr:Ljava/lang/String;

    .line 2889
    aget-object v3, v2, v5

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mSenderAddr:Ljava/lang/String;

    goto :goto_0

    .line 2890
    :cond_4
    array-length v3, v2

    if-ne v3, v8, :cond_5

    .line 2891
    aget-object v3, v2, v6

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mDestAddr:Ljava/lang/String;

    .line 2893
    aget-object v3, v2, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mCurIndex:I

    .line 2894
    aget-object v3, v2, v7

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mTotalCnt:I

    goto :goto_0

    .line 2895
    :cond_5
    array-length v3, v2

    const/4 v4, 0x4

    if-ne v3, v4, :cond_6

    .line 2896
    aget-object v3, v2, v6

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mDestAddr:Ljava/lang/String;

    .line 2897
    aget-object v3, v2, v5

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mSenderAddr:Ljava/lang/String;

    .line 2899
    aget-object v3, v2, v7

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mCurIndex:I

    .line 2900
    aget-object v3, v2, v8

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mTotalCnt:I

    goto :goto_0

    .line 2902
    :cond_6
    const-string v3, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KoreanAddressSeparator: Illegal format. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2916
    :catch_0
    move-exception v0

    .line 2917
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
