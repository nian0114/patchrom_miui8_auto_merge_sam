.class Lcom/android/settings_ex/DisplayScalingActivity$3;
.super Ljava/lang/Object;
.source "DisplayScalingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DisplayScalingActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DisplayScalingActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DisplayScalingActivity;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/android/settings_ex/DisplayScalingActivity$3;->this$0:Lcom/android/settings_ex/DisplayScalingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/settings_ex/DisplayScalingActivity$3;->this$0:Lcom/android/settings_ex/DisplayScalingActivity;

    invoke-virtual {v0}, Lcom/android/settings_ex/DisplayScalingActivity;->finish()V

    .line 343
    return-void
.end method
