.class public Lcom/sec/android/app/camera/setting/SpinnerPreference;
.super Landroid/preference/Preference;
.source "SpinnerPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpinnerPreference"


# instance fields
.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDefaultValues:I

.field private mEntries:[Ljava/lang/String;

.field private mEntryValues:[I

.field private mKey:Ljava/lang/String;

.field private mSpinner:Landroid/widget/Spinner;

.field private mValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mContext:Landroid/content/Context;

    .line 51
    iget-object v4, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/sec/android/app/camera/R$styleable;->SpinnerCustomPreference:[I

    invoke-virtual {v4, p2, v5, v8, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 53
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x2

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 54
    .local v2, "mAdapterID":I
    iget-object v4, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mEntries:[Ljava/lang/String;

    .line 56
    new-instance v4, Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mContext:Landroid/content/Context;

    const v6, 0x1090009

    iget-object v7, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 58
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 59
    .local v3, "mValuesID":I
    iget-object v4, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mEntryValues:[I

    .line 61
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mDefaultValues:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    .end local v2    # "mAdapterID":I
    .end local v3    # "mValuesID":I
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mKey:Ljava/lang/String;

    .line 68
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->getValue()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mValue:I

    .line 70
    new-instance v4, Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    .line 72
    iget-object v4, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 73
    iget-object v4, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 74
    iget-object v4, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mEntryValues:[I

    if-nez v4, :cond_0

    .line 75
    iget-object v4, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v8}, Landroid/widget/Spinner;->setSelection(I)V

    .line 79
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    new-instance v5, Lcom/sec/android/app/camera/setting/SpinnerPreference$1;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/setting/SpinnerPreference$1;-><init>(Lcom/sec/android/app/camera/setting/SpinnerPreference;)V

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 99
    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setPersistent(Z)V

    .line 100
    new-instance v4, Lcom/sec/android/app/camera/setting/SpinnerPreference$2;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/setting/SpinnerPreference$2;-><init>(Lcom/sec/android/app/camera/setting/SpinnerPreference;)V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 109
    iget v4, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mDefaultValues:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 110
    return-void

    .line 62
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "SpinnerPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resource loading fail "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v4

    .line 77
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->getValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->findIndexOfValue(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/setting/SpinnerPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/setting/SpinnerPreference;

    .prologue
    .line 35
    iget v0, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mValue:I

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/camera/setting/SpinnerPreference;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/setting/SpinnerPreference;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mValue:I

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/setting/SpinnerPreference;)[I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/setting/SpinnerPreference;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mEntryValues:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/setting/SpinnerPreference;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/setting/SpinnerPreference;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/setting/SpinnerPreference;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/setting/SpinnerPreference;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mEntries:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/setting/SpinnerPreference;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/setting/SpinnerPreference;
    .param p1, "x1"    # I

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->persistInt(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/setting/SpinnerPreference;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/setting/SpinnerPreference;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method private findIndexOfValue(I)I
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 163
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mEntryValues:[I

    array-length v1, v2

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 164
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mEntryValues:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_0

    .line 167
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 163
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public getEntry()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mEntries:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->findIndexOfValue(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()I
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mKey:Ljava/lang/String;

    iget v2, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mDefaultValues:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mValue:I

    .line 118
    iget v0, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mValue:I

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 136
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 137
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 140
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    move-object v1, p1

    .line 142
    check-cast v1, Landroid/view/ViewGroup;

    .line 143
    .local v1, "vg":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 144
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 145
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 146
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 151
    if-eqz p1, :cond_0

    .line 152
    iget v1, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mValue:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->getPersistedInt(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mValue:I

    .line 160
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 156
    .local v0, "temp":I
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->persistInt(I)Z

    .line 157
    iput v0, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mValue:I

    goto :goto_0
.end method

.method public setEntries([Ljava/lang/String;)V
    .locals 0
    .param p1, "entries"    # [Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mEntries:[Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setEntryValues([I)V
    .locals 4
    .param p1, "entryValues"    # [I

    .prologue
    .line 126
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mEntryValues:[I

    .line 128
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mContext:Landroid/content/Context;

    const v2, 0x1090009

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mEntries:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->findIndexOfValue(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 132
    return-void
.end method

.method protected setSelection(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->findIndexOfValue(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 172
    return-void
.end method
