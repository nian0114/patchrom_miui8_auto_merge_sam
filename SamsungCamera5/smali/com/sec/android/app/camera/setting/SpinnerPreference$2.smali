.class Lcom/sec/android/app/camera/setting/SpinnerPreference$2;
.super Ljava/lang/Object;
.source "SpinnerPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/setting/SpinnerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/setting/SpinnerPreference;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/setting/SpinnerPreference;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference$2;->this$0:Lcom/sec/android/app/camera/setting/SpinnerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/preference/Preference;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference$2;->this$0:Lcom/sec/android/app/camera/setting/SpinnerPreference;

    # getter for: Lcom/sec/android/app/camera/setting/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->access$500(Lcom/sec/android/app/camera/setting/SpinnerPreference;)Landroid/widget/Spinner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSoundEffectsEnabled(Z)V

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference$2;->this$0:Lcom/sec/android/app/camera/setting/SpinnerPreference;

    # getter for: Lcom/sec/android/app/camera/setting/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->access$500(Lcom/sec/android/app/camera/setting/SpinnerPreference;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    .line 106
    const/4 v0, 0x1

    return v0
.end method
