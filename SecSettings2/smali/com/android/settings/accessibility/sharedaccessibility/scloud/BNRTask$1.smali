.class Lcom/android/settings_ex/accessibility/sharedaccessibility/scloud/BNRTask$1;
.super Ljava/lang/Object;
.source "BNRTask.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/FileTool$PDMProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/accessibility/sharedaccessibility/scloud/BNRTask;->backup(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/accessibility/sharedaccessibility/scloud/BNRTask;

.field final synthetic val$listener:Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/accessibility/sharedaccessibility/scloud/BNRTask;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/settings_ex/accessibility/sharedaccessibility/scloud/BNRTask$1;->this$0:Lcom/android/settings_ex/accessibility/sharedaccessibility/scloud/BNRTask;

    iput-object p2, p0, Lcom/android/settings_ex/accessibility/sharedaccessibility/scloud/BNRTask$1;->val$listener:Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transferred(JJ)V
    .locals 1
    .param p1, "now"    # J
    .param p3, "total"    # J

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/sharedaccessibility/scloud/BNRTask$1;->val$listener:Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->onProgress(JJ)V

    .line 87
    return-void
.end method
