.class Lcom/android/settings_ex/search/Index$SaveSearchQueryTask;
.super Landroid/os/AsyncTask;
.source "Index.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/search/Index;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveSearchQueryTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/search/Index;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/search/Index;)V
    .locals 0

    .prologue
    .line 1890
    iput-object p1, p0, Lcom/android/settings_ex/search/Index$SaveSearchQueryTask;->this$0:Lcom/android/settings_ex/search/Index;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/search/Index;Lcom/android/settings_ex/search/Index$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/search/Index;
    .param p2, "x1"    # Lcom/android/settings_ex/search/Index$1;

    .prologue
    .line 1890
    invoke-direct {p0, p1}, Lcom/android/settings_ex/search/Index$SaveSearchQueryTask;-><init>(Lcom/android/settings_ex/search/Index;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Long;
    .locals 15
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 1894
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    .line 1896
    .local v8, "now":J
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1897
    .local v5, "values":Landroid/content/ContentValues;
    const-string v10, "query"

    const/4 v11, 0x0

    aget-object v11, p1, v11

    invoke-virtual {v5, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1898
    const-string v10, "timestamp"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1900
    iget-object v10, p0, Lcom/android/settings_ex/search/Index$SaveSearchQueryTask;->this$0:Lcom/android/settings_ex/search/Index;

    # invokes: Lcom/android/settings_ex/search/Index;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v10}, Lcom/android/settings_ex/search/Index;->access$400(Lcom/android/settings_ex/search/Index;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1901
    .local v1, "database":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v1, :cond_0

    .line 1902
    const-string v10, "Index"

    const-string v11, "Cannot save Search queries as I cannot get a writable database"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    const-wide/16 v10, -0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 1928
    :goto_0
    return-object v10

    .line 1906
    :cond_0
    const-wide/16 v6, -0x1

    .line 1909
    .local v6, "lastInsertedRowId":J
    :try_start_0
    const-string v10, "saved_queries"

    const-string v11, "query = ?"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    aget-object v14, p1, v14

    aput-object v14, v12, v13

    invoke-virtual {v1, v10, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1914
    const-string v10, "saved_queries"

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    .line 1918
    # getter for: Lcom/android/settings_ex/search/Index;->MAX_SAVED_SEARCH_QUERY:J
    invoke-static {}, Lcom/android/settings_ex/search/Index;->access$700()J

    move-result-wide v10

    sub-long v2, v6, v10

    .line 1919
    .local v2, "delta":J
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-lez v10, :cond_1

    .line 1920
    const-string v10, "saved_queries"

    const-string v11, "rowId <= ?"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v1, v10, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1922
    .local v0, "count":I
    const-string v10, "Index"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Deleted \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' saved Search query(ies)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1928
    .end local v0    # "count":I
    .end local v2    # "delta":J
    :cond_1
    :goto_1
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    goto :goto_0

    .line 1924
    :catch_0
    move-exception v4

    .line 1925
    .local v4, "e":Ljava/lang/Exception;
    const-string v10, "Index"

    const-string v11, "Cannot update saved Search queries"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1890
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/search/Index$SaveSearchQueryTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
