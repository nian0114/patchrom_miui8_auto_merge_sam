.class Lcom/android/internal/telephony/cat/CatService$1;
.super Ljava/lang/Object;
.source "CatService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/CatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cat/CatService;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CatService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService$1;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    # getter for: Lcom/android/internal/telephony/cat/CatService;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->access$000()[Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService$1;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # getter for: Lcom/android/internal/telephony/cat/CatService;->mSlotId:I
    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->access$100(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->refreshUiccVer()V

    return-void
.end method
