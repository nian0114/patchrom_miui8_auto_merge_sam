.class Lcom/android/settings_ex/DataUsageSummary$52;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/settings_ex/datasaving/DataSavingHelper$TrafficServiceConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 6992
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$52;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Lcom/opera/max/sdk/traffic/ITrafficService;)V
    .locals 2
    .param p1, "service"    # Lcom/opera/max/sdk/traffic/ITrafficService;

    .prologue
    .line 6995
    if-eqz p1, :cond_0

    .line 6996
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings_ex/DataUsageSummary$52$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/DataUsageSummary$52$1;-><init>(Lcom/android/settings_ex/DataUsageSummary$52;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7003
    :cond_0
    return-void
.end method
