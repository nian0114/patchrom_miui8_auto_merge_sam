.class Lcom/android/settings_ex/location/SatelliteView$1;
.super Ljava/lang/Object;
.source "SatelliteView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/location/SatelliteView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/location/SatelliteView;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/location/SatelliteView;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/settings_ex/location/SatelliteView$1;->this$0:Lcom/android/settings_ex/location/SatelliteView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 155
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings_ex/location/SatelliteView$1;->this$0:Lcom/android/settings_ex/location/SatelliteView;

    const-class v2, Lcom/android/settings_ex/location/SatelliteViewLog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings_ex/location/SatelliteView$1;->this$0:Lcom/android/settings_ex/location/SatelliteView;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/location/SatelliteView;->startActivity(Landroid/content/Intent;)V

    .line 157
    return-void
.end method
