.class Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode$2;
.super Ljava/lang/Object;
.source "WifiApQrCode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode$2;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode$2;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->startShareQrCode()V

    .line 128
    return-void
.end method
