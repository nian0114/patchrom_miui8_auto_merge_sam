.class Lcom/android/settings_ex/FontPreview$4;
.super Ljava/lang/Object;
.source "FontPreview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/FontPreview;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/FontPreview;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/FontPreview;)V
    .locals 0

    .prologue
    .line 912
    iput-object p1, p0, Lcom/android/settings_ex/FontPreview$4;->this$0:Lcom/android/settings_ex/FontPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 915
    iget-object v0, p0, Lcom/android/settings_ex/FontPreview$4;->this$0:Lcom/android/settings_ex/FontPreview;

    invoke-virtual {v0}, Lcom/android/settings_ex/FontPreview;->finish()V

    .line 916
    return-void
.end method
