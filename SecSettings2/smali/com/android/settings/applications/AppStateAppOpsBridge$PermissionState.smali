.class public Lcom/android/settings_ex/applications/AppStateAppOpsBridge$PermissionState;
.super Ljava/lang/Object;
.source "AppStateAppOpsBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/AppStateAppOpsBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionState"
.end annotation


# instance fields
.field public appOpMode:I

.field public packageInfo:Landroid/content/pm/PackageInfo;

.field public final packageName:Ljava/lang/String;

.field public permissionDeclared:Z

.field public staticPermissionGranted:Z

.field public final userHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    iput-object p1, p0, Lcom/android/settings_ex/applications/AppStateAppOpsBridge$PermissionState;->packageName:Ljava/lang/String;

    .line 308
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings_ex/applications/AppStateAppOpsBridge$PermissionState;->appOpMode:I

    .line 309
    iput-object p2, p0, Lcom/android/settings_ex/applications/AppStateAppOpsBridge$PermissionState;->userHandle:Landroid/os/UserHandle;

    .line 310
    return-void
.end method


# virtual methods
.method public isPermissible()Z
    .locals 2

    .prologue
    .line 316
    iget v0, p0, Lcom/android/settings_ex/applications/AppStateAppOpsBridge$PermissionState;->appOpMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 317
    iget-boolean v0, p0, Lcom/android/settings_ex/applications/AppStateAppOpsBridge$PermissionState;->staticPermissionGranted:Z

    .line 319
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/settings_ex/applications/AppStateAppOpsBridge$PermissionState;->appOpMode:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
