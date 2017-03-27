.class Lcom/android/settings_ex/applications/InstalledAppDetails$2;
.super Ljava/lang/Object;
.source "InstalledAppDetails.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/applications/InstalledAppDetails;->refreshUi()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/InstalledAppDetails;)V
    .locals 0

    .prologue
    .line 832
    iput-object p1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$2;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 835
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$2;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$2;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

    # getter for: Lcom/android/settings_ex/applications/InstalledAppDetails;->mStoragePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->access$300(Lcom/android/settings_ex/applications/InstalledAppDetails;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$2;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

    # getter for: Lcom/android/settings_ex/applications/InstalledAppDetails;->mStoragePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->access$300(Lcom/android/settings_ex/applications/InstalledAppDetails;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$2;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

    iget-object v1, v1, Lcom/android/settings_ex/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$2;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

    invoke-virtual {v2}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings_ex/applications/AppStorageSettings;->getSummary(Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 838
    :cond_0
    return-void
.end method
