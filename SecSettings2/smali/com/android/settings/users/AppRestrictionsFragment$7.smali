.class Lcom/android/settings_ex/users/AppRestrictionsFragment$7;
.super Ljava/lang/Object;
.source "AppRestrictionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/users/AppRestrictionsFragment;->showSubordinateAppDisablePopup(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/users/AppRestrictionsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/users/AppRestrictionsFragment;)V
    .locals 0

    .prologue
    .line 1149
    iput-object p1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$7;->this$0:Lcom/android/settings_ex/users/AppRestrictionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$7;->this$0:Lcom/android/settings_ex/users/AppRestrictionsFragment;

    # getter for: Lcom/android/settings_ex/users/AppRestrictionsFragment;->mClickedAppPref:Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;
    invoke-static {v0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->access$1200(Lcom/android/settings_ex/users/AppRestrictionsFragment;)Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->updateStatus()V

    .line 1154
    return-void
.end method
