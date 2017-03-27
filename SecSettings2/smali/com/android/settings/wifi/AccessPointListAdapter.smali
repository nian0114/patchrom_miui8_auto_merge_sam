.class public Lcom/android/settings_ex/wifi/AccessPointListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AccessPointListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/wifi/AccessPointListAdapter$1;,
        Lcom/android/settings_ex/wifi/AccessPointListAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final STATE_GIGA_NONE:[I

.field private static final STATE_GIGA_SECURED:[I

.field private static final STATE_NONE:[I

.field private static final STATE_SECURED:[I

.field private static final STATE_WECHAT:[I

.field private static wifi_signal_attributes:[I


# instance fields
.field mApList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/wifi/AccessPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field mContext:Landroid/content/Context;

.field private mCounter:I

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLayoutResId:I

.field private mNotifyOnChange:Z

.field private mPreviousSummary:Ljava/lang/String;

.field private mState:Landroid/net/NetworkInfo$DetailedState;

.field private mTypedArray:Landroid/content/res/TypedArray;

.field private mWifiSld:Landroid/graphics/drawable/StateListDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    new-array v0, v3, [I

    const v1, 0x7f01011a

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->STATE_SECURED:[I

    .line 67
    new-array v0, v2, [I

    sput-object v0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->STATE_NONE:[I

    .line 68
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->STATE_GIGA_SECURED:[I

    .line 71
    new-array v0, v3, [I

    const v1, 0x7f01011b

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->STATE_GIGA_NONE:[I

    .line 74
    new-array v0, v3, [I

    const v1, 0x7f01011c

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->STATE_WECHAT:[I

    .line 78
    new-array v0, v3, [I

    const v1, 0x7f01014f

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->wifi_signal_attributes:[I

    return-void

    .line 68
    nop

    :array_0
    .array-data 4
        0x7f01011b
        0x7f01011a
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/wifi/AccessPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/wifi/AccessPoint;>;"
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 80
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 52
    iput-object v4, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mContext:Landroid/content/Context;

    .line 53
    iput-object v4, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mApList:Ljava/util/List;

    .line 55
    iput-object v4, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 56
    iput-object v4, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mTypedArray:Landroid/content/res/TypedArray;

    .line 57
    const v1, 0x10900bb

    iput v1, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mLayoutResId:I

    .line 58
    iput v5, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mCounter:I

    .line 60
    iput-object v4, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mPreviousSummary:Ljava/lang/String;

    .line 63
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mNotifyOnChange:Z

    .line 81
    iput-object p1, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mContext:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mApList:Ljava/util/List;

    .line 83
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 84
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/R$styleable;->Preference:[I

    const v3, 0x101008e

    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mTypedArray:Landroid/content/res/TypedArray;

    .line 85
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mTypedArray:Landroid/content/res/TypedArray;

    const/4 v2, 0x3

    iget v3, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mLayoutResId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mLayoutResId:I

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->wifi_signal_attributes:[I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    iput-object v1, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mWifiSld:Landroid/graphics/drawable/StateListDrawable;

    .line 88
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mApList:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 89
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mApList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mApList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/wifi/AccessPoint;->setId(I)V

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mApList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mCounter:I

    .line 94
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private updateIcon(Landroid/widget/ImageView;Lcom/android/settings_ex/wifi/AccessPoint;)V
    .locals 5
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "ap"    # Lcom/android/settings_ex/wifi/AccessPoint;

    .prologue
    .line 427
    invoke-virtual {p2}, Lcom/android/settings_ex/wifi/AccessPoint;->getApIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 428
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p2}, Lcom/android/settings_ex/wifi/AccessPoint;->getLevel()I

    move-result v2

    .line 429
    .local v2, "level":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 430
    const/4 v2, 0x5

    .line 433
    :cond_0
    if-nez v1, :cond_7

    .line 434
    iget-object v3, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mWifiSld:Landroid/graphics/drawable/StateListDrawable;

    if-eqz v3, :cond_2

    .line 435
    const-string v3, "KTT"

    sget-object v4, Lcom/android/settings_ex/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/settings_ex/Utils;->PREFERRED_BAND:Ljava/lang/String;

    const-string v4, "11AC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p2, Lcom/android/settings_ex/wifi/AccessPoint;->mIsGigaAp:Z

    if-eqz v3, :cond_4

    .line 436
    iget-object v4, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mWifiSld:Landroid/graphics/drawable/StateListDrawable;

    iget v3, p2, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->STATE_GIGA_SECURED:[I

    :goto_0
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 443
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mWifiSld:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 444
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 445
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 447
    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 452
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_2
    return-void

    .line 436
    :cond_3
    sget-object v3, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->STATE_GIGA_NONE:[I

    goto :goto_0

    .line 437
    :cond_4
    iget-boolean v3, p2, Lcom/android/settings_ex/wifi/AccessPoint;->mIsWeChatAp:Z

    if-eqz v3, :cond_5

    .line 438
    iget-object v3, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mWifiSld:Landroid/graphics/drawable/StateListDrawable;

    sget-object v4, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->STATE_WECHAT:[I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    goto :goto_1

    .line 440
    :cond_5
    iget-object v4, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mWifiSld:Landroid/graphics/drawable/StateListDrawable;

    iget v3, p2, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    if-eqz v3, :cond_6

    sget-object v3, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->STATE_SECURED:[I

    :goto_3
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    goto :goto_1

    :cond_6
    sget-object v3, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->STATE_NONE:[I

    goto :goto_3

    .line 450
    :cond_7
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method private updatetext(Landroid/content/Context;Lcom/android/settings_ex/wifi/AccessPointListAdapter$ViewHolder;Lcom/android/settings_ex/wifi/AccessPoint;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "holder"    # Lcom/android/settings_ex/wifi/AccessPointListAdapter$ViewHolder;
    .param p3, "ap"    # Lcom/android/settings_ex/wifi/AccessPoint;

    .prologue
    .line 251
    invoke-virtual {p3}, Lcom/android/settings_ex/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 252
    invoke-virtual {p3}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 255
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_1

    .line 257
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a007c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#ff"

    const-string v3, "#"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "color":Ljava/lang/String;
    iget-object v1, p2, Lcom/android/settings_ex/wifi/AccessPointListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<font color="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/android/settings_ex/wifi/AccessPoint;->getSsid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</font>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    .end local v0    # "color":Ljava/lang/String;
    :goto_0
    iget-object v1, p2, Lcom/android/settings_ex/wifi/AccessPointListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    iget-object v1, p2, Lcom/android/settings_ex/wifi/AccessPointListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/android/settings_ex/wifi/AccessPoint;->getSettingsSummary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    iget-object v2, p2, Lcom/android/settings_ex/wifi/AccessPointListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    iget-boolean v1, p3, Lcom/android/settings_ex/wifi/AccessPoint;->showSummary:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 425
    return-void

    .line 259
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_3

    .line 260
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a005e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#ff"

    const-string v3, "#"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 261
    .restart local v0    # "color":Ljava/lang/String;
    iget-object v1, p2, Lcom/android/settings_ex/wifi/AccessPointListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<font color="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/android/settings_ex/wifi/AccessPoint;->getSsid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</font>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 263
    .end local v0    # "color":Ljava/lang/String;
    :cond_3
    iget-object v1, p2, Lcom/android/settings_ex/wifi/AccessPointListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/android/settings_ex/wifi/AccessPoint;->getSsid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 424
    :cond_4
    const/16 v1, 0x8

    goto :goto_1
.end method


# virtual methods
.method public append(Lcom/android/settings_ex/wifi/AccessPoint;)V
    .locals 2
    .param p1, "ap"    # Lcom/android/settings_ex/wifi/AccessPoint;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mApList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mApList:Ljava/util/List;

    .line 214
    :cond_0
    iget v0, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mCounter:I

    invoke-virtual {p1, v0}, Lcom/android/settings_ex/wifi/AccessPoint;->setId(I)V

    .line 215
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mApList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->notifyDataSetChanged()V

    .line 217
    :cond_1
    return-void
.end method

.method public getAccessPointList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mApList:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 100
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mApList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mApList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 103
    :cond_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mApList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 109
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mApList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mApList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/wifi/AccessPoint;

    .line 116
    .local v0, "ap":Lcom/android/settings_ex/wifi/AccessPoint;
    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/AccessPoint;->getId()I

    move-result v1

    int-to-long v2, v1

    .line 120
    .end local v0    # "ap":Lcom/android/settings_ex/wifi/AccessPoint;
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    .line 130
    move-object v3, p2

    .line 133
    .local v3, "view":Landroid/view/View;
    if-nez v3, :cond_3

    .line 134
    iget-object v5, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget v6, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mLayoutResId:I

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 135
    new-instance v1, Lcom/android/settings_ex/wifi/AccessPointListAdapter$ViewHolder;

    invoke-direct {v1, v7}, Lcom/android/settings_ex/wifi/AccessPointListAdapter$ViewHolder;-><init>(Lcom/android/settings_ex/wifi/AccessPointListAdapter$1;)V

    .line 136
    .local v1, "holder":Lcom/android/settings_ex/wifi/AccessPointListAdapter$ViewHolder;
    const v5, 0x1020006

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v1, Lcom/android/settings_ex/wifi/AccessPointListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 137
    const v5, 0x1020016

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/android/settings_ex/wifi/AccessPointListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 138
    const v5, 0x1020010

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/android/settings_ex/wifi/AccessPointListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    .line 139
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 144
    :goto_0
    iget-object v5, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mApList:Ljava/util/List;

    if-eqz v5, :cond_2

    .line 145
    iget-object v5, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mApList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/wifi/AccessPoint;

    .line 146
    .local v0, "accessPoint":Lcom/android/settings_ex/wifi/AccessPoint;
    if-eqz v0, :cond_2

    .line 151
    iget-object v5, v1, Lcom/android/settings_ex/wifi/AccessPointListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-direct {p0, v5, v0}, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->updateIcon(Landroid/widget/ImageView;Lcom/android/settings_ex/wifi/AccessPoint;)V

    .line 152
    iget-object v5, v1, Lcom/android/settings_ex/wifi/AccessPointListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 153
    .local v4, "viewdrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_1

    .line 154
    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/AccessPoint;->getLevel()I

    move-result v2

    .line 155
    .local v2, "level":I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_0

    .line 156
    const/4 v2, 0x5

    .line 158
    :cond_0
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 161
    .end local v2    # "level":I
    :cond_1
    iget-object v5, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5, v1, v0}, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->updatetext(Landroid/content/Context;Lcom/android/settings_ex/wifi/AccessPointListAdapter$ViewHolder;Lcom/android/settings_ex/wifi/AccessPoint;)V

    .line 166
    .end local v0    # "accessPoint":Lcom/android/settings_ex/wifi/AccessPoint;
    .end local v4    # "viewdrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    return-object v3

    .line 141
    .end local v1    # "holder":Lcom/android/settings_ex/wifi/AccessPointListAdapter$ViewHolder;
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/wifi/AccessPointListAdapter$ViewHolder;

    .restart local v1    # "holder":Lcom/android/settings_ex/wifi/AccessPointListAdapter$ViewHolder;
    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x1

    return v0
.end method

.method public insert(Lcom/android/settings_ex/wifi/AccessPoint;I)V
    .locals 2
    .param p1, "objects"    # Lcom/android/settings_ex/wifi/AccessPoint;
    .param p2, "index"    # I

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mApList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mApList:Ljava/util/List;

    .line 199
    :cond_0
    iget v0, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mCounter:I

    invoke-virtual {p1, v0}, Lcom/android/settings_ex/wifi/AccessPoint;->setId(I)V

    .line 203
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mApList:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 204
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->notifyDataSetChanged()V

    .line 205
    :cond_1
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 190
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mNotifyOnChange:Z

    .line 192
    return-void
.end method

.method public remove(Lcom/android/settings_ex/wifi/AccessPoint;)V
    .locals 4
    .param p1, "ap"    # Lcom/android/settings_ex/wifi/AccessPoint;

    .prologue
    .line 220
    if-eqz p1, :cond_1

    .line 221
    const/4 v1, -0x1

    .line 222
    .local v1, "foundIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mApList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 223
    iget-object v3, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mApList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/wifi/AccessPoint;

    .line 224
    .local v0, "curAp":Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-virtual {v0, p1}, Lcom/android/settings_ex/wifi/AccessPoint;->checkIfSame(Landroid/preference/Preference;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 228
    move v1, v2

    .line 232
    .end local v0    # "curAp":Lcom/android/settings_ex/wifi/AccessPoint;
    :cond_0
    if-ltz v1, :cond_1

    .line 234
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mApList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    .end local v1    # "foundIndex":I
    .end local v2    # "i":I
    :cond_1
    :goto_1
    iget-boolean v3, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mNotifyOnChange:Z

    if-eqz v3, :cond_2

    .line 239
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->notifyDataSetChanged()V

    .line 241
    :cond_2
    return-void

    .line 222
    .restart local v0    # "curAp":Lcom/android/settings_ex/wifi/AccessPoint;
    .restart local v1    # "foundIndex":I
    .restart local v2    # "i":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 235
    .end local v0    # "curAp":Lcom/android/settings_ex/wifi/AccessPoint;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public removeall()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mApList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 246
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->notifyDataSetChanged()V

    .line 249
    :cond_0
    return-void
.end method

.method public setAccessPointList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/wifi/AccessPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/wifi/AccessPoint;>;"
    if-nez p1, :cond_2

    iput-object p1, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mApList:Ljava/util/List;

    .line 183
    :cond_0
    iget-boolean v3, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mNotifyOnChange:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->notifyDataSetChanged()V

    .line 184
    :cond_1
    return-void

    .line 177
    :cond_2
    const/4 v2, 0x0

    .line 178
    .local v2, "index":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/wifi/AccessPoint;

    .line 179
    .local v0, "accessPoint":Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-virtual {p0, v0, v2}, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->insert(Lcom/android/settings_ex/wifi/AccessPoint;I)V

    .line 180
    add-int/lit8 v2, v2, 0x1

    .line 181
    goto :goto_0
.end method

.method public setNotifyOnChange(Z)V
    .locals 0
    .param p1, "notifyOnChange"    # Z

    .prologue
    .line 186
    iput-boolean p1, p0, Lcom/android/settings_ex/wifi/AccessPointListAdapter;->mNotifyOnChange:Z

    .line 187
    return-void
.end method
