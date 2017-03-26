.class Lcom/android/nfc/BeamShareActivity$5;
.super Ljava/lang/Object;
.source "BeamShareActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/BeamShareActivity;->showNfcDialogAndExitForVzw()V
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
    .line 278
    iput-object p1, p0, Lcom/android/nfc/BeamShareActivity$5;->this$0:Lcom/android/nfc/BeamShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity$5;->this$0:Lcom/android/nfc/BeamShareActivity;

    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy2"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/android/nfc/BeamShareActivity;->mUri:Landroid/net/Uri;

    .line 284
    iget-object v7, p0, Lcom/android/nfc/BeamShareActivity$5;->this$0:Lcom/android/nfc/BeamShareActivity;

    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity$5;->this$0:Lcom/android/nfc/BeamShareActivity;

    invoke-virtual {v0}, Lcom/android/nfc/BeamShareActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/BeamShareActivity$5;->this$0:Lcom/android/nfc/BeamShareActivity;

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

    .line 286
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity$5;->this$0:Lcom/android/nfc/BeamShareActivity;

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mRestrictionCr:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 287
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity$5;->this$0:Lcom/android/nfc/BeamShareActivity;

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mRestrictionCr:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 289
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity$5;->this$0:Lcom/android/nfc/BeamShareActivity;

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mRestrictionCr:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/nfc/BeamShareActivity$5;->this$0:Lcom/android/nfc/BeamShareActivity;

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

    .line 290
    const-string v0, "BeamShareActivity"

    const-string v1, "Restriction policy block NFC on"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity$5;->this$0:Lcom/android/nfc/BeamShareActivity;

    # getter for: Lcom/android/nfc/BeamShareActivity;->mIsReceiverRegistered:Z
    invoke-static {v0}, Lcom/android/nfc/BeamShareActivity;->access$000(Lcom/android/nfc/BeamShareActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity$5;->this$0:Lcom/android/nfc/BeamShareActivity;

    iget-object v1, p0, Lcom/android/nfc/BeamShareActivity$5;->this$0:Lcom/android/nfc/BeamShareActivity;

    iget-object v1, v1, Lcom/android/nfc/BeamShareActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/nfc/BeamShareActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 294
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity$5;->this$0:Lcom/android/nfc/BeamShareActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/nfc/BeamShareActivity;->mIsReceiverRegistered:Z
    invoke-static {v0, v1}, Lcom/android/nfc/BeamShareActivity;->access$002(Lcom/android/nfc/BeamShareActivity;Z)Z

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity$5;->this$0:Lcom/android/nfc/BeamShareActivity;

    invoke-virtual {v0}, Lcom/android/nfc/BeamShareActivity;->finish()V
    :try_end_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 301
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity$5;->this$0:Lcom/android/nfc/BeamShareActivity;

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mRestrictionCr:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 309
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity$5;->this$0:Lcom/android/nfc/BeamShareActivity;

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 311
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/android/nfc/BeamShareActivity$5;->this$0:Lcom/android/nfc/BeamShareActivity;

    iget-object v1, v1, Lcom/android/nfc/BeamShareActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 312
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity$5;->this$0:Lcom/android/nfc/BeamShareActivity;

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    .line 313
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity$5;->this$0:Lcom/android/nfc/BeamShareActivity;

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    .line 330
    :cond_3
    :goto_1
    return-void

    .line 298
    :catch_0
    move-exception v6

    .line 299
    .local v6, "e":Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_3
    invoke-virtual {v6}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 301
    :try_start_4
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity$5;->this$0:Lcom/android/nfc/BeamShareActivity;

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mRestrictionCr:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 304
    .end local v6    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :catch_1
    move-exception v6

    .line 305
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "BeamShareActivity"

    const-string v1, "Failed to talk to Restriction Policy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 301
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/android/nfc/BeamShareActivity$5;->this$0:Lcom/android/nfc/BeamShareActivity;

    iget-object v1, v1, Lcom/android/nfc/BeamShareActivity;->mRestrictionCr:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 317
    :cond_4
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity$5;->this$0:Lcom/android/nfc/BeamShareActivity;

    iget-object v0, v0, Lcom/android/nfc/BeamShareActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 318
    sget-boolean v0, Lcom/android/nfc/BeamShareActivity;->isVzw:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity$5;->this$0:Lcom/android/nfc/BeamShareActivity;

    # getter for: Lcom/android/nfc/BeamShareActivity;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/android/nfc/BeamShareActivity;->access$300(Lcom/android/nfc/BeamShareActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "first_enable_by_user"

    invoke-interface {v0, v1, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 319
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity$5;->this$0:Lcom/android/nfc/BeamShareActivity;

    # getter for: Lcom/android/nfc/BeamShareActivity;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/android/nfc/BeamShareActivity;->access$400(Lcom/android/nfc/BeamShareActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "first_enable_by_user"

    invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 320
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity$5;->this$0:Lcom/android/nfc/BeamShareActivity;

    # getter for: Lcom/android/nfc/BeamShareActivity;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/android/nfc/BeamShareActivity;->access$400(Lcom/android/nfc/BeamShareActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 326
    :cond_5
    const-string v0, "BeamShareActivity"

    const-string v1, " parseShareIntentAndFinish #3 "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity$5;->this$0:Lcom/android/nfc/BeamShareActivity;

    iget-object v1, p0, Lcom/android/nfc/BeamShareActivity$5;->this$0:Lcom/android/nfc/BeamShareActivity;

    iget-object v1, v1, Lcom/android/nfc/BeamShareActivity;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/nfc/BeamShareActivity;->parseShareIntentAndFinish(Landroid/content/Intent;)V

    goto :goto_1
.end method
