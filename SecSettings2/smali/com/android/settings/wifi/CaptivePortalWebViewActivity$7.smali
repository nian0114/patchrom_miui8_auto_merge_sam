.class Lcom/android/settings_ex/wifi/CaptivePortalWebViewActivity$7;
.super Ljava/lang/Object;
.source "CaptivePortalWebViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/CaptivePortalWebViewActivity;->createSslOnErrorDialog(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Landroid/app/AlertDialog$Builder;
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
    .line 273
    iput-object p1, p0, Lcom/android/settings_ex/wifi/CaptivePortalWebViewActivity$7;->this$0:Lcom/android/settings_ex/wifi/CaptivePortalWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 277
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 278
    return-void
.end method
