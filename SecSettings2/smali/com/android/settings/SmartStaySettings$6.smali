.class Lcom/android/settings_ex/SmartStaySettings$6;
.super Ljava/lang/Object;
.source "SmartStaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 246
    iput-object p1, p0, Lcom/android/settings_ex/SmartStaySettings$6;->this$0:Lcom/android/settings_ex/SmartStaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/settings_ex/SmartStaySettings$6;->this$0:Lcom/android/settings_ex/SmartStaySettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/SmartStaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->turnOffUniversalSwitch(Landroid/content/Context;)Z

    .line 249
    iget-object v0, p0, Lcom/android/settings_ex/SmartStaySettings$6;->this$0:Lcom/android/settings_ex/SmartStaySettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/SmartStaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "intelligent_sleep_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 250
    return-void
.end method
