.class Lcom/android/providers/media/RingtonePickerActivity$2;
.super Ljava/lang/Object;
.source "RingtonePickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/RingtonePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/RingtonePickerActivity;


# direct methods
.method constructor <init>(Lcom/android/providers/media/RingtonePickerActivity;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/providers/media/RingtonePickerActivity$2;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 208
    const-string v0, "RingtonePickerActivity"

    const-string v1, "RingtonePickerActivity - SaveRingtone"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity$2;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    # getter for: Lcom/android/providers/media/RingtonePickerActivity;->mSync:Z
    invoke-static {v0}, Lcom/android/providers/media/RingtonePickerActivity;->access$1400(Lcom/android/providers/media/RingtonePickerActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity$2;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-virtual {v0}, Lcom/android/providers/media/RingtonePickerActivity;->onBackPressed()V

    .line 211
    :cond_0
    return-void
.end method
