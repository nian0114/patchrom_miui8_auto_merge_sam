.class Lcom/android/settings_ex/spen/AirButtonHelp$3;
.super Ljava/lang/Object;
.source "AirButtonHelp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/spen/AirButtonHelp;->showTalkBackDisableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/spen/AirButtonHelp;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/spen/AirButtonHelp;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/settings_ex/spen/AirButtonHelp$3;->this$0:Lcom/android/settings_ex/spen/AirButtonHelp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    .line 215
    iget-object v0, p0, Lcom/android/settings_ex/spen/AirButtonHelp$3;->this$0:Lcom/android/settings_ex/spen/AirButtonHelp;

    # getter for: Lcom/android/settings_ex/spen/AirButtonHelp;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/settings_ex/spen/AirButtonHelp;->access$000(Lcom/android/settings_ex/spen/AirButtonHelp;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 217
    iget-object v0, p0, Lcom/android/settings_ex/spen/AirButtonHelp$3;->this$0:Lcom/android/settings_ex/spen/AirButtonHelp;

    # getter for: Lcom/android/settings_ex/spen/AirButtonHelp;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/settings_ex/spen/AirButtonHelp;->access$000(Lcom/android/settings_ex/spen/AirButtonHelp;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_magnifier"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 219
    iget-object v0, p0, Lcom/android/settings_ex/spen/AirButtonHelp$3;->this$0:Lcom/android/settings_ex/spen/AirButtonHelp;

    # getter for: Lcom/android/settings_ex/spen/AirButtonHelp;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/settings_ex/spen/AirButtonHelp;->access$000(Lcom/android/settings_ex/spen/AirButtonHelp;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 220
    iget-object v0, p0, Lcom/android/settings_ex/spen/AirButtonHelp$3;->this$0:Lcom/android/settings_ex/spen/AirButtonHelp;

    # getter for: Lcom/android/settings_ex/spen/AirButtonHelp;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/settings_ex/spen/AirButtonHelp;->access$000(Lcom/android/settings_ex/spen/AirButtonHelp;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_button_onoff"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 225
    return-void
.end method
