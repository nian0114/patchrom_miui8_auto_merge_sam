.class Lcom/android/settings_ex/GigaMultiPath$1;
.super Landroid/database/ContentObserver;
.source "GigaMultiPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/GigaMultiPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/GigaMultiPath;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/GigaMultiPath;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/settings_ex/GigaMultiPath$1;->this$0:Lcom/android/settings_ex/GigaMultiPath;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings_ex/GigaMultiPath$1;->this$0:Lcom/android/settings_ex/GigaMultiPath;

    # getter for: Lcom/android/settings_ex/GigaMultiPath;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings_ex/GigaMultiPath;->access$000(Lcom/android/settings_ex/GigaMultiPath;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->isRoaming(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/GigaMultiPath$1;->this$0:Lcom/android/settings_ex/GigaMultiPath;

    # invokes: Lcom/android/settings_ex/GigaMultiPath;->isSimValid()Z
    invoke-static {v0}, Lcom/android/settings_ex/GigaMultiPath;->access$100(Lcom/android/settings_ex/GigaMultiPath;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/GigaMultiPath$1;->this$0:Lcom/android/settings_ex/GigaMultiPath;

    # invokes: Lcom/android/settings_ex/GigaMultiPath;->isTether()Z
    invoke-static {v0}, Lcom/android/settings_ex/GigaMultiPath;->access$200(Lcom/android/settings_ex/GigaMultiPath;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/GigaMultiPath$1;->this$0:Lcom/android/settings_ex/GigaMultiPath;

    # getter for: Lcom/android/settings_ex/GigaMultiPath;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;
    invoke-static {v0}, Lcom/android/settings_ex/GigaMultiPath;->access$300(Lcom/android/settings_ex/GigaMultiPath;)Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings_ex/GigaMultiPath$1;->this$0:Lcom/android/settings_ex/GigaMultiPath;

    # getter for: Lcom/android/settings_ex/GigaMultiPath;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings_ex/GigaMultiPath;->access$000(Lcom/android/settings_ex/GigaMultiPath;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
