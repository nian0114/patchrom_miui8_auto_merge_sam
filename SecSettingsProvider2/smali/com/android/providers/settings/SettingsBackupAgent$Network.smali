.class Lcom/android/providers/settings/SettingsBackupAgent$Network;
.super Ljava/lang/Object;
.source "SettingsBackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/settings/SettingsBackupAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Network"
.end annotation


# instance fields
.field certUsed:Z

.field hasWepKey:Z

.field public isVendorAp:Z

.field key_mgmt:Ljava/lang/String;

.field final rawLines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field ssid:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    const-string v0, ""

    iput-object v0, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->ssid:Ljava/lang/String;

    .line 167
    const-string v0, ""

    iput-object v0, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->key_mgmt:Ljava/lang/String;

    .line 168
    iput-boolean v1, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->certUsed:Z

    .line 169
    iput-boolean v1, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->hasWepKey:Z

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->rawLines:Ljava/util/ArrayList;

    return-void
.end method

.method public static readFromStream(Ljava/io/BufferedReader;)Lcom/android/providers/settings/SettingsBackupAgent$Network;
    .locals 4
    .param p0, "in"    # Ljava/io/BufferedReader;

    .prologue
    .line 173
    new-instance v2, Lcom/android/providers/settings/SettingsBackupAgent$Network;

    invoke-direct {v2}, Lcom/android/providers/settings/SettingsBackupAgent$Network;-><init>()V

    .line 176
    .local v2, "n":Lcom/android/providers/settings/SettingsBackupAgent$Network;
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->ready()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 177
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 186
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "n":Lcom/android/providers/settings/SettingsBackupAgent$Network;
    :cond_0
    :goto_1
    return-object v2

    .line 181
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v2    # "n":Lcom/android/providers/settings/SettingsBackupAgent$Network;
    :cond_1
    invoke-virtual {v2, v1}, Lcom/android/providers/settings/SettingsBackupAgent$Network;->rememberLine(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    .end local v1    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 280
    if-ne p1, p0, :cond_1

    .line 288
    :cond_0
    :goto_0
    return v3

    .line 281
    :cond_1
    instance-of v5, p1, Lcom/android/providers/settings/SettingsBackupAgent$Network;

    if-nez v5, :cond_2

    move v3, v4

    goto :goto_0

    .line 284
    :cond_2
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/providers/settings/SettingsBackupAgent$Network;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    .local v2, "other":Lcom/android/providers/settings/SettingsBackupAgent$Network;
    iget-object v5, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->ssid:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/providers/settings/SettingsBackupAgent$Network;->ssid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->key_mgmt:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/providers/settings/SettingsBackupAgent$Network;->key_mgmt:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_3
    move v3, v4

    goto :goto_0

    .line 285
    .end local v2    # "other":Lcom/android/providers/settings/SettingsBackupAgent$Network;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/ClassCastException;
    move v3, v4

    .line 286
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 293
    const/16 v0, 0x11

    .line 294
    .local v0, "result":I
    iget-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->ssid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 295
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->key_mgmt:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 296
    return v0
.end method

.method rememberLine(Ljava/lang/String;)V
    .locals 2
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 191
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 192
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->rawLines:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    const-string v0, "ssid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    iput-object p1, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->ssid:Ljava/lang/String;

    goto :goto_0

    .line 198
    :cond_2
    const-string v0, "key_mgmt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 199
    iput-object p1, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->key_mgmt:Ljava/lang/String;

    goto :goto_0

    .line 200
    :cond_3
    const-string v0, "client_cert="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 201
    iput-boolean v1, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->certUsed:Z

    goto :goto_0

    .line 202
    :cond_4
    const-string v0, "ca_cert="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 203
    iput-boolean v1, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->certUsed:Z

    goto :goto_0

    .line 204
    :cond_5
    const-string v0, "ca_path="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 205
    iput-boolean v1, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->certUsed:Z

    goto :goto_0

    .line 206
    :cond_6
    const-string v0, "vendor_spec_ssid="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iput-boolean v1, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->isVendorAp:Z

    goto :goto_0
.end method

.method public write(Ljava/io/Writer;)V
    .locals 4
    .param p1, "w"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    const-string v2, "\nnetwork={\n"

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 213
    iget-object v2, p0, Lcom/android/providers/settings/SettingsBackupAgent$Network;->rawLines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 214
    .local v1, "line":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 216
    .end local v1    # "line":Ljava/lang/String;
    :cond_0
    const-string v2, "}\n"

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 217
    return-void
.end method
