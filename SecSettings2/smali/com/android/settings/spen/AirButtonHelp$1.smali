.class Lcom/android/settings_ex/spen/AirButtonHelp$1;
.super Landroid/database/ContentObserver;
.source "AirButtonHelp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/spen/AirButtonHelp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/spen/AirButtonHelp;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/spen/AirButtonHelp;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/settings_ex/spen/AirButtonHelp$1;->this$0:Lcom/android/settings_ex/spen/AirButtonHelp;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x0

    .line 100
    iget-object v1, p0, Lcom/android/settings_ex/spen/AirButtonHelp$1;->this$0:Lcom/android/settings_ex/spen/AirButtonHelp;

    # getter for: Lcom/android/settings_ex/spen/AirButtonHelp;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;
    invoke-static {v1}, Lcom/android/settings_ex/spen/AirButtonHelp;->access$100(Lcom/android/settings_ex/spen/AirButtonHelp;)Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/spen/AirButtonHelp$1;->this$0:Lcom/android/settings_ex/spen/AirButtonHelp;

    # getter for: Lcom/android/settings_ex/spen/AirButtonHelp;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/settings_ex/spen/AirButtonHelp;->access$000(Lcom/android/settings_ex/spen/AirButtonHelp;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_button_onoff"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 101
    return-void
.end method
