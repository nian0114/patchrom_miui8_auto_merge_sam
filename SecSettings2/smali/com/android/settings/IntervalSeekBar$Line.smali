.class Lcom/android/settings_ex/IntervalSeekBar$Line;
.super Ljava/lang/Object;
.source "IntervalSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/IntervalSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Line"
.end annotation


# instance fields
.field public mLineX:F

.field public mStartLineX:F

.field public mTargetLineX:F


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/IntervalSeekBar$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/IntervalSeekBar$1;

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/settings_ex/IntervalSeekBar$Line;-><init>()V

    return-void
.end method
