.class Lcom/android/internal/telephony/cat/ReceiveDataParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field mChannelDataLength:B

.field mChannelId:I

.field mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;IBLcom/android/internal/telephony/cat/TextMessage;)V
    .locals 0
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "channelId"    # I
    .param p3, "channelDataLength"    # B
    .param p4, "textMessage"    # Lcom/android/internal/telephony/cat/TextMessage;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput p2, p0, Lcom/android/internal/telephony/cat/ReceiveDataParams;->mChannelId:I

    iput-byte p3, p0, Lcom/android/internal/telephony/cat/ReceiveDataParams;->mChannelDataLength:B

    iput-object p4, p0, Lcom/android/internal/telephony/cat/ReceiveDataParams;->mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    return-void
.end method
