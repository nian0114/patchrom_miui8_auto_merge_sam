.class Lcom/android/settings_ex/personalvibration/SelectPatternDialog$2;
.super Ljava/lang/Object;
.source "SelectPatternDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/personalvibration/SelectPatternDialog;->showRenameDialog(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/personalvibration/SelectPatternDialog;

.field final synthetic val$EditPattern:Landroid/widget/TextView;

.field final synthetic val$id:I

.field final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/personalvibration/SelectPatternDialog;Landroid/widget/TextView;ILandroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    .prologue
    .line 455
    iput-object p1, p0, Lcom/android/settings_ex/personalvibration/SelectPatternDialog$2;->this$0:Lcom/android/settings_ex/personalvibration/SelectPatternDialog;

    iput-object p2, p0, Lcom/android/settings_ex/personalvibration/SelectPatternDialog$2;->val$EditPattern:Landroid/widget/TextView;

    iput p3, p0, Lcom/android/settings_ex/personalvibration/SelectPatternDialog$2;->val$id:I

    iput-object p4, p0, Lcom/android/settings_ex/personalvibration/SelectPatternDialog$2;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 458
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 459
    .local v2, "values":Landroid/content/ContentValues;
    iget-object v3, p0, Lcom/android/settings_ex/personalvibration/SelectPatternDialog$2;->val$EditPattern:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 460
    .local v1, "mPatternName":Ljava/lang/String;
    const-string v3, "\n"

    const-string v4, " "

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\r"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 461
    const-string v3, "vibration_name"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const-string v3, "vibration_type"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 463
    iget-object v3, p0, Lcom/android/settings_ex/personalvibration/SelectPatternDialog$2;->this$0:Lcom/android/settings_ex/personalvibration/SelectPatternDialog;

    invoke-virtual {v3}, Lcom/android/settings_ex/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings_ex/personalvibration/SelectPatternDialog$2;->val$id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 465
    .local v0, "count":I
    const-string v3, "SelectPatternDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "count"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , mPatternName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const-string v3, "SelectPatternDialog"

    const-string v4, "OK was clicked, the pattern saved sucessfully"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v3, p0, Lcom/android/settings_ex/personalvibration/SelectPatternDialog$2;->this$0:Lcom/android/settings_ex/personalvibration/SelectPatternDialog;

    # getter for: Lcom/android/settings_ex/personalvibration/SelectPatternDialog;->mPatternListAdapter:Lcom/android/settings_ex/personalvibration/VibrationPatternListAdapter;
    invoke-static {v3}, Lcom/android/settings_ex/personalvibration/SelectPatternDialog;->access$000(Lcom/android/settings_ex/personalvibration/SelectPatternDialog;)Lcom/android/settings_ex/personalvibration/VibrationPatternListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings_ex/personalvibration/VibrationPatternListAdapter;->loadPatternType()V

    .line 468
    iget-object v3, p0, Lcom/android/settings_ex/personalvibration/SelectPatternDialog$2;->this$0:Lcom/android/settings_ex/personalvibration/SelectPatternDialog;

    # getter for: Lcom/android/settings_ex/personalvibration/SelectPatternDialog;->mPatternListAdapter:Lcom/android/settings_ex/personalvibration/VibrationPatternListAdapter;
    invoke-static {v3}, Lcom/android/settings_ex/personalvibration/SelectPatternDialog;->access$000(Lcom/android/settings_ex/personalvibration/SelectPatternDialog;)Lcom/android/settings_ex/personalvibration/VibrationPatternListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings_ex/personalvibration/VibrationPatternListAdapter;->notifyDataSetChanged()V

    .line 470
    iget-object v3, p0, Lcom/android/settings_ex/personalvibration/SelectPatternDialog$2;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Lcom/android/settings_ex/personalvibration/SelectPatternDialog$2;->val$EditPattern:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 471
    return-void
.end method
