.class Lcom/android/settings_ex/DisplaySettings$6;
.super Landroid/database/ContentObserver;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DisplaySettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/settings_ex/DisplaySettings$6;->this$0:Lcom/android/settings_ex/DisplaySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 304
    if-nez p1, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings$6;->this$0:Lcom/android/settings_ex/DisplaySettings;

    # invokes: Lcom/android/settings_ex/DisplaySettings;->updateScreenModeSummary()V
    invoke-static {v0}, Lcom/android/settings_ex/DisplaySettings;->access$500(Lcom/android/settings_ex/DisplaySettings;)V

    .line 307
    :cond_0
    return-void
.end method
