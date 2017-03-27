.class Lcom/android/settings_ex/usefulfeature/Usefulfeature$6;
.super Landroid/telephony/PhoneStateListener;
.source "Usefulfeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/usefulfeature/Usefulfeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/usefulfeature/Usefulfeature;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/usefulfeature/Usefulfeature;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/settings_ex/usefulfeature/Usefulfeature$6;->this$0:Lcom/android/settings_ex/usefulfeature/Usefulfeature;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 222
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    .line 223
    .local v0, "roaming":Z
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_0

    .line 224
    const-string v1, "Usefulfeature"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceStateChanged roaming : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-static {}, Lcom/android/settings_ex/Utils;->isChinaModel()Z

    move-result v1

    if-nez v1, :cond_0

    .line 226
    # invokes: Lcom/android/settings_ex/usefulfeature/Usefulfeature;->isSupportSmartCall()Z
    invoke-static {}, Lcom/android/settings_ex/usefulfeature/Usefulfeature;->access$1400()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/usefulfeature/Usefulfeature$6;->this$0:Lcom/android/settings_ex/usefulfeature/Usefulfeature;

    # getter for: Lcom/android/settings_ex/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/android/settings_ex/usefulfeature/Usefulfeature;->access$1200(Lcom/android/settings_ex/usefulfeature/Usefulfeature;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 227
    if-eqz v0, :cond_1

    .line 228
    iget-object v1, p0, Lcom/android/settings_ex/usefulfeature/Usefulfeature$6;->this$0:Lcom/android/settings_ex/usefulfeature/Usefulfeature;

    # getter for: Lcom/android/settings_ex/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/android/settings_ex/usefulfeature/Usefulfeature;->access$1200(Lcom/android/settings_ex/usefulfeature/Usefulfeature;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    # invokes: Lcom/android/settings_ex/usefulfeature/Usefulfeature;->isSupportMCC()Z
    invoke-static {}, Lcom/android/settings_ex/usefulfeature/Usefulfeature;->access$1500()Z

    move-result v1

    if-eqz v1, :cond_2

    # invokes: Lcom/android/settings_ex/usefulfeature/Usefulfeature;->isSupportMCC()Z
    invoke-static {}, Lcom/android/settings_ex/usefulfeature/Usefulfeature;->access$1500()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings_ex/usefulfeature/Usefulfeature;->isSupportMccSmartCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/usefulfeature/Usefulfeature$6;->this$0:Lcom/android/settings_ex/usefulfeature/Usefulfeature;

    # getter for: Lcom/android/settings_ex/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/android/settings_ex/usefulfeature/Usefulfeature;->access$1200(Lcom/android/settings_ex/usefulfeature/Usefulfeature;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0
.end method
