.class Lcom/android/nfc/HciEventControl$1;
.super Ljava/lang/Object;
.source "HciEventControl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/HciEventControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/HciEventControl;


# direct methods
.method constructor <init>(Lcom/android/nfc/HciEventControl;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/nfc/HciEventControl$1;->this$0:Lcom/android/nfc/HciEventControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 117
    sget-boolean v1, Lcom/android/nfc/HciEventControl;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "NfcServiceHciEventControl"

    const-string v2, "onServiceConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/HciEventControl$1;->this$0:Lcom/android/nfc/HciEventControl;

    invoke-static {p2}, Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub;->asInterface(Landroid/os/IBinder;)Lorg/simalliance/openmobileapi/service/ISmartcardService;

    move-result-object v2

    # setter for: Lcom/android/nfc/HciEventControl;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;
    invoke-static {v1, v2}, Lcom/android/nfc/HciEventControl;->access$002(Lcom/android/nfc/HciEventControl;Lorg/simalliance/openmobileapi/service/ISmartcardService;)Lorg/simalliance/openmobileapi/service/ISmartcardService;

    .line 120
    iget-object v1, p0, Lcom/android/nfc/HciEventControl$1;->this$0:Lcom/android/nfc/HciEventControl;

    const/4 v2, 0x1

    # setter for: Lcom/android/nfc/HciEventControl;->mServiceBinded:Z
    invoke-static {v1, v2}, Lcom/android/nfc/HciEventControl;->access$102(Lcom/android/nfc/HciEventControl;Z)Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    const-string v1, "NfcServiceHciEventControl"

    const-string v2, "NoClassDefFoundError"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 128
    sget-boolean v0, Lcom/android/nfc/HciEventControl;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NfcServiceHciEventControl"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/HciEventControl$1;->this$0:Lcom/android/nfc/HciEventControl;

    const/4 v1, 0x0

    # setter for: Lcom/android/nfc/HciEventControl;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;
    invoke-static {v0, v1}, Lcom/android/nfc/HciEventControl;->access$002(Lcom/android/nfc/HciEventControl;Lorg/simalliance/openmobileapi/service/ISmartcardService;)Lorg/simalliance/openmobileapi/service/ISmartcardService;

    .line 130
    iget-object v0, p0, Lcom/android/nfc/HciEventControl$1;->this$0:Lcom/android/nfc/HciEventControl;

    const/4 v1, 0x0

    # setter for: Lcom/android/nfc/HciEventControl;->mServiceBinded:Z
    invoke-static {v0, v1}, Lcom/android/nfc/HciEventControl;->access$102(Lcom/android/nfc/HciEventControl;Z)Z

    .line 131
    return-void
.end method
