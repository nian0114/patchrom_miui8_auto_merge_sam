.class Lcom/android/server/LockSettingsService$SdpHandler$6;
.super Ljava/lang/Object;
.source "LockSettingsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LockSettingsService$SdpHandler;->migrateCredential(ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/LockSettingsService$SdpHandler;

.field final synthetic val$credential:Ljava/lang/String;

.field final synthetic val$type:I

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/LockSettingsService$SdpHandler;ILjava/lang/String;I)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/LockSettingsService$SdpHandler$6;->this$1:Lcom/android/server/LockSettingsService$SdpHandler;

    iput p2, p0, Lcom/android/server/LockSettingsService$SdpHandler$6;->val$userId:I

    iput-object p3, p0, Lcom/android/server/LockSettingsService$SdpHandler$6;->val$credential:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/LockSettingsService$SdpHandler$6;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    iget-object v0, p0, Lcom/android/server/LockSettingsService$SdpHandler$6;->this$1:Lcom/android/server/LockSettingsService$SdpHandler;

    iget v1, p0, Lcom/android/server/LockSettingsService$SdpHandler$6;->val$userId:I

    iget-object v2, p0, Lcom/android/server/LockSettingsService$SdpHandler$6;->val$credential:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/LockSettingsService$SdpHandler$6;->this$1:Lcom/android/server/LockSettingsService$SdpHandler;

    iget-object v3, v3, Lcom/android/server/LockSettingsService$SdpHandler;->this$0:Lcom/android/server/LockSettingsService;

    # getter for: Lcom/android/server/LockSettingsService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;
    invoke-static {v3}, Lcom/android/server/LockSettingsService;->access$1800(Lcom/android/server/LockSettingsService;)Lcom/sec/knox/container/util/KeyManagementUtil;

    move-result-object v3

    iget v4, p0, Lcom/android/server/LockSettingsService$SdpHandler$6;->val$type:I

    invoke-virtual {v3, v4}, Lcom/sec/knox/container/util/KeyManagementUtil;->convType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService$SdpHandler;->migrateCredentialInternal(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/LockSettingsService$SdpHandler$6;->this$1:Lcom/android/server/LockSettingsService$SdpHandler;

    iget v1, p0, Lcom/android/server/LockSettingsService$SdpHandler$6;->val$userId:I

    iget-object v2, p0, Lcom/android/server/LockSettingsService$SdpHandler$6;->val$credential:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/LockSettingsService$SdpHandler$6;->this$1:Lcom/android/server/LockSettingsService$SdpHandler;

    iget-object v3, v3, Lcom/android/server/LockSettingsService$SdpHandler;->this$0:Lcom/android/server/LockSettingsService;

    # getter for: Lcom/android/server/LockSettingsService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;
    invoke-static {v3}, Lcom/android/server/LockSettingsService;->access$1800(Lcom/android/server/LockSettingsService;)Lcom/sec/knox/container/util/KeyManagementUtil;

    move-result-object v3

    iget v4, p0, Lcom/android/server/LockSettingsService$SdpHandler$6;->val$type:I

    invoke-virtual {v3, v4}, Lcom/sec/knox/container/util/KeyManagementUtil;->convType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService$SdpHandler;->verifyInternal(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/LockSettingsService$SdpHandler$6;->this$1:Lcom/android/server/LockSettingsService$SdpHandler;

    iget-object v0, v0, Lcom/android/server/LockSettingsService$SdpHandler;->this$0:Lcom/android/server/LockSettingsService;

    iget-object v1, p0, Lcom/android/server/LockSettingsService$SdpHandler$6;->val$credential:Ljava/lang/String;

    # invokes: Lcom/android/server/LockSettingsService;->clear(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/LockSettingsService;->access$1700(Lcom/android/server/LockSettingsService;Ljava/lang/String;)V

    return-void
.end method
