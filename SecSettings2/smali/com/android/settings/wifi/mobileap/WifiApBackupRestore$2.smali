.class Lcom/android/settings_ex/wifi/mobileap/WifiApBackupRestore$2;
.super Ljava/lang/Object;
.source "WifiApBackupRestore.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/FileTool$PDMProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/mobileap/WifiApBackupRestore;->restore(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApBackupRestore;

.field final synthetic val$listener:Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/mobileap/WifiApBackupRestore;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V
    .locals 0

    .prologue
    .line 1073
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApBackupRestore$2;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApBackupRestore;

    iput-object p2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApBackupRestore$2;->val$listener:Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transferred(JJ)V
    .locals 1
    .param p1, "now"    # J
    .param p3, "total"    # J

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApBackupRestore$2;->val$listener:Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->onProgress(JJ)V

    .line 1077
    return-void
.end method
