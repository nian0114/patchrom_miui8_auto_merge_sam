.class public Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;
.super Ljava/lang/Object;
.source "HermesServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hermes/HermesServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HermesEvent"
.end annotation


# instance fields
.field private description:Ljava/lang/String;

.field private endTime:J

.field private location:Ljava/lang/String;

.field private startTime:J

.field final synthetic this$0:Lcom/samsung/android/hermes/HermesServiceManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hermes/HermesServiceManager;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p2, "startTime"    # J
    .param p4, "endTime"    # J
    .param p6, "location"    # Ljava/lang/String;
    .param p7, "description"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;->this$0:Lcom/samsung/android/hermes/HermesServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;->startTime:J

    iput-wide v2, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;->endTime:J

    iput-object v0, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;->location:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;->description:Ljava/lang/String;

    iput-wide p2, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;->startTime:J

    iput-wide p4, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;->endTime:J

    iput-object p6, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;->location:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;->endTime:J

    return-wide v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;->startTime:J

    return-wide v0
.end method
