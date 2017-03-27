.class Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$18;
.super Ljava/lang/Object;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V
    .locals 0

    .prologue
    .line 713
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$18;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 715
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$18;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;

    # invokes: Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->afterAttentionDialog()V
    invoke-static {v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->access$1800(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    .line 716
    return-void
.end method
