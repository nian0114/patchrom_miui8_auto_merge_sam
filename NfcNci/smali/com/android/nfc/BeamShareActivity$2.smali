.class Lcom/android/nfc/BeamShareActivity$2;
.super Ljava/lang/Object;
.source "BeamShareActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/BeamShareActivity;->showNfcDialogAndExit(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/BeamShareActivity;


# direct methods
.method constructor <init>(Lcom/android/nfc/BeamShareActivity;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/nfc/BeamShareActivity$2;->this$0:Lcom/android/nfc/BeamShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity$2;->this$0:Lcom/android/nfc/BeamShareActivity;

    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy2"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/android/nfc/BeamShareActivity;->mUri:Landroid/net/Uri;

    .line 167
    iget-object v7, p0, Lcom/android/nfc/BeamShareActivity$2;->this$0:Lcom/android/nfc/BeamShareActivity;

    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity$2;->this$0:Lcom/android/nfc/BeamShareActivity;

    invoke-virtual {v0}, Lcom/android/nfc/BeamShareActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/BeamShareActivity$2;->this$0:Lcom/android/nfc/BeamShareActivity;

    iget-object v1, v1, Lcom/android/nfc/BeamShareActivity;->mUri:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "isNFCEnabledWithMsg"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "true"

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, v7, Lcom/android/nfc/BeamShareActivity;->mRestrictionCr:Landroid/database/Cursor;

    .line 169
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity$2;->this$0:Lcom/android/nfc/BeamShareActivity;

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mRestrictionCr:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity$2;->this$0:Lcom/android/nfc/BeamShareActivity;

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mRestrictionCr:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 172
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity$2;->this$0:Lcom/android/nfc/BeamShareActivity;

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mRestrictionCr:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/nfc/BeamShareActivity$2;->this$0:Lcom/android/nfc/BeamShareActivity;

    iget-object v1, v1, Lcom/android/nfc/BeamShareActivity;->mRestrictionCr:Landroid/database/Cursor;

    const-string v2, "isNFCEnabledWithMsg"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    const-string v0, "BeamShareActivity"

    const-string v1, "Restriction policy block NFC on"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity$2;->this$0:Lcom/android/nfc/BeamShareActivity;

    # getter for: Lcom/android/nfc/BeamShareActivity;->mIsReceiverRegistered:Z
    invoke-static {v0}, Lcom/android/nfc/BeamShareActivity;->access$000(Lcom/android/nfc/BeamShareActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity$2;->this$0:Lcom/android/nfc/BeamShareActivity;

    iget-object v1, p0, Lcom/android/nfc/BeamShareActivity$2;->this$0:Lcom/android/nfc/BeamShareActivity;

    iget-object v1, v1, Lcom/android/nfc/BeamShareActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/nfc/BeamShareActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 177
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity$2;->this$0:Lcom/android/nfc/BeamShareActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/nfc/BeamShareActivity;->mIsReceiverRegistered:Z
    invoke-static {v0, v1}, Lcom/android/nfc/BeamShareActivity;->access$002(Lcom/android/nfc/BeamShareActivity;Z)Z

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity$2;->this$0:Lcom/android/nfc/BeamShareActivity;

    invoke-virtual {v0}, Lcom/android/nfc/BeamShareActivity;->finish()V
    :try_end_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity$2;->this$0:Lcom/android/nfc/BeamShareActivity;

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mRestrictionCr:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 192
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity$2;->this$0:Lcom/android/nfc/BeamShareActivity;

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 194
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/android/nfc/BeamShareActivity$2;->this$0:Lcom/android/nfc/BeamShareActivity;

    iget-object v1, v1, Lcom/android/nfc/BeamShareActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 195
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity$2;->this$0:Lcom/android/nfc/BeamShareActivity;

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    .line 196
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity$2;->this$0:Lcom/android/nfc/BeamShareActivity;

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    .line 208
    :goto_1
    return-void

    .line 181
    :catch_0
    move-exception v6

    .line 182
    .local v6, "e":Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_3
    invoke-virtual {v6}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 184
    :try_start_4
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity$2;->this$0:Lcom/android/nfc/BeamShareActivity;

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mRestrictionCr:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 187
    .end local v6    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :catch_1
    move-exception v6

    .line 188
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "BeamShareActivity"

    const-string v1, "Failed to talk to Restriction Policy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 184
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/android/nfc/BeamShareActivity$2;->this$0:Lcom/android/nfc/BeamShareActivity;

    iget-object v1, v1, Lcom/android/nfc/BeamShareActivity;->mRestrictionCr:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 200
    :cond_3
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity$2;->this$0:Lcom/android/nfc/BeamShareActivity;

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    goto :goto_1

    .line 204
    :cond_4
    const-string v0, "BeamShareActivity"

    const-string v1, " parseShareIntentAndFinish #3 "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity$2;->this$0:Lcom/android/nfc/BeamShareActivity;

    iget-object v1, p0, Lcom/android/nfc/BeamShareActivity$2;->this$0:Lcom/android/nfc/BeamShareActivity;

    iget-object v1, v1, Lcom/android/nfc/BeamShareActivity;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/nfc/BeamShareActivity;->parseShareIntentAndFinish(Landroid/content/Intent;)V

    goto :goto_1
.end method
