.class final Lcom/samsung/android/mscs/MdnieScenarioControlService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "MdnieScenarioControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mscs/MdnieScenarioControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mscs/MdnieScenarioControlService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    iput-object p1, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$SettingsObserver;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/mscs/MdnieScenarioControlService$SettingsObserver;->this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/mscs/MdnieScenarioControlService;->setting_is_changed()V
    invoke-static {v0}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$2100(Lcom/samsung/android/mscs/MdnieScenarioControlService;)V

    return-void
.end method
