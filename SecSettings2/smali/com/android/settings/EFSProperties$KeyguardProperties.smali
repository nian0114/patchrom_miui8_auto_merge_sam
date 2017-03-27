.class public Lcom/android/settings_ex/EFSProperties$KeyguardProperties;
.super Ljava/lang/Object;
.source "EFSProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/EFSProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyguardProperties"
.end annotation


# instance fields
.field public AID:[B

.field public csName:[B

.field public enabledSCP:I

.field public pinMaxLength:I

.field public pinMinLength:I

.field public pukMaxLength:I

.field public pukMinLength:I

.field public storageType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 517
    iput-object v1, p0, Lcom/android/settings_ex/EFSProperties$KeyguardProperties;->csName:[B

    .line 518
    iput-object v1, p0, Lcom/android/settings_ex/EFSProperties$KeyguardProperties;->AID:[B

    .line 519
    iput v0, p0, Lcom/android/settings_ex/EFSProperties$KeyguardProperties;->storageType:I

    .line 520
    iput v0, p0, Lcom/android/settings_ex/EFSProperties$KeyguardProperties;->enabledSCP:I

    .line 521
    iput v0, p0, Lcom/android/settings_ex/EFSProperties$KeyguardProperties;->pinMinLength:I

    .line 522
    iput v0, p0, Lcom/android/settings_ex/EFSProperties$KeyguardProperties;->pinMaxLength:I

    .line 523
    iput v0, p0, Lcom/android/settings_ex/EFSProperties$KeyguardProperties;->pukMinLength:I

    .line 524
    iput v0, p0, Lcom/android/settings_ex/EFSProperties$KeyguardProperties;->pukMaxLength:I

    .line 525
    return-void
.end method
