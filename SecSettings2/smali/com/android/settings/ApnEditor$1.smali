.class Lcom/android/settings_ex/ApnEditor$1;
.super Landroid/database/ContentObserver;
.source "ApnEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ApnEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ApnEditor;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ApnEditor;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/settings_ex/ApnEditor$1;->this$0:Lcom/android/settings_ex/ApnEditor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 244
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 245
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor$1;->this$0:Lcom/android/settings_ex/ApnEditor;

    invoke-virtual {v0}, Lcom/android/settings_ex/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor$1;->this$0:Lcom/android/settings_ex/ApnEditor;

    invoke-virtual {v0}, Lcom/android/settings_ex/ApnEditor;->finish()V

    .line 248
    :cond_0
    return-void
.end method
