.class Lcom/android/settings_ex/DefaultRingtonePreference$1;
.super Ljava/lang/Object;
.source "DefaultRingtonePreference.java"

# interfaces
.implements Lcom/android/settings_ex/RingtoneRecommender$OnHighlightResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DefaultRingtonePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DefaultRingtonePreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DefaultRingtonePreference;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/settings_ex/DefaultRingtonePreference$1;->this$0:Lcom/android/settings_ex/DefaultRingtonePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(II)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "offset"    # I

    .prologue
    .line 190
    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    .line 191
    if-eqz p2, :cond_0

    .line 192
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings_ex/DefaultRingtonePreference$1;->this$0:Lcom/android/settings_ex/DefaultRingtonePreference;

    invoke-virtual {v1}, Lcom/android/settings_ex/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/settings_ex/RecommendRingtoneDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 193
    .local v0, "mIntent":Landroid/content/Intent;
    const-string v1, "recommend_offset"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 194
    const-string v1, "ringtoneType"

    iget-object v2, p0, Lcom/android/settings_ex/DefaultRingtonePreference$1;->this$0:Lcom/android/settings_ex/DefaultRingtonePreference;

    invoke-virtual {v2}, Lcom/android/settings_ex/DefaultRingtonePreference;->getRingtoneType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 195
    iget-object v1, p0, Lcom/android/settings_ex/DefaultRingtonePreference$1;->this$0:Lcom/android/settings_ex/DefaultRingtonePreference;

    invoke-virtual {v1}, Lcom/android/settings_ex/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 200
    .end local v0    # "mIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
