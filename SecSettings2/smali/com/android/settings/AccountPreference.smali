.class public Lcom/android/settings_ex/AccountPreference;
.super Landroid/preference/Preference;
.source "AccountPreference.java"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAuthorities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mShowTypeIcon:Z

.field private mStatus:I

.field private mSyncStatusIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p5, "showTypeIcon"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/accounts/Account;",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p4, "authorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 48
    iput-object p2, p0, Lcom/android/settings_ex/AccountPreference;->mAccount:Landroid/accounts/Account;

    .line 49
    iput-object p4, p0, Lcom/android/settings_ex/AccountPreference;->mAuthorities:Ljava/util/ArrayList;

    .line 50
    iput-boolean p5, p0, Lcom/android/settings_ex/AccountPreference;->mShowTypeIcon:Z

    .line 51
    if-eqz p5, :cond_0

    .line 52
    invoke-virtual {p0, p3}, Lcom/android/settings_ex/AccountPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 56
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/AccountPreference;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/AccountPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 57
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/AccountPreference;->setPersistent(Z)V

    .line 59
    invoke-virtual {p0, v2, v1}, Lcom/android/settings_ex/AccountPreference;->setSyncStatus(IZ)V

    .line 60
    return-void

    .line 54
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/settings_ex/AccountPreference;->getSyncStatusIcon(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/AccountPreference;->setIcon(I)V

    goto :goto_0
.end method

.method private getSyncContentDescription(I)Ljava/lang/String;
    .locals 4
    .param p1, "status"    # I

    .prologue
    const v3, 0x7f0e0bf7

    .line 134
    packed-switch p1, :pswitch_data_0

    .line 144
    const-string v0, "AccountPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sync status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {p0}, Lcom/android/settings_ex/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 136
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0bf4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 138
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings_ex/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0bf5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 140
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings_ex/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 142
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings_ex/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0bf6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getSyncStatusIcon(I)I
    .locals 4
    .param p1, "status"    # I

    .prologue
    .line 115
    packed-switch p1, :pswitch_data_0

    .line 127
    const v0, 0x7f0201ce

    .line 128
    .local v0, "res":I
    const-string v1, "AccountPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown sync status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_0
    return v0

    .line 118
    .end local v0    # "res":I
    :pswitch_0
    const v0, 0x7f0201c1

    .line 119
    .restart local v0    # "res":I
    goto :goto_0

    .line 121
    .end local v0    # "res":I
    :pswitch_1
    const v0, 0x7f0201cd

    .line 122
    .restart local v0    # "res":I
    goto :goto_0

    .line 124
    .end local v0    # "res":I
    :pswitch_2
    const v0, 0x7f0201ce

    .line 125
    .restart local v0    # "res":I
    goto :goto_0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private getSyncStatusMessage(I)I
    .locals 4
    .param p1, "status"    # I

    .prologue
    .line 93
    packed-switch p1, :pswitch_data_0

    .line 107
    const v0, 0x7f0e0c06

    .line 108
    .local v0, "res":I
    const-string v1, "AccountPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown sync status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_0
    return v0

    .line 95
    .end local v0    # "res":I
    :pswitch_0
    const v0, 0x7f0e0c04

    .line 96
    .restart local v0    # "res":I
    goto :goto_0

    .line 98
    .end local v0    # "res":I
    :pswitch_1
    const v0, 0x7f0e0c05

    .line 99
    .restart local v0    # "res":I
    goto :goto_0

    .line 101
    .end local v0    # "res":I
    :pswitch_2
    const v0, 0x7f0e0c06

    .line 102
    .restart local v0    # "res":I
    goto :goto_0

    .line 104
    .end local v0    # "res":I
    :pswitch_3
    const v0, 0x7f0e0c08

    .line 105
    .restart local v0    # "res":I
    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings_ex/AccountPreference;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public getAuthorities()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings_ex/AccountPreference;->mAuthorities:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 73
    iget-boolean v0, p0, Lcom/android/settings_ex/AccountPreference;->mShowTypeIcon:Z

    if-nez v0, :cond_0

    .line 74
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/AccountPreference;->mSyncStatusIcon:Landroid/widget/ImageView;

    .line 75
    iget-object v0, p0, Lcom/android/settings_ex/AccountPreference;->mSyncStatusIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings_ex/AccountPreference;->mStatus:I

    invoke-direct {p0, v1}, Lcom/android/settings_ex/AccountPreference;->getSyncStatusIcon(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    iget-object v0, p0, Lcom/android/settings_ex/AccountPreference;->mSyncStatusIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings_ex/AccountPreference;->mStatus:I

    invoke-direct {p0, v1}, Lcom/android/settings_ex/AccountPreference;->getSyncContentDescription(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 78
    :cond_0
    return-void
.end method

.method public setSyncStatus(IZ)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "updateSummary"    # Z

    .prologue
    .line 81
    iput p1, p0, Lcom/android/settings_ex/AccountPreference;->mStatus:I

    .line 82
    iget-boolean v0, p0, Lcom/android/settings_ex/AccountPreference;->mShowTypeIcon:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/AccountPreference;->mSyncStatusIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/settings_ex/AccountPreference;->mSyncStatusIcon:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/android/settings_ex/AccountPreference;->getSyncStatusIcon(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    iget-object v0, p0, Lcom/android/settings_ex/AccountPreference;->mSyncStatusIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings_ex/AccountPreference;->mStatus:I

    invoke-direct {p0, v1}, Lcom/android/settings_ex/AccountPreference;->getSyncContentDescription(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 86
    :cond_0
    if-eqz p2, :cond_1

    .line 87
    invoke-direct {p0, p1}, Lcom/android/settings_ex/AccountPreference;->getSyncStatusMessage(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/AccountPreference;->setSummary(I)V

    .line 89
    :cond_1
    return-void
.end method
