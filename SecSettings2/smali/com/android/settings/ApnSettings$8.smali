.class Lcom/android/settings_ex/ApnSettings$8;
.super Ljava/lang/Object;
.source "ApnSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ApnSettings;)V
    .locals 0

    .prologue
    .line 736
    iput-object p1, p0, Lcom/android/settings_ex/ApnSettings$8;->this$0:Lcom/android/settings_ex/ApnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 738
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 739
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ApnSettings"

    const-string v2, "addNewApn"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings$8;->this$0:Lcom/android/settings_ex/ApnSettings;

    # getter for: Lcom/android/settings_ex/ApnSettings;->mCpaAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/settings_ex/ApnSettings;->access$800(Lcom/android/settings_ex/ApnSettings;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 741
    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings$8;->this$0:Lcom/android/settings_ex/ApnSettings;

    # getter for: Lcom/android/settings_ex/ApnSettings;->mCpaAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/settings_ex/ApnSettings;->access$800(Lcom/android/settings_ex/ApnSettings;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 743
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/ApnSettings$8;->this$0:Lcom/android/settings_ex/ApnSettings;

    const/16 v2, 0x7e

    invoke-virtual {v1, v0, v2}, Lcom/android/settings_ex/ApnSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 744
    return-void
.end method
