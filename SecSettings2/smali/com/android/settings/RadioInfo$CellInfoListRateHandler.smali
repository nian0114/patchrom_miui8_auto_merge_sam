.class Lcom/android/settings_ex/RadioInfo$CellInfoListRateHandler;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CellInfoListRateHandler"
.end annotation


# instance fields
.field index:I

.field rates:[I

.field final synthetic this$0:Lcom/android/settings_ex/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/RadioInfo;)V
    .locals 1

    .prologue
    .line 952
    iput-object p1, p0, Lcom/android/settings_ex/RadioInfo$CellInfoListRateHandler;->this$0:Lcom/android/settings_ex/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 953
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings_ex/RadioInfo$CellInfoListRateHandler;->rates:[I

    .line 954
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/RadioInfo$CellInfoListRateHandler;->index:I

    return-void

    .line 953
    nop

    :array_0
    .array-data 4
        0x7fffffff
        0x0
        0x3e8
    .end array-data
.end method


# virtual methods
.method public getRate()I
    .locals 2

    .prologue
    .line 957
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo$CellInfoListRateHandler;->rates:[I

    iget v1, p0, Lcom/android/settings_ex/RadioInfo$CellInfoListRateHandler;->index:I

    aget v0, v0, v1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 962
    iget v0, p0, Lcom/android/settings_ex/RadioInfo$CellInfoListRateHandler;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings_ex/RadioInfo$CellInfoListRateHandler;->index:I

    .line 963
    iget v0, p0, Lcom/android/settings_ex/RadioInfo$CellInfoListRateHandler;->index:I

    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo$CellInfoListRateHandler;->rates:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 964
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/RadioInfo$CellInfoListRateHandler;->index:I

    .line 966
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo$CellInfoListRateHandler;->this$0:Lcom/android/settings_ex/RadioInfo;

    # getter for: Lcom/android/settings_ex/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/settings_ex/RadioInfo;->access$2000(Lcom/android/settings_ex/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo$CellInfoListRateHandler;->rates:[I

    iget v2, p0, Lcom/android/settings_ex/RadioInfo$CellInfoListRateHandler;->index:I

    aget v1, v1, v2

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->setCellInfoListRate(I)V

    .line 967
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo$CellInfoListRateHandler;->this$0:Lcom/android/settings_ex/RadioInfo;

    # invokes: Lcom/android/settings_ex/RadioInfo;->updateCellInfoListRate()V
    invoke-static {v0}, Lcom/android/settings_ex/RadioInfo;->access$3600(Lcom/android/settings_ex/RadioInfo;)V

    .line 968
    return-void
.end method
