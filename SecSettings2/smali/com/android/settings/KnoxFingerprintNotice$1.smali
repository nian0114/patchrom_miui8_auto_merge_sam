.class Lcom/android/settings_ex/KnoxFingerprintNotice$1;
.super Ljava/lang/Object;
.source "KnoxFingerprintNotice.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/KnoxFingerprintNotice;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/KnoxFingerprintNotice;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/KnoxFingerprintNotice;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/settings_ex/KnoxFingerprintNotice$1;->this$0:Lcom/android/settings_ex/KnoxFingerprintNotice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/settings_ex/KnoxFingerprintNotice$1;->this$0:Lcom/android/settings_ex/KnoxFingerprintNotice;

    const/4 v1, -0x1

    # invokes: Lcom/android/settings_ex/KnoxFingerprintNotice;->sendIntentToKnoxKeyguard(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/KnoxFingerprintNotice;->access$000(Lcom/android/settings_ex/KnoxFingerprintNotice;I)V

    .line 148
    iget-object v0, p0, Lcom/android/settings_ex/KnoxFingerprintNotice$1;->this$0:Lcom/android/settings_ex/KnoxFingerprintNotice;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/KnoxFingerprintNotice;->setResult(I)V

    .line 149
    iget-object v0, p0, Lcom/android/settings_ex/KnoxFingerprintNotice$1;->this$0:Lcom/android/settings_ex/KnoxFingerprintNotice;

    invoke-virtual {v0}, Lcom/android/settings_ex/KnoxFingerprintNotice;->finish()V

    .line 150
    return-void
.end method
