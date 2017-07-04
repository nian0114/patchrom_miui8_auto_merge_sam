.class Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$6;
.super Ljava/lang/Object;
.source "PreferenceSettingFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->initialize()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)V
    .locals 0

    .prologue
    .line 644
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$6;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/preference/Preference;

    .prologue
    .line 647
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$6;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    # getter for: Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->access$100(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$6;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    # getter for: Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->access$100(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$6;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0800cf

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 649
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$6;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    const v1, 0x7f060005

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->addPreferenceFragment(I)V

    .line 654
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 651
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$6;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0800ce

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 652
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$6;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    const v1, 0x7f060006

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->addPreferenceFragment(I)V

    goto :goto_0
.end method
