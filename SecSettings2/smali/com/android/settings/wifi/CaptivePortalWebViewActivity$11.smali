.class Lcom/android/settings_ex/wifi/CaptivePortalWebViewActivity$11;
.super Ljava/lang/Object;
.source "CaptivePortalWebViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/CaptivePortalWebViewActivity;->createPageInfoDialog(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Landroid/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/CaptivePortalWebViewActivity;

.field final synthetic val$error:Landroid/net/http/SslError;

.field final synthetic val$handler:Landroid/webkit/SslErrorHandler;

.field final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/CaptivePortalWebViewActivity;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/settings_ex/wifi/CaptivePortalWebViewActivity$11;->this$0:Lcom/android/settings_ex/wifi/CaptivePortalWebViewActivity;

    iput-object p2, p0, Lcom/android/settings_ex/wifi/CaptivePortalWebViewActivity$11;->val$view:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/android/settings_ex/wifi/CaptivePortalWebViewActivity$11;->val$handler:Landroid/webkit/SslErrorHandler;

    iput-object p4, p0, Lcom/android/settings_ex/wifi/CaptivePortalWebViewActivity$11;->val$error:Landroid/net/http/SslError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/settings_ex/wifi/CaptivePortalWebViewActivity$11;->this$0:Lcom/android/settings_ex/wifi/CaptivePortalWebViewActivity;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/CaptivePortalWebViewActivity$11;->val$view:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/CaptivePortalWebViewActivity$11;->val$handler:Landroid/webkit/SslErrorHandler;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/CaptivePortalWebViewActivity$11;->val$error:Landroid/net/http/SslError;

    # invokes: Lcom/android/settings_ex/wifi/CaptivePortalWebViewActivity;->createSslCertificateDialog(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Landroid/app/AlertDialog$Builder;
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ex/wifi/CaptivePortalWebViewActivity;->access$800(Lcom/android/settings_ex/wifi/CaptivePortalWebViewActivity;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 318
    return-void
.end method
