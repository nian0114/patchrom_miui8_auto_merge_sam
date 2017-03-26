.class Lcom/android/nfc/cardemulation/RegisteredServicesCache$1;
.super Landroid/content/BroadcastReceiver;
.source "RegisteredServicesCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/cardemulation/RegisteredServicesCache;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/cardemulation/RegisteredServicesCache;


# direct methods
.method constructor <init>(Lcom/android/nfc/cardemulation/RegisteredServicesCache;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$1;->this$0:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 183
    const-string v9, "android.intent.extra.UID"

    const/4 v10, -0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 184
    .local v6, "uid":I
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "action":Ljava/lang/String;
    sget-boolean v9, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "RegisteredServicesCache"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Intent action: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    const/4 v9, -0x1

    if-eq v6, v9, :cond_a

    .line 187
    const-string v9, "android.intent.extra.REPLACING"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_7

    const-string v9, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_1
    const/4 v5, 0x1

    .line 190
    .local v5, "replaced":Z
    :goto_0
    if-nez v5, :cond_9

    .line 191
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 193
    .local v1, "currentUser":I
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 194
    .local v8, "userIdFromUid":I
    const/4 v3, 0x0

    .line 197
    .local v3, "isOwnerOrKnoxContainer":Z
    sget-object v9, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-static {v9}, Landroid/os/PersonaManager;->isKnoxVersionSupported(Landroid/os/PersonaManager$KnoxContainerVersion;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 198
    if-eqz v1, :cond_2

    invoke-static {v8}, Lcom/android/nfc/NfcService;->isContainerId(I)Z

    move-result v9

    if-eqz v9, :cond_8

    :cond_2
    const/4 v3, 0x1

    .line 205
    :cond_3
    :goto_1
    if-eq v1, v8, :cond_4

    if-eqz v3, :cond_6

    .line 207
    :cond_4
    const-string v9, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 208
    iget-object v9, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$1;->this$0:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/android/nfc/cardemulation/RegisteredServicesCache;->deleteDynamicServices(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->access$100(Lcom/android/nfc/cardemulation/RegisteredServicesCache;Ljava/lang/String;)V

    .line 210
    :cond_5
    iget-object v9, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$1;->this$0:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-virtual {v9, v10, p2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->invalidateCache(ILandroid/content/Intent;)V

    .line 238
    .end local v1    # "currentUser":I
    .end local v3    # "isOwnerOrKnoxContainer":Z
    .end local v5    # "replaced":Z
    .end local v8    # "userIdFromUid":I
    :cond_6
    :goto_2
    return-void

    .line 187
    :cond_7
    const/4 v5, 0x0

    goto :goto_0

    .line 198
    .restart local v1    # "currentUser":I
    .restart local v3    # "isOwnerOrKnoxContainer":Z
    .restart local v5    # "replaced":Z
    .restart local v8    # "userIdFromUid":I
    :cond_8
    const/4 v3, 0x0

    goto :goto_1

    .line 215
    .end local v1    # "currentUser":I
    .end local v3    # "isOwnerOrKnoxContainer":Z
    .end local v8    # "userIdFromUid":I
    :cond_9
    sget-boolean v9, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->DEBUG:Z

    if-eqz v9, :cond_6

    const-string v9, "RegisteredServicesCache"

    const-string v10, "Ignoring package intent due to package being replaced."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 220
    .end local v5    # "replaced":Z
    :cond_a
    const-string v9, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 221
    const-string v9, "android.intent.extra.USER"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 222
    .local v2, "handle":Landroid/os/UserHandle;
    if-eqz v2, :cond_6

    .line 223
    iget-object v9, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$1;->this$0:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    # invokes: Lcom/android/nfc/cardemulation/RegisteredServicesCache;->invalidateCacheForKnox(I)V
    invoke-static {v9, v10}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->access$200(Lcom/android/nfc/cardemulation/RegisteredServicesCache;I)V

    goto :goto_2

    .line 225
    .end local v2    # "handle":Landroid/os/UserHandle;
    :cond_b
    const-string v9, "android.intent.action.USER_REMOVED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 226
    const-string v9, "android.intent.extra.user_handle"

    const/4 v10, -0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 227
    .local v7, "userId":I
    iget-object v9, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$1;->this$0:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    # invokes: Lcom/android/nfc/cardemulation/RegisteredServicesCache;->invalidateCacheForKnox(I)V
    invoke-static {v9, v7}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->access$200(Lcom/android/nfc/cardemulation/RegisteredServicesCache;I)V

    goto :goto_2

    .line 228
    .end local v7    # "userId":I
    :cond_c
    const-string v9, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 229
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/nfc/NfcService;->getProfiles(I)Ljava/util/List;

    move-result-object v4

    .line 230
    .local v4, "profilesIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_6

    .line 231
    iget-object v9, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$1;->this$0:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->invalidateCache(I)V

    goto :goto_2

    .line 233
    .end local v4    # "profilesIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_d
    const-string v9, "com.sec.knox.container.action.nfc.policy"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 234
    const-string v9, "RegisteredServicesCache"

    const-string v10, "INTENT_ACTION_NFC_POLICY received"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v9, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$1;->this$0:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->invalidateCache(I)V

    goto :goto_2
.end method
