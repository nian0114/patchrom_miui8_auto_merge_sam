.class public Lcom/sec/android/app/camera/setting/SettingPreference;
.super Landroid/preference/Preference;
.source "SettingPreference.java"


# instance fields
.field private mSummaryDescription:Ljava/lang/String;

.field private mTitleDescription:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 51
    const v2, 0x1020016

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 52
    .local v1, "titleView":Landroid/widget/TextView;
    const v2, 0x1020010

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 54
    .local v0, "summaryView":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/SettingPreference;->mTitleDescription:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 55
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/SettingPreference;->mTitleDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 58
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/SettingPreference;->mSummaryDescription:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 59
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/SettingPreference;->mSummaryDescription:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 61
    :cond_1
    return-void
.end method

.method public setSummaryDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "summaryDescription"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/SettingPreference;->mSummaryDescription:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setTitleDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "titleDescription"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/SettingPreference;->mTitleDescription:Ljava/lang/String;

    .line 45
    return-void
.end method
