.class Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;
.super Ljava/lang/Object;
.source "SettingsBackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/settings/SettingsBackupAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiNetworkSettings"
.end annotation


# instance fields
.field final mKnownNetworks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/providers/settings/SettingsBackupAgent$Network;",
            ">;"
        }
    .end annotation
.end field

.field final mNetworks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/settings/SettingsBackupAgent$Network;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/providers/settings/SettingsBackupAgent;


# direct methods
.method constructor <init>(Lcom/android/providers/settings/SettingsBackupAgent;)V
    .locals 2

    .prologue
    .line 302
    iput-object p1, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;->this$0:Lcom/android/providers/settings/SettingsBackupAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;->mKnownNetworks:Ljava/util/HashSet;

    .line 305
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;->mNetworks:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public readNetworks(Ljava/io/BufferedReader;)V
    .locals 3
    .param p1, "in"    # Ljava/io/BufferedReader;

    .prologue
    .line 310
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->ready()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 311
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 314
    const-string v2, "network"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 315
    invoke-static {p1}, Lcom/android/providers/settings/SettingsBackupAgent$Network;->readFromStream(Ljava/io/BufferedReader;)Lcom/android/providers/settings/SettingsBackupAgent$Network;

    move-result-object v1

    .line 316
    .local v1, "net":Lcom/android/providers/settings/SettingsBackupAgent$Network;
    iget-object v2, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;->mKnownNetworks:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 320
    iget-object v2, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;->mKnownNetworks:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 321
    iget-object v2, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;->mNetworks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 330
    .end local v0    # "line":Ljava/lang/String;
    .end local v1    # "net":Lcom/android/providers/settings/SettingsBackupAgent$Network;
    :catch_0
    move-exception v2

    .line 333
    :cond_1
    return-void
.end method

.method public write(Ljava/io/Writer;)V
    .locals 3
    .param p1, "w"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 336
    iget-object v2, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;->mNetworks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/settings/SettingsBackupAgent$Network;

    .line 337
    .local v1, "net":Lcom/android/providers/settings/SettingsBackupAgent$Network;
    iget-boolean v2, v1, Lcom/android/providers/settings/SettingsBackupAgent$Network;->certUsed:Z

    if-nez v2, :cond_0

    .line 343
    iget-boolean v2, v1, Lcom/android/providers/settings/SettingsBackupAgent$Network;->isVendorAp:Z

    if-nez v2, :cond_0

    .line 347
    invoke-virtual {v1, p1}, Lcom/android/providers/settings/SettingsBackupAgent$Network;->write(Ljava/io/Writer;)V

    goto :goto_0

    .line 349
    .end local v1    # "net":Lcom/android/providers/settings/SettingsBackupAgent$Network;
    :cond_1
    return-void
.end method
