.class Lcom/android/settings_ex/CryptKeeper$1;
.super Ljava/lang/Object;
.source "CryptKeeper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/CryptKeeper;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/settings_ex/CryptKeeper$1;->this$0:Lcom/android/settings_ex/CryptKeeper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeper$1;->this$0:Lcom/android/settings_ex/CryptKeeper;

    # getter for: Lcom/android/settings_ex/CryptKeeper;->mfailedAttemptCounts:Ljava/lang/Integer;
    invoke-static {}, Lcom/android/settings_ex/CryptKeeper;->access$000()Ljava/lang/Integer;

    move-result-object v1

    # invokes: Lcom/android/settings_ex/CryptKeeper;->handleBadAttempt(Ljava/lang/Integer;)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/CryptKeeper;->access$100(Lcom/android/settings_ex/CryptKeeper;Ljava/lang/Integer;)V

    .line 233
    return-void
.end method
