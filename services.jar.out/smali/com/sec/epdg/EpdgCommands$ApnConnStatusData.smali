.class public Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;
.super Ljava/lang/Object;
.source "EpdgCommands.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgCommands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApnConnStatusData"
.end annotation


# instance fields
.field private final mApnType:Ljava/lang/String;

.field private final mCid:I

.field private final mIsConnSuccess:Z

.field private final mIsHandover:Z

.field private final mLinkProp:Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;


# direct methods
.method public constructor <init>(ILjava/lang/String;ZZLcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;)V
    .locals 0
    .param p1, "cid"    # I
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "isConnSuccess"    # Z
    .param p4, "isHandover"    # Z
    .param p5, "prop"    # Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;->mCid:I

    iput-object p2, p0, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;->mApnType:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;->mIsConnSuccess:Z

    iput-boolean p4, p0, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;->mIsHandover:Z

    iput-object p5, p0, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;->mLinkProp:Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;

    return-void
.end method


# virtual methods
.method public getApnType()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;->mApnType:Ljava/lang/String;

    return-object v0
.end method

.method public getCid()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;->mCid:I

    return v0
.end method

.method public getLinkProp()Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;->mLinkProp:Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;

    return-object v0
.end method

.method public isConnSuccess()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;->mIsConnSuccess:Z

    return v0
.end method

.method public isHandover()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;->mIsHandover:Z

    return v0
.end method

.method public post()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x26

    invoke-static {v1, v2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
