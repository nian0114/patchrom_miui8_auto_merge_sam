.class Lcom/android/settings_ex/accessibility/colorblind/ColorChipReport$8;
.super Ljava/lang/Object;
.source "ColorChipReport.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/accessibility/colorblind/ColorChipReport;->CreateNegativeColorDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/accessibility/colorblind/ColorChipReport;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/accessibility/colorblind/ColorChipReport;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lcom/android/settings_ex/accessibility/colorblind/ColorChipReport$8;->this$0:Lcom/android/settings_ex/accessibility/colorblind/ColorChipReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v2, 0x0

    .line 406
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/colorblind/ColorChipReport$8;->this$0:Lcom/android/settings_ex/accessibility/colorblind/ColorChipReport;

    invoke-virtual {v0}, Lcom/android/settings_ex/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "color_blind"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 408
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/colorblind/ColorChipReport$8;->this$0:Lcom/android/settings_ex/accessibility/colorblind/ColorChipReport;

    iget-object v0, v0, Lcom/android/settings_ex/accessibility/colorblind/ColorChipReport;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 409
    return-void
.end method
