.class Lcom/android/settings_ex/wifi/WifiSecSetupActivity$CheckInternet$1;
.super Ljava/lang/Object;
.source "WifiSecSetupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiSecSetupActivity$CheckInternet;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/wifi/WifiSecSetupActivity$CheckInternet;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiSecSetupActivity$CheckInternet;)V
    .locals 0

    .prologue
    .line 992
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity$CheckInternet$1;->this$1:Lcom/android/settings_ex/wifi/WifiSecSetupActivity$CheckInternet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 995
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity$CheckInternet$1;->this$1:Lcom/android/settings_ex/wifi/WifiSecSetupActivity$CheckInternet;

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity$CheckInternet;->this$0:Lcom/android/settings_ex/wifi/WifiSecSetupActivity;

    # invokes: Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->allowToGoNext(ZZI)V
    invoke-static {v0, v1, v1, v1}, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;->access$900(Lcom/android/settings_ex/wifi/WifiSecSetupActivity;ZZI)V

    .line 996
    return-void
.end method
