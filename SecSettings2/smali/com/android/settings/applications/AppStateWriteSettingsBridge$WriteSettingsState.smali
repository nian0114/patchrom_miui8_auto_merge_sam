.class public Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$WriteSettingsState;
.super Lcom/android/settings_ex/applications/AppStateAppOpsBridge$PermissionState;
.source "AppStateWriteSettingsBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WriteSettingsState"
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/applications/AppStateAppOpsBridge$PermissionState;)V
    .locals 2
    .param p1, "permissionState"    # Lcom/android/settings_ex/applications/AppStateAppOpsBridge$PermissionState;

    .prologue
    .line 73
    iget-object v0, p1, Lcom/android/settings_ex/applications/AppStateAppOpsBridge$PermissionState;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings_ex/applications/AppStateAppOpsBridge$PermissionState;->userHandle:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/applications/AppStateAppOpsBridge$PermissionState;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 74
    iget-object v0, p1, Lcom/android/settings_ex/applications/AppStateAppOpsBridge$PermissionState;->packageInfo:Landroid/content/pm/PackageInfo;

    iput-object v0, p0, Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$WriteSettingsState;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 75
    iget v0, p1, Lcom/android/settings_ex/applications/AppStateAppOpsBridge$PermissionState;->appOpMode:I

    iput v0, p0, Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$WriteSettingsState;->appOpMode:I

    .line 76
    iget-boolean v0, p1, Lcom/android/settings_ex/applications/AppStateAppOpsBridge$PermissionState;->permissionDeclared:Z

    iput-boolean v0, p0, Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$WriteSettingsState;->permissionDeclared:Z

    .line 77
    iget-boolean v0, p1, Lcom/android/settings_ex/applications/AppStateAppOpsBridge$PermissionState;->staticPermissionGranted:Z

    iput-boolean v0, p0, Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$WriteSettingsState;->staticPermissionGranted:Z

    .line 78
    return-void
.end method
