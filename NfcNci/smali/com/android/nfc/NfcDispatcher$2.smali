.class Lcom/android/nfc/NfcDispatcher$2;
.super Landroid/content/BroadcastReceiver;
.source "NfcDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/NfcDispatcher;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcDispatcher;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcDispatcher;)V
    .locals 0

    .prologue
    .line 1202
    iput-object p1, p0, Lcom/android/nfc/NfcDispatcher$2;->this$0:Lcom/android/nfc/NfcDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1205
    const-string v7, "NfcDispatcher"

    const-string v8, "mPackageReceiver"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1207
    .local v0, "action":Ljava/lang/String;
    const-string v5, "Nothing"

    .line 1209
    .local v5, "package_name":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1216
    if-eqz v5, :cond_1

    .line 1217
    const-string v7, "NfcDispatcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package Added : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    const-string v7, "bt_addr_list"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 1219
    .local v6, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 1221
    .local v3, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v7, ""

    invoke-interface {v6, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1223
    .local v1, "btaddr":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0xf

    if-le v7, v8, :cond_2

    .line 1224
    const-string v7, "NfcDispatcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "send intent with bt addr : to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 1226
    .local v4, "launch_intent":Landroid/content/Intent;
    if-eqz v4, :cond_0

    .line 1227
    const-string v7, "bt_addr"

    invoke-virtual {v4, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1229
    :try_start_1
    invoke-virtual {p1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1236
    :cond_0
    :goto_0
    invoke-interface {v3, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1237
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1238
    iget-object v7, p0, Lcom/android/nfc/NfcDispatcher$2;->this$0:Lcom/android/nfc/NfcDispatcher;

    iget-object v7, v7, Lcom/android/nfc/NfcDispatcher;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1243
    .end local v1    # "btaddr":Ljava/lang/String;
    .end local v3    # "ed":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "launch_intent":Landroid/content/Intent;
    .end local v6    # "pref":Landroid/content/SharedPreferences;
    :cond_1
    :goto_1
    return-void

    .line 1211
    :catch_0
    move-exception v2

    .line 1212
    .local v2, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 1231
    .end local v2    # "e":Ljava/lang/NullPointerException;
    .restart local v1    # "btaddr":Ljava/lang/String;
    .restart local v3    # "ed":Landroid/content/SharedPreferences$Editor;
    .restart local v4    # "launch_intent":Landroid/content/Intent;
    .restart local v6    # "pref":Landroid/content/SharedPreferences;
    :catch_1
    move-exception v2

    .line 1232
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    const-string v7, "NfcDispatcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "There is no acitivity to handle "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1240
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    .end local v4    # "launch_intent":Landroid/content/Intent;
    :cond_2
    const-string v7, "NfcDispatcher"

    const-string v8, "This pkg do not need BT addr. Do nothing"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
