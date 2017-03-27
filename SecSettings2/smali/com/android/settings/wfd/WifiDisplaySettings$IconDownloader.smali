.class public Lcom/android/settings_ex/wfd/WifiDisplaySettings$IconDownloader;
.super Landroid/os/AsyncTask;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IconDownloader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/os/Handler;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field mDeviceId:Ljava/lang/String;

.field mRetBitmap:Landroid/graphics/Bitmap;

.field private mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "id"    # Ljava/lang/String;

    .prologue
    .line 2282
    iput-object p1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$IconDownloader;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2283
    iput-object p2, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$IconDownloader;->mUri:Landroid/net/Uri;

    .line 2284
    iput-object p3, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$IconDownloader;->mDeviceId:Ljava/lang/String;

    .line 2285
    return-void
.end method


# virtual methods
.method protected varargs declared-synchronized doInBackground([Landroid/os/Handler;)Ljava/lang/Object;
    .locals 10
    .param p1, "handler"    # [Landroid/os/Handler;

    .prologue
    const/4 v9, 0x0

    .line 2289
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$IconDownloader;->mUri:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_0

    .line 2323
    :goto_0
    monitor-exit p0

    return-object v9

    .line 2292
    :cond_0
    const/4 v2, 0x0

    .line 2294
    .local v2, "httpUrlConnection":Ljava/net/HttpURLConnection;
    :try_start_1
    new-instance v4, Ljava/net/URL;

    iget-object v6, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$IconDownloader;->mUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2295
    .local v4, "mUrl":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 2296
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 2297
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 2299
    .local v5, "statusCode":I
    const/16 v6, 0xc8

    if-eq v5, v6, :cond_2

    .line 2300
    const-string v6, "WifiDisplaySettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " while retrieving bitmap"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2318
    .end local v4    # "mUrl":Ljava/net/URL;
    .end local v5    # "statusCode":I
    :catch_0
    move-exception v1

    .line 2319
    .local v1, "e":Ljava/io/IOException;
    if-eqz v2, :cond_1

    .line 2320
    :try_start_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 2321
    :cond_1
    const-string v6, "WifiDisplaySettings"

    const-string v7, "Error while retrieving bitmap"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2289
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "httpUrlConnection":Ljava/net/HttpURLConnection;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 2304
    .restart local v2    # "httpUrlConnection":Ljava/net/HttpURLConnection;
    .restart local v4    # "mUrl":Ljava/net/URL;
    .restart local v5    # "statusCode":I
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 2305
    .local v3, "inputStream":Ljava/io/InputStream;
    if-nez v3, :cond_3

    .line 2306
    const-string v6, "WifiDisplaySettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " while retrieving entity"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2311
    :cond_3
    :try_start_4
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$IconDownloader;->mRetBitmap:Landroid/graphics/Bitmap;

    .line 2312
    sget-object v6, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mIconCache:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$IconDownloader;->mUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$IconDownloader;->mRetBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2314
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 2316
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 2314
    :catchall_1
    move-exception v6

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 2316
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v6
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 2278
    check-cast p1, [Landroid/os/Handler;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$IconDownloader;->doInBackground([Landroid/os/Handler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized onPostExecute(Ljava/lang/Object;)V
    .locals 9
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 2331
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2332
    iget-object v6, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$IconDownloader;->mUri:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_1

    .line 2352
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 2335
    :cond_1
    :try_start_1
    const-string v6, "WifiDisplaySettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPostExecute : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$IconDownloader;->mUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2336
    iget-object v6, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$IconDownloader;->mRetBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_0

    .line 2337
    iget-object v6, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$IconDownloader;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    invoke-virtual {v6}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 2338
    .local v5, "preferenceScreen":Landroid/preference/PreferenceScreen;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 2339
    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    .line 2340
    .local v4, "pref":Landroid/preference/Preference;
    instance-of v6, v4, Lcom/android/settings_ex/wfd/WifiDisplaySettings$DLNAPreference;

    if-eqz v6, :cond_2

    .line 2341
    move-object v0, v4

    check-cast v0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$DLNAPreference;

    move-object v1, v0

    .line 2342
    .local v1, "dlnaPref":Lcom/android/settings_ex/wfd/WifiDisplaySettings$DLNAPreference;
    iget-object v6, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$IconDownloader;->mDeviceId:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$IconDownloader;->mDeviceId:Ljava/lang/String;

    # getter for: Lcom/android/settings_ex/wfd/WifiDisplaySettings$DLNAPreference;->mDLNA:Lcom/android/settings_ex/wfd/WifiDisplaySettings$DeviceWrapper;
    invoke-static {v1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$DLNAPreference;->access$3400(Lcom/android/settings_ex/wfd/WifiDisplaySettings$DLNAPreference;)Lcom/android/settings_ex/wfd/WifiDisplaySettings$DeviceWrapper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$DeviceWrapper;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    # getter for: Lcom/android/settings_ex/wfd/WifiDisplaySettings$DLNAPreference;->mDLNA:Lcom/android/settings_ex/wfd/WifiDisplaySettings$DeviceWrapper;
    invoke-static {v1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$DLNAPreference;->access$3400(Lcom/android/settings_ex/wfd/WifiDisplaySettings$DLNAPreference;)Lcom/android/settings_ex/wfd/WifiDisplaySettings$DeviceWrapper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$DeviceWrapper;->getId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 2343
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$IconDownloader;->mRetBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 2344
    .local v2, "drawable_icon":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    .line 2345
    invoke-virtual {v1, v2}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$DLNAPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2331
    .end local v1    # "dlnaPref":Lcom/android/settings_ex/wfd/WifiDisplaySettings$DLNAPreference;
    .end local v2    # "drawable_icon":Landroid/graphics/drawable/Drawable;
    .end local v3    # "i":I
    .end local v4    # "pref":Landroid/preference/Preference;
    .end local v5    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 2338
    .restart local v3    # "i":I
    .restart local v4    # "pref":Landroid/preference/Preference;
    .restart local v5    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .param p1, "index"    # [Ljava/lang/Integer;

    .prologue
    .line 2327
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 2328
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 2278
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$IconDownloader;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
