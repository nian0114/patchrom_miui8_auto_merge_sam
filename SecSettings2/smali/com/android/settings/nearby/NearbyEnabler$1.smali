.class Lcom/android/settings_ex/nearby/NearbyEnabler$1;
.super Ljava/lang/Object;
.source "NearbyEnabler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/nearby/NearbyEnabler;->switchPreference(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/nearby/NearbyEnabler;

.field final synthetic val$handler:Landroid/preference/Preference$OnPreferenceChangeListener;

.field final synthetic val$value:Z


# direct methods
.method constructor <init>(Lcom/android/settings_ex/nearby/NearbyEnabler;Landroid/preference/Preference$OnPreferenceChangeListener;Z)V
    .locals 0

    .prologue
    .line 487
    iput-object p1, p0, Lcom/android/settings_ex/nearby/NearbyEnabler$1;->this$0:Lcom/android/settings_ex/nearby/NearbyEnabler;

    iput-object p2, p0, Lcom/android/settings_ex/nearby/NearbyEnabler$1;->val$handler:Landroid/preference/Preference$OnPreferenceChangeListener;

    iput-boolean p3, p0, Lcom/android/settings_ex/nearby/NearbyEnabler$1;->val$value:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/settings_ex/nearby/NearbyEnabler$1;->val$handler:Landroid/preference/Preference$OnPreferenceChangeListener;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/settings_ex/nearby/NearbyEnabler$1;->val$value:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 491
    return-void
.end method
