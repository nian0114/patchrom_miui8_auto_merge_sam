.class Lcom/android/settings_ex/ModePreviewTablet$1;
.super Landroid/database/ContentObserver;
.source "ModePreviewTablet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ModePreviewTablet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ModePreviewTablet;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ModePreviewTablet;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/settings_ex/ModePreviewTablet$1;->this$0:Lcom/android/settings_ex/ModePreviewTablet;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 65
    if-nez p1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/settings_ex/ModePreviewTablet$1;->this$0:Lcom/android/settings_ex/ModePreviewTablet;

    # invokes: Lcom/android/settings_ex/ModePreviewTablet;->updateState()V
    invoke-static {v0}, Lcom/android/settings_ex/ModePreviewTablet;->access$000(Lcom/android/settings_ex/ModePreviewTablet;)V

    .line 68
    :cond_0
    return-void
.end method
