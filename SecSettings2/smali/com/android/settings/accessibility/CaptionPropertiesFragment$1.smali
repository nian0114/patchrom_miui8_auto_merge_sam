.class Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment$1;
.super Ljava/lang/Object;
.source "CaptionPropertiesFragment.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment$1;->this$0:Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;

    # invokes: Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->refreshPreviewText()V
    invoke-static {v0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->access$000(Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;)V

    .line 152
    return-void
.end method
