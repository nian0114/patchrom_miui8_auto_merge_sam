.class Lcom/android/settings_ex/applications/ProcessStatsDetail$5;
.super Ljava/lang/Object;
.source "ProcessStatsDetail.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/applications/ProcessStatsDetail;->showStopServiceDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/ProcessStatsDetail;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/ProcessStatsDetail;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail$5;->this$0:Lcom/android/settings_ex/applications/ProcessStatsDetail;

    iput-object p2, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail$5;->val$pkg:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail$5;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail$5;->this$0:Lcom/android/settings_ex/applications/ProcessStatsDetail;

    iget-object v1, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail$5;->val$pkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ex/applications/ProcessStatsDetail$5;->val$name:Ljava/lang/String;

    # invokes: Lcom/android/settings_ex/applications/ProcessStatsDetail;->doStopService(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/applications/ProcessStatsDetail;->access$100(Lcom/android/settings_ex/applications/ProcessStatsDetail;Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    return-void
.end method
