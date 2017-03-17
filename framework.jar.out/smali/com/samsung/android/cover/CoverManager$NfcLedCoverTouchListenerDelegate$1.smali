.class Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate$1;
.super Landroid/os/Handler;
.source "CoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;-><init>(Lcom/samsung/android/cover/CoverManager;Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;

.field final synthetic val$this$0:Lcom/samsung/android/cover/CoverManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;Landroid/os/Looper;Lcom/samsung/android/cover/CoverManager;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 890
    iput-object p1, p0, Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate$1;->this$1:Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;

    iput-object p3, p0, Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate$1;->val$this$0:Lcom/samsung/android/cover/CoverManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 893
    iget-object v0, p0, Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate$1;->this$1:Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;

    # getter for: Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;
    invoke-static {v0}, Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;->access$300(Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;)Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 894
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 905
    :cond_0
    :goto_0
    return-void

    .line 896
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate$1;->this$1:Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;

    # getter for: Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;
    invoke-static {v0}, Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;->access$300(Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;)Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;->onCoverTouchAccept()V

    goto :goto_0

    .line 899
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate$1;->this$1:Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;

    # getter for: Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;
    invoke-static {v0}, Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;->access$300(Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;)Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;->onCoverTouchReject()V

    goto :goto_0

    .line 894
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
