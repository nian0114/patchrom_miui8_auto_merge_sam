.class public Lcom/samsung/android/toolbox/TwToolBoxManager;
.super Ljava/lang/Object;
.source "TwToolBoxManager.java"


# static fields
.field private static final EMPTY:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "toolbox"


# instance fields
.field private final mService:Lcom/samsung/android/toolbox/ITwToolBoxService;

.field private final mToken:Landroid/os/Binder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/toolbox/TwToolBoxManager;->EMPTY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxManager;->mToken:Landroid/os/Binder;

    const-string v0, "tw_toolbox"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/toolbox/ITwToolBoxService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/toolbox/ITwToolBoxService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxManager;->mService:Lcom/samsung/android/toolbox/ITwToolBoxService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxManager;-><init>()V

    return-void
.end method


# virtual methods
.method public getToolList()[Ljava/lang/String;
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxManager;->mService:Lcom/samsung/android/toolbox/ITwToolBoxService;

    if-nez v1, :cond_0

    const-string v1, "toolbox"

    const-string v2, "Failed to getToolList(); no TwToolBoxService."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/toolbox/TwToolBoxManager;->EMPTY:[Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxManager;->mService:Lcom/samsung/android/toolbox/ITwToolBoxService;

    invoke-interface {v1}, Lcom/samsung/android/toolbox/ITwToolBoxService;->getToolList()Ljava/lang/String;

    move-result-object v0

    .local v0, "toolList":Ljava/lang/String;
    const-string v1, "toolbox"

    const-string v2, "TwToolBoxManager getToolList()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    sget-object v1, Lcom/samsung/android/toolbox/TwToolBoxManager;->EMPTY:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_2

    const-string v1, "0;"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "toolbox"

    const-string v2, "TwToolBoxManager getToolList() substring()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .end local v0    # "toolList":Ljava/lang/String;
    :catch_0
    move-exception v1

    :goto_1
    sget-object v1, Lcom/samsung/android/toolbox/TwToolBoxManager;->EMPTY:[Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public isContain(II)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxManager;->mService:Lcom/samsung/android/toolbox/ITwToolBoxService;

    if-nez v1, :cond_0

    const-string v1, "toolbox"

    const-string v2, "Failed to isContain(); no TwToolBoxService."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxManager;->mService:Lcom/samsung/android/toolbox/ITwToolBoxService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/toolbox/ITwToolBoxService;->isContain(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public registerCallback(Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback;)Z
    .locals 3
    .param p1, "callback"    # Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback;

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxManager;->mService:Lcom/samsung/android/toolbox/ITwToolBoxService;

    if-nez v1, :cond_0

    const-string v1, "toolbox"

    const-string v2, "Failed to registerCallback(); no TwToolBoxService."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxManager;->mService:Lcom/samsung/android/toolbox/ITwToolBoxService;

    invoke-interface {v1, p1}, Lcom/samsung/android/toolbox/ITwToolBoxService;->registerCallback(Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public sendMessage(Ljava/lang/String;II)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "message"    # I
    .param p3, "option"    # I

    .prologue
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxManager;->mService:Lcom/samsung/android/toolbox/ITwToolBoxService;

    if-nez v0, :cond_0

    const-string v0, "toolbox"

    const-string v1, "Failed to sendMessage(); no TwToolBoxService."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxManager;->mService:Lcom/samsung/android/toolbox/ITwToolBoxService;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/toolbox/ITwToolBoxService;->sendMessage(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setToolList([Ljava/lang/String;)V
    .locals 8
    .param p1, "toolList"    # [Ljava/lang/String;

    .prologue
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxManager;->mService:Lcom/samsung/android/toolbox/ITwToolBoxService;

    if-nez v6, :cond_0

    const-string v6, "toolbox"

    const-string v7, "Failed to setToolList(); no TwToolBoxService."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-string v5, "0"

    .local v5, "tools":Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, "first":Z
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .local v4, "tool":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v4    # "tool":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxManager;->mService:Lcom/samsung/android/toolbox/ITwToolBoxService;

    invoke-interface {v6, v5}, Lcom/samsung/android/toolbox/ITwToolBoxService;->setToolList(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "first":Z
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "tools":Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_0

    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method public unregisterCallback(Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback;)Z
    .locals 3
    .param p1, "callback"    # Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback;

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxManager;->mService:Lcom/samsung/android/toolbox/ITwToolBoxService;

    if-nez v1, :cond_0

    const-string v1, "toolbox"

    const-string v2, "Failed to unregisterCallback(); no TwToolBoxService."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxManager;->mService:Lcom/samsung/android/toolbox/ITwToolBoxService;

    invoke-interface {v1, p1}, Lcom/samsung/android/toolbox/ITwToolBoxService;->unregisterCallback(Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method
