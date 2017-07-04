.class public Lcom/sec/android/app/camera/util/CallState;
.super Ljava/lang/Object;
.source "CallState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CallState"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCalling(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 40
    .local v0, "isCalling":Z
    invoke-static {}, Lcom/sec/android/app/camera/util/CallState;->isOffHook()Z

    move-result v1

    or-int/2addr v0, v1

    .line 41
    invoke-static {p0}, Lcom/sec/android/app/camera/util/CallState;->isOtherVTCallOngoing(Landroid/content/Context;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 42
    invoke-static {}, Lcom/sec/android/app/camera/util/CallState;->isVoIPCallOngoing()Z

    move-result v1

    or-int/2addr v0, v1

    .line 43
    invoke-static {p0}, Lcom/sec/android/app/camera/util/CallState;->isVTCallOngoing(Landroid/content/Context;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 44
    return v0
.end method

.method public static isOffHook()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, "isOffHook":Z
    invoke-static {v1}, Lcom/samsung/android/telephony/MultiSimManager;->isOffhook(I)Z

    move-result v0

    .line 50
    const-string v2, "CallState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOffHook_sim1 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    if-eqz v0, :cond_1

    .line 60
    .end local v0    # "isOffHook":Z
    :cond_0
    :goto_0
    return v0

    .line 55
    .restart local v0    # "isOffHook":Z
    :cond_1
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/samsung/android/telephony/MultiSimManager;->isOffhook(I)Z

    move-result v0

    .line 56
    const-string v2, "CallState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOffHook_sim2 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    if-nez v0, :cond_0

    move v0, v1

    .line 60
    goto :goto_0
.end method

.method public static isOtherVTCallOngoing(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 65
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    .line 66
    .local v1, "value":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 67
    const-string v2, "CallState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOtherVTCallOngoing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 v2, 0x1

    .line 70
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isRmsConnected(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    .line 74
    const/4 v8, 0x0

    .line 75
    .local v8, "status":I
    const/4 v6, 0x0

    .line 77
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 78
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 79
    const-string v1, "content://com.lguplus.rms/service"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 80
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    const-string v1, "connected"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 87
    :cond_0
    if-eqz v6, :cond_1

    .line 88
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 89
    const/4 v6, 0x0

    .line 92
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_1
    :goto_0
    if-ne v8, v9, :cond_3

    move v1, v9

    :goto_1
    return v1

    .line 84
    :catch_0
    move-exception v7

    .line 85
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "RMS"

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    if-eqz v6, :cond_1

    .line 88
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 89
    const/4 v6, 0x0

    goto :goto_0

    .line 87
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 88
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 89
    const/4 v6, 0x0

    :cond_2
    throw v1

    .line 92
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isVTCallOngoing(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 114
    .local v0, "isVTCall":Z
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 115
    .local v1, "phone":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    .line 116
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVideoCall()Z

    move-result v0

    .line 117
    const-string v2, "CallState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVTCallOngoing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    .line 120
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isVoIPCallOngoing()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 96
    const/4 v1, 0x0

    .line 98
    .local v1, "isVoIpCall":Z
    :try_start_0
    const-string v4, "voip"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v2

    .line 99
    .local v2, "voipInterfaceService":Landroid/os/IVoIPInterface;
    if-eqz v2, :cond_1

    .line 100
    invoke-interface {v2}, Landroid/os/IVoIPInterface;->isVoIPIdle()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v1, 0x1

    .line 101
    :goto_0
    const-string v4, "CallState"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isVoIPCallOngoing = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v1    # "isVoIpCall":Z
    .end local v2    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :goto_1
    return v1

    .restart local v1    # "isVoIpCall":Z
    .restart local v2    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :cond_0
    move v1, v3

    .line 100
    goto :goto_0

    .line 104
    .end local v2    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "CallState"

    const-string v5, "isVoIPIdle() failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    move v1, v3

    .line 107
    goto :goto_1
.end method

.method public static registerCallStateListener(Landroid/content/Context;Landroid/telephony/PhoneStateListener;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Landroid/telephony/PhoneStateListener;

    .prologue
    .line 124
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 125
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 126
    const/16 v1, 0x20

    invoke-virtual {v0, p1, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 128
    :cond_0
    return-void
.end method

.method public static unregisterCallStateListener(Landroid/content/Context;Landroid/telephony/PhoneStateListener;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Landroid/telephony/PhoneStateListener;

    .prologue
    .line 131
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 132
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 133
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 135
    :cond_0
    return-void
.end method
