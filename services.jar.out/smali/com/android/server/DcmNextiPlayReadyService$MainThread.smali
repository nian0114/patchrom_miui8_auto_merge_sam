.class Lcom/android/server/DcmNextiPlayReadyService$MainThread;
.super Ljava/lang/Thread;
.source "DcmNextiPlayReadyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DcmNextiPlayReadyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MainThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DcmNextiPlayReadyService;

.field private urlToRead:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/DcmNextiPlayReadyService;Ljava/lang/String;)V
    .locals 0
    .param p2, "urlToRead"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/DcmNextiPlayReadyService$MainThread;->this$0:Lcom/android/server/DcmNextiPlayReadyService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/android/server/DcmNextiPlayReadyService$MainThread;->urlToRead:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 30

    .prologue
    invoke-super/range {p0 .. p0}, Ljava/lang/Thread;->run()V

    const/16 v24, 0x0

    .local v24, "urlConnection":Ljavax/net/ssl/HttpsURLConnection;
    :try_start_0
    new-instance v23, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DcmNextiPlayReadyService$MainThread;->urlToRead:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .local v23, "url":Ljava/net/URL;
    invoke-virtual/range {v23 .. v23}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v26

    move-object/from16 v0, v26

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v24, v0

    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v22

    .local v22, "trustStore":Ljava/security/KeyStore;
    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    new-instance v19, Lcom/android/server/DcmNextiPlayReadyService$SFSSLSocketFactory;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DcmNextiPlayReadyService$MainThread;->this$0:Lcom/android/server/DcmNextiPlayReadyService;

    move-object/from16 v26, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/DcmNextiPlayReadyService$SFSSLSocketFactory;-><init>(Lcom/android/server/DcmNextiPlayReadyService;Ljava/security/KeyStore;)V

    .local v19, "sf":Ljavax/net/ssl/SSLSocketFactory;
    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    invoke-virtual/range {v24 .. v24}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v13

    .local v13, "responseHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .local v12, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v26, "Date"

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .local v18, "s":Ljava/lang/StringBuilder;
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .local v10, "headerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .local v25, "value":Ljava/lang/String;
    const-string v26, "DcmNextiPlayReadyService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, " Date List value "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v10    # "headerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v13    # "responseHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v18    # "s":Ljava/lang/StringBuilder;
    .end local v19    # "sf":Ljavax/net/ssl/SSLSocketFactory;
    .end local v22    # "trustStore":Ljava/security/KeyStore;
    .end local v23    # "url":Ljava/net/URL;
    .end local v25    # "value":Ljava/lang/String;
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/lang/SecurityException;
    :try_start_1
    const-string v26, "DcmNextiPlayReadyService"

    const-string v27, "Catch SecurityException Exceptions"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v26, "DcmNextiPlayReadyService"

    invoke-virtual {v5}, Ljava/lang/SecurityException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/SecurityException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v26, "DcmNextiPlayReadyService"

    const-string v27, "resetting flag for later threads"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v26, 0x1

    sput v26, Lcom/android/server/DcmNextiPlayReadyService;->THREAD_EXECUTING:I

    if-eqz v24, :cond_1

    invoke-virtual/range {v24 .. v24}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .end local v5    # "e":Ljava/lang/SecurityException;
    :cond_1
    :goto_1
    return-void

    .restart local v10    # "headerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v12    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v13    # "responseHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v18    # "s":Ljava/lang/StringBuilder;
    .restart local v19    # "sf":Ljavax/net/ssl/SSLSocketFactory;
    .restart local v22    # "trustStore":Ljava/security/KeyStore;
    .restart local v23    # "url":Ljava/net/URL;
    :cond_2
    :try_start_2
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .local v6, "epochTime":Ljava/util/Date;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v26, "E, dd MMM yyyy HH:mm:ss ZZZ"

    move-object/from16 v0, v26

    invoke-direct {v4, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .local v4, "dateFormat":Ljava/text/DateFormat;
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    :goto_2
    const-wide/16 v8, 0x0

    .local v8, "epoch_time_long":J
    :try_start_4
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const-string v26, "DcmNextiPlayReadyService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "epoch time: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v26, 0x0

    cmp-long v26, v8, v26

    if-eqz v26, :cond_4

    const-wide/16 v26, 0x3e8

    div-long v14, v8, v26

    .local v14, "networktime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v26

    const-wide/16 v28, 0x3e8

    div-long v16, v26, v28

    .local v16, "recvElapsedTime":J
    const-string v26, "DcmNextiPlayReadyService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "networktime "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "recvElapsedTime"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DcmNextiPlayReadyService$MainThread;->this$0:Lcom/android/server/DcmNextiPlayReadyService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1, v2}, Lcom/android/server/DcmNextiPlayReadyService;->onNetworkStateChanged(JJ)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v4    # "dateFormat":Ljava/text/DateFormat;
    .end local v6    # "epochTime":Ljava/util/Date;
    .end local v8    # "epoch_time_long":J
    .end local v10    # "headerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v14    # "networktime":J
    .end local v16    # "recvElapsedTime":J
    .end local v18    # "s":Ljava/lang/StringBuilder;
    :cond_3
    :goto_3
    const-string v26, "DcmNextiPlayReadyService"

    const-string v27, "resetting flag for later threads"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v26, 0x1

    sput v26, Lcom/android/server/DcmNextiPlayReadyService;->THREAD_EXECUTING:I

    if-eqz v24, :cond_1

    invoke-virtual/range {v24 .. v24}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_1

    .restart local v4    # "dateFormat":Ljava/text/DateFormat;
    .restart local v6    # "epochTime":Ljava/util/Date;
    .restart local v10    # "headerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v18    # "s":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v7

    .local v7, "ex":Ljava/text/ParseException;
    :try_start_5
    const-string v26, "DcmNextiPlayReadyService"

    const-string v27, "epoch time parsing error"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .end local v4    # "dateFormat":Ljava/text/DateFormat;
    .end local v6    # "epochTime":Ljava/util/Date;
    .end local v7    # "ex":Ljava/text/ParseException;
    .end local v10    # "headerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v13    # "responseHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v18    # "s":Ljava/lang/StringBuilder;
    .end local v19    # "sf":Ljavax/net/ssl/SSLSocketFactory;
    .end local v22    # "trustStore":Ljava/security/KeyStore;
    .end local v23    # "url":Ljava/net/URL;
    :catch_2
    move-exception v5

    .local v5, "e":Ljava/lang/IllegalArgumentException;
    :try_start_6
    const-string v26, "DcmNextiPlayReadyService"

    const-string v27, "Catch IllegalArgumentException Exceptions"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v26, "DcmNextiPlayReadyService"

    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string v26, "DcmNextiPlayReadyService"

    const-string v27, "resetting flag for later threads"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v26, 0x1

    sput v26, Lcom/android/server/DcmNextiPlayReadyService;->THREAD_EXECUTING:I

    if-eqz v24, :cond_1

    invoke-virtual/range {v24 .. v24}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_1

    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v4    # "dateFormat":Ljava/text/DateFormat;
    .restart local v6    # "epochTime":Ljava/util/Date;
    .restart local v8    # "epoch_time_long":J
    .restart local v10    # "headerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v12    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v13    # "responseHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v18    # "s":Ljava/lang/StringBuilder;
    .restart local v19    # "sf":Ljavax/net/ssl/SSLSocketFactory;
    .restart local v22    # "trustStore":Ljava/security/KeyStore;
    .restart local v23    # "url":Ljava/net/URL;
    :cond_4
    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    const-wide/16 v28, 0x3e8

    div-long v20, v26, v28

    .local v20, "systime":J
    const-string v26, "DcmNextiPlayReadyService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Network state was changed. NTP time could not checked. noting to do. system time is "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .end local v4    # "dateFormat":Ljava/text/DateFormat;
    .end local v6    # "epochTime":Ljava/util/Date;
    .end local v8    # "epoch_time_long":J
    .end local v10    # "headerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v13    # "responseHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v18    # "s":Ljava/lang/StringBuilder;
    .end local v19    # "sf":Ljavax/net/ssl/SSLSocketFactory;
    .end local v20    # "systime":J
    .end local v22    # "trustStore":Ljava/security/KeyStore;
    .end local v23    # "url":Ljava/net/URL;
    :catch_3
    move-exception v5

    .local v5, "e":Ljava/io/IOException;
    :try_start_8
    const-string v26, "DcmNextiPlayReadyService"

    const-string v27, "Catch IOException Exceptions"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v26, "DcmNextiPlayReadyService"

    invoke-virtual {v5}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const-string v26, "DcmNextiPlayReadyService"

    const-string v27, "resetting flag for later threads"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v26, 0x1

    sput v26, Lcom/android/server/DcmNextiPlayReadyService;->THREAD_EXECUTING:I

    if-eqz v24, :cond_1

    invoke-virtual/range {v24 .. v24}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_1

    .end local v5    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    :try_start_9
    const-string v26, "DcmNextiPlayReadyService"

    const-string v27, "Catch other Exceptions"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v26, "DcmNextiPlayReadyService"

    invoke-virtual {v5}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const-string v26, "DcmNextiPlayReadyService"

    const-string v27, "resetting flag for later threads"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v26, 0x1

    sput v26, Lcom/android/server/DcmNextiPlayReadyService;->THREAD_EXECUTING:I

    if-eqz v24, :cond_1

    invoke-virtual/range {v24 .. v24}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_1

    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v26

    const-string v27, "DcmNextiPlayReadyService"

    const-string v28, "resetting flag for later threads"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v27, 0x1

    sput v27, Lcom/android/server/DcmNextiPlayReadyService;->THREAD_EXECUTING:I

    if-eqz v24, :cond_5

    invoke-virtual/range {v24 .. v24}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_5
    throw v26
.end method
