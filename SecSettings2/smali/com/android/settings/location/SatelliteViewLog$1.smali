.class Lcom/android/settings_ex/location/SatelliteViewLog$1;
.super Ljava/lang/Object;
.source "SatelliteViewLog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/location/SatelliteViewLog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/location/SatelliteViewLog;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/location/SatelliteViewLog;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/settings_ex/location/SatelliteViewLog$1;->this$0:Lcom/android/settings_ex/location/SatelliteViewLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings_ex/location/SatelliteViewLog$1;->this$0:Lcom/android/settings_ex/location/SatelliteViewLog;

    # invokes: Lcom/android/settings_ex/location/SatelliteViewLog;->clearFile()V
    invoke-static {v0}, Lcom/android/settings_ex/location/SatelliteViewLog;->access$000(Lcom/android/settings_ex/location/SatelliteViewLog;)V

    .line 71
    return-void
.end method
