.class Lcom/android/settings_ex/AssistantMenuPreferenceFragment$4;
.super Ljava/lang/Object;
.source "AssistantMenuPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings_ex/DropDownPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/AssistantMenuPreferenceFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/AssistantMenuPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/AssistantMenuPreferenceFragment;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$4;->this$0:Lcom/android/settings_ex/AssistantMenuPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(ILjava/lang/Object;)Z
    .locals 5
    .param p1, "pos"    # I
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 246
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 250
    .local v1, "value":I
    iget-object v2, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$4;->this$0:Lcom/android/settings_ex/AssistantMenuPreferenceFragment;

    invoke-virtual {v2}, Lcom/android/settings_ex/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "assistant_menu_pointer_speed"

    add-int/lit8 v4, v1, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 252
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 253
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.app.shareaccessibilitysettings.SHARING_COMPLETE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    iget-object v2, p0, Lcom/android/settings_ex/AssistantMenuPreferenceFragment$4;->this$0:Lcom/android/settings_ex/AssistantMenuPreferenceFragment;

    # getter for: Lcom/android/settings_ex/AssistantMenuPreferenceFragment;->mPreferenceFragmentActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/settings_ex/AssistantMenuPreferenceFragment;->access$200(Lcom/android/settings_ex/AssistantMenuPreferenceFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 255
    const/4 v2, 0x1

    return v2
.end method
