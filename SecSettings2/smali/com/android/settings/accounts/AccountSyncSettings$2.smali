.class Lcom/android/settings_ex/accounts/AccountSyncSettings$2;
.super Ljava/lang/Object;
.source "AccountSyncSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/accounts/AccountSyncSettings;->startSyncForEnabledProviders()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/accounts/AccountSyncSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/accounts/AccountSyncSettings;)V
    .locals 0

    .prologue
    .line 552
    iput-object p1, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings$2;->this$0:Lcom/android/settings_ex/accounts/AccountSyncSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings$2;->this$0:Lcom/android/settings_ex/accounts/AccountSyncSettings;

    # getter for: Lcom/android/settings_ex/accounts/AccountSyncSettings;->mNeedToUpdateState:Z
    invoke-static {v0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->access$200(Lcom/android/settings_ex/accounts/AccountSyncSettings;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 556
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings$2;->this$0:Lcom/android/settings_ex/accounts/AccountSyncSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->onSyncStateUpdated()V

    .line 558
    :cond_0
    return-void
.end method
