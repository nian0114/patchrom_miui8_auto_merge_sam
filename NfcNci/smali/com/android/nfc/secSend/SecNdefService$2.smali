.class Lcom/android/nfc/secSend/SecNdefService$2;
.super Ljava/lang/Object;
.source "SecNdefService.java"

# interfaces
.implements Lcom/android/nfc/snep/SnepServer$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/secSend/SecNdefService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/secSend/SecNdefService;


# direct methods
.method constructor <init>(Lcom/android/nfc/secSend/SecNdefService;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/nfc/secSend/SecNdefService$2;->this$0:Lcom/android/nfc/secSend/SecNdefService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doGet(ILandroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;
    .locals 1
    .param p1, "acceptableLength"    # I
    .param p2, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 146
    const/16 v0, -0x40

    invoke-static {v0}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v0

    return-object v0
.end method

.method public doPut(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;
    .locals 1
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/nfc/secSend/SecNdefService$2;->this$0:Lcom/android/nfc/secSend/SecNdefService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/secSend/SecNdefService;->onRecvMessage(Landroid/nfc/NdefMessage;)V

    .line 142
    const/16 v0, -0x7f

    invoke-static {v0}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v0

    return-object v0
.end method
