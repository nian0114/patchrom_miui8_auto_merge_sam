.class Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
.super Ljava/lang/Object;
.source "BatteryStatsDumper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsDumper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PowerObject"
.end annotation


# instance fields
.field isSystem:Z

.field networkUsage:J

.field packageName:Ljava/lang/String;

.field powerUid:D

.field usageTime:J

.field wakeUpCount:I


# direct methods
.method private constructor <init>(DLjava/lang/String;ZJJI)V
    .locals 1
    .param p1, "power"    # D
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "isSystem"    # Z
    .param p5, "networkUsage"    # J
    .param p7, "usageTime"    # J
    .param p9, "wakeUpCount"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->powerUid:D

    iput-object p3, p0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->packageName:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->isSystem:Z

    iput-wide p5, p0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->networkUsage:J

    iput-wide p7, p0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->usageTime:J

    iput p9, p0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->wakeUpCount:I

    return-void
.end method

.method synthetic constructor <init>(DLjava/lang/String;ZJJILcom/android/internal/os/BatteryStatsDumper$1;)V
    .locals 1
    .param p1, "x0"    # D
    .param p3, "x1"    # Ljava/lang/String;
    .param p4, "x2"    # Z
    .param p5, "x3"    # J
    .param p7, "x4"    # J
    .param p9, "x5"    # I
    .param p10, "x6"    # Lcom/android/internal/os/BatteryStatsDumper$1;

    .prologue
    invoke-direct/range {p0 .. p9}, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;-><init>(DLjava/lang/String;ZJJI)V

    return-void
.end method
