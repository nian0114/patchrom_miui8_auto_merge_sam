.class final Lcom/android/settings_exlib/bluetooth/SapProfile$SapServiceListener;
.super Ljava/lang/Object;
.source "SapProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_exlib/bluetooth/SapProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SapServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_exlib/bluetooth/SapProfile;


# direct methods
.method private constructor <init>(Lcom/android/settings_exlib/bluetooth/SapProfile;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/settings_exlib/bluetooth/SapProfile$SapServiceListener;->this$0:Lcom/android/settings_exlib/bluetooth/SapProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_exlib/bluetooth/SapProfile;Lcom/android/settings_exlib/bluetooth/SapProfile$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_exlib/bluetooth/SapProfile;
    .param p2, "x1"    # Lcom/android/settings_exlib/bluetooth/SapProfile$1;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/settings_exlib/bluetooth/SapProfile$SapServiceListener;-><init>(Lcom/android/settings_exlib/bluetooth/SapProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 59
    # getter for: Lcom/android/settings_exlib/bluetooth/SapProfile;->V:Z
    invoke-static {}, Lcom/android/settings_exlib/bluetooth/SapProfile;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SapProfile"

    const-string v1, "Bluetooth service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/SapProfile$SapServiceListener;->this$0:Lcom/android/settings_exlib/bluetooth/SapProfile;

    check-cast p2, Landroid/bluetooth/BluetoothSap;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    # setter for: Lcom/android/settings_exlib/bluetooth/SapProfile;->mService:Landroid/bluetooth/BluetoothSap;
    invoke-static {v0, p2}, Lcom/android/settings_exlib/bluetooth/SapProfile;->access$102(Lcom/android/settings_exlib/bluetooth/SapProfile;Landroid/bluetooth/BluetoothSap;)Landroid/bluetooth/BluetoothSap;

    .line 79
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .param p1, "profile"    # I

    .prologue
    .line 82
    # getter for: Lcom/android/settings_exlib/bluetooth/SapProfile;->V:Z
    invoke-static {}, Lcom/android/settings_exlib/bluetooth/SapProfile;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SapProfile"

    const-string v1, "Bluetooth service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/SapProfile$SapServiceListener;->this$0:Lcom/android/settings_exlib/bluetooth/SapProfile;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings_exlib/bluetooth/SapProfile;->mIsProfileReady:Z
    invoke-static {v0, v1}, Lcom/android/settings_exlib/bluetooth/SapProfile;->access$202(Lcom/android/settings_exlib/bluetooth/SapProfile;Z)Z

    .line 86
    return-void
.end method
