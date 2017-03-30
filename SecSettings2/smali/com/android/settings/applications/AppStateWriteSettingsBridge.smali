.class public Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge;
.super Lcom/android/settings_ex/applications/AppStateAppOpsBridge;
.source "AppStateWriteSettingsBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$WriteSettingsState;
    }
.end annotation


# static fields
.field public static final FILTER_WRITE_SETTINGS:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

.field private static final PM_PERMISSIONS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_SETTINGS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge;->PM_PERMISSIONS:[Ljava/lang/String;

    .line 81
    new-instance v0, Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$1;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$1;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge;->FILTER_WRITE_SETTINGS:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_exlib/applications/ApplicationsState;Lcom/android/settings_ex/applications/AppStateBaseBridge$Callback;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appState"    # Lcom/android/settings_exlib/applications/ApplicationsState;
    .param p3, "callback"    # Lcom/android/settings_ex/applications/AppStateBaseBridge$Callback;

    .prologue
    .line 48
    const/16 v4, 0x17

    sget-object v5, Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge;->PM_PERMISSIONS:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/applications/AppStateAppOpsBridge;-><init>(Landroid/content/Context;Lcom/android/settings_exlib/applications/ApplicationsState;Lcom/android/settings_ex/applications/AppStateBaseBridge$Callback;I[Ljava/lang/String;)V

    .line 49
    return-void
.end method


# virtual methods
.method public getNumberOfPackagesCanWriteSettings()I
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Lcom/android/settings_ex/applications/AppStateAppOpsBridge;->getNumPackagesAllowedByAppOps()I

    move-result v0

    return v0
.end method

.method public getNumberOfPackagesWithPermission()I
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Lcom/android/settings_ex/applications/AppStateAppOpsBridge;->getNumPackagesDeclaredPermission()I

    move-result v0

    return v0
.end method

.method public getWriteSettingsInfo(Ljava/lang/String;I)Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$WriteSettingsState;
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 57
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/applications/AppStateAppOpsBridge;->getPermissionInfo(Ljava/lang/String;I)Lcom/android/settings_ex/applications/AppStateAppOpsBridge$PermissionState;

    move-result-object v0

    .line 58
    .local v0, "permissionState":Lcom/android/settings_ex/applications/AppStateAppOpsBridge$PermissionState;
    new-instance v1, Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    invoke-direct {v1, v0}, Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$WriteSettingsState;-><init>(Lcom/android/settings_ex/applications/AppStateAppOpsBridge$PermissionState;)V

    return-object v1
.end method

.method protected updateExtraInfo(Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
    .locals 1
    .param p1, "app"    # Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    .line 53
    invoke-virtual {p0, p2, p3}, Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge;->getWriteSettingsInfo(Ljava/lang/String;I)Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    .line 54
    return-void
.end method
