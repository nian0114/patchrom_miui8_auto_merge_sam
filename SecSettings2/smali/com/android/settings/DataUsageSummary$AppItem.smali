.class public Lcom/android/settings_ex/DataUsageSummary$AppItem;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settings_ex/DataUsageSummary$AppItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/settings_ex/DataUsageSummary$AppItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public category:I

.field public final key:I

.field public restricted:Z

.field public total:J

.field public uids:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4341
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$AppItem$1;

    invoke-direct {v0}, Lcom/android/settings_ex/DataUsageSummary$AppItem$1;-><init>()V

    sput-object v0, Lcom/android/settings_ex/DataUsageSummary$AppItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4299
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$AppItem;->uids:Landroid/util/SparseBooleanArray;

    .line 4303
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/DataUsageSummary$AppItem;->key:I

    .line 4304
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 4306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4299
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$AppItem;->uids:Landroid/util/SparseBooleanArray;

    .line 4307
    iput p1, p0, Lcom/android/settings_ex/DataUsageSummary$AppItem;->key:I

    .line 4308
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 4310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4299
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$AppItem;->uids:Landroid/util/SparseBooleanArray;

    .line 4311
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/DataUsageSummary$AppItem;->key:I

    .line 4312
    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$AppItem;->uids:Landroid/util/SparseBooleanArray;

    .line 4313
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings_ex/DataUsageSummary$AppItem;->total:J

    .line 4314
    return-void
.end method


# virtual methods
.method public addUid(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 4317
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$AppItem;->uids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 4318
    return-void
.end method

.method public compareTo(Lcom/android/settings_ex/DataUsageSummary$AppItem;)I
    .locals 6
    .param p1, "another"    # Lcom/android/settings_ex/DataUsageSummary$AppItem;

    .prologue
    .line 4334
    iget v1, p0, Lcom/android/settings_ex/DataUsageSummary$AppItem;->category:I

    iget v2, p1, Lcom/android/settings_ex/DataUsageSummary$AppItem;->category:I

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 4335
    .local v0, "comparison":I
    if-nez v0, :cond_0

    .line 4336
    iget-wide v2, p1, Lcom/android/settings_ex/DataUsageSummary$AppItem;->total:J

    iget-wide v4, p0, Lcom/android/settings_ex/DataUsageSummary$AppItem;->total:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 4338
    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 4290
    check-cast p1, Lcom/android/settings_ex/DataUsageSummary$AppItem;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DataUsageSummary$AppItem;->compareTo(Lcom/android/settings_ex/DataUsageSummary$AppItem;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 4329
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 4322
    iget v0, p0, Lcom/android/settings_ex/DataUsageSummary$AppItem;->key:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4323
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$AppItem;->uids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V

    .line 4324
    iget-wide v0, p0, Lcom/android/settings_ex/DataUsageSummary$AppItem;->total:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4325
    return-void
.end method
