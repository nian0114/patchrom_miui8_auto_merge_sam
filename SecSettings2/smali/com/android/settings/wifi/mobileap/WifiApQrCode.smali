.class public Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;
.super Landroid/app/Fragment;
.source "WifiApQrCode.java"


# instance fields
.field private enabled:Z

.field private imageTime:J

.field private mActionView:Landroid/view/View;

.field private mActivity:Landroid/app/Activity;

.field private mBinder:Lcom/samsung/android/app/qragent/service/IQRService;

.field private mBmpUri:Landroid/net/Uri;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mFilter:Landroid/content/IntentFilter;

.field private mQrBmp:Landroid/graphics/Bitmap;

.field private mQrCode:Ljava/lang/String;

.field private final mQrCodePath:Ljava/lang/String;

.field private mQrGenerate:Landroid/widget/Button;

.field private mQrImage:Landroid/widget/ImageView;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mShareButton:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 58
    const-string v0, "/sdcard/Pictures/WifiApQrCode.bmp"

    iput-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mQrCodePath:Ljava/lang/String;

    .line 168
    new-instance v0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode$4;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;Lcom/samsung/android/app/qragent/service/IQRService;)Lcom/samsung/android/app/qragent/service/IQRService;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;
    .param p1, "x1"    # Lcom/samsung/android/app/qragent/service/IQRService;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mBinder:Lcom/samsung/android/app/qragent/service/IQRService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mQrBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mQrBmp:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mQrCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;
    .param p1, "x1"    # J

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->imageTime:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->enabled:Z

    return v0
.end method

.method private updateOptionsMenuIcon(Z)V
    .locals 5
    .param p1, "showIcon"    # Z

    .prologue
    const/4 v4, -0x2

    .line 229
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mActionView:Landroid/view/View;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const v3, 0x800015

    invoke-direct {v2, v4, v4, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 233
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->setHasOptionsMenu(Z)V

    .line 234
    return-void
.end method


# virtual methods
.method public clearQrCode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 203
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mBmpUri:Landroid/net/Uri;

    if-eqz v3, :cond_0

    .line 204
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 205
    .local v2, "values":Landroid/content/ContentValues;
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 206
    .local v1, "resolver":Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mBmpUri:Landroid/net/Uri;

    invoke-virtual {v1, v3, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 207
    iput-object v4, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mBmpUri:Landroid/net/Uri;

    .line 209
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v3, "/sdcard/Pictures/WifiApQrCode.bmp"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    .local v0, "imageFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 211
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 213
    :cond_1
    return-void
.end method

.method public generateQrCode(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 260
    const/4 v0, 0x0

    .line 261
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mBinder:Lcom/samsung/android/app/qragent/service/IQRService;

    if-eqz v2, :cond_0

    .line 263
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mBinder:Lcom/samsung/android/app/qragent/service/IQRService;

    invoke-interface {v2, p1}, Lcom/samsung/android/app/qragent/service/IQRService;->getQRCodeImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 268
    :cond_0
    :goto_0
    return-object v0

    .line 264
    :catch_0
    move-exception v1

    .line 265
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getQrCodeUri()Landroid/net/Uri;
    .locals 16

    .prologue
    .line 284
    const/4 v9, 0x0

    .line 285
    .local v9, "uri":Landroid/net/Uri;
    const/4 v3, 0x0

    .line 286
    .local v3, "imageFile":Ljava/io/File;
    const/4 v6, 0x0

    .line 287
    .local v6, "out":Ljava/io/OutputStream;
    const/4 v5, 0x0

    .line 289
    .local v5, "imagePath":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v11, "/sdcard/Pictures/WifiApQrCode.bmp"

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    .end local v3    # "imageFile":Ljava/io/File;
    .local v4, "imageFile":Ljava/io/File;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 291
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 292
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 293
    :cond_0
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 294
    .end local v6    # "out":Ljava/io/OutputStream;
    .local v7, "out":Ljava/io/OutputStream;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mQrBmp:Landroid/graphics/Bitmap;

    if-eqz v11, :cond_1

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mQrBmp:Landroid/graphics/Bitmap;

    sget-object v13, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v14, 0x64

    invoke-virtual {v12, v13, v14, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v12

    if-ne v11, v12, :cond_1

    .line 295
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 296
    move-object v0, v7

    check-cast v0, Ljava/io/FileOutputStream;

    move-object v11, v0

    invoke-virtual {v11}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/FileDescriptor;->sync()V

    .line 298
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 299
    .local v10, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 300
    .local v8, "resolver":Landroid/content/ContentResolver;
    const-string v11, "_data"

    invoke-virtual {v10, v11, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v11, "title"

    const-string v12, "WifiApQrCode"

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v11, "_display_name"

    const-string v12, "WifiApQrCode"

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v11, "datetaken"

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->imageTime:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 304
    const-string v11, "date_added"

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->imageTime:J

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 305
    const-string v11, "date_modified"

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->imageTime:J

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 306
    const-string v11, "mime_type"

    const-string v12, "image/png"

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v11, "width"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mQrBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 308
    const-string v11, "height"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mQrBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 309
    const-string v11, "_size"

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 310
    sget-object v11, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v11, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v9

    .line 315
    .end local v8    # "resolver":Landroid/content/ContentResolver;
    .end local v10    # "values":Landroid/content/ContentValues;
    :cond_1
    if-eqz v7, :cond_4

    .line 317
    :try_start_3
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    move-object v3, v4

    .line 323
    .end local v4    # "imageFile":Ljava/io/File;
    .restart local v3    # "imageFile":Ljava/io/File;
    :cond_2
    :goto_0
    return-object v9

    .line 318
    .end local v3    # "imageFile":Ljava/io/File;
    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v4    # "imageFile":Ljava/io/File;
    .restart local v7    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v2

    .line 319
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    move-object v3, v4

    .line 320
    .end local v4    # "imageFile":Ljava/io/File;
    .restart local v3    # "imageFile":Ljava/io/File;
    goto :goto_0

    .line 312
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 313
    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 315
    if-eqz v6, :cond_2

    .line 317
    :try_start_5
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 318
    :catch_2
    move-exception v2

    .line 319
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 315
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    :goto_2
    if-eqz v6, :cond_3

    .line 317
    :try_start_6
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 320
    :cond_3
    :goto_3
    throw v11

    .line 318
    :catch_3
    move-exception v2

    .line 319
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 315
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "imageFile":Ljava/io/File;
    .restart local v4    # "imageFile":Ljava/io/File;
    :catchall_1
    move-exception v11

    move-object v3, v4

    .end local v4    # "imageFile":Ljava/io/File;
    .restart local v3    # "imageFile":Ljava/io/File;
    goto :goto_2

    .end local v3    # "imageFile":Ljava/io/File;
    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v4    # "imageFile":Ljava/io/File;
    .restart local v7    # "out":Ljava/io/OutputStream;
    :catchall_2
    move-exception v11

    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    move-object v3, v4

    .end local v4    # "imageFile":Ljava/io/File;
    .restart local v3    # "imageFile":Ljava/io/File;
    goto :goto_2

    .line 312
    .end local v3    # "imageFile":Ljava/io/File;
    .restart local v4    # "imageFile":Ljava/io/File;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4    # "imageFile":Ljava/io/File;
    .restart local v3    # "imageFile":Ljava/io/File;
    goto :goto_1

    .end local v3    # "imageFile":Ljava/io/File;
    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v4    # "imageFile":Ljava/io/File;
    .restart local v7    # "out":Ljava/io/OutputStream;
    :catch_5
    move-exception v2

    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    move-object v3, v4

    .end local v4    # "imageFile":Ljava/io/File;
    .restart local v3    # "imageFile":Ljava/io/File;
    goto :goto_1

    .end local v3    # "imageFile":Ljava/io/File;
    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v4    # "imageFile":Ljava/io/File;
    .restart local v7    # "out":Ljava/io/OutputStream;
    :cond_4
    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    move-object v3, v4

    .end local v4    # "imageFile":Ljava/io/File;
    .restart local v3    # "imageFile":Ljava/io/File;
    goto :goto_0
.end method

.method public getQrString()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 237
    const-string v4, "T:NONE;"

    .line 238
    .local v4, "type":Ljava/lang/String;
    const/4 v1, 0x0

    .line 239
    .local v1, "password":Ljava/lang/String;
    const-string v0, "H:false;"

    .line 240
    .local v0, "hidden":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    .line 241
    .local v5, "wc":Landroid/net/wifi/WifiConfiguration;
    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-ne v6, v8, :cond_2

    .line 242
    const-string v4, "T:NONE;"

    .line 252
    :cond_0
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "S:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 253
    .local v3, "ssid":Ljava/lang/String;
    iget-boolean v6, v5, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v6, :cond_1

    .line 254
    const-string v0, "H:true;"

    .line 255
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WIFI:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, "result":Ljava/lang/String;
    return-object v2

    .line 243
    .end local v2    # "result":Ljava/lang/String;
    .end local v3    # "ssid":Ljava/lang/String;
    :cond_2
    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eq v6, v8, :cond_3

    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-ne v6, v8, :cond_4

    .line 244
    :cond_3
    const-string v4, "T:WPA;"

    .line 245
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "P:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 246
    :cond_4
    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v6, v6, v9

    if-eqz v6, :cond_5

    .line 247
    const-string v4, "T:WEP;"

    .line 248
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "P:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v7, v7, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 249
    :cond_5
    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-ne v6, v8, :cond_0

    .line 250
    const-string v4, "T:WAPI-PSK;"

    goto/16 :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x10

    .line 120
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 121
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 123
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mActionView:Landroid/view/View;

    const v3, 0x7f0d05ab

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mShareButton:Landroid/widget/TextView;

    .line 124
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mShareButton:Landroid/widget/TextView;

    new-instance v3, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode$2;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode$2;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 132
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mView:Landroid/view/View;

    const v3, 0x7f0d05a9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mQrImage:Landroid/widget/ImageView;

    .line 133
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mView:Landroid/view/View;

    const v3, 0x7f0d05aa

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mQrGenerate:Landroid/widget/Button;

    .line 134
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mQrGenerate:Landroid/widget/Button;

    new-instance v3, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode$3;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode$3;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->getQrString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mQrCode:Ljava/lang/String;

    .line 144
    iget-boolean v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->enabled:Z

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->updateView(Z)V

    .line 146
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->updateOptionsMenuIcon(Z)V

    .line 149
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 150
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x4d

    iput v2, v1, Landroid/os/Message;->what:I

    .line 151
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 152
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "feature"

    const-string v3, "MHQR"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 154
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 156
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mActivity:Landroid/app/Activity;

    .line 84
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 85
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 86
    const-string v1, "QR"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->enabled:Z

    .line 88
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mFilter:Landroid/content/IntentFilter;

    .line 89
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    new-instance v1, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode$1;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;)V

    iput-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 109
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 113
    const v0, 0x7f04024e

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mActionView:Landroid/view/View;

    .line 114
    const v0, 0x7f04024d

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mView:Landroid/view/View;

    .line 115
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->clearQrCode()V

    .line 198
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 199
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 200
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 192
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 193
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 160
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 161
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->clearQrCode()V

    .line 162
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 163
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 164
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.app.qragent"

    const-string v2, "com.samsung.android.app.qragent.service.QRService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 166
    return-void
.end method

.method public startShareQrCode()V
    .locals 3

    .prologue
    .line 273
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mBmpUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->getQrCodeUri()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mBmpUri:Landroid/net/Uri;

    .line 275
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 276
    .local v0, "shareIntent":Landroid/content/Intent;
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    const-string v1, "image/png"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const-string v1, "android.intent.extra.STREAM"

    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mBmpUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 279
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 280
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e04a3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->startActivity(Landroid/content/Intent;)V

    .line 281
    return-void
.end method

.method public updateView(Z)V
    .locals 7
    .param p1, "enable"    # Z

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    .line 216
    if-eqz p1, :cond_1

    .line 217
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mQrBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mQrImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mQrImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mQrBmp:Landroid/graphics/Bitmap;

    const/16 v2, 0x400

    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mQrBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/lit16 v3, v3, 0x400

    iget-object v4, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mQrBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/2addr v3, v4

    invoke-static {v1, v2, v3, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 220
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mShareButton:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mQrGenerate:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 226
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApQrCode;->mQrImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
