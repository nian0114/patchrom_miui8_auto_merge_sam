.class Lcom/android/settings_ex/bluetooth/CheckBluetoothStateActivity$3;
.super Ljava/lang/Object;
.source "CheckBluetoothStateActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/bluetooth/CheckBluetoothStateActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/CheckBluetoothStateActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/CheckBluetoothStateActivity;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/CheckBluetoothStateActivity$3;->this$0:Lcom/android/settings_ex/bluetooth/CheckBluetoothStateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 146
    const-wide/16 v2, 0xfa

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    const-string v1, "CheckBluetoothStateActivity"

    const-string v2, "onCreate mDialogExist to false"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v1, 0x0

    # setter for: Lcom/android/settings_ex/bluetooth/CheckBluetoothStateActivity;->mDialogExist:Z
    invoke-static {v1}, Lcom/android/settings_ex/bluetooth/CheckBluetoothStateActivity;->access$502(Z)Z

    .line 152
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "ignored":Ljava/lang/InterruptedException;
    const-string v1, "CheckBluetoothStateActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InterruptedException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
