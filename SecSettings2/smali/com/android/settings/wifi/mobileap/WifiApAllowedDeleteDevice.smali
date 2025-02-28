.class Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedDeleteDevice;
.super Landroid/preference/CheckBoxPreference;
.source "WifiApAllowedDeleteDevice.java"


# instance fields
.field private mIsTablet:Z

.field private mMac:Ljava/lang/String;

.field private mMacView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-static {p1}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedDeleteDevice;->mIsTablet:Z

    .line 35
    const v0, 0x7f040243

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedDeleteDevice;->setLayoutResource(I)V

    .line 36
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 54
    instance-of v1, p1, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedDeleteDevice;

    if-nez v1, :cond_0

    .line 55
    const/4 v1, 0x1

    .line 58
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 57
    check-cast v0, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedDeleteDevice;

    .line 58
    .local v0, "other":Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedDeleteDevice;
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedDeleteDevice;->mMac:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedDeleteDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 27
    check-cast p1, Landroid/preference/Preference;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedDeleteDevice;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 41
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedDeleteDevice;->mMacView:Landroid/widget/TextView;

    .line 42
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedDeleteDevice;->mMacView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedDeleteDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedDeleteDevice;->mMacView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "mac"    # Ljava/lang/CharSequence;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 49
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedDeleteDevice;->mMac:Ljava/lang/String;

    .line 50
    return-void
.end method
