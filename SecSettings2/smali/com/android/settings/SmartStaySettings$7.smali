.class Lcom/android/settings_ex/SmartStaySettings$7;
.super Ljava/lang/Object;
.source "SmartStaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/SmartStaySettings;->maketurnOffUniversalPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/SmartStaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/SmartStaySettings;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/settings_ex/SmartStaySettings$7;->this$0:Lcom/android/settings_ex/SmartStaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v0, 0x0

    .line 257
    iget-object v1, p0, Lcom/android/settings_ex/SmartStaySettings$7;->this$0:Lcom/android/settings_ex/SmartStaySettings;

    # getter for: Lcom/android/settings_ex/SmartStaySettings;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;
    invoke-static {v1}, Lcom/android/settings_ex/SmartStaySettings;->access$000(Lcom/android/settings_ex/SmartStaySettings;)Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/SmartStaySettings$7;->this$0:Lcom/android/settings_ex/SmartStaySettings;

    invoke-virtual {v2}, Lcom/android/settings_ex/SmartStaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "intelligent_sleep_mode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 258
    return-void
.end method
