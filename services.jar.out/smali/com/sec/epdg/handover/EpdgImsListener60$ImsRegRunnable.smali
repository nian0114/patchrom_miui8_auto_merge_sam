.class abstract Lcom/sec/epdg/handover/EpdgImsListener60$ImsRegRunnable;
.super Ljava/lang/Object;
.source "EpdgImsListener60.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/handover/EpdgImsListener60;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ImsRegRunnable"
.end annotation


# instance fields
.field protected final mReg:Lcom/sec/ims/ImsRegistration;

.field final synthetic this$0:Lcom/sec/epdg/handover/EpdgImsListener60;


# direct methods
.method constructor <init>(Lcom/sec/epdg/handover/EpdgImsListener60;Lcom/sec/ims/ImsRegistration;)V
    .locals 0
    .param p2, "reg"    # Lcom/sec/ims/ImsRegistration;

    .prologue
    iput-object p1, p0, Lcom/sec/epdg/handover/EpdgImsListener60$ImsRegRunnable;->this$0:Lcom/sec/epdg/handover/EpdgImsListener60;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/epdg/handover/EpdgImsListener60$ImsRegRunnable;->mReg:Lcom/sec/ims/ImsRegistration;

    return-void
.end method
