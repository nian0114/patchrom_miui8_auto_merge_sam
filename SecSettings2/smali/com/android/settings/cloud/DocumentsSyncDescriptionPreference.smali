.class public Lcom/android/settings_ex/cloud/DocumentsSyncDescriptionPreference;
.super Landroid/preference/Preference;
.source "DocumentsSyncDescriptionPreference.java"


# instance fields
.field private dividerView:Landroid/view/View;

.field private syncDescriptionTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    iput-object v0, p0, Lcom/android/settings_ex/cloud/DocumentsSyncDescriptionPreference;->syncDescriptionTextView:Landroid/widget/TextView;

    .line 15
    iput-object v0, p0, Lcom/android/settings_ex/cloud/DocumentsSyncDescriptionPreference;->dividerView:Landroid/view/View;

    .line 20
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 24
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 25
    const v2, 0x7f0d04e8

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/cloud/DocumentsSyncDescriptionPreference;->syncDescriptionTextView:Landroid/widget/TextView;

    .line 26
    iget-object v2, p0, Lcom/android/settings_ex/cloud/DocumentsSyncDescriptionPreference;->syncDescriptionTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/android/settings_ex/cloud/DocumentsSyncDescriptionPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e1299

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 28
    .local v1, "vendorName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/cloud/DocumentsSyncDescriptionPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e129f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/settings_ex/cloud/CloudSettings;->getInstance()Lcom/android/settings_ex/cloud/CloudSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings_ex/cloud/CloudSettings;->getDocumentSyncFolderName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "text":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/cloud/DocumentsSyncDescriptionPreference;->syncDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .end local v0    # "text":Ljava/lang/String;
    .end local v1    # "vendorName":Ljava/lang/String;
    :cond_0
    const v2, 0x7f0d0120

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/cloud/DocumentsSyncDescriptionPreference;->dividerView:Landroid/view/View;

    .line 32
    iget-object v2, p0, Lcom/android/settings_ex/cloud/DocumentsSyncDescriptionPreference;->dividerView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 33
    invoke-static {}, Lcom/android/settings_ex/cloud/CloudSettings;->getInstance()Lcom/android/settings_ex/cloud/CloudSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings_ex/cloud/CloudSettings;->isDocumentSync()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 34
    iget-object v2, p0, Lcom/android/settings_ex/cloud/DocumentsSyncDescriptionPreference;->dividerView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 39
    :cond_1
    :goto_0
    return-void

    .line 36
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/cloud/DocumentsSyncDescriptionPreference;->dividerView:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method showDivider(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings_ex/cloud/DocumentsSyncDescriptionPreference;->dividerView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 43
    if-eqz p1, :cond_1

    .line 44
    iget-object v0, p0, Lcom/android/settings_ex/cloud/DocumentsSyncDescriptionPreference;->dividerView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/cloud/DocumentsSyncDescriptionPreference;->dividerView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
