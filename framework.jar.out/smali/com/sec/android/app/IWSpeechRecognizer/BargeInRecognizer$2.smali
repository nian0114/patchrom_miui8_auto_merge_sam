.class Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer$2;
.super Landroid/os/Handler;
.source "BargeInRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->start(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer$2;->this$0:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 154
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "commandType"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 155
    .local v0, "result":I
    iget-object v1, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer$2;->this$0:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    iget-object v2, p0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer$2;->this$0:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    # getter for: Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->mStopHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->access$100(Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;)Landroid/os/Handler;

    move-result-object v2

    # invokes: Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->delayedStartBargeIn(ILandroid/os/Handler;)V
    invoke-static {v1, v0, v2}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->access$200(Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;ILandroid/os/Handler;)V

    .line 156
    return-void
.end method
