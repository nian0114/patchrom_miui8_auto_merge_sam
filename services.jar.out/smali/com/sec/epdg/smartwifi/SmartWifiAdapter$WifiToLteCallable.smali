.class public Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiToLteCallable;
.super Ljava/lang/Object;
.source "SmartWifiAdapter.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WifiToLteCallable"
.end annotation


# instance fields
.field private final mNetworkType:I

.field final synthetic this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;


# direct methods
.method constructor <init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;I)V
    .locals 0
    .param p2, "networkType"    # I

    .prologue
    iput-object p1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiToLteCallable;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiToLteCallable;->mNetworkType:I

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiToLteCallable;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    iget v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiToLteCallable;->mNetworkType:I

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->doWifiToLteHO(I)Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$4900(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;I)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiToLteCallable;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
