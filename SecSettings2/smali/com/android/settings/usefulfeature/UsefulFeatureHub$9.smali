.class Lcom/android/settings_ex/usefulfeature/UsefulFeatureHub$9;
.super Ljava/lang/Object;
.source "UsefulFeatureHub.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/usefulfeature/UsefulFeatureHub;->maketurnOffUniversalPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/usefulfeature/UsefulFeatureHub;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/usefulfeature/UsefulFeatureHub;)V
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Lcom/android/settings_ex/usefulfeature/UsefulFeatureHub$9;->this$0:Lcom/android/settings_ex/usefulfeature/UsefulFeatureHub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v0, 0x0

    .line 544
    iget-object v1, p0, Lcom/android/settings_ex/usefulfeature/UsefulFeatureHub$9;->this$0:Lcom/android/settings_ex/usefulfeature/UsefulFeatureHub;

    # getter for: Lcom/android/settings_ex/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;
    invoke-static {v1}, Lcom/android/settings_ex/usefulfeature/UsefulFeatureHub;->access$000(Lcom/android/settings_ex/usefulfeature/UsefulFeatureHub;)Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/usefulfeature/UsefulFeatureHub$9;->this$0:Lcom/android/settings_ex/usefulfeature/UsefulFeatureHub;

    # invokes: Lcom/android/settings_ex/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings_ex/usefulfeature/UsefulFeatureHub;->access$1300(Lcom/android/settings_ex/usefulfeature/UsefulFeatureHub;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "surface_palm_swipe"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 545
    return-void
.end method
