.class Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$9;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    .prologue
    .line 918
    iput-object p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$9;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 3
    .param p1, "status"    # I

    .prologue
    .line 921
    if-nez p1, :cond_1

    .line 922
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$9;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$4000(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v0

    .line 923
    .local v0, "result":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    .line 925
    :cond_0
    const-string v1, "WifiP2pSettings"

    const-string v2, "TTS : This Language is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    .end local v0    # "result":I
    :cond_1
    :goto_0
    return-void

    .line 926
    .restart local v0    # "result":I
    :cond_2
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 928
    :cond_3
    const-string v1, "WifiP2pSettings"

    const-string v2, "TTS : This Language is not downloaded"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 930
    :cond_4
    const-string v1, "WifiP2pSettings"

    const-string v2, "TTS : Initilization Failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
