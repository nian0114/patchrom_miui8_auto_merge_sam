.class Lcom/android/settings_ex/fmm/FindMyMobileSettings$3;
.super Landroid/content/BroadcastReceiver;
.source "FindMyMobileSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/fmm/FindMyMobileSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/fmm/FindMyMobileSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fmm/FindMyMobileSettings;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/settings_ex/fmm/FindMyMobileSettings$3;->this$0:Lcom/android/settings_ex/fmm/FindMyMobileSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/settings_ex/fmm/FindMyMobileSettings$3;->this$0:Lcom/android/settings_ex/fmm/FindMyMobileSettings;

    # invokes: Lcom/android/settings_ex/fmm/FindMyMobileSettings;->updateSimChangeAlert()V
    invoke-static {v0}, Lcom/android/settings_ex/fmm/FindMyMobileSettings;->access$400(Lcom/android/settings_ex/fmm/FindMyMobileSettings;)V

    .line 173
    return-void
.end method
