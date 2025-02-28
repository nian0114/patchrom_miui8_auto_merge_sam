.class public Lcom/android/settings_ex/accounts/ProviderPreference;
.super Landroid/preference/Preference;
.source "ProviderPreference.java"


# instance fields
.field private mAccountType:Ljava/lang/String;

.field private mIsDialogGUI:Z

.field private mIsSignedIn:Z

.field private mItemSidePaddingForDialog:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "providerName"    # Ljava/lang/CharSequence;
    .param p5, "isSignedIn"    # Z

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 37
    iput-boolean v1, p0, Lcom/android/settings_ex/accounts/ProviderPreference;->mIsDialogGUI:Z

    .line 38
    iput v1, p0, Lcom/android/settings_ex/accounts/ProviderPreference;->mItemSidePaddingForDialog:I

    .line 63
    iput-object p2, p0, Lcom/android/settings_ex/accounts/ProviderPreference;->mAccountType:Ljava/lang/String;

    .line 64
    iput-boolean p5, p0, Lcom/android/settings_ex/accounts/ProviderPreference;->mIsSignedIn:Z

    .line 65
    const v0, 0x7f04001d

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/ProviderPreference;->setLayoutResource(I)V

    .line 66
    invoke-virtual {p0, p3}, Lcom/android/settings_ex/accounts/ProviderPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 67
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/accounts/ProviderPreference;->setPersistent(Z)V

    .line 68
    invoke-virtual {p0, p4}, Lcom/android/settings_ex/accounts/ProviderPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "providerName"    # Ljava/lang/CharSequence;
    .param p5, "isSignedIn"    # Z
    .param p6, "isDialogGUI"    # Z

    .prologue
    .line 52
    invoke-direct/range {p0 .. p5}, Lcom/android/settings_ex/accounts/ProviderPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Z)V

    .line 53
    iput-boolean p6, p0, Lcom/android/settings_ex/accounts/ProviderPreference;->mIsDialogGUI:Z

    .line 54
    iget-boolean v0, p0, Lcom/android/settings_ex/accounts/ProviderPreference;->mIsDialogGUI:Z

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/accounts/ProviderPreference;->mItemSidePaddingForDialog:I

    .line 57
    :cond_0
    return-void
.end method


# virtual methods
.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/settings_ex/accounts/ProviderPreference;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 83
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 102
    iget-boolean v1, p0, Lcom/android/settings_ex/accounts/ProviderPreference;->mIsDialogGUI:Z

    if-eqz v1, :cond_0

    .line 103
    iget v1, p0, Lcom/android/settings_ex/accounts/ProviderPreference;->mItemSidePaddingForDialog:I

    iget v2, p0, Lcom/android/settings_ex/accounts/ProviderPreference;->mItemSidePaddingForDialog:I

    invoke-virtual {p1, v1, v3, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 106
    :cond_0
    const v1, 0x7f0d0087

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 107
    .local v0, "loginIcon":Landroid/widget/ImageView;
    if-eqz v0, :cond_1

    .line 108
    iget-boolean v1, p0, Lcom/android/settings_ex/accounts/ProviderPreference;->mIsSignedIn:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 109
    const v1, 0x7f0201c9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 114
    :cond_1
    :goto_0
    return-void

    .line 111
    :cond_2
    const v1, 0x7f0201ca

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
