.class Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$38;
.super Ljava/lang/Object;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->showFirstTimePoup(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V
    .locals 0

    .prologue
    .line 1541
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$38;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v3, 0x1

    .line 1543
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$38;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->nevershowagain:Z
    invoke-static {v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$2700(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1544
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$38;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$38;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$400(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "dontshowmemhsfirsttime"

    # invokes: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->putBooleanSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$2800(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1546
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$38;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    # invokes: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->setSoftapEnabled(Z)V
    invoke-static {v0, v3}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$2900(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;Z)V

    .line 1547
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$38;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->finish()V

    .line 1548
    return-void
.end method
