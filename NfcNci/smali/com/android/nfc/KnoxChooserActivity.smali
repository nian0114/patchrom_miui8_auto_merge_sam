.class public Lcom/android/nfc/KnoxChooserActivity;
.super Lcom/android/internal/app/ResolverActivity;
.source "KnoxChooserActivity.java"


# static fields
.field static final EXTRA_RESOLVE_INFOS:Ljava/lang/String; = "rlist"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getGuideActivity()Landroid/content/ComponentName;
    .locals 2

    .prologue
    .line 32
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/nfc/KnoxChooserGuideActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 37
    invoke-virtual {p0}, Lcom/android/nfc/KnoxChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 38
    .local v7, "intent":Landroid/content/Intent;
    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    .line 39
    .local v8, "targetParcelable":Landroid/os/Parcelable;
    instance-of v0, v8, Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 40
    const-string v0, "KnoxChooserActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Target is not an intent: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-virtual {p0}, Lcom/android/nfc/KnoxChooserActivity;->finish()V

    .line 48
    :goto_0
    return-void

    :cond_0
    move-object v2, v8

    .line 44
    check-cast v2, Landroid/content/Intent;

    .line 45
    .local v2, "target":Landroid/content/Intent;
    const-string v0, "rlist"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 47
    .local v5, "rList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    invoke-super/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V

    goto :goto_0
.end method
