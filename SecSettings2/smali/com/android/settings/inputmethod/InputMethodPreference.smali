.class Lcom/android/settings_ex/inputmethod/InputMethodPreference;
.super Landroid/preference/SwitchPreference;
.source "InputMethodPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/inputmethod/InputMethodPreference$OnSavePreferenceListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private final mHasPriorityInSorting:Z

.field private final mImi:Landroid/view/inputmethod/InputMethodInfo;

.field private final mInputMethodSettingValues:Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;

.field private final mIsAllowedByOrganization:Z

.field private final mOnSaveListener:Lcom/android/settings_ex/inputmethod/InputMethodPreference$OnSavePreferenceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;ZZLcom/android/settings_ex/inputmethod/InputMethodPreference$OnSavePreferenceListener;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p3, "isImeEnabler"    # Z
    .param p4, "isAllowedByOrganization"    # Z
    .param p5, "onSaveListener"    # Lcom/android/settings_ex/inputmethod/InputMethodPreference$OnSavePreferenceListener;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 90
    invoke-direct {p0, p1}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 73
    iput-object v4, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    .line 91
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setPersistent(Z)V

    .line 92
    iput-object p2, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 93
    iput-boolean p4, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mIsAllowedByOrganization:Z

    .line 94
    iput-object p5, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mOnSaveListener:Lcom/android/settings_ex/inputmethod/InputMethodPreference$OnSavePreferenceListener;

    .line 95
    if-nez p3, :cond_0

    .line 97
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setWidgetLayoutResource(I)V

    .line 100
    :cond_0
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 101
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setKey(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 104
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "settingsActivity":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 106
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setIntent(Landroid/content/Intent;)V

    .line 113
    :goto_0
    invoke-static {p1}, Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mInputMethodSettingValues:Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;

    .line 114
    invoke-static {p2}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mInputMethodSettingValues:Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v3, p2, p1}, Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;->isValidSystemNonAuxAsciiCapableIme(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    iput-boolean v2, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mHasPriorityInSorting:Z

    .line 116
    invoke-virtual {p0, p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 117
    invoke-virtual {p0, p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 118
    return-void

    .line 109
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings_ex/inputmethod/InputMethodPreference;)Lcom/android/settings_ex/inputmethod/InputMethodPreference$OnSavePreferenceListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/inputmethod/InputMethodPreference;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mOnSaveListener:Lcom/android/settings_ex/inputmethod/InputMethodPreference$OnSavePreferenceListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/inputmethod/InputMethodPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/inputmethod/InputMethodPreference;

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->notifyChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/inputmethod/InputMethodPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/inputmethod/InputMethodPreference;

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->notifyChanged()V

    return-void
.end method

.method private getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .locals 2

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private getSummaryString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 198
    .local v0, "context":Landroid/content/Context;
    iget-boolean v7, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mIsAllowedByOrganization:Z

    if-nez v7, :cond_0

    .line 199
    const v7, 0x7f0e0953

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 210
    :goto_0
    return-object v7

    .line 201
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 202
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v7, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v6

    .line 203
    .local v6, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v5, "subtypeLabels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodSubtype;

    .line 205
    .local v4, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    iget-object v7, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v0, v7, v8}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 207
    .local v3, "label":Ljava/lang/CharSequence;
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 210
    .end local v3    # "label":Ljava/lang/CharSequence;
    .end local v4    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_1
    const-string v7, ", "

    invoke-static {v7, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method private isImeEnabler()Z
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->getWidgetLayoutResource()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showSecurityWarnDialog(Landroid/view/inputmethod/InputMethodInfo;)V
    .locals 6
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;

    .prologue
    const/4 v5, 0x1

    .line 214
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 215
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 217
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 218
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 219
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 220
    const v3, 0x1040014

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 221
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 223
    .local v2, "label":Ljava/lang/CharSequence;
    const v3, 0x7f0e088e

    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 224
    const v3, 0x104000a

    new-instance v4, Lcom/android/settings_ex/inputmethod/InputMethodPreference$1;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference$1;-><init>(Lcom/android/settings_ex/inputmethod/InputMethodPreference;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 233
    const/high16 v3, 0x1040000

    new-instance v4, Lcom/android/settings_ex/inputmethod/InputMethodPreference$2;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference$2;-><init>(Lcom/android/settings_ex/inputmethod/InputMethodPreference;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 242
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    .line 243
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 244
    return-void
.end method


# virtual methods
.method compareTo(Lcom/android/settings_ex/inputmethod/InputMethodPreference;Ljava/text/Collator;)I
    .locals 6
    .param p1, "rhs"    # Lcom/android/settings_ex/inputmethod/InputMethodPreference;
    .param p2, "collator"    # Ljava/text/Collator;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 247
    if-ne p0, p1, :cond_1

    .line 248
    const/4 v2, 0x0

    .line 262
    :cond_0
    :goto_0
    return v2

    .line 250
    :cond_1
    iget-boolean v4, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mHasPriorityInSorting:Z

    iget-boolean v5, p1, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mHasPriorityInSorting:Z

    if-ne v4, v5, :cond_3

    .line 251
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 252
    .local v0, "t0":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 253
    .local v1, "t1":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 254
    goto :goto_0

    .line 256
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 259
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 262
    .end local v0    # "t0":Ljava/lang/CharSequence;
    .end local v1    # "t1":Ljava/lang/CharSequence;
    :cond_3
    iget-boolean v4, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mHasPriorityInSorting:Z

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public getInputMethodInfo()Landroid/view/inputmethod/InputMethodInfo;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    return-object v0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->isImeEnabler()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    :goto_0
    return v1

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setChecked(Z)V

    .line 141
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mOnSaveListener:Lcom/android/settings_ex/inputmethod/InputMethodPreference$OnSavePreferenceListener;

    invoke-interface {v0, p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference$OnSavePreferenceListener;->onSaveInputMethodPreference(Lcom/android/settings_ex/inputmethod/InputMethodPreference;)V

    goto :goto_0

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setChecked(Z)V

    .line 147
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mOnSaveListener:Lcom/android/settings_ex/inputmethod/InputMethodPreference$OnSavePreferenceListener;

    invoke-interface {v0, p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference$OnSavePreferenceListener;->onSaveInputMethodPreference(Lcom/android/settings_ex/inputmethod/InputMethodPreference;)V

    goto :goto_0

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->showSecurityWarnDialog(Landroid/view/inputmethod/InputMethodInfo;)V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v9, 0x1

    .line 159
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->isImeEnabler()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 178
    :cond_0
    :goto_0
    return v9

    .line 164
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 166
    .local v0, "context":Landroid/content/Context;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 167
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 169
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 171
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 172
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    sget-object v4, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->TAG:Ljava/lang/String;

    const-string v5, "IME\'s Settings Activity Not Found"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    const v4, 0x7f0e0892

    new-array v5, v9, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 176
    .local v3, "message":Ljava/lang/String;
    invoke-static {v0, v3, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method updatePreferenceViews()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 182
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mInputMethodSettingValues:Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;

    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;->isAlwaysCheckedIme(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z

    move-result v0

    .line 186
    .local v0, "isAlwaysChecked":Z
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->isImeEnabler()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mIsAllowedByOrganization:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setEnabled(Z)V

    .line 187
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mInputMethodSettingValues:Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;

    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v1, v3}, Lcom/android/settings_ex/inputmethod/InputMethodSettingValuesWrapper;->isEnabledImi(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setChecked(Z)V

    .line 188
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->getSummaryString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 189
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 190
    return-void

    .line 186
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
