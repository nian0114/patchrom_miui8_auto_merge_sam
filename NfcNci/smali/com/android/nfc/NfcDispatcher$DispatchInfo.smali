.class Lcom/android/nfc/NfcDispatcher$DispatchInfo;
.super Ljava/lang/Object;
.source "NfcDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DispatchInfo"
.end annotation


# instance fields
.field final context:Landroid/content/Context;

.field public final intent:Landroid/content/Intent;

.field final ndefMimeType:Ljava/lang/String;

.field final ndefUri:Landroid/net/Uri;

.field final packageManager:Landroid/content/pm/PackageManager;

.field final rootIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/nfc/Tag;Landroid/nfc/NdefMessage;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Landroid/nfc/Tag;
    .param p3, "message"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    .line 210
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    const-string v1, "android.nfc.extra.TAG"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 211
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    const-string v1, "android.nfc.extra.ID"

    invoke-virtual {p2}, Landroid/nfc/Tag;->getId()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 212
    if-eqz p3, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    const-string v1, "android.nfc.extra.NDEF_MESSAGES"

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/nfc/NdefMessage;

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 214
    invoke-virtual {p3}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->toUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->ndefUri:Landroid/net/Uri;

    .line 215
    invoke-virtual {p3}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->toMimeType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->ndefMimeType:Ljava/lang/String;

    .line 221
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/nfc/NfcRootActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->rootIntent:Landroid/content/Intent;

    .line 222
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->rootIntent:Landroid/content/Intent;

    const-string v1, "launchIntent"

    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 223
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->rootIntent:Landroid/content/Intent;

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 226
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->rootIntent:Landroid/content/Intent;

    const-string v1, "invalidTag"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 228
    iput-object p1, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->context:Landroid/content/Context;

    .line 229
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->packageManager:Landroid/content/pm/PackageManager;

    .line 230
    return-void

    .line 217
    :cond_0
    iput-object v4, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->ndefUri:Landroid/net/Uri;

    .line 218
    iput-object v4, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->ndefMimeType:Ljava/lang/String;

    goto :goto_0
.end method

.method private collectActivitiesForKnox(Ljava/util/List;Landroid/content/Intent;)V
    .locals 10
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 336
    .local p1, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v7, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->context:Landroid/content/Context;

    const-string v8, "user"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 337
    .local v4, "um":Landroid/os/UserManager;
    iget-object v7, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->context:Landroid/content/Context;

    const-string v8, "persona"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersonaManager;

    .line 338
    .local v3, "pm":Landroid/os/PersonaManager;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 340
    .local v0, "currUser":I
    invoke-virtual {v3}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v7

    if-eqz v7, :cond_0

    if-nez v0, :cond_0

    .line 341
    const-string v7, "NfcDispatcher"

    const-string v8, "clearing owner\'s activity list due to Kiosk mode"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 345
    :cond_0
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v6

    .line 347
    .local v6, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 348
    .local v5, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v7

    if-eqz v7, :cond_1

    iget v7, v5, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v7, v0, :cond_1

    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v7}, Landroid/os/PersonaManager;->isNFCAllowed(I)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 353
    iget-object v7, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->packageManager:Landroid/content/pm/PackageManager;

    const/4 v8, 0x0

    iget v9, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, p2, v8, v9}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    .line 354
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v7, "NfcDispatcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Adding "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " activities for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to collection"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 358
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    :cond_2
    return-void
.end method


# virtual methods
.method public setNdefIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    const-string v1, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->ndefUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->ndefUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 236
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    .line 241
    :goto_0
    return-object v0

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->ndefMimeType:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->ndefMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    goto :goto_0

    .line 241
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTagIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 252
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 253
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    const-string v1, "android.nfc.action.TAG_DISCOVERED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public setTechIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 245
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 246
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    const-string v1, "android.nfc.action.TECH_DISCOVERED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method tryStartActivity()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 271
    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 276
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-object v2, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-static {v2}, Landroid/os/PersonaManager;->isKnoxVersionSupported(Landroid/os/PersonaManager$KnoxContainerVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 277
    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    invoke-direct {p0, v0, v2}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->collectActivitiesForKnox(Ljava/util/List;Landroid/content/Intent;)V

    .line 282
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 284
    const-string v1, "NfcDispatcher"

    const-string v2, "tryStartActivity. Send intent."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->rootIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 287
    const/4 v1, 0x1

    .line 289
    :cond_1
    return v1
.end method

.method tryStartActivity(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "intentToStart"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 311
    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->packageManager:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, p1, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 316
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-object v2, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-static {v2}, Landroid/os/PersonaManager;->isKnoxVersionSupported(Landroid/os/PersonaManager$KnoxContainerVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 317
    invoke-direct {p0, v0, p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->collectActivitiesForKnox(Ljava/util/List;Landroid/content/Intent;)V

    .line 322
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 323
    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->rootIntent:Landroid/content/Intent;

    const-string v2, "launchIntent"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 324
    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->rootIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 325
    const/4 v1, 0x1

    .line 327
    :cond_1
    return v1
.end method

.method tryStartActivity(Ljava/lang/String;)Z
    .locals 7
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 293
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 294
    .local v3, "startintetnt":Landroid/content/Intent;
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    iget-object v5, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->packageManager:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-virtual {v5, v3, v4, v6}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 298
    .local v0, "activities":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    .line 299
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 300
    .local v2, "intent":Landroid/content/Intent;
    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    iget-object v5, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->context:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    const/4 v4, 0x1

    .line 307
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return v4

    .line 304
    :catch_0
    move-exception v1

    .line 305
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
