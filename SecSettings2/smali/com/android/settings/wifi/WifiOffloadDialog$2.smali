.class Lcom/android/settings_ex/wifi/WifiOffloadDialog$2;
.super Ljava/lang/Object;
.source "WifiOffloadDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiOffloadDialog;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiOffloadDialog;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiOffloadDialog;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog$2;->this$0:Lcom/android/settings_ex/wifi/WifiOffloadDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog$2;->this$0:Lcom/android/settings_ex/wifi/WifiOffloadDialog;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings_ex/wifi/WifiOffloadDialog;->mIsUserAction:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->access$002(Lcom/android/settings_ex/wifi/WifiOffloadDialog;Z)Z

    .line 77
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog$2;->this$0:Lcom/android/settings_ex/wifi/WifiOffloadDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_offload_network_notify"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 79
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiOffloadDialog$2;->this$0:Lcom/android/settings_ex/wifi/WifiOffloadDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiOffloadDialog;->finish()V

    .line 80
    return-void
.end method
