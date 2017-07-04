.class public abstract Lcom/android/internal/telephony/Connection;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/Connection$PostDialState;,
        Lcom/android/internal/telephony/Connection$ListenerBase;,
        Lcom/android/internal/telephony/Connection$Listener;,
        Lcom/android/internal/telephony/Connection$PostDialListener;
    }
.end annotation


# static fields
.field public static final AUDIO_QUALITY_HIGH_DEFINITION:I = 0x2

.field public static final AUDIO_QUALITY_STANDARD:I = 0x1

.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field protected callDetails:Lcom/android/internal/telephony/CallDetails;

.field private callModifyRequest:Lcom/android/internal/telephony/CallModify;

.field id:I

.field protected mAddress:Ljava/lang/String;

.field private mAudioQuality:I

.field private mCallSubstate:I

.field protected mCnapName:Ljava/lang/String;

.field protected mCnapNamePresentation:I

.field protected mConnectTime:J

.field protected mConnectTimeReal:J

.field protected mConvertedNumber:Ljava/lang/String;

.field protected mCreateTime:J

.field protected mDialString:Ljava/lang/String;

.field protected mDuration:J

.field private mExtras:Landroid/os/Bundle;

.field protected mHoldingStartTime:J

.field protected mIsIncoming:Z

.field private mIsWifi:Z

.field public mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/internal/telephony/Connection$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalVideoCapable:Z

.field protected mNumberConverted:Z

.field protected mNumberPresentation:I

.field protected mOrigConnection:Lcom/android/internal/telephony/Connection;

.field protected mOriginalAddress:Ljava/lang/String;

.field private mPostDialListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection$PostDialListener;",
            ">;"
        }
    .end annotation
.end field

.field public mPreHandoverState:Lcom/android/internal/telephony/Call$State;

.field private mRemoteVideoCapable:Z

.field mUserData:Ljava/lang/Object;

.field private mVideoProvider:Landroid/telecom/Connection$VideoProvider;

.field private mVideoState:I

.field protected oldCallDetails:Lcom/android/internal/telephony/CallDetails;

.field protected sipError:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 127
    const-string v0, "Connection"

    sput-object v0, Lcom/android/internal/telephony/Connection;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput v0, p0, Lcom/android/internal/telephony/Connection;->mCnapNamePresentation:I

    .line 103
    iput v0, p0, Lcom/android/internal/telephony/Connection;->mNumberPresentation:I

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    .line 122
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    .line 124
    iput-boolean v2, p0, Lcom/android/internal/telephony/Connection;->mNumberConverted:Z

    .line 133
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/Connection;->id:I

    .line 134
    iput-object v1, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    .line 135
    iput-object v1, p0, Lcom/android/internal/telephony/Connection;->oldCallDetails:Lcom/android/internal/telephony/CallDetails;

    .line 139
    iput-object v1, p0, Lcom/android/internal/telephony/Connection;->callModifyRequest:Lcom/android/internal/telephony/CallModify;

    .line 143
    iput v2, p0, Lcom/android/internal/telephony/Connection;->sipError:I

    .line 154
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    .line 394
    return-void
.end method

.method private validateCanModifyConnectionType(Landroid/os/Message;I)Z
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "newCallType"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 876
    const/4 v4, 0x0

    .line 877
    .local v4, "ret":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 878
    .local v1, "call":Lcom/android/internal/telephony/Call;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v8

    iget v8, v8, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    move v2, v6

    .line 879
    .local v2, "isCb":Z
    :goto_0
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v8

    if-eqz v8, :cond_5

    move v3, v6

    .line 881
    .local v3, "isMP":Z
    :goto_1
    if-eqz v2, :cond_6

    if-nez v3, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getIndex()I

    move-result v8

    if-ltz v8, :cond_6

    move v4, v6

    .line 883
    :goto_2
    if-nez v4, :cond_3

    if-eqz p1, :cond_3

    .line 886
    const-string v5, ""

    .line 887
    .local v5, "s":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 888
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Call is not CallBase. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 891
    :cond_0
    if-eqz v3, :cond_1

    .line 892
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Call is Multiparty. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 895
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getIndex()I

    move-result v6

    if-gez v6, :cond_2

    .line 896
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Index is not yet assigned. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 899
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v6

    iget v6, v6, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-eq p2, v6, :cond_7

    .line 901
    invoke-static {p1, v10, v10}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 906
    .local v0, "ar":Landroid/os/AsyncResult;
    :goto_3
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 907
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 909
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "s":Ljava/lang/String;
    :cond_3
    return v4

    .end local v2    # "isCb":Z
    .end local v3    # "isMP":Z
    :cond_4
    move v2, v7

    .line 878
    goto :goto_0

    .restart local v2    # "isCb":Z
    :cond_5
    move v3, v7

    .line 879
    goto :goto_1

    .restart local v3    # "isMP":Z
    :cond_6
    move v4, v7

    .line 881
    goto :goto_2

    .line 903
    .restart local v5    # "s":Ljava/lang/String;
    :cond_7
    new-instance v6, Ljava/lang/Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to change: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v10, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    move-result-object v0

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    goto :goto_3
.end method


# virtual methods
.method public acceptConnectionTypeChange(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .local p1, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 967
    sget-object v0, Lcom/android/internal/telephony/Connection;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Confirming call type change request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->callModifyRequest:Lcom/android/internal/telephony/CallModify;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->callModifyRequest:Lcom/android/internal/telephony/CallModify;

    if-eqz v0, :cond_0

    .line 970
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->callModifyRequest:Lcom/android/internal/telephony/CallModify;

    iget-object v0, v0, Lcom/android/internal/telephony/CallModify;->call_details:Lcom/android/internal/telephony/CallDetails;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallDetails;->setExtrasFromMap(Ljava/util/Map;)V

    .line 971
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getOwner()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/Connection;->callModifyRequest:Lcom/android/internal/telephony/CallModify;

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/CallTracker;->modifyCallConfirm(Landroid/os/Message;Lcom/android/internal/telephony/CallModify;)V

    .line 972
    iput-object v3, p0, Lcom/android/internal/telephony/Connection;->callModifyRequest:Lcom/android/internal/telephony/CallModify;

    .line 974
    :cond_0
    return-void
.end method

.method public final addListener(Lcom/android/internal/telephony/Connection$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/telephony/Connection$Listener;

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 517
    return-void
.end method

.method public final addPostDialListener(Lcom/android/internal/telephony/Connection$PostDialListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/telephony/Connection$PostDialListener;

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    :cond_0
    return-void
.end method

.method public abstract cancelPostDial()V
.end method

.method public changeConnectionType(Landroid/os/Message;ILjava/util/Map;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "newCallType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 915
    .local p3, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/android/internal/telephony/CallDetails;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v3

    iget v3, v3, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    invoke-static {p3}, Lcom/android/internal/telephony/CallDetails;->getExtrasFromMap(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p2, v3, v4}, Lcom/android/internal/telephony/CallDetails;-><init>(II[Ljava/lang/String;)V

    .line 917
    .local v0, "callDetails":Lcom/android/internal/telephony/CallDetails;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getIndex()I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 918
    .local v2, "rilCallIndex":I
    new-instance v1, Lcom/android/internal/telephony/CallModify;

    invoke-direct {v1, v0, v2}, Lcom/android/internal/telephony/CallModify;-><init>(Lcom/android/internal/telephony/CallDetails;I)V

    .line 919
    .local v1, "callModify":Lcom/android/internal/telephony/CallModify;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getOwner()Lcom/android/internal/telephony/CallTracker;

    move-result-object v3

    invoke-virtual {v3, p1, v1}, Lcom/android/internal/telephony/CallTracker;->modifyCallInitiate(Landroid/os/Message;Lcom/android/internal/telephony/CallModify;)V

    .line 920
    return-void
.end method

.method protected final clearPostDialListeners()V
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 426
    return-void
.end method

.method public clearUserData()V
    .locals 1

    .prologue
    .line 411
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mUserData:Ljava/lang/Object;

    .line 412
    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioQuality()I
    .locals 1

    .prologue
    .line 579
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mAudioQuality:I

    return v0
.end method

.method public abstract getCall()Lcom/android/internal/telephony/Call;
.end method

.method public getCallDetails()Lcom/android/internal/telephony/CallDetails;
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    return-object v0
.end method

.method public getCallSubstate()I
    .locals 1

    .prologue
    .line 589
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mCallSubstate:I

    return v0
.end method

.method public getCdnipNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 777
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCnapName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mCnapName:Ljava/lang/String;

    return-object v0
.end method

.method public getCnapNamePresentation()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mCnapNamePresentation:I

    return v0
.end method

.method public getConferenceParticipants()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 340
    .local v0, "c":Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_0

    .line 341
    const/4 v1, 0x0

    .line 343
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConferenceParticipants()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getConnectTime()J
    .locals 2

    .prologue
    .line 217
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTime:J

    return-wide v0
.end method

.method public getConnectTimeReal()J
    .locals 2

    .prologue
    .line 236
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    return-wide v0
.end method

.method public getConnectionExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getConnectionType()I
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    if-eqz v0, :cond_0

    .line 868
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    iget v0, v0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 870
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    .line 207
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mCreateTime:J

    return-wide v0
.end method

.method public abstract getDisconnectCause()I
.end method

.method public abstract getDisconnectTime()J
.end method

.method public getDurationMillis()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 253
    iget-wide v2, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 258
    :goto_0
    return-wide v0

    .line 255
    :cond_0
    iget-wide v2, p0, Lcom/android/internal/telephony/Connection;->mDuration:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    .line 256
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 258
    :cond_1
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mDuration:J

    goto :goto_0
.end method

.method public abstract getHoldDurationMillis()J
.end method

.method public getHoldingStartTime()J
    .locals 2

    .prologue
    .line 268
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mHoldingStartTime:J

    return-wide v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 806
    iget v0, p0, Lcom/android/internal/telephony/Connection;->id:I

    return v0
.end method

.method protected getIndex()I
    .locals 1

    .prologue
    .line 854
    const/4 v0, -0x1

    return v0
.end method

.method public abstract getNumberPresentation()I
.end method

.method public getOldCallDetails()Lcom/android/internal/telephony/CallDetails;
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->oldCallDetails:Lcom/android/internal/telephony/CallDetails;

    return-object v0
.end method

.method public getOrigConnection()Lcom/android/internal/telephony/Connection;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    return-object v0
.end method

.method public getOrigDialString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOriginalAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 783
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mOriginalAddress:Ljava/lang/String;

    return-object v0
.end method

.method protected getOwner()Lcom/android/internal/telephony/CallTracker;
    .locals 1

    .prologue
    .line 858
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;
.end method

.method public abstract getPreciseDisconnectCause()I
.end method

.method public getProposedConnectionType()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 946
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getConnectionType()I

    move-result v0

    .line 948
    .local v0, "ret":I
    iget-object v1, p0, Lcom/android/internal/telephony/Connection;->callModifyRequest:Lcom/android/internal/telephony/CallModify;

    if-eqz v1, :cond_0

    .line 949
    iget-object v1, p0, Lcom/android/internal/telephony/Connection;->callModifyRequest:Lcom/android/internal/telephony/CallModify;

    iget-object v1, v1, Lcom/android/internal/telephony/CallModify;->call_details:Lcom/android/internal/telephony/CallDetails;

    if-eqz v1, :cond_1

    .line 950
    iget-object v1, p0, Lcom/android/internal/telephony/Connection;->callModifyRequest:Lcom/android/internal/telephony/CallModify;

    iget-object v1, v1, Lcom/android/internal/telephony/CallModify;->call_details:Lcom/android/internal/telephony/CallDetails;

    iget v0, v1, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 956
    :cond_0
    :goto_0
    return v0

    .line 952
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/Connection;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Received callModifyRequest without call details"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getRadioTech()Ljava/lang/String;
    .locals 2

    .prologue
    .line 844
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    if-eqz v0, :cond_0

    .line 845
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    const-string v1, "radiotech"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 848
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract getRemainingPostDialString()Ljava/lang/String;
.end method

.method public getSipErrorCode()I
    .locals 1

    .prologue
    .line 1002
    iget v0, p0, Lcom/android/internal/telephony/Connection;->sipError:I

    return v0
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .locals 2

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 316
    .local v0, "c":Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_0

    .line 317
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    .line 319
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    goto :goto_0
.end method

.method public getStateBeforeHandover()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    return-object v0
.end method

.method public abstract getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mUserData:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract getVendorDisconnectCause()Ljava/lang/String;
.end method

.method public getVideoProvider()Landroid/telecom/Connection$VideoProvider;
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    return-object v0
.end method

.method public getVideoState()I
    .locals 1

    .prologue
    .line 534
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mVideoState:I

    return v0
.end method

.method public abstract hangup()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public isAlive()Z
    .locals 1

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    return v0
.end method

.method public isCdmaCwActive()Z
    .locals 1

    .prologue
    .line 793
    const/4 v0, 0x0

    return v0
.end method

.method public isCdmaCwHolding()Z
    .locals 1

    .prologue
    .line 800
    const/4 v0, 0x0

    return v0
.end method

.method public isIncoming()Z
    .locals 1

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mIsIncoming:Z

    return v0
.end method

.method public isLocalVideoCapable()Z
    .locals 1

    .prologue
    .line 543
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mLocalVideoCapable:Z

    return v0
.end method

.method public abstract isMultiparty()Z
.end method

.method public isRemoteVideoCapable()Z
    .locals 1

    .prologue
    .line 552
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mRemoteVideoCapable:Z

    return v0
.end method

.method public isRinging()Z
    .locals 1

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    return v0
.end method

.method public isWifi()Z
    .locals 1

    .prologue
    .line 561
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mIsWifi:Z

    return v0
.end method

.method public migrateFrom(Lcom/android/internal/telephony/Connection;)V
    .locals 2
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 500
    if-nez p1, :cond_0

    .line 508
    :goto_0
    return-void

    .line 501
    :cond_0
    iget-object v0, p1, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    .line 502
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mDialString:Ljava/lang/String;

    .line 503
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mCreateTime:J

    .line 504
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTime:J

    .line 505
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getConnectTimeReal()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    .line 506
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getHoldingStartTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mHoldingStartTime:J

    .line 507
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getOrigConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    goto :goto_0
.end method

.method protected final notifyPostDialListeners()V
    .locals 4

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v2, v3, :cond_0

    .line 430
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$PostDialListener;

    .line 431
    .local v1, "listener":Lcom/android/internal/telephony/Connection$PostDialListener;
    invoke-interface {v1}, Lcom/android/internal/telephony/Connection$PostDialListener;->onPostDialWait()V

    goto :goto_0

    .line 434
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/android/internal/telephony/Connection$PostDialListener;
    :cond_0
    return-void
.end method

.method protected final notifyPostDialListenersNextChar(C)V
    .locals 4
    .param p1, "c"    # C

    .prologue
    .line 437
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$PostDialListener;

    .line 438
    .local v1, "listener":Lcom/android/internal/telephony/Connection$PostDialListener;
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Connection$PostDialListener;->onPostDialChar(C)V

    goto :goto_0

    .line 440
    .end local v1    # "listener":Lcom/android/internal/telephony/Connection$PostDialListener;
    :cond_0
    return-void
.end method

.method public onConferenceMergeFailed()V
    .locals 3

    .prologue
    .line 731
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 732
    .local v1, "l":Lcom/android/internal/telephony/Connection$Listener;
    invoke-interface {v1}, Lcom/android/internal/telephony/Connection$Listener;->onConferenceMergedFailed()V

    goto :goto_0

    .line 734
    .end local v1    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public onDisconnectConferenceParticipant(Landroid/net/Uri;)V
    .locals 0
    .param p1, "endpoint"    # Landroid/net/Uri;

    .prologue
    .line 743
    return-void
.end method

.method public onReceivedModifyCall(Lcom/android/internal/telephony/CallModify;)Z
    .locals 5
    .param p1, "callModify"    # Lcom/android/internal/telephony/CallModify;

    .prologue
    .line 923
    sget-object v2, Lcom/android/internal/telephony/Connection;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceivedCallModify("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    const/4 v0, 0x0

    .line 925
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p1, Lcom/android/internal/telephony/CallModify;->call_details:Lcom/android/internal/telephony/CallDetails;

    iget v2, v2, Lcom/android/internal/telephony/CallDetails;->call_type:I

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/Connection;->validateCanModifyConnectionType(Landroid/os/Message;I)Z

    move-result v1

    .line 926
    .local v1, "ret":Z
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->callModifyRequest:Lcom/android/internal/telephony/CallModify;

    .line 928
    sget-object v2, Lcom/android/internal/telephony/Connection;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceivedCallModify() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    return v1
.end method

.method public abstract proceedAfterWaitChar()V
.end method

.method public abstract proceedAfterWildChar(Ljava/lang/String;)V
.end method

.method public rejectConnectionTypeChange()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 982
    const-string v2, "ro.csc.sales_code"

    const-string v3, "none"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 984
    .local v1, "salesCode":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->callModifyRequest:Lcom/android/internal/telephony/CallModify;

    if-nez v2, :cond_0

    .line 999
    :goto_0
    return-void

    .line 985
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallModify;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallModify;-><init>()V

    .line 986
    .local v0, "callModify":Lcom/android/internal/telephony/CallModify;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getIndex()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/internal/telephony/CallModify;->call_index:I

    .line 987
    new-instance v2, Lcom/android/internal/telephony/CallDetails;

    iget-object v3, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallDetails;-><init>(Lcom/android/internal/telephony/CallDetails;)V

    iput-object v2, v0, Lcom/android/internal/telephony/CallModify;->call_details:Lcom/android/internal/telephony/CallDetails;

    .line 989
    const-string v2, "ATT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "BMC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "TMB"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "TMK"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 991
    :cond_1
    iget-object v2, v0, Lcom/android/internal/telephony/CallModify;->call_details:Lcom/android/internal/telephony/CallDetails;

    const/16 v3, 0xa

    iput v3, v2, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 994
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/Connection;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rejecting Change request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/Connection;->callModifyRequest:Lcom/android/internal/telephony/CallModify;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " keep as "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getOwner()Lcom/android/internal/telephony/CallTracker;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 996
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getOwner()Lcom/android/internal/telephony/CallTracker;

    move-result-object v2

    invoke-virtual {v2, v5, v0}, Lcom/android/internal/telephony/CallTracker;->modifyCallConfirm(Landroid/os/Message;Lcom/android/internal/telephony/CallModify;)V

    .line 998
    :cond_3
    iput-object v5, p0, Lcom/android/internal/telephony/Connection;->callModifyRequest:Lcom/android/internal/telephony/CallModify;

    goto :goto_0
.end method

.method public final removeListener(Lcom/android/internal/telephony/Connection$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/telephony/Connection$Listener;

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 526
    return-void
.end method

.method public final removePostDialListener(Lcom/android/internal/telephony/Connection$PostDialListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/telephony/Connection$PostDialListener;

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 422
    return-void
.end method

.method public resetOldCallDetails()V
    .locals 1

    .prologue
    .line 840
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->oldCallDetails:Lcom/android/internal/telephony/CallDetails;

    .line 841
    return-void
.end method

.method public abstract separate()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public setAudioQuality(I)V
    .locals 3
    .param p1, "audioQuality"    # I

    .prologue
    .line 648
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mAudioQuality:I

    .line 649
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 650
    .local v1, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget v2, p0, Lcom/android/internal/telephony/Connection;->mAudioQuality:I

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Connection$Listener;->onAudioQualityChanged(I)V

    goto :goto_0

    .line 652
    .end local v1    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public setCallDetails(Lcom/android/internal/telephony/CallDetails;)Z
    .locals 3
    .param p1, "details"    # Lcom/android/internal/telephony/CallDetails;

    .prologue
    const/4 v1, 0x0

    .line 818
    const/4 v0, 0x0

    .line 819
    .local v0, "changed":Z
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    if-ne v2, p1, :cond_0

    .line 832
    :goto_0
    return v1

    .line 823
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    if-eqz v2, :cond_1

    .line 824
    iget-object v1, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/CallDetails;->isChanged(Lcom/android/internal/telephony/CallDetails;)Z

    move-result v0

    .line 829
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    iput-object v1, p0, Lcom/android/internal/telephony/Connection;->oldCallDetails:Lcom/android/internal/telephony/CallDetails;

    .line 830
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    move v1, v0

    .line 832
    goto :goto_0

    .line 826
    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_2
    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public setCallSubstate(I)V
    .locals 3
    .param p1, "callSubstate"    # I

    .prologue
    .line 680
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mCallSubstate:I

    .line 681
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 682
    .local v1, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget v2, p0, Lcom/android/internal/telephony/Connection;->mCallSubstate:I

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Connection$Listener;->onCallSubstateChanged(I)V

    goto :goto_0

    .line 684
    .end local v1    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public setConnectTime(J)V
    .locals 1
    .param p1, "connectTime"    # J

    .prologue
    .line 226
    iput-wide p1, p0, Lcom/android/internal/telephony/Connection;->mConnectTime:J

    .line 227
    return-void
.end method

.method public setConnectionExtras(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 659
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    .line 660
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 661
    .local v1, "l":Lcom/android/internal/telephony/Connection$Listener;
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Connection$Listener;->onExtrasChanged(Landroid/os/Bundle;)V

    goto :goto_0

    .line 663
    .end local v1    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public setConverted(Ljava/lang/String;)V
    .locals 1
    .param p1, "oriNumber"    # Ljava/lang/String;

    .prologue
    .line 699
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mNumberConverted:Z

    .line 700
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mConvertedNumber:Ljava/lang/String;

    .line 701
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    .line 702
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mDialString:Ljava/lang/String;

    .line 703
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 810
    iput p1, p0, Lcom/android/internal/telephony/Connection;->id:I

    .line 811
    return-void
.end method

.method public setLocalVideoCapable(Z)V
    .locals 3
    .param p1, "capable"    # Z

    .prologue
    .line 612
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mLocalVideoCapable:Z

    .line 613
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 614
    .local v1, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget-boolean v2, p0, Lcom/android/internal/telephony/Connection;->mLocalVideoCapable:Z

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Connection$Listener;->onLocalVideoCapabilityChanged(Z)V

    goto :goto_0

    .line 616
    .end local v1    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public setOriginalAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "originalAddress"    # Ljava/lang/String;

    .prologue
    .line 787
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mOriginalAddress:Ljava/lang/String;

    .line 788
    return-void
.end method

.method public setRemoteVideoCapable(Z)V
    .locals 3
    .param p1, "capable"    # Z

    .prologue
    .line 624
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mRemoteVideoCapable:Z

    .line 625
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 626
    .local v1, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget-boolean v2, p0, Lcom/android/internal/telephony/Connection;->mRemoteVideoCapable:Z

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Connection$Listener;->onRemoteVideoCapabilityChanged(Z)V

    goto :goto_0

    .line 628
    .end local v1    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "userdata"    # Ljava/lang/Object;

    .prologue
    .line 379
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mUserData:Ljava/lang/Object;

    .line 380
    return-void
.end method

.method public setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V
    .locals 3
    .param p1, "videoProvider"    # Landroid/telecom/Connection$VideoProvider;

    .prologue
    .line 692
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    .line 693
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 694
    .local v1, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Connection$Listener;->onVideoProviderChanged(Landroid/telecom/Connection$VideoProvider;)V

    goto :goto_0

    .line 696
    .end local v1    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public setVideoState(I)V
    .locals 3
    .param p1, "videoState"    # I

    .prologue
    .line 600
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mVideoState:I

    .line 601
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 602
    .local v1, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget v2, p0, Lcom/android/internal/telephony/Connection;->mVideoState:I

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Connection$Listener;->onVideoStateChanged(I)V

    goto :goto_0

    .line 604
    .end local v1    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public setWifi(Z)V
    .locals 3
    .param p1, "isWifi"    # Z

    .prologue
    .line 636
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mIsWifi:Z

    .line 637
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 638
    .local v1, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget-boolean v2, p0, Lcom/android/internal/telephony/Connection;->mIsWifi:Z

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Connection$Listener;->onWifiChanged(Z)V

    goto :goto_0

    .line 640
    .end local v1    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 751
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 753
    .local v0, "str":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/android/internal/telephony/Connection;->LOG_TAG:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 754
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " pres.: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " dial: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " postdial: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " cnap name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " incoming: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " post dial state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isCdmaCwActive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->isCdmaCwActive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " isCdmaCwHolding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->isCdmaCwHolding()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public transferCall(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "msisdn"    # Ljava/lang/String;
    .param p2, "devicdId"    # Ljava/lang/String;

    .prologue
    .line 1007
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getOwner()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1008
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getIndex()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 1009
    .local v0, "rilCallIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getOwner()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v0, v2}, Lcom/android/internal/telephony/CallTracker;->transferCall(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 1011
    .end local v0    # "rilCallIndex":I
    :cond_0
    return-void
.end method

.method public updateConferenceParticipants(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 711
    .local p1, "conferenceParticipants":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/ConferenceParticipant;>;"
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 712
    .local v1, "l":Lcom/android/internal/telephony/Connection$Listener;
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Connection$Listener;->onConferenceParticipantsChanged(Ljava/util/List;)V

    goto :goto_0

    .line 714
    .end local v1    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public updateMultipartyState(Z)V
    .locals 3
    .param p1, "isMultiparty"    # Z

    .prologue
    .line 722
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 723
    .local v1, "l":Lcom/android/internal/telephony/Connection$Listener;
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Connection$Listener;->onMultipartyStateChanged(Z)V

    goto :goto_0

    .line 725
    .end local v1    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method
