.class Lcom/android/nfc/NfcRootActivity$6;
.super Ljava/lang/Object;
.source "NfcRootActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/NfcRootActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcRootActivity;

.field final synthetic val$linear:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcRootActivity;Landroid/widget/LinearLayout;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/nfc/NfcRootActivity$6;->this$0:Lcom/android/nfc/NfcRootActivity;

    iput-object p2, p0, Lcom/android/nfc/NfcRootActivity$6;->val$linear:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 329
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcRootActivity$6;->val$linear:Landroid/widget/LinearLayout;

    const v2, 0x7f090007

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 330
    .local v0, "askOption":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    iget-object v1, p0, Lcom/android/nfc/NfcRootActivity$6;->this$0:Lcom/android/nfc/NfcRootActivity;

    # getter for: Lcom/android/nfc/NfcRootActivity;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/android/nfc/NfcRootActivity;->access$000(Lcom/android/nfc/NfcRootActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "contact_never_ask"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 332
    iget-object v1, p0, Lcom/android/nfc/NfcRootActivity$6;->this$0:Lcom/android/nfc/NfcRootActivity;

    # getter for: Lcom/android/nfc/NfcRootActivity;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/android/nfc/NfcRootActivity;->access$000(Lcom/android/nfc/NfcRootActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 335
    :cond_0
    sget-object v1, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-static {v1}, Landroid/os/PersonaManager;->isKnoxVersionSupported(Landroid/os/PersonaManager$KnoxContainerVersion;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 337
    iget-object v1, p0, Lcom/android/nfc/NfcRootActivity$6;->this$0:Lcom/android/nfc/NfcRootActivity;

    iget-object v2, p0, Lcom/android/nfc/NfcRootActivity$6;->this$0:Lcom/android/nfc/NfcRootActivity;

    iget-object v2, v2, Lcom/android/nfc/NfcRootActivity;->mLaunchIntent:Landroid/content/Intent;

    # invokes: Lcom/android/nfc/NfcRootActivity;->startActivityWithKnox(Landroid/content/Intent;)V
    invoke-static {v1, v2}, Lcom/android/nfc/NfcRootActivity;->access$100(Lcom/android/nfc/NfcRootActivity;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    .end local v0    # "askOption":Landroid/widget/CheckBox;
    :goto_0
    iget-object v1, p0, Lcom/android/nfc/NfcRootActivity$6;->this$0:Lcom/android/nfc/NfcRootActivity;

    invoke-virtual {v1}, Lcom/android/nfc/NfcRootActivity;->finish()V

    .line 344
    return-void

    .line 339
    .restart local v0    # "askOption":Landroid/widget/CheckBox;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/nfc/NfcRootActivity$6;->this$0:Lcom/android/nfc/NfcRootActivity;

    iget-object v2, p0, Lcom/android/nfc/NfcRootActivity$6;->this$0:Lcom/android/nfc/NfcRootActivity;

    iget-object v2, v2, Lcom/android/nfc/NfcRootActivity;->mLaunchIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Lcom/android/nfc/NfcRootActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 341
    .end local v0    # "askOption":Landroid/widget/CheckBox;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
