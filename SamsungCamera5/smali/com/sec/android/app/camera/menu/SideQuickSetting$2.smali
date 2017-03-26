.class Lcom/sec/android/app/camera/menu/SideQuickSetting$2;
.super Ljava/lang/Object;
.source "SideQuickSetting.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/SideQuickSetting;->startQuickSettingOpenAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/SideQuickSetting;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/SideQuickSetting;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting$2;->this$0:Lcom/sec/android/app/camera/menu/SideQuickSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SideQuickSetting$2;->this$0:Lcom/sec/android/app/camera/menu/SideQuickSetting;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/camera/menu/SideQuickSetting;->mIsAnimationRunning:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/menu/SideQuickSetting;->access$002(Lcom/sec/android/app/camera/menu/SideQuickSetting;Z)Z

    .line 177
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 181
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 185
    return-void
.end method
