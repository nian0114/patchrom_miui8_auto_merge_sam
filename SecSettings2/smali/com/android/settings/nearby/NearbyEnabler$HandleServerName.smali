.class Lcom/android/settings_ex/nearby/NearbyEnabler$HandleServerName;
.super Ljava/lang/Object;
.source "NearbyEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/nearby/NearbyEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandleServerName"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/nearby/NearbyEnabler;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/nearby/NearbyEnabler;)V
    .locals 0

    .prologue
    .line 1188
    iput-object p1, p0, Lcom/android/settings_ex/nearby/NearbyEnabler$HandleServerName;->this$0:Lcom/android/settings_ex/nearby/NearbyEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/nearby/NearbyEnabler;Lcom/android/settings_ex/nearby/NearbyEnabler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/nearby/NearbyEnabler;
    .param p2, "x1"    # Lcom/android/settings_ex/nearby/NearbyEnabler$1;

    .prologue
    .line 1188
    invoke-direct {p0, p1}, Lcom/android/settings_ex/nearby/NearbyEnabler$HandleServerName;-><init>(Lcom/android/settings_ex/nearby/NearbyEnabler;)V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 1191
    # getter for: Lcom/android/settings_ex/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings_ex/nearby/IMediaServer;
    invoke-static {}, Lcom/android/settings_ex/nearby/NearbyEnabler;->access$700()Lcom/android/settings_ex/nearby/IMediaServer;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    instance-of v3, p2, Ljava/lang/String;

    if-nez v3, :cond_1

    .line 1211
    .end local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v2

    .line 1195
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/nearby/NearbyEnabler$HandleServerName;->this$0:Lcom/android/settings_ex/nearby/NearbyEnabler;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    # invokes: Lcom/android/settings_ex/nearby/NearbyEnabler;->checkDeviceName(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, p2}, Lcom/android/settings_ex/nearby/NearbyEnabler;->access$1500(Lcom/android/settings_ex/nearby/NearbyEnabler;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1196
    .local v0, "deviceName":Ljava/lang/String;
    # getter for: Lcom/android/settings_ex/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings_ex/nearby/IMediaServer;
    invoke-static {}, Lcom/android/settings_ex/nearby/NearbyEnabler;->access$700()Lcom/android/settings_ex/nearby/IMediaServer;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/android/settings_ex/nearby/IMediaServer;->setMediaServerName(Ljava/lang/String;)Ljava/lang/String;

    .line 1198
    const-string v3, "*#@&*#"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1199
    const-string v3, "NearbyEnabler"

    const-string v4, "HandleServerName"

    const-string v5, "ACCESS_CONTROL: allow all"

    invoke-static {v3, v4, v5}, Lcom/android/settings_ex/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    # getter for: Lcom/android/settings_ex/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings_ex/nearby/IMediaServer;
    invoke-static {}, Lcom/android/settings_ex/nearby/NearbyEnabler;->access$700()Lcom/android/settings_ex/nearby/IMediaServer;

    move-result-object v3

    const-string v4, "0"

    invoke-interface {v3, v4}, Lcom/android/settings_ex/nearby/IMediaServer;->setContentAccessAllowed(Ljava/lang/String;)V

    .line 1211
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 1202
    :cond_2
    const-string v3, "NearbyEnabler"

    const-string v4, "HandleServerName"

    const-string v5, "ACCESS_CONTROL: only allowed device"

    invoke-static {v3, v4, v5}, Lcom/android/settings_ex/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    # getter for: Lcom/android/settings_ex/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings_ex/nearby/IMediaServer;
    invoke-static {}, Lcom/android/settings_ex/nearby/NearbyEnabler;->access$700()Lcom/android/settings_ex/nearby/IMediaServer;

    move-result-object v3

    const-string v4, "1"

    invoke-interface {v3, v4}, Lcom/android/settings_ex/nearby/IMediaServer;->setContentAccessAllowed(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1206
    .end local v0    # "deviceName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1207
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "NearbyEnabler"

    const-string v4, "HandleServerName"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
