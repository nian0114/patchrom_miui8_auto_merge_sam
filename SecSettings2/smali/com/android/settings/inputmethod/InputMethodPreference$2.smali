.class Lcom/android/settings_ex/inputmethod/InputMethodPreference$2;
.super Ljava/lang/Object;
.source "InputMethodPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/inputmethod/InputMethodPreference;->showSecurityWarnDialog(Landroid/view/inputmethod/InputMethodInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/inputmethod/InputMethodPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/inputmethod/InputMethodPreference;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference$2;->this$0:Lcom/android/settings_ex/inputmethod/InputMethodPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference$2;->this$0:Lcom/android/settings_ex/inputmethod/InputMethodPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->setChecked(Z)V

    .line 238
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference$2;->this$0:Lcom/android/settings_ex/inputmethod/InputMethodPreference;

    # getter for: Lcom/android/settings_ex/inputmethod/InputMethodPreference;->mOnSaveListener:Lcom/android/settings_ex/inputmethod/InputMethodPreference$OnSavePreferenceListener;
    invoke-static {v0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->access$000(Lcom/android/settings_ex/inputmethod/InputMethodPreference;)Lcom/android/settings_ex/inputmethod/InputMethodPreference$OnSavePreferenceListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference$2;->this$0:Lcom/android/settings_ex/inputmethod/InputMethodPreference;

    invoke-interface {v0, v1}, Lcom/android/settings_ex/inputmethod/InputMethodPreference$OnSavePreferenceListener;->onSaveInputMethodPreference(Lcom/android/settings_ex/inputmethod/InputMethodPreference;)V

    .line 239
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/InputMethodPreference$2;->this$0:Lcom/android/settings_ex/inputmethod/InputMethodPreference;

    # invokes: Lcom/android/settings_ex/inputmethod/InputMethodPreference;->notifyChanged()V
    invoke-static {v0}, Lcom/android/settings_ex/inputmethod/InputMethodPreference;->access$200(Lcom/android/settings_ex/inputmethod/InputMethodPreference;)V

    .line 240
    return-void
.end method
