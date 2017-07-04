.class public Lcom/samsung/android/contextaware/MultiModeContextList;
.super Ljava/lang/Object;
.source "MultiModeContextList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/MultiModeContextList$1;,
        Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;
    }
.end annotation


# static fields
.field private static volatile instance:Lcom/samsung/android/contextaware/MultiModeContextList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/MultiModeContextList;
    .locals 2

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/MultiModeContextList;->instance:Lcom/samsung/android/contextaware/MultiModeContextList;

    if-nez v0, :cond_1

    const-class v1, Lcom/samsung/android/contextaware/MultiModeContextList;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/contextaware/MultiModeContextList;->instance:Lcom/samsung/android/contextaware/MultiModeContextList;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/contextaware/MultiModeContextList;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/MultiModeContextList;-><init>()V

    sput-object v0, Lcom/samsung/android/contextaware/MultiModeContextList;->instance:Lcom/samsung/android/contextaware/MultiModeContextList;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/samsung/android/contextaware/MultiModeContextList;->instance:Lcom/samsung/android/contextaware/MultiModeContextList;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final getServiceCode(I)Ljava/lang/String;
    .locals 6
    .param p1, "serviceOrdinal"    # I

    .prologue
    const-string v1, ""

    .local v1, "code":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;->values()[Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;

    move-result-object v0

    .local v0, "arr$":[Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .local v2, "i":Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;
    invoke-virtual {v2}, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;->ordinal()I

    move-result v5

    if-ne v5, p1, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;->getCode()Ljava/lang/String;

    move-result-object v1

    .end local v2    # "i":Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_CODE_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getCode()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :cond_1
    return-object v1

    .restart local v2    # "i":Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public final getServiceOrdinal(Ljava/lang/String;)I
    .locals 6
    .param p1, "serviceCode"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .local v4, "ordinal":I
    invoke-static {}, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;->values()[Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;

    move-result-object v0

    .local v0, "arr$":[Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .local v1, "i":Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;->ordinal()I

    move-result v4

    .end local v1    # "i":Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;
    :cond_0
    return v4

    .restart local v1    # "i":Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public final isIncluded(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .local v1, "included":Z
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;->valueOf(Ljava/lang/String;)Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isMultiModeType(Ljava/lang/String;)Z
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .local v3, "inMulti":Z
    invoke-static {}, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;->values()[Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;

    move-result-object v0

    .local v0, "arr$":[Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v0, v2

    .local v1, "i":Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;
    # getter for: Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;->code:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;->access$100(Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x1

    .end local v1    # "i":Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;
    :cond_0
    return v3

    .restart local v1    # "i":Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
