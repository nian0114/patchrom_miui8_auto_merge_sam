.class Lcom/android/settings_ex/net/DataUsageMeteredSettings$MeteredPreference;
.super Landroid/preference/SwitchPreference;
.source "DataUsageMeteredSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/net/DataUsageMeteredSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MeteredPreference"
.end annotation


# instance fields
.field private mBinding:Z

.field private final mTemplate:Landroid/net/NetworkTemplate;

.field final synthetic this$0:Lcom/android/settings_ex/net/DataUsageMeteredSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/net/DataUsageMeteredSettings;Landroid/content/Context;Landroid/net/NetworkTemplate;)V
    .locals 8
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 191
    iput-object p1, p0, Lcom/android/settings_ex/net/DataUsageMeteredSettings$MeteredPreference;->this$0:Lcom/android/settings_ex/net/DataUsageMeteredSettings;

    .line 192
    invoke-direct {p0, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 193
    iput-object p3, p0, Lcom/android/settings_ex/net/DataUsageMeteredSettings$MeteredPreference;->mTemplate:Landroid/net/NetworkTemplate;

    .line 195
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/net/DataUsageMeteredSettings$MeteredPreference;->setPersistent(Z)V

    .line 197
    iput-boolean v7, p0, Lcom/android/settings_ex/net/DataUsageMeteredSettings$MeteredPreference;->mBinding:Z

    .line 198
    # getter for: Lcom/android/settings_ex/net/DataUsageMeteredSettings;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;
    invoke-static {p1}, Lcom/android/settings_ex/net/DataUsageMeteredSettings;->access$100(Lcom/android/settings_ex/net/DataUsageMeteredSettings;)Lcom/android/settings_ex/net/NetworkPolicyEditor;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->getPolicyMaybeUnquoted(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 199
    .local v0, "policy":Landroid/net/NetworkPolicy;
    if-eqz v0, :cond_1

    .line 200
    iget-wide v2, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 201
    invoke-virtual {p0, v7}, Lcom/android/settings_ex/net/DataUsageMeteredSettings$MeteredPreference;->setChecked(Z)V

    .line 202
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/net/DataUsageMeteredSettings$MeteredPreference;->setEnabled(Z)V

    .line 209
    :goto_0
    iput-boolean v6, p0, Lcom/android/settings_ex/net/DataUsageMeteredSettings$MeteredPreference;->mBinding:Z

    .line 210
    return-void

    .line 204
    :cond_0
    iget-boolean v1, v0, Landroid/net/NetworkPolicy;->metered:Z

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/net/DataUsageMeteredSettings$MeteredPreference;->setChecked(Z)V

    goto :goto_0

    .line 207
    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/net/DataUsageMeteredSettings$MeteredPreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected notifyChanged()V
    .locals 3

    .prologue
    .line 214
    invoke-super {p0}, Landroid/preference/SwitchPreference;->notifyChanged()V

    .line 215
    iget-boolean v0, p0, Lcom/android/settings_ex/net/DataUsageMeteredSettings$MeteredPreference;->mBinding:Z

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/settings_ex/net/DataUsageMeteredSettings$MeteredPreference;->this$0:Lcom/android/settings_ex/net/DataUsageMeteredSettings;

    # getter for: Lcom/android/settings_ex/net/DataUsageMeteredSettings;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;
    invoke-static {v0}, Lcom/android/settings_ex/net/DataUsageMeteredSettings;->access$100(Lcom/android/settings_ex/net/DataUsageMeteredSettings;)Lcom/android/settings_ex/net/NetworkPolicyEditor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/net/DataUsageMeteredSettings$MeteredPreference;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {p0}, Lcom/android/settings_ex/net/DataUsageMeteredSettings$MeteredPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->setPolicyMetered(Landroid/net/NetworkTemplate;Z)V

    .line 218
    :cond_0
    return-void
.end method
