.class Lcom/android/settings_ex/notification/ZenModeDNDSettings$2;
.super Ljava/lang/Object;
.source "ZenModeDNDSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/ZenModeDNDSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/ZenModeDNDSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/ZenModeDNDSettings;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/settings_ex/notification/ZenModeDNDSettings$2;->this$0:Lcom/android/settings_ex/notification/ZenModeDNDSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeDNDSettings$2;->this$0:Lcom/android/settings_ex/notification/ZenModeDNDSettings;

    # invokes: Lcom/android/settings_ex/notification/ZenModeDNDSettings;->showDaysDialog()V
    invoke-static {v0}, Lcom/android/settings_ex/notification/ZenModeDNDSettings;->access$300(Lcom/android/settings_ex/notification/ZenModeDNDSettings;)V

    .line 212
    const/4 v0, 0x1

    return v0
.end method
