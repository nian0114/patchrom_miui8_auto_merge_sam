.class final Lcom/android/settings_ex/wfd/WifiDisplaySettings$WifiDisplayPreference;
.super Landroid/preference/Preference;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WifiDisplayPreference"
.end annotation


# instance fields
.field private mDeviceType:I

.field private final mDisplay:Landroid/hardware/display/WifiDisplay;

.field public final sDeviceTypeImages:[I

.field final synthetic this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/hardware/display/WifiDisplay;)V
    .locals 7
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "display"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    const/16 v6, 0x9

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 1971
    iput-object p1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$WifiDisplayPreference;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    .line 1972
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 1957
    const/16 v4, 0xb

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    iput-object v4, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$WifiDisplayPreference;->sDeviceTypeImages:[I

    .line 1973
    const/4 v2, 0x0

    .line 1975
    .local v2, "tokens":[Ljava/lang/String;
    iput-object p3, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDisplay:Landroid/hardware/display/WifiDisplay;

    .line 1976
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$WifiDisplayPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1977
    const v4, 0x7f040235

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$WifiDisplayPreference;->setLayoutResource(I)V

    .line 1979
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getPrimaryDeviceType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1980
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getPrimaryDeviceType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1983
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getPrimaryDeviceType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v2, :cond_5

    array-length v4, v2

    if-ge v4, v0, :cond_5

    .line 1984
    :cond_1
    const-string v4, "WifiDisplaySettings"

    const-string v5, "Malformed primaryDeviceType"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$WifiDisplayPreference;->sDeviceTypeImages:[I

    aget v4, v4, v6

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$WifiDisplayPreference;->setIcon(I)V

    .line 1994
    :cond_2
    :goto_0
    invoke-virtual {p3}, Landroid/hardware/display/WifiDisplay;->getDeviceInfo()I

    move-result v4

    if-eq v4, v0, :cond_3

    invoke-virtual {p3}, Landroid/hardware/display/WifiDisplay;->getDeviceInfo()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_7

    .line 1995
    .local v0, "isSupportScreenSharing":Z
    :cond_3
    :goto_1
    if-nez v0, :cond_4

    .line 1996
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {p1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e1100

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1997
    .local v1, "summaryText":Landroid/text/Spannable;
    if-eqz v1, :cond_4

    .line 1998
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0082

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v5

    invoke-interface {v1, v4, v3, v5, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1999
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$WifiDisplayPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2003
    .end local v1    # "summaryText":Landroid/text/Spannable;
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$WifiDisplayPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const-string v4, "#8e9ca3"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 2005
    return-void

    .line 1986
    .end local v0    # "isSupportScreenSharing":Z
    :cond_5
    if-eqz v2, :cond_2

    .line 1987
    aget-object v4, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDeviceType:I

    .line 1988
    iget v4, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDeviceType:I

    if-lt v4, v0, :cond_6

    iget v4, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDeviceType:I

    const/16 v5, 0xc

    if-ge v4, v5, :cond_6

    .line 1989
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$WifiDisplayPreference;->sDeviceTypeImages:[I

    iget v5, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDeviceType:I

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$WifiDisplayPreference;->setIcon(I)V

    goto :goto_0

    .line 1991
    :cond_6
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$WifiDisplayPreference;->sDeviceTypeImages:[I

    aget v4, v4, v6

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$WifiDisplayPreference;->setIcon(I)V

    goto :goto_0

    :cond_7
    move v0, v3

    .line 1994
    goto :goto_1

    .line 1957
    :array_0
    .array-data 4
        0x7f0201d3
        0x7f0201d6
        0x7f0201d9
        0x7f0201d2
        0x7f0201da
        0x7f0201d8
        0x7f0201d4
        0x7f0201d7
        0x7f0201d5
        0x7f0201db
        0x7f0201d1
    .end array-data
.end method

.method static synthetic access$300(Lcom/android/settings_ex/wfd/WifiDisplaySettings$WifiDisplayPreference;)Landroid/hardware/display/WifiDisplay;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wfd/WifiDisplaySettings$WifiDisplayPreference;

    .prologue
    .line 1953
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDisplay:Landroid/hardware/display/WifiDisplay;

    return-object v0
.end method


# virtual methods
.method public getDisplay()Landroid/hardware/display/WifiDisplay;
    .locals 1

    .prologue
    .line 2008
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDisplay:Landroid/hardware/display/WifiDisplay;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2013
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 2014
    const v2, 0x1020016

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2015
    .local v1, "deviceName":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 2016
    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2019
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$WifiDisplayPreference;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    iget-object v2, v2, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    .line 2020
    .local v0, "activeDisplay":Landroid/hardware/display/WifiDisplay;
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v2, v0}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2021
    const v2, -0xff5f32

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2023
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2027
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$WifiDisplayPreference;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDisplay:Landroid/hardware/display/WifiDisplay;

    # invokes: Lcom/android/settings_ex/wfd/WifiDisplaySettings;->showOptionsDialog(Landroid/hardware/display/WifiDisplay;)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->access$2900(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V

    .line 2028
    return-void
.end method
