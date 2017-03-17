.class public Lcom/sec/epdg/RfcIkeError;
.super Ljava/lang/Object;
.source "RfcIkeError.java"


# static fields
.field public static final AUTHENTICATION_FAILED:I = 0x18

.field public static final CHILD_SA_NOT_FOUND:I = 0x2c

.field public static final FAILED_CP_REQUIRED:I = 0x25

.field public static final INTERNAL_ADDRESS_FAILURE:I = 0x24

.field public static final INVALID_IKE_SPI:I = 0x4

.field public static final INVALID_KE_PAYLOAD:I = 0x11

.field public static final INVALID_MAJOR_VERSION:I = 0x5

.field public static final INVALID_MESSAGE_ID:I = 0x9

.field public static final INVALID_SELECTORS:I = 0x27

.field public static final INVALID_SPI:I = 0xb

.field public static final INVALID_SYNTAX:I = 0x7

.field public static final NO_ADDITIONAL_SAS:I = 0x23

.field public static final NO_PROPOSAL_CHOSEN:I = 0xe

.field public static final PDN_CONNECTION_REJECTTION:I = 0x2000

.field public static final SINGLE_PAIR_REQUIRED:I = 0x22

.field public static final TEMPORARY_FAILURE:I = 0x2b

.field public static final TS_UNACCEPTABLE:I = 0x26

.field public static final UNKNOWN:I = 0x0

.field public static final UNSUPPORTED_CRITICAL_PAYLOAD:I = 0x1


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static getRfcIkeErrorCode(I)I
    .locals 1
    .param p0, "code"    # I

    .prologue
    const/4 v0, 0x0

    .line 31
    sparse-switch p0, :sswitch_data_0

    .line 71
    :goto_0
    :sswitch_0
    return v0

    .line 35
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 37
    :sswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 39
    :sswitch_3
    const/4 v0, 0x5

    goto :goto_0

    .line 41
    :sswitch_4
    const/4 v0, 0x7

    goto :goto_0

    .line 43
    :sswitch_5
    const/16 v0, 0x9

    goto :goto_0

    .line 45
    :sswitch_6
    const/16 v0, 0xb

    goto :goto_0

    .line 47
    :sswitch_7
    const/16 v0, 0xe

    goto :goto_0

    .line 49
    :sswitch_8
    const/16 v0, 0x11

    goto :goto_0

    .line 51
    :sswitch_9
    const/16 v0, 0x18

    goto :goto_0

    .line 53
    :sswitch_a
    const/16 v0, 0x22

    goto :goto_0

    .line 55
    :sswitch_b
    const/16 v0, 0x23

    goto :goto_0

    .line 57
    :sswitch_c
    const/16 v0, 0x24

    goto :goto_0

    .line 59
    :sswitch_d
    const/16 v0, 0x25

    goto :goto_0

    .line 61
    :sswitch_e
    const/16 v0, 0x26

    goto :goto_0

    .line 63
    :sswitch_f
    const/16 v0, 0x27

    goto :goto_0

    .line 65
    :sswitch_10
    const/16 v0, 0x2b

    goto :goto_0

    .line 67
    :sswitch_11
    const/16 v0, 0x2c

    goto :goto_0

    .line 69
    :sswitch_12
    const/16 v0, 0x2000

    goto :goto_0

    .line 31
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x7 -> :sswitch_4
        0x9 -> :sswitch_5
        0xb -> :sswitch_6
        0xe -> :sswitch_7
        0x11 -> :sswitch_8
        0x18 -> :sswitch_9
        0x22 -> :sswitch_a
        0x23 -> :sswitch_b
        0x24 -> :sswitch_c
        0x25 -> :sswitch_d
        0x26 -> :sswitch_e
        0x27 -> :sswitch_f
        0x2b -> :sswitch_10
        0x2c -> :sswitch_11
        0x2000 -> :sswitch_12
    .end sparse-switch
.end method

.method protected static printRfcIkeErrorCode(I)Ljava/lang/String;
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, "result":Ljava/lang/String;
    sparse-switch p0, :sswitch_data_0

    .line 132
    const-string/jumbo v0, "null"

    .line 134
    :goto_0
    return-object v0

    .line 78
    :sswitch_0
    const-string v0, "UNSUPPORTED_CRITICAL_PAYLOAD"

    .line 79
    goto :goto_0

    .line 81
    :sswitch_1
    const-string v0, "INVALID_IKE_SPI"

    .line 82
    goto :goto_0

    .line 84
    :sswitch_2
    const-string v0, "INVALID_MAJOR_VERSION"

    .line 85
    goto :goto_0

    .line 87
    :sswitch_3
    const-string v0, "INVALID_SYNTAX"

    .line 88
    goto :goto_0

    .line 90
    :sswitch_4
    const-string v0, "INVALID_MESSAGE_ID"

    .line 91
    goto :goto_0

    .line 93
    :sswitch_5
    const-string v0, "INVALID_SPI"

    .line 94
    goto :goto_0

    .line 96
    :sswitch_6
    const-string v0, "NO_PROPOSAL_CHOSEN"

    .line 97
    goto :goto_0

    .line 99
    :sswitch_7
    const-string v0, "INVALID_KE_PAYLOAD"

    .line 100
    goto :goto_0

    .line 102
    :sswitch_8
    const-string v0, "AUTHENTICATION_FAILED"

    .line 103
    goto :goto_0

    .line 105
    :sswitch_9
    const-string v0, "SINGLE_PAIR_REQUIRED"

    .line 106
    goto :goto_0

    .line 108
    :sswitch_a
    const-string v0, "NO_ADDITIONAL_SAS"

    .line 109
    goto :goto_0

    .line 111
    :sswitch_b
    const-string v0, "INTERNAL_ADDRESS_FAILURE"

    .line 112
    goto :goto_0

    .line 114
    :sswitch_c
    const-string v0, "FAILED_CP_REQUIRED"

    .line 115
    goto :goto_0

    .line 117
    :sswitch_d
    const-string v0, "TS_UNACCEPTABLE"

    .line 118
    goto :goto_0

    .line 120
    :sswitch_e
    const-string v0, "INVALID_SELECTORS"

    .line 121
    goto :goto_0

    .line 123
    :sswitch_f
    const-string v0, "TEMPORARY_FAILURE"

    .line 124
    goto :goto_0

    .line 126
    :sswitch_10
    const-string v0, "CHILD_SA_NOT_FOUND"

    .line 127
    goto :goto_0

    .line 129
    :sswitch_11
    const-string v0, "PDN_CONNECTION_REJECTTION"

    .line 130
    goto :goto_0

    .line 76
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0x7 -> :sswitch_3
        0x9 -> :sswitch_4
        0xb -> :sswitch_5
        0xe -> :sswitch_6
        0x11 -> :sswitch_7
        0x18 -> :sswitch_8
        0x22 -> :sswitch_9
        0x23 -> :sswitch_a
        0x24 -> :sswitch_b
        0x25 -> :sswitch_c
        0x26 -> :sswitch_d
        0x27 -> :sswitch_e
        0x2b -> :sswitch_f
        0x2c -> :sswitch_10
        0x2000 -> :sswitch_11
    .end sparse-switch
.end method
