.class Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList$9;
.super Ljava/lang/Object;
.source "WifiApAllowedList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;)V
    .locals 0

    .prologue
    .line 621
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList$9;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList$9;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;

    const/4 v1, 0x1

    # invokes: Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;->access$1200(Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;I)V

    .line 624
    return-void
.end method
