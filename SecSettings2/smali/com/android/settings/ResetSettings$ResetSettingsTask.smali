.class Lcom/android/settings_ex/ResetSettings$ResetSettingsTask;
.super Landroid/os/AsyncTask;
.source "ResetSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ResetSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetSettingsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ResetSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/ResetSettings;)V
    .locals 0

    .prologue
    .line 886
    iput-object p1, p0, Lcom/android/settings_ex/ResetSettings$ResetSettingsTask;->this$0:Lcom/android/settings_ex/ResetSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/ResetSettings;Lcom/android/settings_ex/ResetSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/ResetSettings;
    .param p2, "x1"    # Lcom/android/settings_ex/ResetSettings$1;

    .prologue
    .line 886
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ResetSettings$ResetSettingsTask;-><init>(Lcom/android/settings_ex/ResetSettings;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 886
    check-cast p1, [Landroid/content/Context;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/ResetSettings$ResetSettingsTask;->doInBackground([Landroid/content/Context;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/Context;)Ljava/lang/Void;
    .locals 2
    .param p1, "context"    # [Landroid/content/Context;

    .prologue
    .line 898
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/ResetSettings$ResetSettingsTask;->this$0:Lcom/android/settings_ex/ResetSettings;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ResetSettings;->resetAllSettings(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 902
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 899
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 886
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/ResetSettings$ResetSettingsTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 907
    iget-object v0, p0, Lcom/android/settings_ex/ResetSettings$ResetSettingsTask;->this$0:Lcom/android/settings_ex/ResetSettings;

    # invokes: Lcom/android/settings_ex/ResetSettings;->resetCompleted()V
    invoke-static {v0}, Lcom/android/settings_ex/ResetSettings;->access$400(Lcom/android/settings_ex/ResetSettings;)V

    .line 908
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 891
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 892
    return-void
.end method
