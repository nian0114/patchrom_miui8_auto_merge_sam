.class final Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$MyHandler;
.super Landroid/os/Handler;
.source "SettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;


# direct methods
.method public constructor <init>(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2039
    iput-object p1, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$MyHandler;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    .line 2040
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2041
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2045
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 2059
    :goto_0
    return-void

    .line 2047
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 2048
    .local v1, "userId":I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    .line 2049
    .local v0, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$MyHandler;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    iget-object v2, v2, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->this$0:Lcom/android/providers/settings/SettingsProvider;

    invoke-virtual {v2}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V

    goto :goto_0

    .line 2056
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "userId":I
    :pswitch_1
    iget-object v2, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$MyHandler;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    # getter for: Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->mBackupManager:Landroid/app/backup/BackupManager;
    invoke-static {v2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->access$1300(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;)Landroid/app/backup/BackupManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/backup/BackupManager;->dataChanged()V

    goto :goto_0

    .line 2045
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
