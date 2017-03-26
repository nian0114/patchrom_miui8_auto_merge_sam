.class final Lcom/android/nfc/secSend/SecNdefService$SecNdefMsg;
.super Ljava/lang/Object;
.source "SecNdefService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/secSend/SecNdefService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SecNdefMsg"
.end annotation


# instance fields
.field private SAP:I

.field private msg:Landroid/nfc/NdefMessage;


# direct methods
.method public constructor <init>(ILandroid/nfc/NdefMessage;)V
    .locals 1
    .param p1, "SAP"    # I
    .param p2, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/secSend/SecNdefService$SecNdefMsg;->SAP:I

    .line 339
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/secSend/SecNdefService$SecNdefMsg;->msg:Landroid/nfc/NdefMessage;

    .line 342
    iput p1, p0, Lcom/android/nfc/secSend/SecNdefService$SecNdefMsg;->SAP:I

    .line 343
    iput-object p2, p0, Lcom/android/nfc/secSend/SecNdefService$SecNdefMsg;->msg:Landroid/nfc/NdefMessage;

    .line 344
    return-void
.end method


# virtual methods
.method public getMsg()Landroid/nfc/NdefMessage;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/nfc/secSend/SecNdefService$SecNdefMsg;->msg:Landroid/nfc/NdefMessage;

    return-object v0
.end method

.method public getSAP()I
    .locals 1

    .prologue
    .line 347
    iget v0, p0, Lcom/android/nfc/secSend/SecNdefService$SecNdefMsg;->SAP:I

    return v0
.end method
