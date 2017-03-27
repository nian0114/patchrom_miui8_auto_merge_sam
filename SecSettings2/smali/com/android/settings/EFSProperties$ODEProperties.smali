.class public Lcom/android/settings_ex/EFSProperties$ODEProperties;
.super Ljava/lang/Object;
.source "EFSProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/EFSProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ODEProperties"
.end annotation


# instance fields
.field public AID:[B

.field public CertAdminID:I

.field public CertAlias:[B

.field public CertLocation:[B

.field public CertUserID:I

.field public authMaxCnt:I

.field public authMode:I

.field public csName:[B

.field public enabledSCP:I

.field public enabledUCSInODE:I

.field public enabledWrap:I

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

    const/4 v0, 0x0

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    iput v0, p0, Lcom/android/settings_ex/EFSProperties$ODEProperties;->enabledUCSInODE:I

    .line 415
    iput-object v1, p0, Lcom/android/settings_ex/EFSProperties$ODEProperties;->AID:[B

    .line 416
    iput v0, p0, Lcom/android/settings_ex/EFSProperties$ODEProperties;->storageType:I

    .line 417
    iput v0, p0, Lcom/android/settings_ex/EFSProperties$ODEProperties;->enabledSCP:I

    .line 418
    iput v0, p0, Lcom/android/settings_ex/EFSProperties$ODEProperties;->enabledWrap:I

    .line 419
    iput v0, p0, Lcom/android/settings_ex/EFSProperties$ODEProperties;->pinMinLength:I

    .line 420
    iput v0, p0, Lcom/android/settings_ex/EFSProperties$ODEProperties;->pinMaxLength:I

    .line 421
    iput v0, p0, Lcom/android/settings_ex/EFSProperties$ODEProperties;->authMode:I

    .line 422
    iput v0, p0, Lcom/android/settings_ex/EFSProperties$ODEProperties;->authMaxCnt:I

    .line 423
    iput v0, p0, Lcom/android/settings_ex/EFSProperties$ODEProperties;->pukMinLength:I

    .line 424
    iput v0, p0, Lcom/android/settings_ex/EFSProperties$ODEProperties;->pukMaxLength:I

    .line 425
    iput-object v1, p0, Lcom/android/settings_ex/EFSProperties$ODEProperties;->csName:[B

    .line 426
    iput v0, p0, Lcom/android/settings_ex/EFSProperties$ODEProperties;->CertAdminID:I

    .line 427
    iput v0, p0, Lcom/android/settings_ex/EFSProperties$ODEProperties;->CertUserID:I

    .line 428
    iput-object v1, p0, Lcom/android/settings_ex/EFSProperties$ODEProperties;->CertAlias:[B

    .line 429
    iput-object v1, p0, Lcom/android/settings_ex/EFSProperties$ODEProperties;->CertLocation:[B

    .line 430
    return-void
.end method
