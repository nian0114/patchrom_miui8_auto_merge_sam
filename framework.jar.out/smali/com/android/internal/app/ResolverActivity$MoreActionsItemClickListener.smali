.class Lcom/android/internal/app/ResolverActivity$MoreActionsItemClickListener;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MoreActionsItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivity;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$MoreActionsItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$MoreActionsItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mMoreActions:Lcom/samsung/android/share/SShareMoreActions;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->access$3300(Lcom/android/internal/app/ResolverActivity;)Lcom/samsung/android/share/SShareMoreActions;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$MoreActionsItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mMoreActions:Lcom/samsung/android/share/SShareMoreActions;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->access$3300(Lcom/android/internal/app/ResolverActivity;)Lcom/samsung/android/share/SShareMoreActions;

    move-result-object v1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$MoreActionsItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->access$3400(Lcom/android/internal/app/ResolverActivity;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, p3, v0}, Lcom/samsung/android/share/SShareMoreActions;->startMoreActions(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$MoreActionsItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mVisibleArea:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->access$3500(Lcom/android/internal/app/ResolverActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$MoreActionsItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mMoreActions:Lcom/samsung/android/share/SShareMoreActions;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->access$3300(Lcom/android/internal/app/ResolverActivity;)Lcom/samsung/android/share/SShareMoreActions;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$MoreActionsItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mVisibleArea:Landroid/view/View;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$3500(Lcom/android/internal/app/ResolverActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/share/SShareMoreActions;->setSharePanelVisibleHeight(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$MoreActionsItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    return-void

    :cond_1
    const-string v0, "ResolverActivity"

    const-string v1, "mVisibleArea is null !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x1

    return v0
.end method
