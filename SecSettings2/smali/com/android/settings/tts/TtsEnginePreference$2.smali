.class Lcom/android/settings_ex/tts/TtsEnginePreference$2;
.super Ljava/lang/Object;
.source "TtsEnginePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/tts/TtsEnginePreference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/tts/TtsEnginePreference;

.field final synthetic val$rb:Landroid/widget/RadioButton;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/tts/TtsEnginePreference;Landroid/widget/RadioButton;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/settings_ex/tts/TtsEnginePreference$2;->this$0:Lcom/android/settings_ex/tts/TtsEnginePreference;

    iput-object p2, p0, Lcom/android/settings_ex/tts/TtsEnginePreference$2;->val$rb:Landroid/widget/RadioButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference$2;->val$rb:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference$2;->this$0:Lcom/android/settings_ex/tts/TtsEnginePreference;

    iget-object v1, p0, Lcom/android/settings_ex/tts/TtsEnginePreference$2;->val$rb:Landroid/widget/RadioButton;

    const/4 v2, 0x1

    # invokes: Lcom/android/settings_ex/tts/TtsEnginePreference;->onRadioButtonClicked(Landroid/widget/CompoundButton;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/tts/TtsEnginePreference;->access$000(Lcom/android/settings_ex/tts/TtsEnginePreference;Landroid/widget/CompoundButton;Z)V

    .line 143
    :cond_0
    return-void
.end method
