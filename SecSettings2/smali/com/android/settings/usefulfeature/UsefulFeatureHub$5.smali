.class Lcom/android/settings_ex/usefulfeature/UsefulFeatureHub$5;
.super Ljava/lang/Object;
.source "UsefulFeatureHub.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/usefulfeature/UsefulFeatureHub;->makeTalkBackDisablePopup()V
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
    .line 496
    iput-object p1, p0, Lcom/android/settings_ex/usefulfeature/UsefulFeatureHub$5;->this$0:Lcom/android/settings_ex/usefulfeature/UsefulFeatureHub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x1

    .line 498
    iget-object v0, p0, Lcom/android/settings_ex/usefulfeature/UsefulFeatureHub$5;->this$0:Lcom/android/settings_ex/usefulfeature/UsefulFeatureHub;

    invoke-virtual {v0}, Lcom/android/settings_ex/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 499
    iget-object v0, p0, Lcom/android/settings_ex/usefulfeature/UsefulFeatureHub$5;->this$0:Lcom/android/settings_ex/usefulfeature/UsefulFeatureHub;

    # invokes: Lcom/android/settings_ex/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings_ex/usefulfeature/UsefulFeatureHub;->access$900(Lcom/android/settings_ex/usefulfeature/UsefulFeatureHub;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "surface_palm_swipe"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 500
    iget-object v0, p0, Lcom/android/settings_ex/usefulfeature/UsefulFeatureHub$5;->this$0:Lcom/android/settings_ex/usefulfeature/UsefulFeatureHub;

    # invokes: Lcom/android/settings_ex/usefulfeature/UsefulFeatureHub;->insertlog(Z)V
    invoke-static {v0, v2}, Lcom/android/settings_ex/usefulfeature/UsefulFeatureHub;->access$1000(Lcom/android/settings_ex/usefulfeature/UsefulFeatureHub;Z)V

    .line 501
    return-void
.end method
