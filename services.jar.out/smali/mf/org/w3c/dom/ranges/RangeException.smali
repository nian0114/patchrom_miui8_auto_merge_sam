.class public Lmf/org/w3c/dom/ranges/RangeException;
.super Ljava/lang/RuntimeException;
.source "RangeException.java"


# static fields
.field public static final BAD_BOUNDARYPOINTS_ERR:S = 0x1s

.field public static final INVALID_NODE_TYPE_ERR:S = 0x2s


# instance fields
.field public code:S


# direct methods
.method public constructor <init>(SLjava/lang/String;)V
    .locals 0
    .param p1, "code"    # S
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-short p1, p0, Lmf/org/w3c/dom/ranges/RangeException;->code:S

    return-void
.end method
