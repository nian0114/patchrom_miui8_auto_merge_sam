.class Lcom/android/settings_ex/deviceinfo/StatusVZW$5;
.super Landroid/database/ContentObserver;
.source "StatusVZW.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/StatusVZW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/StatusVZW;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/StatusVZW;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/StatusVZW$5;->this$0:Lcom/android/settings_ex/deviceinfo/StatusVZW;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StatusVZW$5;->this$0:Lcom/android/settings_ex/deviceinfo/StatusVZW;

    # getter for: Lcom/android/settings_ex/deviceinfo/StatusVZW;->mPhone:[Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/settings_ex/deviceinfo/StatusVZW;->access$1000(Lcom/android/settings_ex/deviceinfo/StatusVZW;)[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StatusVZW$5;->this$0:Lcom/android/settings_ex/deviceinfo/StatusVZW;

    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/StatusVZW;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StatusVZW$5;->this$0:Lcom/android/settings_ex/deviceinfo/StatusVZW;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StatusVZW$5;->this$0:Lcom/android/settings_ex/deviceinfo/StatusVZW;

    # getter for: Lcom/android/settings_ex/deviceinfo/StatusVZW;->mActivePhone:I
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/StatusVZW;->access$800(Lcom/android/settings_ex/deviceinfo/StatusVZW;)I

    move-result v1

    # invokes: Lcom/android/settings_ex/deviceinfo/StatusVZW;->updateStatus(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/deviceinfo/StatusVZW;->access$1100(Lcom/android/settings_ex/deviceinfo/StatusVZW;I)V

    .line 415
    :cond_0
    return-void
.end method
