.class public Lcom/sec/android/app/camera/plugin/PlugInShootingModesDBHelper;
.super Ljava/lang/Object;
.source "PlugInShootingModesDBHelper.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.provider.shootingmodeprovider"

.field private static final FRONT_ORDER:Ljava/lang/String; = "sm_front_order"

.field private static final ORDER:Ljava/lang/String; = "sm_order"

.field private static final SHOOTING_MODES_FRONT_ORDER_BY_ID_URI:Landroid/net/Uri;

.field private static final SHOOTING_MODES_ORDER_BY_ID_URI:Landroid/net/Uri;

.field private static final SHOOTING_MODES_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "PlugInShootingModesDBHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const-string v0, "content://com.samsung.android.provider.shootingmodeprovider/shooting_modes"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesDBHelper;->SHOOTING_MODES_URI:Landroid/net/Uri;

    .line 35
    sget-object v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesDBHelper;->SHOOTING_MODES_URI:Landroid/net/Uri;

    const-string v1, "order/id"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesDBHelper;->SHOOTING_MODES_ORDER_BY_ID_URI:Landroid/net/Uri;

    .line 36
    sget-object v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesDBHelper;->SHOOTING_MODES_URI:Landroid/net/Uri;

    const-string v1, "front_order/id"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesDBHelper;->SHOOTING_MODES_FRONT_ORDER_BY_ID_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateShootingModeFrontOrder(Landroid/content/Context;Ljava/util/ArrayList;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "modeIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x1

    .line 51
    .local v5, "result":Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 52
    :cond_0
    const/4 v8, 0x0

    .line 76
    :goto_0
    return v8

    .line 55
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v4, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v6, 0x0

    .line 58
    .local v6, "startOrder":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 59
    .local v2, "modeId":Ljava/lang/Integer;
    sget-object v8, Lcom/sec/android/app/camera/plugin/PlugInShootingModesDBHelper;->SHOOTING_MODES_FRONT_ORDER_BY_ID_URI:Landroid/net/Uri;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 61
    .local v3, "operationBuilder":Landroid/content/ContentProviderOperation$Builder;
    const-string v8, "sm_front_order"

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "startOrder":I
    .local v7, "startOrder":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 62
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v6, v7

    .line 63
    .end local v7    # "startOrder":I
    .restart local v6    # "startOrder":I
    goto :goto_1

    .line 65
    .end local v2    # "modeId":Ljava/lang/Integer;
    .end local v3    # "operationBuilder":Landroid/content/ContentProviderOperation$Builder;
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 67
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "com.samsung.android.provider.shootingmodeprovider"

    invoke-virtual {v8, v9, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    :goto_2
    move v8, v5

    .line 76
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v5, 0x0

    .line 70
    const-string v8, "PlugInShootingModesDBHelper"

    const-string v9, "Failed to save order"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 71
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 72
    .local v0, "e":Landroid/content/OperationApplicationException;
    const/4 v5, 0x0

    .line 73
    const-string v8, "PlugInShootingModesDBHelper"

    const-string v9, "Failed to save order"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static updateShootingModeOrder(Landroid/content/Context;Ljava/util/ArrayList;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "modeIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x1

    .line 89
    .local v5, "result":Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 90
    :cond_0
    const/4 v8, 0x0

    .line 113
    :goto_0
    return v8

    .line 93
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v4, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v6, 0x0

    .line 96
    .local v6, "startOrder":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 97
    .local v2, "modeId":Ljava/lang/Integer;
    sget-object v8, Lcom/sec/android/app/camera/plugin/PlugInShootingModesDBHelper;->SHOOTING_MODES_ORDER_BY_ID_URI:Landroid/net/Uri;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 98
    .local v3, "operationBuilder":Landroid/content/ContentProviderOperation$Builder;
    const-string v8, "sm_order"

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "startOrder":I
    .local v7, "startOrder":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 99
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v6, v7

    .line 100
    .end local v7    # "startOrder":I
    .restart local v6    # "startOrder":I
    goto :goto_1

    .line 102
    .end local v2    # "modeId":Ljava/lang/Integer;
    .end local v3    # "operationBuilder":Landroid/content/ContentProviderOperation$Builder;
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 104
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "com.samsung.android.provider.shootingmodeprovider"

    invoke-virtual {v8, v9, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    :goto_2
    move v8, v5

    .line 113
    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v5, 0x0

    .line 107
    const-string v8, "PlugInShootingModesDBHelper"

    const-string v9, "Failed to save order"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 108
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 109
    .local v0, "e":Landroid/content/OperationApplicationException;
    const/4 v5, 0x0

    .line 110
    const-string v8, "PlugInShootingModesDBHelper"

    const-string v9, "Failed to save order"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method
