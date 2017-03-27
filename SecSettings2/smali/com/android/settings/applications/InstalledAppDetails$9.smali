.class Lcom/android/settings/applications/InstalledAppDetails$9;
.super Ljava/lang/Object;
.source "InstalledAppDetails.java"

# interfaces
.implements Lcom/android/settings/applications/PermissionsSummaryHelper$PermissionsResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/InstalledAppDetails;)V
    .locals 0

    .prologue
    .line 1324
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetails$9;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionSummaryResult([I[Ljava/lang/CharSequence;)V
    .locals 9
    .param p1, "counts"    # [I
    .param p2, "groupLabels"    # [Ljava/lang/CharSequence;

    .prologue
    const/4 v7, 0x1

    .line 1327
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails$9;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v5}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-nez v5, :cond_0

    .line 1357
    :goto_0
    return-void

    .line 1330
    :cond_0
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails$9;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    const/4 v6, 0x0

    # setter for: Lcom/android/settings/applications/InstalledAppDetails;->mPermissionReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v5, v6}, Lcom/android/settings/applications/InstalledAppDetails;->access$1402(Lcom/android/settings/applications/InstalledAppDetails;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 1331
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails$9;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v5}, Lcom/android/settings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1332
    .local v2, "res":Landroid/content/res/Resources;
    const/4 v3, 0x0

    .line 1333
    .local v3, "summary":Ljava/lang/CharSequence;
    if-eqz p1, :cond_1

    .line 1334
    aget v4, p1, v7

    .line 1335
    .local v4, "totalCount":I
    const/4 v5, 0x2

    aget v0, p1, v5

    .line 1337
    .local v0, "additionalCounts":I
    if-nez v4, :cond_2

    .line 1338
    const v5, 0x7f0e0eec

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1356
    .end local v0    # "additionalCounts":I
    .end local v4    # "totalCount":I
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails$9;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    # getter for: Lcom/android/settings/applications/InstalledAppDetails;->mPermissionsPreference:Landroid/preference/Preference;
    invoke-static {v5}, Lcom/android/settings/applications/InstalledAppDetails;->access$1500(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1341
    .restart local v0    # "additionalCounts":I
    .restart local v4    # "totalCount":I
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1342
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    if-lez v0, :cond_3

    .line 1344
    const v5, 0x7f13000f

    new-array v6, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v0, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1348
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_4

    .line 1349
    const v5, 0x7f0e0eeb

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1352
    :cond_4
    invoke-static {}, Landroid/icu/text/ListFormatter;->getInstance()Landroid/icu/text/ListFormatter;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method
