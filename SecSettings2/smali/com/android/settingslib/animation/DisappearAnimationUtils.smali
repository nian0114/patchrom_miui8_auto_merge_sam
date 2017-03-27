.class public Lcom/android/settings_exlib/animation/DisappearAnimationUtils;
.super Lcom/android/settings_exlib/animation/AppearAnimationUtils;
.source "DisappearAnimationUtils.java"


# static fields
.field private static final ROW_TRANSLATION_SCALER:Lcom/android/settings_exlib/animation/AppearAnimationUtils$RowTranslationScaler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/android/settings_exlib/animation/DisappearAnimationUtils$1;

    invoke-direct {v0}, Lcom/android/settings_exlib/animation/DisappearAnimationUtils$1;-><init>()V

    sput-object v0, Lcom/android/settings_exlib/animation/DisappearAnimationUtils;->ROW_TRANSLATION_SCALER:Lcom/android/settings_exlib/animation/AppearAnimationUtils$RowTranslationScaler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "duration"    # J
    .param p4, "translationScaleFactor"    # F
    .param p5, "delayScaleFactor"    # F
    .param p6, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 36
    sget-object v7, Lcom/android/settings_exlib/animation/DisappearAnimationUtils;->ROW_TRANSLATION_SCALER:Lcom/android/settings_exlib/animation/AppearAnimationUtils$RowTranslationScaler;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/settings_exlib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;Lcom/android/settings_exlib/animation/AppearAnimationUtils$RowTranslationScaler;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;Lcom/android/settings_exlib/animation/AppearAnimationUtils$RowTranslationScaler;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "duration"    # J
    .param p4, "translationScaleFactor"    # F
    .param p5, "delayScaleFactor"    # F
    .param p6, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p7, "rowScaler"    # Lcom/android/settings_exlib/animation/AppearAnimationUtils$RowTranslationScaler;

    .prologue
    .line 42
    invoke-direct/range {p0 .. p6}, Lcom/android/settings_exlib/animation/AppearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    .line 43
    iput-object p7, p0, Lcom/android/settings_exlib/animation/DisappearAnimationUtils;->mRowTranslationScaler:Lcom/android/settings_exlib/animation/AppearAnimationUtils$RowTranslationScaler;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_exlib/animation/DisappearAnimationUtils;->mAppearing:Z

    .line 45
    return-void
.end method
