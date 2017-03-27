.class Lcom/android/settings_ex/nearby/NearbyEnabler$8;
.super Ljava/lang/Object;
.source "NearbyEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/nearby/NearbyEnabler;->requestWifiCheckingPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/nearby/NearbyEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/nearby/NearbyEnabler;)V
    .locals 0

    .prologue
    .line 1038
    iput-object p1, p0, Lcom/android/settings_ex/nearby/NearbyEnabler$8;->this$0:Lcom/android/settings_ex/nearby/NearbyEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v1, 0x0

    .line 1040
    # setter for: Lcom/android/settings_ex/nearby/NearbyEnabler;->isShowWifiCheckingPopup:Z
    invoke-static {v1}, Lcom/android/settings_ex/nearby/NearbyEnabler;->access$1402(Z)Z

    .line 1041
    iget-object v0, p0, Lcom/android/settings_ex/nearby/NearbyEnabler$8;->this$0:Lcom/android/settings_ex/nearby/NearbyEnabler;

    # invokes: Lcom/android/settings_ex/nearby/NearbyEnabler;->switchPreference(Z)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/nearby/NearbyEnabler;->access$1700(Lcom/android/settings_ex/nearby/NearbyEnabler;Z)V

    .line 1042
    iget-object v0, p0, Lcom/android/settings_ex/nearby/NearbyEnabler$8;->this$0:Lcom/android/settings_ex/nearby/NearbyEnabler;

    # getter for: Lcom/android/settings_ex/nearby/NearbyEnabler;->mNearbySwitchBar:Lcom/android/settings_ex/widget/SwitchBar;
    invoke-static {v0}, Lcom/android/settings_ex/nearby/NearbyEnabler;->access$1000(Lcom/android/settings_ex/nearby/NearbyEnabler;)Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 1043
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1044
    return-void
.end method
