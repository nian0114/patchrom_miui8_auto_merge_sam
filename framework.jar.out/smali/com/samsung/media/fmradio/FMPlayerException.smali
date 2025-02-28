.class public Lcom/samsung/media/fmradio/FMPlayerException;
.super Ljava/lang/Exception;
.source "FMPlayerException.java"


# static fields
.field public static final AIRPLANE_MODE:I = 0x5

.field public static final BATTERY_LOW:I = 0x6

.field public static final HEAD_SET_IS_NOT_PLUGGED:I = 0x4

.field public static final PLAYER_IS_NOT_ON:I = 0x1

.field public static final PLAYER_SCANNING:I = 0x3

.field public static final RADIO_SERVICE_DOWN:I = 0x2

.field public static final TV_OUT_PLUGGED:I = 0x7

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mCode:I

.field private mThrowable:Ljava/lang/Throwable;

.field private msg:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput p1, p0, Lcom/samsung/media/fmradio/FMPlayerException;->mCode:I

    iput-object p2, p0, Lcom/samsung/media/fmradio/FMPlayerException;->msg:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/media/fmradio/FMPlayerException;->mThrowable:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/samsung/media/fmradio/FMPlayerException;->mCode:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMPlayerException;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMPlayerException;->mThrowable:Ljava/lang/Throwable;

    return-object v0
.end method
