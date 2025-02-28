.class public Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;
.super Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;
.source "FingerprintEnrollFinish.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0d02b3

    if-ne v1, v2, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;->getEnrollingIntent()Landroid/content/Intent;

    move-result-object v0

    .line 68
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 69
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;->startActivity(Landroid/content/Intent;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;->finish()V

    .line 72
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onClick(Landroid/view/View;)V

    .line 73
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v4, 0x7f0400de

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;->setContentView(I)V

    .line 43
    const v4, 0x7f0e021c

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;->setHeaderText(I)V

    .line 44
    const v4, 0x7f0d02b3

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 46
    .local v0, "addButton":Landroid/widget/Button;
    const-string v4, "fingerprint"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/FingerprintManager;

    .line 47
    .local v2, "fpm":Landroid/hardware/fingerprint/FingerprintManager;
    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 48
    .local v1, "enrolled":I
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00af

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 50
    .local v3, "max":I
    if-lt v1, v3, :cond_0

    .line 52
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected onNextButtonClick()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;->setResult(I)V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;->finish()V

    .line 62
    return-void
.end method
