.class Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;
.super Ljava/lang/Object;
.source "IccFileHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/IccFileHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoadPBEntryContext"
.end annotation


# instance fields
.field mCountRecords:I

.field mEfid:I

.field mLoadAll:Z

.field mOnLoaded:Landroid/os/Message;

.field mRecordNum:I

.field mTotalRecords:I

.field mUsedRecords:I

.field results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(IILandroid/os/Message;)V
    .locals 1
    .param p1, "efid"    # I
    .param p2, "recordNum"    # I
    .param p3, "onLoaded"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mEfid:I

    iput p2, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mRecordNum:I

    iput-object p3, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mOnLoaded:Landroid/os/Message;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mLoadAll:Z

    return-void
.end method

.method constructor <init>(ILandroid/os/Message;)V
    .locals 1
    .param p1, "efid"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mEfid:I

    iput v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mRecordNum:I

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mLoadAll:Z

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mOnLoaded:Landroid/os/Message;

    return-void
.end method
