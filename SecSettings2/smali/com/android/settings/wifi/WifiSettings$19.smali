.class Lcom/android/settings_ex/wifi/WifiSettings$19;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiSettings;->onWLANPermissionRequestPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiSettings;)V
    .locals 0

    .prologue
    .line 2430
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettings$19;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "position"    # I

    .prologue
    const/4 v2, 0x1

    .line 2433
    if-nez p1, :cond_0

    .line 2444
    :goto_0
    return-void

    .line 2436
    :cond_0
    if-ne p2, v2, :cond_1

    .line 2438
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$19;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # invokes: Lcom/android/settings_ex/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2700(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wlan_permission_available"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2443
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$19;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mPermissionRequestDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2900(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 2441
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings$19;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    # invokes: Lcom/android/settings_ex/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->access$2800(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wlan_permission_available"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method
