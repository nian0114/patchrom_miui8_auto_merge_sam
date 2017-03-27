.class Lcom/android/settings_ex/usefulfeature/UsefulFeatureHub$4;
.super Ljava/lang/Object;
.source "UsefulFeatureHub.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/usefulfeature/UsefulFeatureHub;->makeTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/usefulfeature/UsefulFeatureHub;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/usefulfeature/UsefulFeatureHub;)V
    .locals 0

    .prologue
    .line 503
    iput-object p1, p0, Lcom/android/settings_ex/usefulfeature/UsefulFeatureHub$4;->this$0:Lcom/android/settings_ex/usefulfeature/UsefulFeatureHub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/settings_ex/usefulfeature/UsefulFeatureHub$4;->this$0:Lcom/android/settings_ex/usefulfeature/UsefulFeatureHub;

    # invokes: Lcom/android/settings_ex/usefulfeature/UsefulFeatureHub;->dismissAllDialog()V
    invoke-static {v0}, Lcom/android/settings_ex/usefulfeature/UsefulFeatureHub;->access$800(Lcom/android/settings_ex/usefulfeature/UsefulFeatureHub;)V

    .line 506
    return-void
.end method
