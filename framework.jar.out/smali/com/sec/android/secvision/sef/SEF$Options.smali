.class public final Lcom/sec/android/secvision/sef/SEF$Options;
.super Ljava/lang/Object;
.source "SEF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/secvision/sef/SEF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Options"
.end annotation


# static fields
.field public static final OVERWRITE_IF_EXISTS:I = 0x1

.field public static final OVERWRITE_IF_EXISTS_MP4:I = 0x1000

.field public static final SKIP_IF_EXISTS:I = 0x0

.field public static final SKIP_IF_EXISTS_MP4:I = 0x100

.field public static final SUBSTITUTE_IF_EXIST:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
