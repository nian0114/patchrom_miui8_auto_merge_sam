.class Lcom/android/settings_ex/nfc/TagsConnectingDevices$4;
.super Ljava/lang/Object;
.source "TagsConnectingDevices.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/nfc/TagsConnectingDevices;->makeAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/nfc/TagsConnectingDevices;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/nfc/TagsConnectingDevices;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/settings_ex/nfc/TagsConnectingDevices$4;->this$0:Lcom/android/settings_ex/nfc/TagsConnectingDevices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/settings_ex/nfc/TagsConnectingDevices$4;->this$0:Lcom/android/settings_ex/nfc/TagsConnectingDevices;

    # getter for: Lcom/android/settings_ex/nfc/TagsConnectingDevices;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;
    invoke-static {v0}, Lcom/android/settings_ex/nfc/TagsConnectingDevices;->access$300(Lcom/android/settings_ex/nfc/TagsConnectingDevices;)Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 177
    return-void
.end method
