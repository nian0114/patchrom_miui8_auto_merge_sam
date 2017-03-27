.class public Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;
.super Lcom/android/settings_ex/SettingsActivity;
.source "KnoxSetLockFingerprintPassword.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private hasPwdPatternRestriction:Z

.field private mCancelButton:Landroid/widget/LinearLayout;

.field private mCheckSimplePassword:Z

.field private mHeading:Landroid/widget/TextView;

.field private mIsAlphaMode:Z

.field private mIsValidEntry:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNextButton:Landroid/widget/LinearLayout;

.field private mNextText:Landroid/widget/TextView;

.field private mOldPassword:Ljava/lang/String;

.field private mPasswordConfirm:Landroid/widget/EditText;

.field private mPasswordEntry:Landroid/widget/EditText;

.field private mPasswordMaxLength:I

.field private mPasswordMinLength:I

.field private mPasswordMinLetters:I

.field private mPasswordMinLowerCase:I

.field private mPasswordMinNonLetter:I

.field private mPasswordMinNumeric:I

.field private mPasswordMinSymbols:I

.field private mPasswordMinUpperCase:I

.field private mPwdChangeEnforceStatus:I

.field private mRequestedQuality:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;-><init>()V

    .line 60
    const/high16 v0, 0x40000

    iput v0, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mRequestedQuality:I

    .line 61
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordMaxLength:I

    .line 62
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordMinLength:I

    .line 63
    iput v1, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordMinLetters:I

    .line 64
    iput v1, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordMinUpperCase:I

    .line 65
    iput v1, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordMinLowerCase:I

    .line 66
    iput v1, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordMinSymbols:I

    .line 67
    iput v1, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordMinNumeric:I

    .line 68
    iput v1, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordMinNonLetter:I

    .line 70
    iput-boolean v1, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mIsValidEntry:Z

    .line 71
    iput-boolean v1, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->hasPwdPatternRestriction:Z

    .line 80
    iput-boolean v1, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mCheckSimplePassword:Z

    .line 82
    iput v1, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPwdChangeEnforceStatus:I

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mOldPassword:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mIsValidEntry:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mIsValidEntry:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mHeading:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordConfirm:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->setNextEnabled()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->handleNext()V

    return-void
.end method

.method private checkRepeatingChars(Ljava/lang/String;)Z
    .locals 7
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 568
    const/4 v2, 0x0

    .line 570
    .local v2, "nLoop":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v3, :cond_2

    .line 571
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 572
    .local v0, "beforeChar":C
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 573
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v0, v5, :cond_0

    .line 574
    add-int/lit8 v2, v2, 0x1

    .line 577
    :goto_1
    const/4 v5, 0x3

    if-lt v2, v5, :cond_1

    .line 578
    const-string v4, "ChooseLockPassword"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "has internal loop password : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    .end local v0    # "beforeChar":C
    .end local v1    # "i":I
    :goto_2
    return v3

    .line 576
    .restart local v0    # "beforeChar":C
    .restart local v1    # "i":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 581
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 572
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "beforeChar":C
    .end local v1    # "i":I
    :cond_2
    move v3, v4

    .line 584
    goto :goto_2
.end method

.method private checkSequentialChars(Ljava/lang/String;)Z
    .locals 7
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 544
    const-string v5, "0123456789"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v1, v5, -0x4

    .line 545
    .local v1, "maxLoop":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-gt v0, v1, :cond_2

    .line 546
    const-string v5, "0123456789"

    add-int/lit8 v6, v0, 0x4

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 547
    .local v2, "pattern":Ljava/lang/String;
    const-string v5, "9876543210"

    add-int/lit8 v6, v0, 0x4

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 548
    .local v3, "reversePattern":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 549
    :cond_0
    const-string v5, "ChooseLockPassword"

    const-string v6, "has Sequential password"

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    .end local v2    # "pattern":Ljava/lang/String;
    .end local v3    # "reversePattern":Ljava/lang/String;
    :goto_1
    return v4

    .line 545
    .restart local v2    # "pattern":Ljava/lang/String;
    .restart local v3    # "reversePattern":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 554
    .end local v2    # "pattern":Ljava/lang/String;
    .end local v3    # "reversePattern":Ljava/lang/String;
    :cond_2
    const-string v5, "abcdefghijklmnopqrstuvwxyz"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v1, v5, -0x4

    .line 555
    const/4 v0, 0x0

    :goto_2
    if-gt v0, v1, :cond_5

    .line 556
    const-string v5, "abcdefghijklmnopqrstuvwxyz"

    add-int/lit8 v6, v0, 0x4

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 557
    .restart local v2    # "pattern":Ljava/lang/String;
    const-string v5, "zyxwvutsrqponmlkjihgfedcba"

    add-int/lit8 v6, v0, 0x4

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 558
    .restart local v3    # "reversePattern":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 559
    :cond_3
    const-string v5, "ChooseLockPassword"

    const-string v6, "has Sequential password"

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 555
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 564
    .end local v2    # "pattern":Ljava/lang/String;
    .end local v3    # "reversePattern":Ljava/lang/String;
    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static createIntent(Landroid/content/Context;IIIZZ)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "quality"    # I
    .param p2, "minLength"    # I
    .param p3, "maxLength"    # I
    .param p4, "requirePasswordToDecrypt"    # Z
    .param p5, "confirmCredentials"    # Z

    .prologue
    .line 96
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 97
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "lockscreen.password_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 98
    const-string v1, "lockscreen.password_min"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 99
    const-string v1, "lockscreen.password_max"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 100
    const-string v1, "confirm_credentials"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 101
    const-string v1, "extra_require_password"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 102
    return-object v0
.end method

.method private handleNext()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 305
    iget-object v4, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 306
    .local v1, "pin":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordConfirm:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 307
    .local v2, "pin2":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 308
    const-string v4, "persona"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 309
    .local v0, "mPm":Landroid/os/PersonaManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v0, v4, v8}, Landroid/os/PersonaManager;->setIsFingerAsSupplement(IZ)V

    .line 310
    iget-object v4, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v8, v5}, Lcom/android/internal/widget/LockPatternUtils;->setFingerPrintLockscreen(II)V

    .line 311
    iget-object v4, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mRequestedQuality:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v4, v1, v5, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V

    .line 312
    invoke-virtual {p0}, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "knox_finger_print_plus"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-static {v4, v5, v9, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 313
    invoke-virtual {p0, v8}, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->setResult(I)V

    .line 314
    invoke-virtual {p0}, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->finish()V

    .line 323
    .end local v0    # "mPm":Landroid/os/PersonaManager;
    :goto_0
    return-void

    .line 317
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordConfirm:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 318
    .local v3, "tmp":Ljava/lang/CharSequence;
    if-eqz v3, :cond_1

    move-object v4, v3

    .line 319
    check-cast v4, Landroid/text/Spannable;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static {v4, v9, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 321
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mHeading:Landroid/widget/TextView;

    const v5, 0x7f0e07c8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private setNextEnabled()V
    .locals 2

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mIsValidEntry:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordConfirm:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mNextButton:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 328
    iget-object v0, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mNextText:Landroid/widget/TextView;

    const-string v1, "#252525"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 333
    :goto_0
    return-void

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mNextButton:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 331
    iget-object v0, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mNextText:Landroid/widget/TextView;

    const-string v1, "#47252525"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 31
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 342
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->hasPwdPatternRestriction:Z

    move/from16 v27, v0

    if-eqz v27, :cond_6

    .line 344
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v27, 0x0

    aput-object p1, v22, v27

    .line 345
    .local v22, "selectionArgs":[Ljava/lang/String;
    const-string v27, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v28, "hasForbiddenNumericSequence"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ex/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    .line 346
    .local v13, "hasForbiddenNumericSequence":I
    const-string v27, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v28, "getMaximumNumericSequenceLength"

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ex/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 347
    .local v9, "getMaximumNumericSequenceLength":I
    const-string v27, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v28, "hasForbiddenCharacterSequence"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ex/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 348
    .local v11, "hasForbiddenCharacterSequence":I
    const-string v27, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v28, "getMaximumCharacterSequenceLength"

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ex/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 349
    .local v8, "getMaximumCharacterSequenceLength":I
    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v27, 0x0

    aput-object p1, v23, v27

    const/16 v27, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mOldPassword:Ljava/lang/String;

    move-object/from16 v28, v0

    aput-object v28, v23, v27

    .line 350
    .local v23, "selectionArgsStrDist":[Ljava/lang/String;
    const-string v27, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v28, "hasForbiddenStringDistance"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ex/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 351
    .local v14, "hasForbiddenStringDistance":I
    const-string v27, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v28, "getMinimumCharacterChangeLength"

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ex/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 352
    .local v10, "getMinimumCharacterChangeLength":I
    const-string v27, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v28, "hasForbiddenData"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ex/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 353
    .local v12, "hasForbiddenData":I
    const-string v27, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v28, "hasMaxRepeatedCharacters"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ex/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 354
    .local v15, "hasMaxRepeatedCharacters":I
    const-string v27, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v28, "getMaximumCharacterOccurences"

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ex/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 355
    .local v7, "getMaximumCharacterOccurences":I
    const-string v27, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string v28, "isPasswordPatternMatched"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ex/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v17

    .line 357
    .local v17, "isPasswordPatternMatched":I
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v13, v0, :cond_0

    .line 358
    const v27, 0x7f0e1188

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    add-int/lit8 v30, v9, 0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    .line 539
    .end local v7    # "getMaximumCharacterOccurences":I
    .end local v8    # "getMaximumCharacterSequenceLength":I
    .end local v9    # "getMaximumNumericSequenceLength":I
    .end local v10    # "getMinimumCharacterChangeLength":I
    .end local v11    # "hasForbiddenCharacterSequence":I
    .end local v12    # "hasForbiddenData":I
    .end local v13    # "hasForbiddenNumericSequence":I
    .end local v14    # "hasForbiddenStringDistance":I
    .end local v15    # "hasMaxRepeatedCharacters":I
    .end local v17    # "isPasswordPatternMatched":I
    .end local v22    # "selectionArgs":[Ljava/lang/String;
    .end local v23    # "selectionArgsStrDist":[Ljava/lang/String;
    :goto_0
    return-object v27

    .line 360
    .restart local v7    # "getMaximumCharacterOccurences":I
    .restart local v8    # "getMaximumCharacterSequenceLength":I
    .restart local v9    # "getMaximumNumericSequenceLength":I
    .restart local v10    # "getMinimumCharacterChangeLength":I
    .restart local v11    # "hasForbiddenCharacterSequence":I
    .restart local v12    # "hasForbiddenData":I
    .restart local v13    # "hasForbiddenNumericSequence":I
    .restart local v14    # "hasForbiddenStringDistance":I
    .restart local v15    # "hasMaxRepeatedCharacters":I
    .restart local v17    # "isPasswordPatternMatched":I
    .restart local v22    # "selectionArgs":[Ljava/lang/String;
    .restart local v23    # "selectionArgsStrDist":[Ljava/lang/String;
    :cond_0
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v11, v0, :cond_1

    .line 361
    const v27, 0x7f0e1187

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    add-int/lit8 v30, v8, 0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    goto :goto_0

    .line 363
    :cond_1
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v14, v0, :cond_2

    .line 364
    const v27, 0x7f0e118a

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    goto :goto_0

    .line 366
    :cond_2
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v12, v0, :cond_3

    .line 367
    const v27, 0x7f0e1189

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->getString(I)Ljava/lang/String;

    move-result-object v27

    goto :goto_0

    .line 369
    :cond_3
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v15, v0, :cond_4

    .line 370
    const v27, 0x7f0e118b

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    goto :goto_0

    .line 372
    :cond_4
    if-nez v17, :cond_5

    .line 373
    const v27, 0x7f0e118c

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->getString(I)Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_0

    .line 375
    :cond_5
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 380
    .end local v7    # "getMaximumCharacterOccurences":I
    .end local v8    # "getMaximumCharacterSequenceLength":I
    .end local v9    # "getMaximumNumericSequenceLength":I
    .end local v10    # "getMinimumCharacterChangeLength":I
    .end local v11    # "hasForbiddenCharacterSequence":I
    .end local v12    # "hasForbiddenData":I
    .end local v13    # "hasForbiddenNumericSequence":I
    .end local v14    # "hasForbiddenStringDistance":I
    .end local v15    # "hasMaxRepeatedCharacters":I
    .end local v17    # "isPasswordPatternMatched":I
    .end local v22    # "selectionArgs":[Ljava/lang/String;
    .end local v23    # "selectionArgsStrDist":[Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mCheckSimplePassword:Z

    move/from16 v27, v0

    if-eqz v27, :cond_a

    .line 381
    invoke-direct/range {p0 .. p1}, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->checkSequentialChars(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_8

    .line 382
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mIsAlphaMode:Z

    move/from16 v27, v0

    if-eqz v27, :cond_7

    const v27, 0x7f0e117c

    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->getString(I)Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_0

    :cond_7
    const v27, 0x7f0e117e    # 1.888412E38f

    goto :goto_1

    .line 387
    :cond_8
    invoke-direct/range {p0 .. p1}, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->checkRepeatingChars(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_a

    .line 388
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mIsAlphaMode:Z

    move/from16 v27, v0

    if-eqz v27, :cond_9

    const v27, 0x7f0e117b

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->getString(I)Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_0

    :cond_9
    const v27, 0x7f0e117d

    goto :goto_2

    .line 394
    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordMinLength:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_b

    .line 395
    const v27, 0x7f0e02a9

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordMinLength:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_0

    .line 397
    :cond_b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordMaxLength:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_c

    .line 398
    const v27, 0x7f0e02af

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordMaxLength:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_0

    .line 401
    :cond_c
    const/16 v18, 0x0

    .line 402
    .local v18, "letters":I
    const/16 v21, 0x0

    .line 403
    .local v21, "numbers":I
    const/16 v19, 0x0

    .line 404
    .local v19, "lowercase":I
    const/16 v25, 0x0

    .line 405
    .local v25, "symbols":I
    const/16 v26, 0x0

    .line 406
    .local v26, "uppercase":I
    const/16 v20, 0x0

    .line 407
    .local v20, "nonletter":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v27

    move/from16 v0, v16

    move/from16 v1, v27

    if-ge v0, v1, :cond_12

    .line 408
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 410
    .local v6, "c":C
    const/16 v27, 0x20

    move/from16 v0, v27

    if-lt v6, v0, :cond_d

    const/16 v27, 0x7f

    move/from16 v0, v27

    if-le v6, v0, :cond_e

    .line 411
    :cond_d
    const v27, 0x7f0e02b3

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->getString(I)Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_0

    .line 413
    :cond_e
    const/16 v27, 0x30

    move/from16 v0, v27

    if-lt v6, v0, :cond_f

    const/16 v27, 0x39

    move/from16 v0, v27

    if-gt v6, v0, :cond_f

    .line 414
    add-int/lit8 v21, v21, 0x1

    .line 415
    add-int/lit8 v20, v20, 0x1

    .line 407
    :goto_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 416
    :cond_f
    const/16 v27, 0x41

    move/from16 v0, v27

    if-lt v6, v0, :cond_10

    const/16 v27, 0x5a

    move/from16 v0, v27

    if-gt v6, v0, :cond_10

    .line 417
    add-int/lit8 v18, v18, 0x1

    .line 418
    add-int/lit8 v26, v26, 0x1

    goto :goto_4

    .line 419
    :cond_10
    const/16 v27, 0x61

    move/from16 v0, v27

    if-lt v6, v0, :cond_11

    const/16 v27, 0x7a

    move/from16 v0, v27

    if-gt v6, v0, :cond_11

    .line 420
    add-int/lit8 v18, v18, 0x1

    .line 421
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 423
    :cond_11
    add-int/lit8 v25, v25, 0x1

    .line 424
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 427
    .end local v6    # "c":C
    :cond_12
    const/high16 v27, 0x20000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mRequestedQuality:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_13

    const/high16 v27, 0x30000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mRequestedQuality:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_16

    .line 429
    :cond_13
    if-gtz v18, :cond_14

    if-lez v25, :cond_15

    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPwdChangeEnforceStatus:I

    move/from16 v27, v0

    if-gtz v27, :cond_15

    .line 432
    const v27, 0x7f0e02b1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->getString(I)Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_0

    .line 435
    :cond_15
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->maxLengthSequence(Ljava/lang/String;)I

    move-result v24

    .line 436
    .local v24, "sequence":I
    const/high16 v27, 0x30000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mRequestedQuality:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_24

    const/16 v27, 0x3

    move/from16 v0, v24

    move/from16 v1, v27

    if-le v0, v1, :cond_24

    .line 438
    const v27, 0x7f0e02b8

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->getString(I)Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_0

    .line 440
    .end local v24    # "sequence":I
    :cond_16
    const/high16 v27, 0x60000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mRequestedQuality:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_1c

    .line 441
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordMinLetters:I

    move/from16 v27, v0

    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_17

    .line 442
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f130002

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordMinLetters:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordMinLetters:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_0

    .line 445
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordMinNumeric:I

    move/from16 v27, v0

    move/from16 v0, v21

    move/from16 v1, v27

    if-ge v0, v1, :cond_18

    .line 446
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f130005

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordMinNumeric:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordMinNumeric:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_0

    .line 449
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordMinLowerCase:I

    move/from16 v27, v0

    move/from16 v0, v19

    move/from16 v1, v27

    if-ge v0, v1, :cond_19

    .line 450
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f130003

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordMinLowerCase:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordMinLowerCase:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_0

    .line 453
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordMinUpperCase:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_1a

    .line 454
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f130004

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordMinUpperCase:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordMinUpperCase:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_0

    .line 457
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordMinSymbols:I

    move/from16 v27, v0

    move/from16 v0, v25

    move/from16 v1, v27

    if-ge v0, v1, :cond_1b

    .line 458
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f130006

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordMinSymbols:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordMinSymbols:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_0

    .line 461
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordMinNonLetter:I

    move/from16 v27, v0

    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_24

    .line 462
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f130007

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordMinNonLetter:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordMinNonLetter:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_0

    .line 466
    :cond_1c
    const/high16 v27, 0x70000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mRequestedQuality:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_1f

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v27

    const/16 v28, 0x64

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_1f

    .line 471
    if-gtz v18, :cond_1d

    if-lez v25, :cond_1e

    .line 472
    :cond_1d
    const v27, 0x7f0e117f

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->getString(I)Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_0

    .line 475
    :cond_1e
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 477
    :cond_1f
    const/high16 v27, 0x40000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mRequestedQuality:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_21

    const/4 v4, 0x1

    .line 479
    .local v4, "alphabetic":Z
    :goto_5
    const/high16 v27, 0x50000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mRequestedQuality:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_22

    const/4 v5, 0x1

    .line 481
    .local v5, "alphanumeric":Z
    :goto_6
    if-nez v4, :cond_20

    if-eqz v5, :cond_23

    :cond_20
    if-nez v18, :cond_23

    .line 482
    const v27, 0x7f0e02b4

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->getString(I)Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_0

    .line 477
    .end local v4    # "alphabetic":Z
    .end local v5    # "alphanumeric":Z
    :cond_21
    const/4 v4, 0x0

    goto :goto_5

    .line 479
    .restart local v4    # "alphabetic":Z
    :cond_22
    const/4 v5, 0x0

    goto :goto_6

    .line 484
    .restart local v5    # "alphanumeric":Z
    :cond_23
    if-eqz v5, :cond_24

    if-nez v21, :cond_24

    .line 485
    const v27, 0x7f0e02b5

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->getString(I)Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_0

    .line 489
    .end local v4    # "alphabetic":Z
    .end local v5    # "alphanumeric":Z
    :cond_24
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordMaxLength:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_26

    .line 490
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mIsAlphaMode:Z

    move/from16 v27, v0

    if-eqz v27, :cond_25

    const v27, 0x7f0e02af

    :goto_7
    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordMaxLength:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_0

    :cond_25
    const v27, 0x7f0e02b0

    goto :goto_7

    .line 539
    :cond_26
    const/16 v27, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    .line 602
    iget-object v1, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 603
    iget-object v1, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 604
    .local v0, "errMsg":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 605
    iget-object v1, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mHeading:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 606
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mIsValidEntry:Z

    .line 614
    .end local v0    # "errMsg":Ljava/lang/String;
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->setNextEnabled()V

    .line 615
    return-void

    .line 608
    .restart local v0    # "errMsg":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mHeading:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 609
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mIsValidEntry:Z

    goto :goto_0

    .line 612
    .end local v0    # "errMsg":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mHeading:Landroid/widget/TextView;

    const v2, 0x7f0e027e

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 619
    return-void
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 88
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings_ex/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 89
    .local v0, "modIntent":Landroid/content/Intent;
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 90
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 589
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 598
    :goto_0
    :pswitch_0
    return-void

    .line 591
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->handleNext()V

    goto :goto_0

    .line 595
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->finish()V

    goto :goto_0

    .line 589
    :pswitch_data_0
    .packed-switch 0x7f0d031e
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const/high16 v11, 0x70000

    const/4 v10, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 134
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 135
    invoke-virtual {p0}, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 136
    .local v2, "intent":Landroid/content/Intent;
    const-string v7, "lockscreen.password_type"

    iget v8, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mRequestedQuality:I

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mRequestedQuality:I

    .line 137
    new-instance v7, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v7, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 138
    const v7, 0x7f04011a

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->setContentView(I)V

    .line 140
    new-array v4, v5, [Ljava/lang/String;

    const-string v7, "true"

    aput-object v7, v4, v6

    .line 141
    .local v4, "selectionArgs":[Ljava/lang/String;
    const-string v7, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v8, "getRequiredPwdPatternRestrictions"

    invoke-static {p0, v7, v8, v4}, Lcom/android/settings_ex/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 144
    .local v1, "getRequiredPwdPatternRestrictions":I
    const/4 v7, -0x1

    if-eq v1, v7, :cond_0

    .line 145
    iput-boolean v5, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->hasPwdPatternRestriction:Z

    .line 147
    :cond_0
    const-string v7, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string v8, "isChangeRequested"

    invoke-static {p0, v7, v8, v9}, Lcom/android/settings_ex/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 149
    .local v3, "isChangeRequested":I
    iput v3, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPwdChangeEnforceStatus:I

    .line 150
    iget v7, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPwdChangeEnforceStatus:I

    if-lez v7, :cond_1

    .line 151
    invoke-virtual {p0}, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 152
    iget-object v7, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality(I)I

    move-result v7

    const/high16 v8, 0x20000

    if-lt v7, v8, :cond_1

    .line 153
    iget-object v7, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality(I)I

    move-result v7

    iput v7, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mRequestedQuality:I

    .line 157
    :cond_1
    iput-boolean v6, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mCheckSimplePassword:Z

    .line 158
    iget-object v7, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/app/admin/DevicePolicyManager;->getSimplePasswordEnabled(Landroid/content/ComponentName;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 159
    iput-boolean v5, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mCheckSimplePassword:Z

    .line 161
    :cond_2
    const-string v7, "lockscreen.password_type"

    iget v8, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mRequestedQuality:I

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iget-object v8, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality(I)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mRequestedQuality:I

    .line 164
    const-string v7, "lockscreen.password_min"

    iget v8, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordMinLength:I

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget-object v8, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength(I)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordMinLength:I

    .line 168
    const-string v7, "lockscreen.password_max"

    iget v8, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordMaxLength:I

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordMaxLength:I

    .line 169
    const-string v7, "lockscreen.password_min_letters"

    iget v8, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordMinLetters:I

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iget-object v8, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLetters(I)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordMinLetters:I

    .line 172
    const-string v7, "lockscreen.password_min_uppercase"

    iget v8, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordMinUpperCase:I

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iget-object v8, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumUpperCase(I)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordMinUpperCase:I

    .line 175
    const-string v7, "lockscreen.password_min_lowercase"

    iget v8, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordMinLowerCase:I

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iget-object v8, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLowerCase(I)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordMinLowerCase:I

    .line 178
    const-string v7, "lockscreen.password_min_numeric"

    iget v8, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordMinNumeric:I

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iget-object v8, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNumeric(I)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordMinNumeric:I

    .line 181
    const-string v7, "lockscreen.password_min_symbols"

    iget v8, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordMinSymbols:I

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iget-object v8, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumSymbols(I)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordMinSymbols:I

    .line 184
    const-string v7, "lockscreen.password_min_nonletter"

    iget v8, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordMinNonLetter:I

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iget-object v8, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNonLetter(I)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordMinNonLetter:I

    .line 187
    const/high16 v7, 0x40000

    iget v8, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mRequestedQuality:I

    if-eq v7, v8, :cond_4

    const/high16 v7, 0x50000

    iget v8, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mRequestedQuality:I

    if-eq v7, v8, :cond_4

    const/high16 v7, 0x60000

    iget v8, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mRequestedQuality:I

    if-eq v7, v8, :cond_4

    iget-boolean v7, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->hasPwdPatternRestriction:Z

    if-eqz v7, :cond_3

    iget v7, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mRequestedQuality:I

    if-ne v11, v7, :cond_4

    :cond_3
    iget v7, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPwdChangeEnforceStatus:I

    if-lez v7, :cond_6

    iget v7, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mRequestedQuality:I

    if-eq v11, v7, :cond_6

    :cond_4
    :goto_0
    iput-boolean v5, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mIsAlphaMode:Z

    .line 195
    const-string v5, "lockscreen.password_old"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mOldPassword:Ljava/lang/String;

    .line 196
    const/4 v0, 0x4

    .line 197
    .local v0, "MIN_PWD_LENGTH":I
    iget v5, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordMinLength:I

    if-lt v5, v10, :cond_7

    iget v5, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordMinLength:I

    iget v7, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordMaxLength:I

    if-ge v5, v7, :cond_7

    .line 205
    :cond_5
    :goto_1
    const v5, 0x7f0d0102

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mHeading:Landroid/widget/TextView;

    .line 206
    const v5, 0x7f0d0321

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mNextText:Landroid/widget/TextView;

    .line 207
    iget-object v5, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mNextText:Landroid/widget/TextView;

    const-string v7, "#47252525"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 208
    const v5, 0x7f0d0103

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordEntry:Landroid/widget/EditText;

    .line 209
    iget-object v5, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v5, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 210
    iget-object v5, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordEntry:Landroid/widget/EditText;

    new-instance v7, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword$1;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword$1;-><init>(Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;)V

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 225
    const v5, 0x7f0d031d

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordConfirm:Landroid/widget/EditText;

    .line 226
    iget-object v5, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordConfirm:Landroid/widget/EditText;

    new-instance v7, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword$2;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword$2;-><init>(Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;)V

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 250
    iget-object v5, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordConfirm:Landroid/widget/EditText;

    new-instance v7, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword$3;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword$3;-><init>(Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;)V

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 264
    iget-object v5, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordConfirm:Landroid/widget/EditText;

    new-instance v7, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword$4;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword$4;-><init>(Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;)V

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 275
    iget-object v5, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordEntry:Landroid/widget/EditText;

    new-instance v7, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword$5;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword$5;-><init>(Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;)V

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 295
    const v5, 0x7f0d031e

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mCancelButton:Landroid/widget/LinearLayout;

    .line 296
    iget-object v5, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mCancelButton:Landroid/widget/LinearLayout;

    invoke-virtual {v5, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    const v5, 0x7f0d0320

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mNextButton:Landroid/widget/LinearLayout;

    .line 299
    iget-object v5, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mNextButton:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 300
    iget-object v5, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mNextButton:Landroid/widget/LinearLayout;

    invoke-virtual {v5, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    return-void

    .end local v0    # "MIN_PWD_LENGTH":I
    :cond_6
    move v5, v6

    .line 187
    goto/16 :goto_0

    .line 199
    .restart local v0    # "MIN_PWD_LENGTH":I
    :cond_7
    iget v5, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordMinLength:I

    if-ge v5, v10, :cond_8

    .line 200
    iput v10, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordMinLength:I

    goto/16 :goto_1

    .line 201
    :cond_8
    iget v5, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordMinLength:I

    iget v7, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordMaxLength:I

    if-le v5, v7, :cond_5

    .line 202
    iget v5, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordMaxLength:I

    iput v5, p0, Lcom/android/settings_ex/KnoxSetLockFingerprintPassword;->mPasswordMinLength:I

    goto/16 :goto_1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 623
    return-void
.end method
