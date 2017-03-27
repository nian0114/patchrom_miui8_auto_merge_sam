.class Lcom/android/settings_ex/wifi/WifiConfigController$2;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiConfigController;->addGatewayRow(Landroid/view/ViewGroup;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiConfigController;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiConfigController;)V
    .locals 0

    .prologue
    .line 1094
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiConfigController$2;->this$0:Lcom/android/settings_ex/wifi/WifiConfigController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 1097
    if-eqz p2, :cond_0

    .line 1098
    const v0, 0x7f0203a3

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1102
    :goto_0
    return-void

    .line 1100
    :cond_0
    const v0, 0x7f0203a4

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method
