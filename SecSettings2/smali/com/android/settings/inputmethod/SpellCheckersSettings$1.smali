.class Lcom/android/settings_ex/inputmethod/SpellCheckersSettings$1;
.super Ljava/lang/Object;
.source "SpellCheckersSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings$1;->this$0:Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings$1;->this$0:Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;

    # invokes: Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->updatePreferenceScreen()V
    invoke-static {v0}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->access$000(Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;)V

    .line 162
    return-void
.end method
