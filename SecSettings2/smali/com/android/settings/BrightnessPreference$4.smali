.class Lcom/android/settings_ex/BrightnessPreference$4;
.super Ljava/lang/Object;
.source "BrightnessPreference.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/BrightnessPreference;->setFlipCloseStatus(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/BrightnessPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/BrightnessPreference;)V
    .locals 0

    .prologue
    .line 606
    iput-object p1, p0, Lcom/android/settings_ex/BrightnessPreference$4;->this$0:Lcom/android/settings_ex/BrightnessPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 609
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference$4;->this$0:Lcom/android/settings_ex/BrightnessPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e1120

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 613
    :cond_0
    return v2
.end method
