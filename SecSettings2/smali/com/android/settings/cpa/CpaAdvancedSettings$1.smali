.class Lcom/android/settings_ex/cpa/CpaAdvancedSettings$1;
.super Landroid/database/ContentObserver;
.source "CpaAdvancedSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/cpa/CpaAdvancedSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/cpa/CpaAdvancedSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/cpa/CpaAdvancedSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/settings_ex/cpa/CpaAdvancedSettings$1;->this$0:Lcom/android/settings_ex/cpa/CpaAdvancedSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 184
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 185
    iget-object v0, p0, Lcom/android/settings_ex/cpa/CpaAdvancedSettings$1;->this$0:Lcom/android/settings_ex/cpa/CpaAdvancedSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/cpa/CpaAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/settings_ex/cpa/CpaAdvancedSettings$1;->this$0:Lcom/android/settings_ex/cpa/CpaAdvancedSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/cpa/CpaAdvancedSettings;->finish()V

    .line 188
    :cond_0
    return-void
.end method
