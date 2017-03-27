.class Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;
.super Landroid/preference/Preference;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DLNAPreference"
.end annotation


# instance fields
.field private final mDLNA:Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

.field public final sDeviceTypeImages:[I

.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;)V
    .locals 10
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "device"    # Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1779
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    .line 1780
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 1774
    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    iput-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->sDeviceTypeImages:[I

    .line 1782
    iput-object p3, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->mDLNA:Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    .line 1784
    const-string v5, "WifiDisplaySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "iconCache size : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/settings/wfd/WifiDisplaySettings;->mIconCache:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " device url : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p3}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getIcon()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Device id : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p3}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    invoke-virtual {p3}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getIcon()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 1787
    sget-object v5, Lcom/android/settings/wfd/WifiDisplaySettings;->mIconCache:Ljava/util/HashMap;

    invoke-virtual {p3}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getIcon()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 1788
    .local v3, "retBitmap":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_2

    .line 1789
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1790
    .local v0, "drawable_icon":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1791
    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1803
    .end local v0    # "drawable_icon":Landroid/graphics/drawable/Drawable;
    .end local v3    # "retBitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    const v5, 0x7f040235

    invoke-virtual {p0, v5}, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->setLayoutResource(I)V

    .line 1805
    invoke-virtual {p3}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->isSupportMirroring()Z

    move-result v2

    .line 1806
    .local v2, "isSupportScreenSharing":Z
    if-nez v2, :cond_1

    .line 1807
    new-instance v4, Landroid/text/SpannableString;

    invoke-virtual {p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e10ff

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1808
    .local v4, "summaryText":Landroid/text/Spannable;
    if-eqz v4, :cond_1

    .line 1809
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0082

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v4}, Landroid/text/Spannable;->length()I

    move-result v6

    invoke-interface {v4, v5, v8, v6, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1810
    invoke-virtual {p0, v4}, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1814
    .end local v4    # "summaryText":Landroid/text/Spannable;
    :cond_1
    invoke-virtual {p3}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1816
    invoke-virtual {p0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1817
    return-void

    .line 1794
    .end local v2    # "isSupportScreenSharing":Z
    .restart local v3    # "retBitmap":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->sDeviceTypeImages:[I

    aget v5, v5, v9

    invoke-virtual {p0, v5}, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->setIcon(I)V

    .line 1795
    new-instance v1, Lcom/android/settings/wfd/WifiDisplaySettings$IconDownloader;

    invoke-virtual {p3}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getIcon()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p3}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, p1, v5, v6}, Lcom/android/settings/wfd/WifiDisplaySettings$IconDownloader;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/net/Uri;Ljava/lang/String;)V

    .line 1796
    .local v1, "icon_downloader":Lcom/android/settings/wfd/WifiDisplaySettings$IconDownloader;
    new-array v5, v8, [Landroid/os/Handler;

    invoke-virtual {v1, v5}, Lcom/android/settings/wfd/WifiDisplaySettings$IconDownloader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1800
    .end local v1    # "icon_downloader":Lcom/android/settings/wfd/WifiDisplaySettings$IconDownloader;
    .end local v3    # "retBitmap":Landroid/graphics/Bitmap;
    :cond_3
    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->sDeviceTypeImages:[I

    aget v5, v5, v9

    invoke-virtual {p0, v5}, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->setIcon(I)V

    goto :goto_0

    .line 1774
    :array_0
    .array-data 4
        0x7f020229
        0x7f0201d4
    .end array-data
.end method

.method static synthetic access$3400(Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;)Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;

    .prologue
    .line 1769
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->mDLNA:Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    return-object v0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    const v6, -0xff5f32

    .line 1847
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 1849
    const v4, 0x1020016

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1850
    .local v2, "deviceName":Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 1851
    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1854
    :cond_0
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v4, v4, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplayStatus;->getConnectedState()I

    move-result v1

    .line 1855
    .local v1, "connectedstate":I
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v4, v4, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    .line 1857
    .local v0, "activeDisplay":Landroid/hardware/display/WifiDisplay;
    if-eqz v0, :cond_2

    const/16 v4, 0xa

    if-ne v1, v4, :cond_2

    .line 1858
    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v3

    .line 1859
    .local v3, "remoteP2pMacAddr":Ljava/lang/String;
    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->mDLNA:Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    invoke-virtual {v4}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getScreenSharingP2pMacAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1860
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1861
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z
    invoke-static {v4}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$2700(Lcom/android/settings/wfd/WifiDisplaySettings;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {v4}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-virtual {v4}, Lcom/android/settings/wfd/WfdPickerDialog;->IsChangeDevice()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1862
    invoke-virtual {p0, v7}, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->setEnabled(Z)V

    .line 1871
    .end local v3    # "remoteP2pMacAddr":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1865
    :cond_2
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v4, v4, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->isDLNADeviceConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v4, v4, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->getDLNADeviceUid()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v4, v4, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->getDLNADeviceUid()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->mDLNA:Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    invoke-virtual {v5}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getDeviceUid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1866
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1867
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z
    invoke-static {v4}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$2700(Lcom/android/settings/wfd/WifiDisplaySettings;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {v4}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-virtual {v4}, Lcom/android/settings/wfd/WfdPickerDialog;->IsChangeDevice()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1868
    invoke-virtual {p0, v7}, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v6, 0x1

    .line 1821
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v2, v2, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->isDLNADeviceConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v2, v2, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->getDLNADeviceUid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->mDLNA:Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    invoke-virtual {v3}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getDeviceUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1822
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v2, v2, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v0

    .line 1823
    .local v0, "activeDisplayState":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 1824
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    # invokes: Lcom/android/settings/wfd/WifiDisplaySettings;->showDisconnectDialog()V
    invoke-static {v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$2100(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    .line 1842
    .end local v0    # "activeDisplayState":I
    :goto_0
    return v6

    .line 1826
    .restart local v0    # "activeDisplayState":I
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    const v3, 0x22070

    const-string v4, ""

    const/4 v5, 0x0

    # invokes: Lcom/android/settings/wfd/WifiDisplaySettings;->requestPopup(ILjava/lang/String;ZLjava/lang/String;)V
    invoke-static {v2, v3, v4, v6, v5}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$2200(Lcom/android/settings/wfd/WifiDisplaySettings;ILjava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 1828
    .end local v0    # "activeDisplayState":I
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$2300(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/wfd/WfdSettingsUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v2, v2, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->isDLNADeviceConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1829
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->mDLNA:Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    invoke-virtual {v3}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getDeviceUid()Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mWaitingDevice:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$002(Lcom/android/settings/wfd/WifiDisplaySettings;Ljava/lang/String;)Ljava/lang/String;

    .line 1830
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    # invokes: Lcom/android/settings/wfd/WifiDisplaySettings;->disconnectDevice()V
    invoke-static {v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$2400(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    goto :goto_0

    .line 1832
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1834
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->mDLNA:Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    invoke-virtual {v2}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->getWlanMacAddress()Ljava/lang/String;

    move-result-object v1

    .line 1835
    .local v1, "wlanMacAddress":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->mDLNA:Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    invoke-virtual {v2}, Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;->isSupportTDLS()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    .line 1836
    const-string v2, "WifiDisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start TDLS with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$2500(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2, v1, v6}, Landroid/net/wifi/WifiManager;->startMediaShare(Ljava/lang/String;Z)V

    .line 1839
    :cond_4
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings$DLNAPreference;->mDLNA:Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;

    # invokes: Lcom/android/settings/wfd/WifiDisplaySettings;->connectScreenSharing(Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;)V
    invoke-static {v2, v3}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$2600(Lcom/android/settings/wfd/WifiDisplaySettings;Lcom/android/settings/wfd/WifiDisplaySettings$DeviceWrapper;)V

    goto :goto_0
.end method
