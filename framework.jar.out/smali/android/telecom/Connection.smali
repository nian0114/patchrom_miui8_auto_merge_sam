.class public abstract Landroid/telecom/Connection;
.super Landroid/telecom/Conferenceable;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Connection$FailureSignalingConnection;,
        Landroid/telecom/Connection$VideoProvider;,
        Landroid/telecom/Connection$Listener;
    }
.end annotation


# static fields
.field public static final CAPABILITY_CALL_TRANSFER:I = 0x4000000

.field public static final CAPABILITY_CAN_PAUSE_VIDEO:I = 0x100000

.field public static final CAPABILITY_CAN_UPGRADE_TO_VIDEO:I = 0x80000

.field public static final CAPABILITY_CONFERENCE_HAS_NO_CHILDREN:I = 0x200000

.field public static final CAPABILITY_CONTROL_WAITINGCALL:I = 0x2000000

.field public static final CAPABILITY_DISCONNECT_FROM_CONFERENCE:I = 0x2000

.field public static final CAPABILITY_GENERIC_CONFERENCE:I = 0x4000

.field public static final CAPABILITY_GROUP_CALL:I = 0x800000

.field public static final CAPABILITY_HIGH_DEF_AUDIO:I = 0x8000

.field public static final CAPABILITY_HOLD:I = 0x1

.field public static final CAPABILITY_MANAGE_CONFERENCE:I = 0x80

.field public static final CAPABILITY_MERGE_CONFERENCE:I = 0x4

.field public static final CAPABILITY_MUTE:I = 0x40

.field public static final CAPABILITY_RESPOND_VIA_TEXT:I = 0x20

.field public static final CAPABILITY_ROAMING_AREA:I = 0x400000

.field public static final CAPABILITY_SEPARATE_FROM_CONFERENCE:I = 0x1000

.field public static final CAPABILITY_SESSION_MODIFY:I = 0x1000000

.field public static final CAPABILITY_SHOW_CALLBACK_NUMBER:I = 0x20000

.field public static final CAPABILITY_SPEED_UP_MT_AUDIO:I = 0x40000

.field public static final CAPABILITY_SUPPORTS_VT_LOCAL_BIDIRECTIONAL:I = 0x300

.field public static final CAPABILITY_SUPPORTS_VT_LOCAL_RX:I = 0x100

.field public static final CAPABILITY_SUPPORTS_VT_LOCAL_TX:I = 0x200

.field public static final CAPABILITY_SUPPORTS_VT_REMOTE_BIDIRECTIONAL:I = 0xc00

.field public static final CAPABILITY_SUPPORTS_VT_REMOTE_RX:I = 0x400

.field public static final CAPABILITY_SUPPORTS_VT_REMOTE_TX:I = 0x800

.field public static final CAPABILITY_SUPPORT_HOLD:I = 0x2

.field public static final CAPABILITY_SWAP_CONFERENCE:I = 0x8

.field public static final CAPABILITY_UNUSED:I = 0x10

.field public static final CAPABILITY_VOICE_PRIVACY:I = 0x8000000

.field public static final CAPABILITY_WIFI:I = 0x10000

.field public static final EXTRA_CALL_SUBJECT:Ljava/lang/String; = "android.telecom.extra.CALL_SUBJECT"

.field public static final EXTRA_CHILD_ADDRESS:Ljava/lang/String; = "android.telecom.extra.CHILD_ADDRESS"

.field public static final EXTRA_LAST_FORWARDED_NUMBER:Ljava/lang/String; = "android.telecom.extra.LAST_FORWARDED_NUMBER"

.field private static final PII_DEBUG:Z

.field public static final STATE_ACTIVE:I = 0x4

.field public static final STATE_DIALING:I = 0x3

.field public static final STATE_DISCONNECTED:I = 0x6

.field public static final STATE_HOLDING:I = 0x5

.field public static final STATE_INITIALIZING:I = 0x0

.field public static final STATE_NEW:I = 0x1

.field public static final STATE_RINGING:I = 0x2


# instance fields
.field private mAddress:Landroid/net/Uri;

.field private mAddressPresentation:I

.field private mAudioModeIsVoip:Z

.field private mCallAudioState:Landroid/telecom/CallAudioState;

.field private mCallerDisplayName:Ljava/lang/String;

.field private mCallerDisplayNamePresentation:I

.field private mConference:Landroid/telecom/Conference;

.field private final mConferenceDeathListener:Landroid/telecom/Conference$Listener;

.field private final mConferenceables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Conferenceable;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectTimeMillis:J

.field private mConnectionCapabilities:I

.field private final mConnectionDeathListener:Landroid/telecom/Connection$Listener;

.field private mConnectionService:Landroid/telecom/ConnectionService;

.field private mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private mExtras:Landroid/os/Bundle;

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/telecom/Connection$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mRingbackRequested:Z

.field private mState:I

.field private mStatusHints:Landroid/telecom/StatusHints;

.field private final mUnmodifiableConferenceables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Conferenceable;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoProvider:Landroid/telecom/Connection$VideoProvider;

.field private mVideoState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/Connection;->PII_DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1145
    invoke-direct {p0}, Landroid/telecom/Conferenceable;-><init>()V

    .line 1095
    new-instance v0, Landroid/telecom/Connection$1;

    invoke-direct {v0, p0}, Landroid/telecom/Connection$1;-><init>(Landroid/telecom/Connection;)V

    iput-object v0, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    .line 1104
    new-instance v0, Landroid/telecom/Connection$2;

    invoke-direct {v0, p0}, Landroid/telecom/Connection$2;-><init>(Landroid/telecom/Connection;)V

    iput-object v0, p0, Landroid/telecom/Connection;->mConferenceDeathListener:Landroid/telecom/Conference$Listener;

    .line 1118
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    .line 1120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    .line 1121
    iget-object v0, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Connection;->mUnmodifiableConferenceables:Ljava/util/List;

    .line 1124
    iput v3, p0, Landroid/telecom/Connection;->mState:I

    .line 1130
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    .line 1134
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/telecom/Connection;->mConnectTimeMillis:J

    .line 1145
    return-void
.end method

.method static synthetic access$300(Landroid/telecom/Connection;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/telecom/Connection;

    .prologue
    .line 54
    iget-object v0, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Landroid/telecom/Connection;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/Connection;

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/telecom/Connection;->fireOnConferenceableConnectionsChanged()V

    return-void
.end method

.method public static can(II)Z
    .locals 1
    .param p0, "capabilities"    # I
    .param p1, "capability"    # I

    .prologue
    .line 328
    and-int v0, p0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static capabilitiesToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "capabilities"    # I

    .prologue
    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 365
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "[Capabilities:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    const/4 v1, 0x1

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    const-string v1, " CAPABILITY_HOLD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    :cond_0
    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 370
    const-string v1, " CAPABILITY_SUPPORT_HOLD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    :cond_1
    const/4 v1, 0x4

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 373
    const-string v1, " CAPABILITY_MERGE_CONFERENCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    :cond_2
    const/16 v1, 0x8

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 376
    const-string v1, " CAPABILITY_SWAP_CONFERENCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    :cond_3
    const/16 v1, 0x20

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 379
    const-string v1, " CAPABILITY_RESPOND_VIA_TEXT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    :cond_4
    const/16 v1, 0x40

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 382
    const-string v1, " CAPABILITY_MUTE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    :cond_5
    const/16 v1, 0x80

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 385
    const-string v1, " CAPABILITY_MANAGE_CONFERENCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    :cond_6
    const/16 v1, 0x100

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 388
    const-string v1, " CAPABILITY_SUPPORTS_VT_LOCAL_RX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    :cond_7
    const/16 v1, 0x200

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 391
    const-string v1, " CAPABILITY_SUPPORTS_VT_LOCAL_TX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    :cond_8
    const/16 v1, 0x300

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 394
    const-string v1, " CAPABILITY_SUPPORTS_VT_LOCAL_BIDIRECTIONAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    :cond_9
    const/16 v1, 0x400

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 397
    const-string v1, " CAPABILITY_SUPPORTS_VT_REMOTE_RX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    :cond_a
    const/16 v1, 0x800

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 400
    const-string v1, " CAPABILITY_SUPPORTS_VT_REMOTE_TX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    :cond_b
    const/16 v1, 0xc00

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 403
    const-string v1, " CAPABILITY_SUPPORTS_VT_REMOTE_BIDIRECTIONAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    :cond_c
    const v1, 0x8000

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 406
    const-string v1, " CAPABILITY_HIGH_DEF_AUDIO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    :cond_d
    const/high16 v1, 0x10000

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 409
    const-string v1, " CAPABILITY_WIFI"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    :cond_e
    const/16 v1, 0x4000

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 412
    const-string v1, " CAPABILITY_GENERIC_CONFERENCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    :cond_f
    const/high16 v1, 0x20000

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 415
    const-string v1, " CAPABILITY_SHOW_CALLBACK_NUMBER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    :cond_10
    const/high16 v1, 0x40000

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 418
    const-string v1, " CAPABILITY_SPEED_UP_MT_AUDIO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    :cond_11
    const/high16 v1, 0x80000

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 421
    const-string v1, " CAPABILITY_CAN_UPGRADE_TO_VIDEO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    :cond_12
    const/high16 v1, 0x100000

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 424
    const-string v1, " CAPABILITY_CAN_PAUSE_VIDEO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    :cond_13
    const/high16 v1, 0x200000

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 427
    const-string v1, " CAPABILITY_SINGLE_PARTY_CONFERENCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    :cond_14
    const/high16 v1, 0x400000

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 431
    const-string v1, " CAPABILITY_ROAMING_AREA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    :cond_15
    const/high16 v1, 0x800000

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 434
    const-string v1, " CAPABILITY_GROUP_CALL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    :cond_16
    const/high16 v1, 0x1000000

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 437
    const-string v1, " CAPABILITY_SESSION_MODIFY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    :cond_17
    const/high16 v1, 0x2000000

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 440
    const-string v1, " CAPABILITY_CONTROL_WAITINGCALL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    :cond_18
    const/high16 v1, 0x4000000

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 443
    const-string v1, " CAPABILITY_CALL_TRANSFER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    :cond_19
    const/high16 v1, 0x8000000

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 446
    const-string v1, " CAPABILITY_VOICE_PRIVACY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    :cond_1a
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private final clearConferenceableList()V
    .locals 5

    .prologue
    .line 1935
    iget-object v4, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conferenceable;

    .line 1936
    .local v0, "c":Landroid/telecom/Conferenceable;
    instance-of v4, v0, Landroid/telecom/Connection;

    if-eqz v4, :cond_1

    move-object v2, v0

    .line 1937
    check-cast v2, Landroid/telecom/Connection;

    .line 1938
    .local v2, "connection":Landroid/telecom/Connection;
    iget-object v4, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v2, v4}, Landroid/telecom/Connection;->removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    goto :goto_0

    .line 1939
    .end local v2    # "connection":Landroid/telecom/Connection;
    :cond_1
    instance-of v4, v0, Landroid/telecom/Conference;

    if-eqz v4, :cond_0

    move-object v1, v0

    .line 1940
    check-cast v1, Landroid/telecom/Conference;

    .line 1941
    .local v1, "conference":Landroid/telecom/Conference;
    iget-object v4, p0, Landroid/telecom/Connection;->mConferenceDeathListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {v1, v4}, Landroid/telecom/Conference;->removeListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    goto :goto_0

    .line 1944
    .end local v0    # "c":Landroid/telecom/Conferenceable;
    .end local v1    # "conference":Landroid/telecom/Conference;
    :cond_2
    iget-object v4, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1945
    return-void
.end method

.method public static createCanceledConnection()Landroid/telecom/Connection;
    .locals 3

    .prologue
    .line 1919
    new-instance v0, Landroid/telecom/Connection$FailureSignalingConnection;

    new-instance v1, Landroid/telecom/DisconnectCause;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-direct {v0, v1}, Landroid/telecom/Connection$FailureSignalingConnection;-><init>(Landroid/telecom/DisconnectCause;)V

    return-object v0
.end method

.method public static createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;
    .locals 1
    .param p0, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    .line 1895
    new-instance v0, Landroid/telecom/Connection$FailureSignalingConnection;

    invoke-direct {v0, p0}, Landroid/telecom/Connection$FailureSignalingConnection;-><init>(Landroid/telecom/DisconnectCause;)V

    return-object v0
.end method

.method private final fireConferenceChanged()V
    .locals 3

    .prologue
    .line 1929
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1930
    .local v1, "l":Landroid/telecom/Connection$Listener;
    iget-object v2, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Connection$Listener;->onConferenceChanged(Landroid/telecom/Connection;Landroid/telecom/Conference;)V

    goto :goto_0

    .line 1932
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method private final fireOnConferenceableConnectionsChanged()V
    .locals 3

    .prologue
    .line 1923
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1924
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {p0}, Landroid/telecom/Connection;->getConferenceables()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Connection$Listener;->onConferenceablesChanged(Landroid/telecom/Connection;Ljava/util/List;)V

    goto :goto_0

    .line 1926
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method private setState(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    const/4 v5, 0x0

    .line 1854
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1855
    iget v2, p0, Landroid/telecom/Connection;->mState:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telecom/Connection;->mState:I

    if-eq v2, p1, :cond_1

    .line 1856
    const-string v2, "Connection already DISCONNECTED; cannot transition out of this state."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1867
    :cond_0
    return-void

    .line 1859
    :cond_1
    iget v2, p0, Landroid/telecom/Connection;->mState:I

    if-eq v2, p1, :cond_0

    .line 1860
    const-string/jumbo v2, "setState: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1861
    iput p1, p0, Landroid/telecom/Connection;->mState:I

    .line 1862
    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->onStateChanged(I)V

    .line 1863
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1864
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onStateChanged(Landroid/telecom/Connection;I)V

    goto :goto_0
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 5
    .param p0, "state"    # I

    .prologue
    .line 1327
    packed-switch p0, :pswitch_data_0

    .line 1343
    const-class v0, Landroid/telecom/Connection;

    const-string v1, "Unknown state %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/telecom/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1344
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 1329
    :pswitch_0
    const-string v0, "INITIALIZING"

    goto :goto_0

    .line 1331
    :pswitch_1
    const-string v0, "NEW"

    goto :goto_0

    .line 1333
    :pswitch_2
    const-string v0, "RINGING"

    goto :goto_0

    .line 1335
    :pswitch_3
    const-string v0, "DIALING"

    goto :goto_0

    .line 1337
    :pswitch_4
    const-string v0, "ACTIVE"

    goto :goto_0

    .line 1339
    :pswitch_5
    const-string v0, "HOLDING"

    goto :goto_0

    .line 1341
    :pswitch_6
    const-string v0, "DISCONNECTED"

    goto :goto_0

    .line 1327
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 1830
    if-nez p0, :cond_1

    .line 1831
    const-string p0, ""

    .line 1850
    .end local p0    # "number":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 1834
    .restart local p0    # "number":Ljava/lang/String;
    :cond_1
    sget-boolean v3, Landroid/telecom/Connection;->PII_DEBUG:Z

    if-nez v3, :cond_0

    .line 1841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1842
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1843
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1844
    .local v1, "c":C
    const/16 v3, 0x2d

    if-eq v1, v3, :cond_2

    const/16 v3, 0x40

    if-eq v1, v3, :cond_2

    const/16 v3, 0x2e

    if-ne v1, v3, :cond_3

    .line 1845
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1842
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1847
    :cond_3
    const/16 v3, 0x78

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1850
    .end local v1    # "c":C
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public addCapability(I)V
    .locals 1
    .param p1, "capability"    # I

    .prologue
    .line 359
    iget v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    .line 360
    return-void
.end method

.method public final addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;
    .locals 1
    .param p1, "l"    # Landroid/telecom/Connection$Listener;

    .prologue
    .line 1282
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1283
    return-object p0
.end method

.method public can(I)Z
    .locals 1
    .param p1, "capability"    # I

    .prologue
    .line 339
    iget v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    invoke-static {v0, p1}, Landroid/telecom/Connection;->can(II)Z

    move-result v0

    return v0
.end method

.method public checkImmutable()V
    .locals 0

    .prologue
    .line 1905
    return-void
.end method

.method public final destroy()V
    .locals 3

    .prologue
    .line 1555
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1556
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0}, Landroid/telecom/Connection$Listener;->onDestroyed(Landroid/telecom/Connection;)V

    goto :goto_0

    .line 1558
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final getAddress()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1151
    iget-object v0, p0, Landroid/telecom/Connection;->mAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public final getAddressPresentation()I
    .locals 1

    .prologue
    .line 1159
    iget v0, p0, Landroid/telecom/Connection;->mAddressPresentation:I

    return v0
.end method

.method public final getAudioModeIsVoip()Z
    .locals 1

    .prologue
    .line 1243
    iget-boolean v0, p0, Landroid/telecom/Connection;->mAudioModeIsVoip:Z

    return v0
.end method

.method public final getAudioState()Landroid/telecom/AudioState;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1208
    iget-object v0, p0, Landroid/telecom/Connection;->mCallAudioState:Landroid/telecom/CallAudioState;

    if-nez v0, :cond_0

    .line 1209
    const/4 v0, 0x0

    .line 1211
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/telecom/AudioState;

    iget-object v1, p0, Landroid/telecom/Connection;->mCallAudioState:Landroid/telecom/CallAudioState;

    invoke-direct {v0, v1}, Landroid/telecom/AudioState;-><init>(Landroid/telecom/CallAudioState;)V

    goto :goto_0
.end method

.method public final getCallAudioState()Landroid/telecom/CallAudioState;
    .locals 1

    .prologue
    .line 1220
    iget-object v0, p0, Landroid/telecom/Connection;->mCallAudioState:Landroid/telecom/CallAudioState;

    return-object v0
.end method

.method public final getCallerDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1166
    iget-object v0, p0, Landroid/telecom/Connection;->mCallerDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public final getCallerDisplayNamePresentation()I
    .locals 1

    .prologue
    .line 1174
    iget v0, p0, Landroid/telecom/Connection;->mCallerDisplayNamePresentation:I

    return v0
.end method

.method public final getConference()Landroid/telecom/Conference;
    .locals 1

    .prologue
    .line 1228
    iget-object v0, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    return-object v0
.end method

.method public final getConferenceables()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Conferenceable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1646
    iget-object v0, p0, Landroid/telecom/Connection;->mUnmodifiableConferenceables:Ljava/util/List;

    return-object v0
.end method

.method public final getConnectTimeMillis()J
    .locals 2

    .prologue
    .line 1256
    iget-wide v0, p0, Landroid/telecom/Connection;->mConnectTimeMillis:J

    return-wide v0
.end method

.method public final getConnectionCapabilities()I
    .locals 1

    .prologue
    .line 1352
    iget v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    return v0
.end method

.method public final getConnectionService()Landroid/telecom/ConnectionService;
    .locals 1

    .prologue
    .line 1678
    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    return-object v0
.end method

.method public final getDisconnectCause()Landroid/telecom/DisconnectCause;
    .locals 1

    .prologue
    .line 1305
    iget-object v0, p0, Landroid/telecom/Connection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1270
    iget-object v0, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getState()I
    .locals 1

    .prologue
    .line 1181
    iget v0, p0, Landroid/telecom/Connection;->mState:I

    return v0
.end method

.method public final getStatusHints()Landroid/telecom/StatusHints;
    .locals 1

    .prologue
    .line 1263
    iget-object v0, p0, Landroid/telecom/Connection;->mStatusHints:Landroid/telecom/StatusHints;

    return-object v0
.end method

.method public final getVideoProvider()Landroid/telecom/Connection$VideoProvider;
    .locals 1

    .prologue
    .line 1470
    iget-object v0, p0, Landroid/telecom/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    return-object v0
.end method

.method public final getVideoState()I
    .locals 1

    .prologue
    .line 1195
    iget v0, p0, Landroid/telecom/Connection;->mVideoState:I

    return v0
.end method

.method public final isRingbackRequested()Z
    .locals 1

    .prologue
    .line 1236
    iget-boolean v0, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    return v0
.end method

.method protected final notifyConferenceMergeFailed()V
    .locals 3

    .prologue
    .line 1953
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1954
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0}, Landroid/telecom/Connection$Listener;->onConferenceMergeFailed(Landroid/telecom/Connection;)V

    goto :goto_0

    .line 1956
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method protected notifyConferenceStarted()V
    .locals 3

    .prologue
    .line 1976
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1977
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1}, Landroid/telecom/Connection$Listener;->onConferenceStarted()V

    goto :goto_0

    .line 1979
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public onAbort()V
    .locals 0

    .prologue
    .line 1789
    return-void
.end method

.method public onAnswer()V
    .locals 1

    .prologue
    .line 1814
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->onAnswer(I)V

    .line 1815
    return-void
.end method

.method public onAnswer(I)V
    .locals 0
    .param p1, "videoState"    # I

    .prologue
    .line 1807
    return-void
.end method

.method public onAudioStateChanged(Landroid/telecom/AudioState;)V
    .locals 0
    .param p1, "state"    # Landroid/telecom/AudioState;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1738
    return-void
.end method

.method public onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .locals 0
    .param p1, "state"    # Landroid/telecom/CallAudioState;

    .prologue
    .line 1745
    return-void
.end method

.method public onDisconnect()V
    .locals 0

    .prologue
    .line 1770
    return-void
.end method

.method public onDisconnectConferenceParticipant(Landroid/net/Uri;)V
    .locals 0
    .param p1, "endpoint"    # Landroid/net/Uri;

    .prologue
    .line 1779
    return-void
.end method

.method public onHold()V
    .locals 0

    .prologue
    .line 1794
    return-void
.end method

.method public onPlayDtmfTone(C)V
    .locals 0
    .param p1, "c"    # C

    .prologue
    .line 1760
    return-void
.end method

.method public onPostDialContinue(Z)V
    .locals 0
    .param p1, "proceed"    # Z

    .prologue
    .line 1826
    return-void
.end method

.method public onReject()V
    .locals 0

    .prologue
    .line 1821
    return-void
.end method

.method public onSeparate()V
    .locals 0

    .prologue
    .line 1784
    return-void
.end method

.method public onStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 1753
    return-void
.end method

.method public onStopDtmfTone()V
    .locals 0

    .prologue
    .line 1765
    return-void
.end method

.method public onUnhold()V
    .locals 0

    .prologue
    .line 1799
    return-void
.end method

.method public removeCapability(I)V
    .locals 2
    .param p1, "capability"    # I

    .prologue
    .line 349
    iget v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    .line 350
    return-void
.end method

.method public final removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;
    .locals 1
    .param p1, "l"    # Landroid/telecom/Connection$Listener;

    .prologue
    .line 1295
    if-eqz p1, :cond_0

    .line 1296
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1298
    :cond_0
    return-object p0
.end method

.method public final resetConference()V
    .locals 2

    .prologue
    .line 1707
    iget-object v0, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    if-eqz v0, :cond_0

    .line 1708
    const-string v0, "Conference reset"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1709
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    .line 1710
    invoke-direct {p0}, Landroid/telecom/Connection;->fireConferenceChanged()V

    .line 1712
    :cond_0
    return-void
.end method

.method public final setActive()V
    .locals 1

    .prologue
    .line 1412
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1413
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->setRingbackRequested(Z)V

    .line 1414
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 1415
    return-void
.end method

.method public final setAddress(Landroid/net/Uri;I)V
    .locals 5
    .param p1, "address"    # Landroid/net/Uri;
    .param p2, "presentation"    # I

    .prologue
    .line 1363
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1364
    const-string/jumbo v2, "setAddress %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1365
    iput-object p1, p0, Landroid/telecom/Connection;->mAddress:Landroid/net/Uri;

    .line 1366
    iput p2, p0, Landroid/telecom/Connection;->mAddressPresentation:I

    .line 1367
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1368
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1, p2}, Landroid/telecom/Connection$Listener;->onAddressChanged(Landroid/telecom/Connection;Landroid/net/Uri;I)V

    goto :goto_0

    .line 1370
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setAudioModeIsVoip(Z)V
    .locals 3
    .param p1, "isVoip"    # Z

    .prologue
    .line 1566
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1567
    iput-boolean p1, p0, Landroid/telecom/Connection;->mAudioModeIsVoip:Z

    .line 1568
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1569
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onAudioModeIsVoipChanged(Landroid/telecom/Connection;Z)V

    goto :goto_0

    .line 1571
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method final setCallAudioState(Landroid/telecom/CallAudioState;)V
    .locals 3
    .param p1, "state"    # Landroid/telecom/CallAudioState;

    .prologue
    .line 1315
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1316
    const-string/jumbo v0, "setAudioState %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1317
    iput-object p1, p0, Landroid/telecom/Connection;->mCallAudioState:Landroid/telecom/CallAudioState;

    .line 1318
    invoke-virtual {p0}, Landroid/telecom/Connection;->getAudioState()Landroid/telecom/AudioState;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->onAudioStateChanged(Landroid/telecom/AudioState;)V

    .line 1319
    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    .line 1320
    return-void
.end method

.method public final setCallerDisplayName(Ljava/lang/String;I)V
    .locals 5
    .param p1, "callerDisplayName"    # Ljava/lang/String;
    .param p2, "presentation"    # I

    .prologue
    .line 1380
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1381
    const-string/jumbo v2, "setCallerDisplayName %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1382
    iput-object p1, p0, Landroid/telecom/Connection;->mCallerDisplayName:Ljava/lang/String;

    .line 1383
    iput p2, p0, Landroid/telecom/Connection;->mCallerDisplayNamePresentation:I

    .line 1384
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1385
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1, p2}, Landroid/telecom/Connection$Listener;->onCallerDisplayNameChanged(Landroid/telecom/Connection;Ljava/lang/String;I)V

    goto :goto_0

    .line 1387
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setConference(Landroid/telecom/Conference;)Z
    .locals 1
    .param p1, "conference"    # Landroid/telecom/Conference;

    .prologue
    .line 1690
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1692
    iget-object v0, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    if-nez v0, :cond_1

    .line 1693
    iput-object p1, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    .line 1694
    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    invoke-virtual {v0, p1}, Landroid/telecom/ConnectionService;->containsConference(Landroid/telecom/Conference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1695
    invoke-direct {p0}, Landroid/telecom/Connection;->fireConferenceChanged()V

    .line 1697
    :cond_0
    const/4 v0, 0x1

    .line 1699
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setConferenceableConnections(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Connection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1604
    .local p1, "conferenceableConnections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Connection;>;"
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1605
    invoke-direct {p0}, Landroid/telecom/Connection;->clearConferenceableList()V

    .line 1606
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    .line 1609
    .local v0, "c":Landroid/telecom/Connection;
    iget-object v2, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1610
    iget-object v2, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v0, v2}, Landroid/telecom/Connection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 1611
    iget-object v2, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1614
    .end local v0    # "c":Landroid/telecom/Connection;
    :cond_1
    invoke-direct {p0}, Landroid/telecom/Connection;->fireOnConferenceableConnectionsChanged()V

    .line 1615
    return-void
.end method

.method public final setConferenceables(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Conferenceable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1624
    .local p1, "conferenceables":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Conferenceable;>;"
    invoke-direct {p0}, Landroid/telecom/Connection;->clearConferenceableList()V

    .line 1625
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conferenceable;

    .line 1628
    .local v0, "c":Landroid/telecom/Conferenceable;
    iget-object v4, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1629
    instance-of v4, v0, Landroid/telecom/Connection;

    if-eqz v4, :cond_2

    move-object v2, v0

    .line 1630
    check-cast v2, Landroid/telecom/Connection;

    .line 1631
    .local v2, "connection":Landroid/telecom/Connection;
    iget-object v4, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v2, v4}, Landroid/telecom/Connection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 1636
    .end local v2    # "connection":Landroid/telecom/Connection;
    :cond_1
    :goto_1
    iget-object v4, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1632
    :cond_2
    instance-of v4, v0, Landroid/telecom/Conference;

    if-eqz v4, :cond_1

    move-object v1, v0

    .line 1633
    check-cast v1, Landroid/telecom/Conference;

    .line 1634
    .local v1, "conference":Landroid/telecom/Conference;
    iget-object v4, p0, Landroid/telecom/Connection;->mConferenceDeathListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {v1, v4}, Landroid/telecom/Conference;->addListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    goto :goto_1

    .line 1639
    .end local v0    # "c":Landroid/telecom/Conferenceable;
    .end local v1    # "conference":Landroid/telecom/Conference;
    :cond_3
    invoke-direct {p0}, Landroid/telecom/Connection;->fireOnConferenceableConnectionsChanged()V

    .line 1640
    return-void
.end method

.method public final setConnectTimeMillis(J)V
    .locals 1
    .param p1, "connectTimeMillis"    # J

    .prologue
    .line 1582
    iput-wide p1, p0, Landroid/telecom/Connection;->mConnectTimeMillis:J

    .line 1583
    return-void
.end method

.method public final setConnectionCapabilities(I)V
    .locals 3
    .param p1, "connectionCapabilities"    # I

    .prologue
    .line 1542
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1543
    iget v2, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    if-eq v2, p1, :cond_0

    .line 1544
    iput p1, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    .line 1545
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1546
    .local v1, "l":Landroid/telecom/Connection$Listener;
    iget v2, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Connection$Listener;->onConnectionCapabilitiesChanged(Landroid/telecom/Connection;I)V

    goto :goto_0

    .line 1549
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setConnectionService(Landroid/telecom/ConnectionService;)V
    .locals 3
    .param p1, "connectionService"    # Landroid/telecom/ConnectionService;

    .prologue
    .line 1653
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1654
    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    if-eqz v0, :cond_0

    .line 1655
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "Trying to set ConnectionService on a connection which is already associated with another ConnectionService."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Landroid/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1660
    :goto_0
    return-void

    .line 1658
    :cond_0
    iput-object p1, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    goto :goto_0
.end method

.method public final setDialing()V
    .locals 1

    .prologue
    .line 1445
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1446
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 1447
    return-void
.end method

.method public final setDisconnected(Landroid/telecom/DisconnectCause;)V
    .locals 5
    .param p1, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    .line 1480
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1481
    iput-object p1, p0, Landroid/telecom/Connection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 1482
    const/4 v2, 0x6

    invoke-direct {p0, v2}, Landroid/telecom/Connection;->setState(I)V

    .line 1483
    const-string v2, "Disconnected with cause %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1484
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1485
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onDisconnected(Landroid/telecom/Connection;Landroid/telecom/DisconnectCause;)V

    goto :goto_0

    .line 1487
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setExtras(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1722
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1723
    iput-object p1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    .line 1724
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1725
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onExtrasChanged(Landroid/telecom/Connection;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1727
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setInitialized()V
    .locals 1

    .prologue
    .line 1437
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1438
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 1439
    return-void
.end method

.method public final setInitializing()V
    .locals 1

    .prologue
    .line 1429
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1430
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 1431
    return-void
.end method

.method public final setNextPostDialChar(C)V
    .locals 3
    .param p1, "nextChar"    # C

    .prologue
    .line 1514
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1515
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1516
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onPostDialChar(Landroid/telecom/Connection;C)V

    goto :goto_0

    .line 1518
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setOnHold()V
    .locals 1

    .prologue
    .line 1453
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1454
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 1455
    return-void
.end method

.method public final setPostDialWait(Ljava/lang/String;)V
    .locals 3
    .param p1, "remaining"    # Ljava/lang/String;

    .prologue
    .line 1500
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1501
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1502
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onPostDialWait(Landroid/telecom/Connection;Ljava/lang/String;)V

    goto :goto_0

    .line 1504
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setRingbackRequested(Z)V
    .locals 3
    .param p1, "ringback"    # Z

    .prologue
    .line 1527
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1528
    iget-boolean v2, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    if-eq v2, p1, :cond_0

    .line 1529
    iput-boolean p1, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    .line 1530
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1531
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onRingbackRequested(Landroid/telecom/Connection;Z)V

    goto :goto_0

    .line 1534
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setRinging()V
    .locals 1

    .prologue
    .line 1421
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1422
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 1423
    return-void
.end method

.method public final setStatusHints(Landroid/telecom/StatusHints;)V
    .locals 3
    .param p1, "statusHints"    # Landroid/telecom/StatusHints;

    .prologue
    .line 1591
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1592
    iput-object p1, p0, Landroid/telecom/Connection;->mStatusHints:Landroid/telecom/StatusHints;

    .line 1593
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1594
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onStatusHintsChanged(Landroid/telecom/Connection;Landroid/telecom/StatusHints;)V

    goto :goto_0

    .line 1596
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V
    .locals 3
    .param p1, "videoProvider"    # Landroid/telecom/Connection$VideoProvider;

    .prologue
    .line 1462
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1463
    iput-object p1, p0, Landroid/telecom/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    .line 1464
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1465
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onVideoProviderChanged(Landroid/telecom/Connection;Landroid/telecom/Connection$VideoProvider;)V

    goto :goto_0

    .line 1467
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setVideoState(I)V
    .locals 6
    .param p1, "videoState"    # I

    .prologue
    .line 1399
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1400
    const-string/jumbo v2, "setVideoState %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1401
    iput p1, p0, Landroid/telecom/Connection;->mVideoState:I

    .line 1402
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1403
    .local v1, "l":Landroid/telecom/Connection$Listener;
    iget v2, p0, Landroid/telecom/Connection;->mVideoState:I

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Connection$Listener;->onVideoStateChanged(Landroid/telecom/Connection;I)V

    goto :goto_0

    .line 1405
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final unsetConnectionService(Landroid/telecom/ConnectionService;)V
    .locals 3
    .param p1, "connectionService"    # Landroid/telecom/ConnectionService;

    .prologue
    .line 1666
    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    if-eq v0, p1, :cond_0

    .line 1667
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "Trying to remove ConnectionService from a Connection that does not belong to the ConnectionService."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Landroid/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1672
    :goto_0
    return-void

    .line 1670
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    goto :goto_0
.end method

.method protected final updateConferenceParticipants(Ljava/util/List;)V
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
    .line 1966
    .local p1, "conferenceParticipants":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/ConferenceParticipant;>;"
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1967
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onConferenceParticipantsChanged(Landroid/telecom/Connection;Ljava/util/List;)V

    goto :goto_0

    .line 1969
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method
