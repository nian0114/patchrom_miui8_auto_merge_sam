.class Lcom/android/settings_ex/wifi/WifiSecSetupActivity$6;
.super Ljava/lang/Object;
.source "WifiSecSetupActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->updateLayoutMargin(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiSecSetupActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiSecSetupActivity;)V
    .locals 0

    .prologue
    .line 681
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity$6;->this$0:Lcom/android/settings_ex/wifi/WifiSecSetupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 2
    .param p1, "menu"    # Landroid/widget/PopupMenu;

    .prologue
    .line 683
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity$6;->this$0:Lcom/android/settings_ex/wifi/WifiSecSetupActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->mIsPopupMenu:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->access$702(Lcom/android/settings_ex/wifi/WifiSecSetupActivity;Z)Z

    .line 684
    return-void
.end method
