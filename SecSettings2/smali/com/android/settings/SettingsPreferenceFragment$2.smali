.class Lcom/android/settings_ex/SettingsPreferenceFragment$2;
.super Ljava/lang/Object;
.source "SettingsPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/SettingsPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/SettingsPreferenceFragment;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/settings_ex/SettingsPreferenceFragment$2;->this$0:Lcom/android/settings_ex/SettingsPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment$2;->this$0:Lcom/android/settings_ex/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->buildPreferenceForCOM()V

    .line 286
    return-void
.end method
