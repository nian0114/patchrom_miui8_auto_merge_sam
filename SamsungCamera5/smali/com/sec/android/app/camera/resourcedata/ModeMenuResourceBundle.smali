.class public final Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
.super Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
.source "ModeMenuResourceBundle.java"


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mDownloaded:I

.field private mId:I

.field private mName:Ljava/lang/String;

.field private mOrder:I

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>([I)V
    .locals 1
    .param p1, "ids"    # [I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    .line 30
    const v0, 0x7fffffff

    iput v0, p0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->mOrder:I

    .line 31
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloaded()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->mDownloaded:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->mId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->mDescription:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setDownloaded(I)V
    .locals 0
    .param p1, "downloaded"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->mDownloaded:I

    .line 63
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->mId:I

    .line 83
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->mName:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setOrder(I)V
    .locals 0
    .param p1, "order"    # I

    .prologue
    .line 118
    iput p1, p0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->mOrder:I

    .line 119
    return-void
.end method

.method public setPackage(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->mPackageName:Ljava/lang/String;

    .line 115
    return-void
.end method
