.class Lcom/android/settings_ex/applock/AppLockSettingsActivity$AppLockListFragment$2;
.super Landroid/os/Handler;
.source "AppLockSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applock/AppLockSettingsActivity$AppLockListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applock/AppLockSettingsActivity$AppLockListFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applock/AppLockSettingsActivity$AppLockListFragment;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity$AppLockListFragment$2;->this$0:Lcom/android/settings_ex/applock/AppLockSettingsActivity$AppLockListFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 345
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 355
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity$AppLockListFragment$2;->this$0:Lcom/android/settings_ex/applock/AppLockSettingsActivity$AppLockListFragment;

    # invokes: Lcom/android/settings_ex/applock/AppLockSettingsActivity$AppLockListFragment;->updateView()V
    invoke-static {v0}, Lcom/android/settings_ex/applock/AppLockSettingsActivity$AppLockListFragment;->access$700(Lcom/android/settings_ex/applock/AppLockSettingsActivity$AppLockListFragment;)V

    .line 356
    return-void

    .line 352
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/applock/AppLockSettingsActivity$AppLockListFragment$2;->this$0:Lcom/android/settings_ex/applock/AppLockSettingsActivity$AppLockListFragment;

    # getter for: Lcom/android/settings_ex/applock/AppLockSettingsActivity$AppLockListFragment;->mAdapter:Lcom/android/settings_ex/applock/PackageListAdapter;
    invoke-static {v0}, Lcom/android/settings_ex/applock/AppLockSettingsActivity$AppLockListFragment;->access$600(Lcom/android/settings_ex/applock/AppLockSettingsActivity$AppLockListFragment;)Lcom/android/settings_ex/applock/PackageListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/applock/PackageListAdapter;->bindData()V

    goto :goto_0

    .line 345
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
