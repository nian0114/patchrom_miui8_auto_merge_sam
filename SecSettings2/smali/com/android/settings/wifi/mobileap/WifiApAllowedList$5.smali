.class Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList$5;
.super Ljava/lang/Object;
.source "WifiApAllowedList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;->startDeletePreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;)V
    .locals 0

    .prologue
    .line 428
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList$5;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 430
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList$5;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;->mSelectAllCheck:Landroid/view/View;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;->access$800(Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Checkable;

    invoke-interface {v2}, Landroid/widget/Checkable;->isChecked()Z

    move-result v1

    .line 431
    .local v1, "isChecked":Z
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList$5;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;->mSelectAllCheck:Landroid/view/View;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;->access$800(Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Checkable;

    if-nez v1, :cond_1

    move v3, v4

    :goto_0
    invoke-interface {v2, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 432
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList$5;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;->cb:Landroid/view/ActionMode$Callback;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;->access$900(Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;)Landroid/view/ActionMode$Callback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 433
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList$5;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;->cb:Landroid/view/ActionMode$Callback;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;->access$900(Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;)Landroid/view/ActionMode$Callback;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;

    if-nez v1, :cond_2

    move v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;->setDeleteEnabled(Z)V

    .line 434
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList$5;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;->mSelectAllCheck:Landroid/view/View;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;->access$800(Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 435
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList$5;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;->access$1000(Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 436
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList$5;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;

    # getter for: Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;->access$1000(Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedDeleteDevice;

    check-cast v2, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedDeleteDevice;

    if-nez v1, :cond_3

    move v3, v4

    :goto_3
    invoke-virtual {v2, v3}, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedDeleteDevice;->setChecked(Z)V

    .line 435
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "i":I
    :cond_1
    move v3, v5

    .line 431
    goto :goto_0

    :cond_2
    move v3, v5

    .line 433
    goto :goto_1

    .restart local v0    # "i":I
    :cond_3
    move v3, v5

    .line 436
    goto :goto_3

    .line 438
    :cond_4
    return-void
.end method
