.class Lcom/android/settings_ex/tts/TtsEnginePreference$7;
.super Ljava/lang/Object;
.source "TtsEnginePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/tts/TtsEnginePreference;->onRadioButtonClicked(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/tts/TtsEnginePreference;

.field final synthetic val$buttonView:Landroid/widget/CompoundButton;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/tts/TtsEnginePreference;Landroid/widget/CompoundButton;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/settings_ex/tts/TtsEnginePreference$7;->this$0:Lcom/android/settings_ex/tts/TtsEnginePreference;

    iput-object p2, p0, Lcom/android/settings_ex/tts/TtsEnginePreference$7;->val$buttonView:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference$7;->val$buttonView:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 271
    return-void
.end method
