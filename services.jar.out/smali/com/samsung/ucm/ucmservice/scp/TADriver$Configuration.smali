.class Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;
.super Ljava/lang/Object;
.source "TADriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ucm/ucmservice/scp/TADriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Configuration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;
    }
.end annotation


# instance fields
.field ca_cert_pub:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;

.field protocol:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;

.field final synthetic this$0:Lcom/samsung/ucm/ucmservice/scp/TADriver;


# direct methods
.method private constructor <init>(Lcom/samsung/ucm/ucmservice/scp/TADriver;)V
    .locals 1

    .prologue
    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;->this$0:Lcom/samsung/ucm/ucmservice/scp/TADriver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;

    invoke-direct {v0, p0}, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;-><init>(Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;)V

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;->protocol:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;

    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;

    invoke-direct {v0, p0}, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;-><init>(Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;)V

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;->ca_cert_pub:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/ucm/ucmservice/scp/TADriver;Lcom/samsung/ucm/ucmservice/scp/TADriver$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/ucm/ucmservice/scp/TADriver;
    .param p2, "x1"    # Lcom/samsung/ucm/ucmservice/scp/TADriver$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;-><init>(Lcom/samsung/ucm/ucmservice/scp/TADriver;)V

    return-void
.end method
