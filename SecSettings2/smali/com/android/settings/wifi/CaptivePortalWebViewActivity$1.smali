.class Lcom/android/settings_ex/wifi/CaptivePortalWebViewActivity$1;
.super Landroid/webkit/WebChromeClient;
.source "CaptivePortalWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/CaptivePortalWebViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/CaptivePortalWebViewActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/CaptivePortalWebViewActivity;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/settings_ex/wifi/CaptivePortalWebViewActivity$1;->this$0:Lcom/android/settings_ex/wifi/CaptivePortalWebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "progress"    # I

    .prologue
    .line 160
    # getter for: Lcom/android/settings_ex/wifi/CaptivePortalWebViewActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {}, Lcom/android/settings_ex/wifi/CaptivePortalWebViewActivity;->access$000()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 161
    return-void
.end method
