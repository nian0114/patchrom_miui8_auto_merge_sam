.class Lcom/android/settings_ex/nfc/NfcListenStatusChange$NfcTypeScreen;
.super Ljava/lang/Thread;
.source "NfcListenStatusChange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/nfc/NfcListenStatusChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NfcTypeScreen"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/nfc/NfcListenStatusChange;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/nfc/NfcListenStatusChange;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/android/settings_ex/nfc/NfcListenStatusChange$NfcTypeScreen;->this$0:Lcom/android/settings_ex/nfc/NfcListenStatusChange;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcListenStatusChange$NfcTypeScreen;->this$0:Lcom/android/settings_ex/nfc/NfcListenStatusChange;

    iget-object v0, v0, Lcom/android/settings_ex/nfc/NfcListenStatusChange;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings_ex/nfc/NfcListenStatusChange$NfcTypeScreen$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/nfc/NfcListenStatusChange$NfcTypeScreen$1;-><init>(Lcom/android/settings_ex/nfc/NfcListenStatusChange$NfcTypeScreen;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 353
    return-void
.end method
