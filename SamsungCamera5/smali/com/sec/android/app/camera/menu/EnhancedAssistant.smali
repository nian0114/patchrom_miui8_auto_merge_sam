.class public Lcom/sec/android/app/camera/menu/EnhancedAssistant;
.super Ljava/lang/Object;
.source "EnhancedAssistant.java"


# static fields
.field public static final ACTION_GALLERY:Ljava/lang/String; = "android.intent.action.switchgallery"

.field public static final ACTION_SWITCH_CAMERA:Ljava/lang/String; = "android.intent.action.switchcamera"

.field private static final ACTIVITY_NAME:Ljava/lang/String; = "ActivityName"

.field private static final ICON_NAME:Ljava/lang/String; = "IconName"

.field private static final MENU_GALLERY:Ljava/lang/String; = "Gallery"

.field private static final MENU_SWITCH_CAMERA:Ljava/lang/String; = "Switch camera"

.field private static final REGISTER:Ljava/lang/String; = "register"

.field private static final TAG:Ljava/lang/String; = "EnhancedAssistant"


# instance fields
.field private isMenuAdded:Z

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 2
    .param p1, "activity"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->isMenuAdded:Z

    .line 47
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 48
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 49
    iput-object p2, p0, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 50
    return-void
.end method

.method private addAssistantItem()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 74
    const-string v1, "EnhancedAssistant"

    const-string v2, "addAssistantMenu"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-boolean v1, p0, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->isMenuAdded:Z

    if-eqz v1, :cond_0

    .line 77
    const-string v1, "EnhancedAssistant"

    const-string v2, "addAssistantMenu is already true...skip"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :goto_0
    return-void

    .line 81
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 82
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "ActivityName"

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v1, "IconName"

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->getMenuList()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v1, "register"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 85
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->assistantMenuUpdate(Landroid/os/Bundle;)V

    .line 86
    iput-boolean v3, p0, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->isMenuAdded:Z

    goto :goto_0
.end method

.method private getMenuList()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getNumberOfCameras()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 91
    const-string v0, "Gallery;"

    .line 93
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Switch camera;Gallery;"

    goto :goto_0
.end method

.method private removeAssistantItem()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 97
    const-string v1, "EnhancedAssistant"

    const-string v2, "removeAssistantMenu"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iput-boolean v3, p0, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->isMenuAdded:Z

    .line 99
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 100
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "ActivityName"

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v1, "IconName"

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->getMenuList()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v1, "register"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 103
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->assistantMenuUpdate(Landroid/os/Bundle;)V

    .line 104
    return-void
.end method


# virtual methods
.method public registerEAM(Landroid/content/BroadcastReceiver;)V
    .locals 3
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 53
    const-string v1, "EnhancedAssistant"

    const-string v2, "registerEAM"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->addAssistantItem()V

    .line 56
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 57
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.switchcamera"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    const-string v1, "android.intent.action.switchgallery"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 60
    return-void
.end method

.method public unregisterEAM(Landroid/content/BroadcastReceiver;)V
    .locals 3
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 63
    const-string v1, "EnhancedAssistant"

    const-string v2, "unregisterEAM"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->removeAssistantItem()V

    .line 71
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "EnhancedAssistant"

    const-string v2, "IllegalArgumentException : unregiseter EAM"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
