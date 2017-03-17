.class Lcom/samsung/cpp/CPPSrvCommunicator$1$1;
.super Ljava/lang/Object;
.source "CPPSrvCommunicator.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/cpp/CPPSrvCommunicator$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/cpp/CPPSrvCommunicator$1;


# direct methods
.method constructor <init>(Lcom/samsung/cpp/CPPSrvCommunicator$1;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/cpp/CPPSrvCommunicator$1$1;->this$1:Lcom/samsung/cpp/CPPSrvCommunicator$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "session"    # Ljavax/net/ssl/SSLSession;

    .prologue
    const/4 v0, 0x1

    return v0
.end method
