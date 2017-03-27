.class public Lcom/android/settings_ex/CryptKeeperInterstitial;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "CryptKeeperInterstitial.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mChangePWButton:Landroid/widget/Button;

.field private mDontRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

.field private mEncryptionMessage:Landroid/widget/TextView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPasswordRequired:Z

.field private mRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

.field private mSelectOptionLayout:Landroid/widget/LinearLayout;

.field private ucmPasswordcsName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/CryptKeeperInterstitial;->ucmPasswordcsName:Ljava/lang/String;

    return-void
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 5
    .param p1, "request"    # I

    .prologue
    const/4 v2, 0x1

    .line 279
    invoke-virtual {p0}, Lcom/android/settings_ex/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 280
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v0, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 282
    .local v0, "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    invoke-virtual {v0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v3

    if-nez v3, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/android/settings_ex/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->onBackPressed()V

    .line 289
    :goto_0
    return v2

    :cond_0
    const v3, 0x7f0e022f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, p1, v3, v2}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Z)Z

    move-result v2

    goto :goto_0
.end method

.method private setRequirePasswordState(Z)V
    .locals 4
    .param p1, "required"    # Z

    .prologue
    .line 241
    iput-boolean p1, p0, Lcom/android/settings_ex/CryptKeeperInterstitial;->mPasswordRequired:Z

    .line 242
    iget-object v2, p0, Lcom/android/settings_ex/CryptKeeperInterstitial;->mRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 243
    iget-object v3, p0, Lcom/android/settings_ex/CryptKeeperInterstitial;->mDontRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    if-nez p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 246
    invoke-virtual {p0}, Lcom/android/settings_ex/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/SettingsActivity;

    .line 247
    .local v1, "sa":Lcom/android/settings_ex/SettingsActivity;
    invoke-virtual {v1}, Lcom/android/settings_ex/SettingsActivity;->getResultIntentData()Landroid/content/Intent;

    move-result-object v0

    .line 248
    .local v0, "resultIntentData":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 249
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "resultIntentData":Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 250
    .restart local v0    # "resultIntentData":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/SettingsActivity;->setResultIntentData(Landroid/content/Intent;)V

    .line 252
    :cond_0
    const-string v2, "extra_require_password"

    iget-boolean v3, p0, Lcom/android/settings_ex/CryptKeeperInterstitial;->mPasswordRequired:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 253
    return-void

    .line 243
    .end local v0    # "resultIntentData":Landroid/content/Intent;
    .end local v1    # "sa":Lcom/android/settings_ex/SettingsActivity;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private showFinalConfirmation(ILjava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 316
    const-string v3, "CryptKeeperInterstitial"

    const-string v4, "change encryption password"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const-string v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 318
    .local v2, "service":Landroid/os/IBinder;
    if-nez v2, :cond_0

    .line 319
    const-string v3, "CryptKeeperInterstitial"

    const-string v4, "Could not find the mount service to update the encryption password"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :goto_0
    return-void

    .line 323
    :cond_0
    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 325
    .local v1, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/os/storage/IMountService;->changeEncryptionPassword(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "CryptKeeperInterstitial"

    const-string v4, "Error changing encryption password"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 80
    const/16 v0, 0x30

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    .line 295
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 296
    const/16 v2, 0x37

    if-eq p1, v2, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    if-ne p2, v4, :cond_0

    if-eqz p3, :cond_0

    .line 303
    iget-object v2, p0, Lcom/android/settings_ex/CryptKeeperInterstitial;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-boolean v3, p0, Lcom/android/settings_ex/CryptKeeperInterstitial;->mPasswordRequired:Z

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setCredentialRequiredToDecrypt(Z)V

    .line 304
    iget-boolean v2, p0, Lcom/android/settings_ex/CryptKeeperInterstitial;->mPasswordRequired:Z

    if-eqz v2, :cond_2

    const-string v2, "type"

    invoke-virtual {p3, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 307
    .local v1, "type":I
    :goto_1
    iget-boolean v2, p0, Lcom/android/settings_ex/CryptKeeperInterstitial;->mPasswordRequired:Z

    if-eqz v2, :cond_3

    const-string v2, "password"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "password":Ljava/lang/String;
    :goto_2
    invoke-direct {p0, v1, v0}, Lcom/android/settings_ex/CryptKeeperInterstitial;->showFinalConfirmation(ILjava/lang/String;)V

    goto :goto_0

    .line 304
    .end local v0    # "password":Ljava/lang/String;
    .end local v1    # "type":I
    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    .line 307
    .restart local v1    # "type":I
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 257
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 258
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings_ex/CryptKeeperInterstitial;->setRequirePasswordState(Z)V

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 260
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/CryptKeeperInterstitial;->setRequirePasswordState(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 172
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeperInterstitial;->mChangePWButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    .line 173
    const/16 v1, 0x37

    invoke-direct {p0, v1}, Lcom/android/settings_ex/CryptKeeperInterstitial;->runKeyguardConfirmation(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 174
    const-string v1, "CryptKeeperInterstitial"

    const-string v2, "Alert::Keyguard confirmation failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeperInterstitial;->mRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    if-ne p1, v1, :cond_3

    .line 177
    invoke-virtual {p0}, Lcom/android/settings_ex/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    .line 178
    .local v0, "accEn":Z
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/android/settings_ex/CryptKeeperInterstitial;->mPasswordRequired:Z

    if-nez v1, :cond_2

    .line 179
    invoke-direct {p0, v2}, Lcom/android/settings_ex/CryptKeeperInterstitial;->setRequirePasswordState(Z)V

    .line 180
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/CryptKeeperInterstitial;->showDialog(I)V

    .line 184
    :goto_1
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeperInterstitial;->mRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 185
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeperInterstitial;->mDontRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0

    .line 182
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/settings_ex/CryptKeeperInterstitial;->setRequirePasswordState(Z)V

    goto :goto_1

    .line 187
    .end local v0    # "accEn":Z
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/settings_ex/CryptKeeperInterstitial;->setRequirePasswordState(Z)V

    .line 188
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeperInterstitial;->mRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 189
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeperInterstitial;->mDontRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .param p1, "dialogId"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 195
    packed-switch p1, :pswitch_data_0

    .line 236
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 197
    :pswitch_0
    iget-object v5, p0, Lcom/android/settings_ex/CryptKeeperInterstitial;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v3

    .line 200
    .local v3, "quality":I
    sparse-switch v3, :sswitch_data_0

    .line 211
    const v4, 0x7f0e0ed2

    .line 212
    .local v4, "titleId":I
    const v2, 0x7f0e0ed5

    .line 216
    .local v2, "messageId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v1

    .line 221
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 223
    const-string v0, ""

    .line 228
    .local v0, "exampleAccessibility":Ljava/lang/CharSequence;
    :goto_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-virtual {p0, v2, v6}, Lcom/android/settings_ex/CryptKeeperInterstitial;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    invoke-virtual {v5, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x1040000

    invoke-virtual {v5, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5

    .line 202
    .end local v0    # "exampleAccessibility":Ljava/lang/CharSequence;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .end local v2    # "messageId":I
    .end local v4    # "titleId":I
    :sswitch_0
    const v4, 0x7f0e0ed1

    .line 203
    .restart local v4    # "titleId":I
    const v2, 0x7f0e0ed4

    .line 204
    .restart local v2    # "messageId":I
    goto :goto_0

    .line 207
    .end local v2    # "messageId":I
    .end local v4    # "titleId":I
    :sswitch_1
    const v4, 0x7f0e0ed0

    .line 208
    .restart local v4    # "titleId":I
    const v2, 0x7f0e0ed3

    .line 209
    .restart local v2    # "messageId":I
    goto :goto_0

    .line 225
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :cond_0
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings_ex/CryptKeeperInterstitial;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "exampleAccessibility":Ljava/lang/CharSequence;
    goto :goto_1

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 200
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/CryptKeeperInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/CryptKeeperInterstitial;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 87
    const v0, 0x7f040074

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 267
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 268
    const-string v1, "selected_button"

    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeperInterstitial;->mRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 269
    return-void

    .line 268
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 92
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 93
    const v6, 0x7f0d014b

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckedTextView;

    iput-object v6, p0, Lcom/android/settings_ex/CryptKeeperInterstitial;->mRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    .line 95
    const v6, 0x7f0d014c

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckedTextView;

    iput-object v6, p0, Lcom/android/settings_ex/CryptKeeperInterstitial;->mDontRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    .line 97
    const v6, 0x7f0d0149

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings_ex/CryptKeeperInterstitial;->mEncryptionMessage:Landroid/widget/TextView;

    .line 99
    const v6, 0x7f0d014d

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/settings_ex/CryptKeeperInterstitial;->mChangePWButton:Landroid/widget/Button;

    .line 100
    const v6, 0x7f0d014a

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/settings_ex/CryptKeeperInterstitial;->mSelectOptionLayout:Landroid/widget/LinearLayout;

    .line 101
    iget-object v6, p0, Lcom/android/settings_ex/CryptKeeperInterstitial;->mChangePWButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v6, p0, Lcom/android/settings_ex/CryptKeeperInterstitial;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/android/internal/widget/LockPatternUtils;->getFingerPrintLockscreenState(I)I

    move-result v2

    .line 106
    .local v2, "forFingerprint":I
    iget-object v6, p0, Lcom/android/settings_ex/CryptKeeperInterstitial;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v4

    .line 110
    .local v4, "quality":I
    const v0, 0x7f0e0ecc

    .line 111
    .local v0, "disableId":I
    sparse-switch v4, :sswitch_data_0

    .line 131
    if-ne v2, v7, :cond_4

    const v3, 0x7f0e0ec6

    .line 134
    .local v3, "msgId":I
    :goto_0
    const v1, 0x7f0e0ecb

    .line 137
    .local v1, "enableId":I
    :goto_1
    iget-object v6, p0, Lcom/android/settings_ex/CryptKeeperInterstitial;->mEncryptionMessage:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(I)V

    .line 139
    iget-object v6, p0, Lcom/android/settings_ex/CryptKeeperInterstitial;->mRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v6, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v6, p0, Lcom/android/settings_ex/CryptKeeperInterstitial;->mRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v6, v1}, Landroid/widget/CheckedTextView;->setText(I)V

    .line 141
    iget-object v6, p0, Lcom/android/settings_ex/CryptKeeperInterstitial;->mDontRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v6, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v6, p0, Lcom/android/settings_ex/CryptKeeperInterstitial;->mDontRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    const v9, 0x7f0e0ecc

    invoke-virtual {v6, v9}, Landroid/widget/CheckedTextView;->setText(I)V

    .line 144
    if-eqz p2, :cond_7

    .line 145
    const-string v6, "selected_button"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v7, :cond_5

    move v5, v7

    .line 146
    .local v5, "value":Z
    :goto_2
    iget-object v6, p0, Lcom/android/settings_ex/CryptKeeperInterstitial;->mRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v6, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 147
    iget-object v9, p0, Lcom/android/settings_ex/CryptKeeperInterstitial;->mDontRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    if-nez v5, :cond_6

    move v6, v7

    :goto_3
    invoke-virtual {v9, v6}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 148
    invoke-direct {p0, v5}, Lcom/android/settings_ex/CryptKeeperInterstitial;->setRequirePasswordState(Z)V

    .line 153
    .end local v5    # "value":Z
    :goto_4
    const-string v6, "persist.keyguard.ucs.csname"

    const-string v9, "none"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/CryptKeeperInterstitial;->ucmPasswordcsName:Ljava/lang/String;

    .line 154
    iget-object v6, p0, Lcom/android/settings_ex/CryptKeeperInterstitial;->ucmPasswordcsName:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings_ex/CryptKeeperInterstitial;->ucmPasswordcsName:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/settings_ex/CryptKeeperInterstitial;->ucmPasswordcsName:Ljava/lang/String;

    const-string v9, "none"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 155
    iget-object v6, p0, Lcom/android/settings_ex/CryptKeeperInterstitial;->mRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v6, v8}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 156
    iget-object v6, p0, Lcom/android/settings_ex/CryptKeeperInterstitial;->mRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v6, v8}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 157
    iget-object v6, p0, Lcom/android/settings_ex/CryptKeeperInterstitial;->mDontRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v6, v7}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 158
    invoke-direct {p0, v8}, Lcom/android/settings_ex/CryptKeeperInterstitial;->setRequirePasswordState(Z)V

    .line 161
    :cond_0
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 162
    iget-object v6, p0, Lcom/android/settings_ex/CryptKeeperInterstitial;->mRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v6, v7}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 163
    iget-object v6, p0, Lcom/android/settings_ex/CryptKeeperInterstitial;->mDontRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v6, v8}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 164
    iget-object v6, p0, Lcom/android/settings_ex/CryptKeeperInterstitial;->mDontRequirePasswordToDecryptButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v6, v8}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 165
    invoke-direct {p0, v7}, Lcom/android/settings_ex/CryptKeeperInterstitial;->setRequirePasswordState(Z)V

    .line 168
    .end local v1    # "enableId":I
    :cond_1
    :goto_5
    return-void

    .line 113
    .end local v3    # "msgId":I
    :sswitch_0
    const v3, 0x7f0e0ec0

    .line 114
    .restart local v3    # "msgId":I
    iget-object v6, p0, Lcom/android/settings_ex/CryptKeeperInterstitial;->mEncryptionMessage:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(I)V

    .line 115
    iget-object v6, p0, Lcom/android/settings_ex/CryptKeeperInterstitial;->mSelectOptionLayout:Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_5

    .line 118
    .end local v3    # "msgId":I
    :sswitch_1
    if-ne v2, v7, :cond_2

    const v3, 0x7f0e0ec5

    .line 121
    .restart local v3    # "msgId":I
    :goto_6
    const v1, 0x7f0e0eca

    .line 122
    .restart local v1    # "enableId":I
    goto/16 :goto_1

    .line 118
    .end local v1    # "enableId":I
    .end local v3    # "msgId":I
    :cond_2
    const v3, 0x7f0e0ec2

    goto :goto_6

    .line 125
    :sswitch_2
    if-ne v2, v7, :cond_3

    const v3, 0x7f0e0ec4

    .line 128
    .restart local v3    # "msgId":I
    :goto_7
    const v1, 0x7f0e0ec9

    .line 129
    .restart local v1    # "enableId":I
    goto/16 :goto_1

    .line 125
    .end local v1    # "enableId":I
    .end local v3    # "msgId":I
    :cond_3
    const v3, 0x7f0e0ec1

    goto :goto_7

    .line 131
    :cond_4
    const v3, 0x7f0e0ec3

    goto/16 :goto_0

    .restart local v1    # "enableId":I
    .restart local v3    # "msgId":I
    :cond_5
    move v5, v8

    .line 145
    goto/16 :goto_2

    .restart local v5    # "value":Z
    :cond_6
    move v6, v8

    .line 147
    goto/16 :goto_3

    .line 150
    .end local v5    # "value":Z
    :cond_7
    iget-object v6, p0, Lcom/android/settings_ex/CryptKeeperInterstitial;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v8}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToDecrypt(Z)Z

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/settings_ex/CryptKeeperInterstitial;->setRequirePasswordState(Z)V

    goto/16 :goto_4

    .line 111
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10000 -> :sswitch_1
        0x20000 -> :sswitch_2
        0x30000 -> :sswitch_2
    .end sparse-switch
.end method
