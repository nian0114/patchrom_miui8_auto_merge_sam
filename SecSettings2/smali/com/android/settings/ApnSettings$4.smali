.class Lcom/android/settings_ex/ApnSettings$4;
.super Landroid/database/ContentObserver;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ApnSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/settings_ex/ApnSettings$4;->this$0:Lcom/android/settings_ex/ApnSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 242
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 243
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings$4;->this$0:Lcom/android/settings_ex/ApnSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings$4;->this$0:Lcom/android/settings_ex/ApnSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/ApnSettings;->finish()V

    .line 246
    :cond_0
    return-void
.end method
