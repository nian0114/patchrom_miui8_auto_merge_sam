.class Lcom/android/settings_ex/BrightnessSeekBarPreference$2;
.super Landroid/database/ContentObserver;
.source "BrightnessSeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/BrightnessSeekBarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/BrightnessSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/BrightnessSeekBarPreference;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/settings_ex/BrightnessSeekBarPreference$2;->this$0:Lcom/android/settings_ex/BrightnessSeekBarPreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessSeekBarPreference$2;->this$0:Lcom/android/settings_ex/BrightnessSeekBarPreference;

    const/4 v1, -0x1

    # setter for: Lcom/android/settings_ex/BrightnessSeekBarPreference;->mCurBrightness:I
    invoke-static {v0, v1}, Lcom/android/settings_ex/BrightnessSeekBarPreference;->access$002(Lcom/android/settings_ex/BrightnessSeekBarPreference;I)I

    .line 124
    invoke-static {}, Lcom/android/settings_ex/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessSeekBarPreference$2;->this$0:Lcom/android/settings_ex/BrightnessSeekBarPreference;

    # getter for: Lcom/android/settings_ex/BrightnessSeekBarPreference;->mAutomaticMode:Z
    invoke-static {v0}, Lcom/android/settings_ex/BrightnessSeekBarPreference;->access$300(Lcom/android/settings_ex/BrightnessSeekBarPreference;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessSeekBarPreference$2;->this$0:Lcom/android/settings_ex/BrightnessSeekBarPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/BrightnessSeekBarPreference;->onBrightnessChanged()V

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessSeekBarPreference$2;->this$0:Lcom/android/settings_ex/BrightnessSeekBarPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/BrightnessSeekBarPreference;->onBrightnessChanged()V

    goto :goto_0
.end method
