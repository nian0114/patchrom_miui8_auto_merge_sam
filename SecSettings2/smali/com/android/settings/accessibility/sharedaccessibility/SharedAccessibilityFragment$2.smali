.class Lcom/android/settings_ex/accessibility/sharedaccessibility/SharedAccessibilityFragment$2;
.super Ljava/lang/Object;
.source "SharedAccessibilityFragment.java"

# interfaces
.implements Lcom/android/settings_ex/accessibility/sharedaccessibility/AccessibilityDialogPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/accessibility/sharedaccessibility/SharedAccessibilityFragment;->buildShareViewDropDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/accessibility/sharedaccessibility/SharedAccessibilityFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/accessibility/sharedaccessibility/SharedAccessibilityFragment;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/settings_ex/accessibility/sharedaccessibility/SharedAccessibilityFragment$2;->this$0:Lcom/android/settings_ex/accessibility/sharedaccessibility/SharedAccessibilityFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(ILjava/lang/Object;)Z
    .locals 4
    .param p1, "pos"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 102
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "Item"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.accessibility.sharedaccessibility.ShareAccessibilityShareVia"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 107
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/sharedaccessibility/SharedAccessibilityFragment$2;->this$0:Lcom/android/settings_ex/accessibility/sharedaccessibility/SharedAccessibilityFragment;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/accessibility/sharedaccessibility/SharedAccessibilityFragment;->startActivity(Landroid/content/Intent;)V

    .line 108
    const/4 v1, 0x1

    return v1
.end method
