.class Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$5;
.super Ljava/lang/Object;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->onCreate(Landroid/os/Bundle;)V
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
    .line 380
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$5;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$5;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mApEnableWarnDoNotShowAgain:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$800(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/widget/CheckBox;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$5;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mApEnableWarnDoNotShowAgain:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$800(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 384
    return-void

    .line 383
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
