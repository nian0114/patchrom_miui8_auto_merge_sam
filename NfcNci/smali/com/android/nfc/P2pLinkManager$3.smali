.class Lcom/android/nfc/P2pLinkManager$3;
.super Ljava/lang/Object;
.source "P2pLinkManager.java"

# interfaces
.implements Lcom/android/nfc/snep/SnepServer$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/P2pLinkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/P2pLinkManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/P2pLinkManager;)V
    .locals 0

    .prologue
    .line 1084
    iput-object p1, p0, Lcom/android/nfc/P2pLinkManager$3;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doGet(ILandroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;
    .locals 2
    .param p1, "acceptableLength"    # I
    .param p2, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 1098
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager$3;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v1, v1, Lcom/android/nfc/P2pLinkManager;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    invoke-virtual {v1, p2}, Lcom/android/nfc/handover/HandoverDataParser;->getIncomingHandoverData(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;

    move-result-object v1

    iget-object v0, v1, Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;->handoverSelect:Landroid/nfc/NdefMessage;

    .line 1099
    .local v0, "response":Landroid/nfc/NdefMessage;
    if-eqz v0, :cond_0

    .line 1100
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager$3;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v1}, Lcom/android/nfc/P2pLinkManager;->onReceiveHandover()V

    .line 1101
    invoke-static {v0}, Lcom/android/nfc/snep/SnepMessage;->getSuccessResponse(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v1

    .line 1103
    :goto_0
    return-object v1

    :cond_0
    const/16 v1, -0x20

    invoke-static {v1}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v1

    goto :goto_0
.end method

.method public doPut(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;
    .locals 1
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager$3;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/P2pLinkManager;->onReceiveComplete(Landroid/nfc/NdefMessage;)V

    .line 1088
    const/16 v0, -0x7f

    invoke-static {v0}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v0

    return-object v0
.end method
