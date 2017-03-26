.class public final Lcom/sec/android/app/camera/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final SpinnerCustomPreference:[I

.field public static final SpinnerCustomPreference_defaultValue:I = 0x0

.field public static final SpinnerCustomPreference_entries:I = 0x2

.field public static final SpinnerCustomPreference_entryValues:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2620
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/app/camera/R$styleable;->SpinnerCustomPreference:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010002
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
