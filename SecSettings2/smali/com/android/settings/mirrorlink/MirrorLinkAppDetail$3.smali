.class Lcom/android/settings_ex/mirrorlink/MirrorLinkAppDetail$3;
.super Ljava/lang/Object;
.source "MirrorLinkAppDetail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/mirrorlink/MirrorLinkAppDetail;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/mirrorlink/MirrorLinkAppDetail;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/mirrorlink/MirrorLinkAppDetail;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/settings_ex/mirrorlink/MirrorLinkAppDetail$3;->this$0:Lcom/android/settings_ex/mirrorlink/MirrorLinkAppDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 193
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "MirrorLinkAppDetailfrom UI thread"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/android/settings_ex/mirrorlink/MirrorLinkAppDetail$3;->this$0:Lcom/android/settings_ex/mirrorlink/MirrorLinkAppDetail;

    iget-object v0, v0, Lcom/android/settings_ex/mirrorlink/MirrorLinkAppDetail;->mMenuVerifyCertificate:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 196
    iget-object v0, p0, Lcom/android/settings_ex/mirrorlink/MirrorLinkAppDetail$3;->this$0:Lcom/android/settings_ex/mirrorlink/MirrorLinkAppDetail;

    iget-object v1, p0, Lcom/android/settings_ex/mirrorlink/MirrorLinkAppDetail$3;->this$0:Lcom/android/settings_ex/mirrorlink/MirrorLinkAppDetail;

    # getter for: Lcom/android/settings_ex/mirrorlink/MirrorLinkAppDetail;->mAppInfo:Lcom/android/settings_ex/mirrorlink/MirrorLinkAppDetail$MlApp;
    invoke-static {v1}, Lcom/android/settings_ex/mirrorlink/MirrorLinkAppDetail;->access$400(Lcom/android/settings_ex/mirrorlink/MirrorLinkAppDetail;)Lcom/android/settings_ex/mirrorlink/MirrorLinkAppDetail$MlApp;

    move-result-object v1

    # invokes: Lcom/android/settings_ex/mirrorlink/MirrorLinkAppDetail;->updateAppInfo(Lcom/android/settings_ex/mirrorlink/MirrorLinkAppDetail$MlApp;)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/mirrorlink/MirrorLinkAppDetail;->access$500(Lcom/android/settings_ex/mirrorlink/MirrorLinkAppDetail;Lcom/android/settings_ex/mirrorlink/MirrorLinkAppDetail$MlApp;)V

    .line 197
    return-void
.end method
