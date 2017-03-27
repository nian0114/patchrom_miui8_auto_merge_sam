.class Lcom/android/settings_ex/wifi/WifiSettings$11;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiSettings;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiSettings;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1593
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettings$11;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    iput-object p2, p0, Lcom/android/settings_ex/wifi/WifiSettings$11;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1597
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings$11;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiSettings;->access$200(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/WifiDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings$11;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiSettings;->access$200(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/WifiDialog;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings_ex/wifi/WifiDialog;->mCurrentFocusView:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 1598
    const-string v1, "WifiSettings"

    const-string v2, "[onResume], mDialog isShowing(), showSoftInput() !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings$11;->val$activity:Landroid/app/Activity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1600
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 1601
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings$11;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiSettings;->access$200(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/WifiDialog;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings_ex/wifi/WifiDialog;->mCurrentFocusView:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1604
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method
