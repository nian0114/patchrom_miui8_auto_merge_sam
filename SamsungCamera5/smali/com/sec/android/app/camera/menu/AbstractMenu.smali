.class public abstract Lcom/sec/android/app/camera/menu/AbstractMenu;
.super Ljava/lang/Object;
.source "AbstractMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/MenuBase;


# static fields
.field private static final ANIMATION_DURATION_150:I = 0x96

.field protected static final TAG:Ljava/lang/String; = "AbstractMenu"


# instance fields
.field private mActive:Z

.field protected mAnchor:Lcom/samsung/android/glview/GLImage;

.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field protected mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field protected mChild:Lcom/sec/android/app/camera/menu/AbstractMenu;

.field private mEffect:Z

.field protected mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mGLParentView:Lcom/samsung/android/glview/GLViewGroup;

.field private mHideAnimation:Landroid/view/animation/Animation;

.field private mHideListener:Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;

.field private mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

.field protected mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

.field protected mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

.field private mOneTimeHideAnimation:Landroid/view/animation/Animation;

.field private mOneTimeHideAnimationRequested:Z

.field private mOneTimeShowAnimation:Landroid/view/animation/Animation;

.field private mOneTimeShowAnimationRequested:Z

.field private mPreviewTouchEnabled:Z

.field private mShowAnimation:Landroid/view/animation/Animation;

.field private mShowListener:Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;

.field private mViewId:I

.field protected mVisibility:Z

.field protected mZorder:I


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;FFFFLcom/sec/android/app/camera/menu/MenuResourceDepot;IZ)V
    .locals 7
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;
    .param p3, "menuManager"    # Lcom/sec/android/app/camera/menu/MenuManagerImpl;
    .param p4, "viewId"    # I
    .param p5, "glParentView"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p6, "left"    # F
    .param p7, "top"    # F
    .param p8, "width"    # F
    .param p9, "height"    # F
    .param p10, "menuResourceDepot"    # Lcom/sec/android/app/camera/menu/MenuResourceDepot;
    .param p11, "zOrder"    # I
    .param p12, "effect"    # Z

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mChild:Lcom/sec/android/app/camera/menu/AbstractMenu;

    .line 46
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    .line 47
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mZorder:I

    .line 51
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mPreviewTouchEnabled:Z

    .line 52
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mEffect:Z

    .line 53
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mActive:Z

    .line 58
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mOneTimeShowAnimationRequested:Z

    .line 59
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mOneTimeHideAnimationRequested:Z

    .line 62
    new-instance v1, Lcom/sec/android/app/camera/menu/AbstractMenu$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/AbstractMenu$1;-><init>(Lcom/sec/android/app/camera/menu/AbstractMenu;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 89
    iput-object p5, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mGLParentView:Lcom/samsung/android/glview/GLViewGroup;

    .line 90
    new-instance v1, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    move v3, p6

    move v4, p7

    move v5, p8

    move/from16 v6, p9

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 91
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, p4}, Lcom/samsung/android/glview/GLViewGroup;->setTag(I)V

    .line 92
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mGLParentView:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 94
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 95
    iput-object p2, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 96
    iput-object p3, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    .line 97
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    .line 98
    move/from16 v0, p11

    iput v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mZorder:I

    .line 99
    iput p4, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mViewId:I

    .line 101
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mVisibility:Z

    .line 102
    move/from16 v0, p12

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mEffect:Z

    .line 104
    iget-boolean v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mEffect:Z

    if-eqz v1, :cond_0

    .line 105
    const/16 v1, 0x96

    new-instance v2, Landroid/view/animation/interpolator/SineEaseInOut;

    invoke-direct {v2}, Landroid/view/animation/interpolator/SineEaseInOut;-><init>()V

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mShowAnimation:Landroid/view/animation/Animation;

    .line 106
    const/16 v1, 0x96

    new-instance v2, Landroid/view/animation/interpolator/SineEaseInOut;

    invoke-direct {v2}, Landroid/view/animation/interpolator/SineEaseInOut;-><init>()V

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mHideAnimation:Landroid/view/animation/Animation;

    .line 107
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mShowAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 108
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mHideAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 110
    :cond_0
    return-void
.end method

.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;FFLcom/sec/android/app/camera/menu/MenuResourceDepot;IZ)V
    .locals 4
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;
    .param p3, "menuManager"    # Lcom/sec/android/app/camera/menu/MenuManagerImpl;
    .param p4, "viewId"    # I
    .param p5, "glParentView"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p6, "left"    # F
    .param p7, "top"    # F
    .param p8, "menuResourceDepot"    # Lcom/sec/android/app/camera/menu/MenuResourceDepot;
    .param p9, "zOrder"    # I
    .param p10, "effect"    # Z

    .prologue
    const/4 v0, 0x0

    const/16 v3, 0x96

    const/4 v2, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mChild:Lcom/sec/android/app/camera/menu/AbstractMenu;

    .line 46
    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mZorder:I

    .line 51
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mPreviewTouchEnabled:Z

    .line 52
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mEffect:Z

    .line 53
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mActive:Z

    .line 58
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mOneTimeShowAnimationRequested:Z

    .line 59
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mOneTimeHideAnimationRequested:Z

    .line 62
    new-instance v0, Lcom/sec/android/app/camera/menu/AbstractMenu$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/AbstractMenu$1;-><init>(Lcom/sec/android/app/camera/menu/AbstractMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 114
    iput-object p5, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mGLParentView:Lcom/samsung/android/glview/GLViewGroup;

    .line 115
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-direct {v0, v1, p6, p7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p4}, Lcom/samsung/android/glview/GLViewGroup;->setTag(I)V

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mGLParentView:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 119
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 120
    iput-object p2, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 121
    iput-object p3, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    .line 122
    iput-object p8, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    .line 123
    iput p9, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mZorder:I

    .line 124
    iput p4, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mViewId:I

    .line 126
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mVisibility:Z

    .line 127
    iput-boolean p10, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mEffect:Z

    .line 129
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mEffect:Z

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Landroid/view/animation/interpolator/SineEaseInOut;

    invoke-direct {v0}, Landroid/view/animation/interpolator/SineEaseInOut;-><init>()V

    invoke-static {v3, v0}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mShowAnimation:Landroid/view/animation/Animation;

    .line 131
    new-instance v0, Landroid/view/animation/interpolator/SineEaseInOut;

    invoke-direct {v0}, Landroid/view/animation/interpolator/SineEaseInOut;-><init>()V

    invoke-static {v3, v0}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mHideAnimation:Landroid/view/animation/Animation;

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mShowAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mHideAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 135
    :cond_0
    return-void
.end method

.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;IZ)V
    .locals 4
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;
    .param p3, "menuManager"    # Lcom/sec/android/app/camera/menu/MenuManagerImpl;
    .param p4, "viewId"    # I
    .param p5, "glParentView"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p6, "menuResourceDepot"    # Lcom/sec/android/app/camera/menu/MenuResourceDepot;
    .param p7, "zOrder"    # I
    .param p8, "effect"    # Z

    .prologue
    const/4 v0, 0x0

    const/16 v3, 0x96

    const/4 v2, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mChild:Lcom/sec/android/app/camera/menu/AbstractMenu;

    .line 46
    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mZorder:I

    .line 51
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mPreviewTouchEnabled:Z

    .line 52
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mEffect:Z

    .line 53
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mActive:Z

    .line 58
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mOneTimeShowAnimationRequested:Z

    .line 59
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mOneTimeHideAnimationRequested:Z

    .line 62
    new-instance v0, Lcom/sec/android/app/camera/menu/AbstractMenu$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/AbstractMenu$1;-><init>(Lcom/sec/android/app/camera/menu/AbstractMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 139
    iput-object p5, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mGLParentView:Lcom/samsung/android/glview/GLViewGroup;

    .line 140
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p4}, Lcom/samsung/android/glview/GLViewGroup;->setTag(I)V

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mGLParentView:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 144
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 145
    iput-object p2, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 146
    iput-object p3, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    .line 147
    iput-object p6, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    .line 148
    iput p7, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mZorder:I

    .line 149
    iput p4, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mViewId:I

    .line 151
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mVisibility:Z

    .line 152
    iput-boolean p8, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mEffect:Z

    .line 154
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mEffect:Z

    if-eqz v0, :cond_0

    .line 155
    new-instance v0, Landroid/view/animation/interpolator/SineEaseInOut;

    invoke-direct {v0}, Landroid/view/animation/interpolator/SineEaseInOut;-><init>()V

    invoke-static {v3, v0}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mShowAnimation:Landroid/view/animation/Animation;

    .line 156
    new-instance v0, Landroid/view/animation/interpolator/SineEaseInOut;

    invoke-direct {v0}, Landroid/view/animation/interpolator/SineEaseInOut;-><init>()V

    invoke-static {v3, v0}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mHideAnimation:Landroid/view/animation/Animation;

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mShowAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mHideAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 160
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/menu/AbstractMenu;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/AbstractMenu;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mShowAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/menu/AbstractMenu;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/AbstractMenu;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mOneTimeShowAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/menu/AbstractMenu;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/AbstractMenu;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mHideAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/menu/AbstractMenu;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/AbstractMenu;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mOneTimeHideAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method


# virtual methods
.method protected addView(Lcom/samsung/android/glview/GLView;)V
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 217
    return-void
.end method

.method protected clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mGLParentView:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mGLParentView:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 225
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 227
    :cond_1
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mGLParentView:Lcom/samsung/android/glview/GLViewGroup;

    .line 228
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 229
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mChild:Lcom/sec/android/app/camera/menu/AbstractMenu;

    .line 230
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    .line 231
    return-void
.end method

.method protected final getBaseViewId()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mViewId:I

    return v0
.end method

.method protected getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    return-object v0
.end method

.method protected getParentViewGroup()Lcom/samsung/android/glview/GLViewGroup;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mGLParentView:Lcom/samsung/android/glview/GLViewGroup;

    return-object v0
.end method

.method protected final getVisibility()Z
    .locals 1

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mVisibility:Z

    return v0
.end method

.method protected final getZorder()I
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mZorder:I

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method protected hideMenu()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 258
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v0, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mActive:Z

    if-eqz v0, :cond_0

    .line 266
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mVisibility:Z

    if-eqz v0, :cond_3

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 268
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_2

    .line 269
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mOneTimeHideAnimationRequested:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mOneTimeHideAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_7

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mOneTimeHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 271
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->startAnimation()V

    .line 272
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mOneTimeHideAnimationRequested:Z

    .line 281
    :cond_2
    :goto_1
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mVisibility:Z

    .line 284
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mChild:Lcom/sec/android/app/camera/menu/AbstractMenu;

    if-eqz v0, :cond_4

    .line 285
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mChild:Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->hideMenu()V

    .line 288
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_5

    .line 289
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onHide()V

    .line 292
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mHideListener:Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;

    if-eqz v0, :cond_6

    .line 293
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mHideListener:Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;->onHide(Lcom/sec/android/app/camera/interfaces/MenuBase;)V

    .line 296
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->popMenu()V

    .line 297
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mActive:Z

    .line 299
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->onHideMenu(Lcom/sec/android/app/camera/menu/AbstractMenu;)V

    goto :goto_0

    .line 273
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mHideAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_8

    .line 274
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 275
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->startAnimation()V

    goto :goto_1

    .line 277
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mActive:Z

    return v0
.end method

.method protected isAnimationFinished()Z
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->isAnimationFinished()Z

    move-result v0

    .line 306
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected final isFullScreen()Z
    .locals 2

    .prologue
    .line 311
    iget v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mZorder:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final isPreviewTouchEnabled()Z
    .locals 1

    .prologue
    .line 315
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mPreviewTouchEnabled:Z

    return v0
.end method

.method protected onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 323
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 324
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->hideMenu()V

    .line 327
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract onHide()V
.end method

.method protected abstract onHideAnimationEnd(Landroid/view/animation/Animation;)V
.end method

.method protected abstract onHideAnimationStart(Landroid/view/animation/Animation;)V
.end method

.method protected onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 340
    const/4 v0, 0x0

    return v0
.end method

.method protected onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 344
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract onShow()V
.end method

.method protected abstract onShowAnimationEnd(Landroid/view/animation/Animation;)V
.end method

.method protected abstract onShowAnimationStart(Landroid/view/animation/Animation;)V
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 357
    return-void
.end method

.method protected removeView(Lcom/samsung/android/glview/GLView;)V
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 360
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 361
    return-void
.end method

.method protected restoreMenu()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 364
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-nez v0, :cond_0

    .line 390
    :goto_0
    return-void

    .line 368
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mVisibility:Z

    if-nez v0, :cond_1

    .line 369
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mChild:Lcom/sec/android/app/camera/menu/AbstractMenu;

    if-eqz v0, :cond_2

    .line 373
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mChild:Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->showMenu()V

    .line 375
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onShow()V

    .line 376
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mShowListener:Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;

    if-eqz v0, :cond_3

    .line 377
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mShowListener:Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;->onShow(Lcom/sec/android/app/camera/interfaces/MenuBase;)V

    .line 379
    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mOneTimeShowAnimationRequested:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mOneTimeShowAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_5

    .line 380
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mOneTimeShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 381
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->startAnimation()V

    .line 382
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mOneTimeShowAnimationRequested:Z

    .line 387
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 388
    iput-boolean v3, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mVisibility:Z

    .line 389
    iput-boolean v3, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mActive:Z

    goto :goto_0

    .line 383
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mShowAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_4

    .line 384
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 385
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->startAnimation()V

    goto :goto_1
.end method

.method protected final setAnchor(Lcom/samsung/android/glview/GLImage;)V
    .locals 2
    .param p1, "anchor"    # Lcom/samsung/android/glview/GLImage;

    .prologue
    .line 393
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    .line 394
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mGLParentView:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 395
    return-void
.end method

.method protected final setChild(Lcom/sec/android/app/camera/menu/AbstractMenu;)V
    .locals 0
    .param p1, "child"    # Lcom/sec/android/app/camera/menu/AbstractMenu;

    .prologue
    .line 398
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mChild:Lcom/sec/android/app/camera/menu/AbstractMenu;

    .line 399
    return-void
.end method

.method public setHideAnimation(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mHideAnimation:Landroid/view/animation/Animation;

    .line 170
    if-eqz p1, :cond_0

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mHideAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 173
    :cond_0
    return-void
.end method

.method public setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mHideListener:Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;

    .line 178
    return-void
.end method

.method public setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mShowListener:Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;

    .line 183
    return-void
.end method

.method public setOneTimeHideAnimation(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mOneTimeHideAnimation:Landroid/view/animation/Animation;

    .line 188
    if-nez p1, :cond_0

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mOneTimeHideAnimationRequested:Z

    .line 194
    :goto_0
    return-void

    .line 191
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mOneTimeHideAnimationRequested:Z

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mOneTimeHideAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method public setOneTimeShowAnimation(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mOneTimeShowAnimation:Landroid/view/animation/Animation;

    .line 199
    if-nez p1, :cond_0

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mOneTimeShowAnimationRequested:Z

    .line 205
    :goto_0
    return-void

    .line 202
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mOneTimeShowAnimationRequested:Z

    .line 203
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mOneTimeShowAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method protected setPreviewTouchEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 319
    iput-boolean p1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mPreviewTouchEnabled:Z

    .line 320
    return-void
.end method

.method public setShowAnimation(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mShowAnimation:Landroid/view/animation/Animation;

    .line 210
    if-eqz p1, :cond_0

    .line 211
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mShowAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 213
    :cond_0
    return-void
.end method

.method protected final setZorder(I)V
    .locals 1
    .param p1, "zOrder"    # I

    .prologue
    .line 254
    iget v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mZorder:I

    and-int/lit16 v0, v0, 0xf0

    or-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mZorder:I

    .line 255
    return-void
.end method

.method protected showMenu()V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v0, :cond_0

    .line 416
    :goto_0
    return-void

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->pushMenu(Lcom/sec/android/app/camera/menu/AbstractMenu;)V

    .line 406
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->bringToFront()V

    .line 410
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_2

    .line 411
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->bringToFront()V

    .line 413
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->restoreMenu()V

    .line 415
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->onShowMenu()V

    goto :goto_0
.end method

.method protected showMenu(Z)V
    .locals 1
    .param p1, "hideShootingModeView"    # Z

    .prologue
    .line 419
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v0, :cond_1

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->pushMenu(Lcom/sec/android/app/camera/menu/AbstractMenu;)V

    .line 423
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_2

    .line 424
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->bringToFront()V

    .line 427
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_3

    .line 428
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->bringToFront()V

    .line 430
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->restoreMenu()V

    .line 432
    if-eqz p1, :cond_0

    .line 433
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->onShowMenu()V

    goto :goto_0
.end method
