.class public Lcom/sec/android/app/camera/menu/ProColorTuneList;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "ProColorTuneList.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$OrientationChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/menu/ProColorTuneList$1;,
        Lcom/sec/android/app/camera/menu/ProColorTuneList$ColorTuneListAdapter;,
        Lcom/sec/android/app/camera/menu/ProColorTuneList$ProColorTuneListShowListener;,
        Lcom/sec/android/app/camera/menu/ProColorTuneList$ProColorTuneListSelectListener;,
        Lcom/sec/android/app/camera/menu/ProColorTuneList$ProColorTuneListHideListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION_150:I = 0x96

.field private static final COLORTUNE_LIST_CENTER_ITEM_HEIGHT:I

.field private static final COLORTUNE_LIST_ITEM_WIDTH:I

.field private static final COLORTUNE_LIST_TOP_MARGIN:I

.field private static final PRO_ITEM_WIDTH:I

.field private static final PRO_LIST_GROUP_WIDTH:I

.field private static final PRO_LIST_RIGHT_MARGIN:I

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field private static final TAG:Ljava/lang/String; = "ProColorTuneList"


# instance fields
.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mHideAnimation:Landroid/view/animation/Animation;

.field private mItemList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;",
            ">;"
        }
    .end annotation
.end field

.field private mList:Lcom/samsung/android/glview/GLList;

.field private mMenuAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

.field protected mProColorTuneListHideListener:Lcom/sec/android/app/camera/menu/ProColorTuneList$ProColorTuneListHideListener;

.field protected mProColorTuneListSelectListener:Lcom/sec/android/app/camera/menu/ProColorTuneList$ProColorTuneListSelectListener;

.field protected mProColorTuneListShowListener:Lcom/sec/android/app/camera/menu/ProColorTuneList$ProColorTuneListShowListener;

.field private mProListGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private mShowAnimation:Landroid/view/animation/Animation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const v0, 0x7f0901bf

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->SCREEN_WIDTH:I

    .line 42
    const v0, 0x7f0901be

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->SCREEN_HEIGHT:I

    .line 43
    const v0, 0x7f090167

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->PRO_ITEM_WIDTH:I

    .line 44
    const v0, 0x7f090161

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->PRO_LIST_RIGHT_MARGIN:I

    .line 45
    sget v0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->SCREEN_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/menu/ProColorTuneList;->PRO_LIST_RIGHT_MARGIN:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/menu/ProColorTuneList;->PRO_ITEM_WIDTH:I

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->PRO_LIST_GROUP_WIDTH:I

    .line 47
    const v0, 0x7f090076

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->COLORTUNE_LIST_ITEM_WIDTH:I

    .line 48
    const v0, 0x7f0902f5

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->COLORTUNE_LIST_CENTER_ITEM_HEIGHT:I

    .line 49
    const v0, 0x7f0902f6

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->COLORTUNE_LIST_TOP_MARGIN:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFF)V
    .locals 8
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x96

    .line 69
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 59
    iput-object v7, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 60
    new-instance v0, Lcom/sec/android/app/camera/menu/ProColorTuneList$ColorTuneListAdapter;

    invoke-direct {v0, p0, v7}, Lcom/sec/android/app/camera/menu/ProColorTuneList$ColorTuneListAdapter;-><init>(Lcom/sec/android/app/camera/menu/ProColorTuneList;Lcom/sec/android/app/camera/menu/ProColorTuneList$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mMenuAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    .line 61
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mItemList:Landroid/util/SparseArray;

    .line 70
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 71
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ColorTuneResourceData;

    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/ColorTuneResourceData;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 73
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->initProColorTuneList()V

    .line 75
    new-instance v0, Landroid/view/animation/interpolator/SineEaseInOut;

    invoke-direct {v0}, Landroid/view/animation/interpolator/SineEaseInOut;-><init>()V

    invoke-static {v6, v0}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mShowAnimation:Landroid/view/animation/Animation;

    .line 76
    new-instance v0, Landroid/view/animation/interpolator/SineEaseInOut;

    invoke-direct {v0}, Landroid/view/animation/interpolator/SineEaseInOut;-><init>()V

    invoke-static {v6, v0}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mHideAnimation:Landroid/view/animation/Animation;

    .line 77
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/menu/ProColorTuneList;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProColorTuneList;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/menu/ProColorTuneList;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProColorTuneList;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mItemList:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/menu/ProColorTuneList;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProColorTuneList;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 39
    sget v0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->COLORTUNE_LIST_ITEM_WIDTH:I

    return v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 39
    sget v0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->COLORTUNE_LIST_TOP_MARGIN:I

    return v0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 39
    sget v0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->COLORTUNE_LIST_CENTER_ITEM_HEIGHT:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/menu/ProColorTuneList;)Lcom/samsung/android/glview/GLList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/ProColorTuneList;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mList:Lcom/samsung/android/glview/GLList;

    return-object v0
.end method

.method private initProColorTuneList()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 131
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v3, Lcom/sec/android/app/camera/menu/ProColorTuneList;->PRO_LIST_GROUP_WIDTH:I

    int-to-float v4, v3

    sget v3, Lcom/sec/android/app/camera/menu/ProColorTuneList;->SCREEN_HEIGHT:I

    int-to-float v5, v3

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mProListGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 133
    new-instance v0, Lcom/samsung/android/glview/GLList;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v3, Lcom/sec/android/app/camera/menu/ProColorTuneList;->COLORTUNE_LIST_ITEM_WIDTH:I

    int-to-float v4, v3

    sget v3, Lcom/sec/android/app/camera/menu/ProColorTuneList;->SCREEN_HEIGHT:I

    int-to-float v5, v3

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLList;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mList:Lcom/samsung/android/glview/GLList;

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mList:Lcom/samsung/android/glview/GLList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLList;->setOverScrollEffect(Z)V

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mList:Lcom/samsung/android/glview/GLList;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mMenuAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLList;->setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;I)V

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mList:Lcom/samsung/android/glview/GLList;

    const-string v1, "COLORTUNE_EFFECT_LIST"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLList;->setObjectTag(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mProListGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mList:Lcom/samsung/android/glview/GLList;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mProListGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 141
    return-void
.end method


# virtual methods
.method public getItem(I)Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;
    .locals 1
    .param p1, "commandId"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mItemList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;

    return-object v0
.end method

.method public hideList()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mHideAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mHideAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 86
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->startAnimation()V

    .line 88
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mProColorTuneListHideListener:Lcom/sec/android/app/camera/menu/ProColorTuneList$ProColorTuneListHideListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/menu/ProColorTuneList$ProColorTuneListHideListener;->onHideProColorTuneList()V

    .line 90
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->onOrientationChanged(I)V

    .line 96
    return-void
.end method

.method public refreshColorTuneItems()V
    .locals 5

    .prologue
    .line 99
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 100
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v2

    .line 101
    .local v2, "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mItemList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;

    .line 103
    .local v1, "item":Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;
    if-eqz v1, :cond_0

    .line 104
    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;->refreshItem()V

    .line 99
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    .end local v1    # "item":Lcom/sec/android/app/camera/widget/gl/ColorTuneItem;
    .end local v2    # "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    :cond_1
    return-void
.end method

.method public setOnHideProColorTuneListListener(Lcom/sec/android/app/camera/menu/ProColorTuneList$ProColorTuneListHideListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/app/camera/menu/ProColorTuneList$ProColorTuneListHideListener;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mProColorTuneListHideListener:Lcom/sec/android/app/camera/menu/ProColorTuneList$ProColorTuneListHideListener;

    .line 111
    return-void
.end method

.method public setOnProColorTuneListSelectListener(Lcom/sec/android/app/camera/menu/ProColorTuneList$ProColorTuneListSelectListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/app/camera/menu/ProColorTuneList$ProColorTuneListSelectListener;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mProColorTuneListSelectListener:Lcom/sec/android/app/camera/menu/ProColorTuneList$ProColorTuneListSelectListener;

    .line 115
    return-void
.end method

.method public setOnShowProColorTuneListListener(Lcom/sec/android/app/camera/menu/ProColorTuneList$ProColorTuneListShowListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/app/camera/menu/ProColorTuneList$ProColorTuneListShowListener;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mProColorTuneListShowListener:Lcom/sec/android/app/camera/menu/ProColorTuneList$ProColorTuneListShowListener;

    .line 119
    return-void
.end method

.method public showList()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mShowAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->setAnimation(Landroid/view/animation/Animation;)V

    .line 124
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->startAnimation()V

    .line 126
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ProColorTuneList;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ProColorTuneList;->mProColorTuneListShowListener:Lcom/sec/android/app/camera/menu/ProColorTuneList$ProColorTuneListShowListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/menu/ProColorTuneList$ProColorTuneListShowListener;->onShowProColorTuneList()V

    .line 128
    return-void
.end method
