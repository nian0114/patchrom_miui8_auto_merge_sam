.class Lcom/android/settings_ex/wifi/WifiSecSetupActivity$CheckInternet$2;
.super Ljava/lang/Object;
.source "WifiSecSetupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiSecSetupActivity$CheckInternet;->onPostExecute(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/wifi/WifiSecSetupActivity$CheckInternet;

.field final synthetic val$result:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiSecSetupActivity$CheckInternet;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 1046
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity$CheckInternet$2;->this$1:Lcom/android/settings_ex/wifi/WifiSecSetupActivity$CheckInternet;

    iput-object p2, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity$CheckInternet$2;->val$result:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1050
    const/4 v1, 0x0

    .line 1051
    .local v1, "isNextButtonEnabled":Z
    const/4 v0, 0x0

    .line 1052
    .local v0, "isDialogPopped":Z
    const v2, 0x7f0e16a6

    .line 1053
    .local v2, "message":I
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity$CheckInternet$2;->val$result:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1069
    :goto_0
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity$CheckInternet$2;->this$1:Lcom/android/settings_ex/wifi/WifiSecSetupActivity$CheckInternet;

    iget-object v3, v3, Lcom/android/settings_ex/wifi/WifiSecSetupActivity$CheckInternet;->this$0:Lcom/android/settings_ex/wifi/WifiSecSetupActivity;

    # invokes: Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->allowToGoNext(ZZI)V
    invoke-static {v3, v1, v0, v2}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->access$900(Lcom/android/settings_ex/wifi/WifiSecSetupActivity;ZZI)V

    .line 1070
    return-void

    .line 1055
    :pswitch_1
    const/4 v1, 0x1

    .line 1056
    goto :goto_0

    .line 1060
    :pswitch_2
    const v2, 0x7f0e16a5

    .line 1062
    :pswitch_3
    const/4 v0, 0x1

    .line 1063
    goto :goto_0

    .line 1065
    :pswitch_4
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity$CheckInternet$2;->this$1:Lcom/android/settings_ex/wifi/WifiSecSetupActivity$CheckInternet;

    iget-object v3, v3, Lcom/android/settings_ex/wifi/WifiSecSetupActivity$CheckInternet;->this$0:Lcom/android/settings_ex/wifi/WifiSecSetupActivity;

    iget-boolean v3, v3, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->FLAG_GOOGLE_FRP_FOR_WIFISETUPWIZARD:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity$CheckInternet$2;->this$1:Lcom/android/settings_ex/wifi/WifiSecSetupActivity$CheckInternet;

    iget-object v3, v3, Lcom/android/settings_ex/wifi/WifiSecSetupActivity$CheckInternet;->this$0:Lcom/android/settings_ex/wifi/WifiSecSetupActivity;

    iget-boolean v3, v3, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

    if-nez v3, :cond_0

    const/4 v1, 0x1

    :goto_1
    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 1053
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
