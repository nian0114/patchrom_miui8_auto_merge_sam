.class Lcom/android/settings_ex/nearby/NearbyEnabler$HandleAllowUpload;
.super Ljava/lang/Object;
.source "NearbyEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/nearby/NearbyEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandleAllowUpload"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/nearby/NearbyEnabler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/nearby/NearbyEnabler$1;

    .prologue
    .line 1268
    invoke-direct {p0}, Lcom/android/settings_ex/nearby/NearbyEnabler$HandleAllowUpload;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 1271
    # getter for: Lcom/android/settings_ex/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings_ex/nearby/IMediaServer;
    invoke-static {}, Lcom/android/settings_ex/nearby/NearbyEnabler;->access$700()Lcom/android/settings_ex/nearby/IMediaServer;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    instance-of v2, p2, Ljava/lang/String;

    if-nez v2, :cond_1

    .line 1281
    :cond_0
    :goto_0
    return v1

    .line 1275
    :cond_1
    :try_start_0
    # getter for: Lcom/android/settings_ex/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings_ex/nearby/IMediaServer;
    invoke-static {}, Lcom/android/settings_ex/nearby/NearbyEnabler;->access$700()Lcom/android/settings_ex/nearby/IMediaServer;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/settings_ex/nearby/IMediaServer;->setContentUploadAllowed(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1281
    const/4 v1, 0x1

    goto :goto_0

    .line 1276
    :catch_0
    move-exception v0

    .line 1277
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "NearbyEnabler"

    const-string v3, "HandleAllowUpload"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
