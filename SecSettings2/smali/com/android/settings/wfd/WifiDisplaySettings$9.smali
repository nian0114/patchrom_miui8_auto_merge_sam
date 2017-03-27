.class Lcom/android/settings_ex/wfd/WifiDisplaySettings$9;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)V
    .locals 0

    .prologue
    .line 1418
    iput-object p1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$9;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1421
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$9;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mPendingChanges:I
    invoke-static {v1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->access$1600(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)I

    move-result v0

    .line 1422
    .local v0, "changes":I
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$9;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    const/4 v2, 0x0

    # setter for: Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mPendingChanges:I
    invoke-static {v1, v2}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->access$1602(Lcom/android/settings_ex/wfd/WifiDisplaySettings;I)I

    .line 1423
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$9;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->update(I)V

    .line 1424
    return-void
.end method
