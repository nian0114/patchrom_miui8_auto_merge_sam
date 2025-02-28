.class public Landroid/sec/enterprise/BrowserPolicy;
.super Ljava/lang/Object;
.source "BrowserPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/enterprise/BrowserPolicy$BrowserSetting;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "BrowserPolicy"

    sput-object v0, Landroid/sec/enterprise/BrowserPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAutoFillSetting()Z
    .locals 4

    .prologue
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/sec/enterprise/IEDMProxy;->getBrowserSettingStatus(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-getAutoFillSetting returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getCookiesSetting()Z
    .locals 4

    .prologue
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/sec/enterprise/IEDMProxy;->getBrowserSettingStatus(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-getCookiesSetting returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getJavaScriptSetting()Z
    .locals 4

    .prologue
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    const/16 v2, 0x10

    invoke-interface {v1, v2}, Landroid/sec/enterprise/IEDMProxy;->getBrowserSettingStatus(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-getJavaScriptSetting returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getPopupsSetting()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/sec/enterprise/IEDMProxy;->getBrowserSettingStatus(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Landroid/sec/enterprise/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v4, "PXY-getPopupsSetting returning default value"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
