.class Lcom/android/settings_ex/users/AppRestrictionsFragment$6;
.super Ljava/lang/Object;
.source "AppRestrictionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/users/AppRestrictionsFragment;->showSubordinateAppEnablePopup(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/users/AppRestrictionsFragment;

.field final synthetic val$related_packagename:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/users/AppRestrictionsFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1106
    iput-object p1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$6;->this$0:Lcom/android/settings_ex/users/AppRestrictionsFragment;

    iput-object p2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$6;->val$related_packagename:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1108
    iget-object v1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$6;->this$0:Lcom/android/settings_ex/users/AppRestrictionsFragment;

    iget-object v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$6;->this$0:Lcom/android/settings_ex/users/AppRestrictionsFragment;

    # getter for: Lcom/android/settings_ex/users/AppRestrictionsFragment;->mClickedAppPref:Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;
    invoke-static {v0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->access$1200(Lcom/android/settings_ex/users/AppRestrictionsFragment;)Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;

    move-result-object v2

    iget-object v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$6;->this$0:Lcom/android/settings_ex/users/AppRestrictionsFragment;

    # getter for: Lcom/android/settings_ex/users/AppRestrictionsFragment;->mClickedAppPref:Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;
    invoke-static {v0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->access$1200(Lcom/android/settings_ex/users/AppRestrictionsFragment;)Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$6;->val$related_packagename:Ljava/lang/String;

    # invokes: Lcom/android/settings_ex/users/AppRestrictionsFragment;->appPrefChanged(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;ZLjava/lang/String;)V
    invoke-static {v1, v2, v0, v3}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->access$1300(Lcom/android/settings_ex/users/AppRestrictionsFragment;Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;ZLjava/lang/String;)V

    .line 1109
    return-void

    .line 1108
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
