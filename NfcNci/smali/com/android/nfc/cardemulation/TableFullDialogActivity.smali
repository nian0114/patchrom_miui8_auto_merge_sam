.class public Lcom/android/nfc/cardemulation/TableFullDialogActivity;
.super Landroid/app/Activity;
.source "TableFullDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/TableFullDialogActivity$HceAppAdapter;,
        Lcom/android/nfc/cardemulation/TableFullDialogActivity$HceAppListOnClickListener;
    }
.end annotation


# instance fields
.field latestPkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/TableFullDialogActivity;->latestPkgName:Ljava/lang/String;

    .line 179
    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/cardemulation/TableFullDialogActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/cardemulation/TableFullDialogActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/TableFullDialogActivity;->removeApp(Ljava/lang/String;)V

    return-void
.end method

.method private findLatestPkg(Ljava/util/ArrayList;)Landroid/content/pm/PackageInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)",
            "Landroid/content/pm/PackageInfo;"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, "hcePkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    const/4 v1, 0x0

    .line 141
    .local v1, "latestPkgInfo":Landroid/content/pm/PackageInfo;
    const-wide/16 v2, 0x0

    .line 142
    .local v2, "lastModifiedTime":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 143
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 144
    .local v4, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-wide v6, v4, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v5, v2, v6

    if-gtz v5, :cond_0

    .line 145
    iget-wide v2, v4, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 146
    move-object v1, v4

    .line 142
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    .end local v4    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    return-object v1
.end method

.method private getInstalledPkgs(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v11, "pkgInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 99
    .local v8, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v14, 0x4

    invoke-virtual {v8, v14}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 101
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageInfo;>;"
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 102
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageInfo;

    .line 103
    .local v9, "pi":Landroid/content/pm/PackageInfo;
    iget-object v14, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v14, v14, 0x1

    if-nez v14, :cond_0

    .line 105
    iget-object v13, v9, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 106
    .local v13, "svclist":[Landroid/content/pm/ServiceInfo;
    iget-object v14, v9, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v14, :cond_0

    .line 107
    move-object v0, v13

    .local v0, "arr$":[Landroid/content/pm/ServiceInfo;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v7, :cond_0

    aget-object v12, v0, v4

    .line 108
    .local v12, "svcInfo":Landroid/content/pm/ServiceInfo;
    iget-object v14, v12, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    if-eqz v14, :cond_1

    iget-object v14, v12, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v15, "android.permission.BIND_NFC_SERVICE"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 112
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 120
    .end local v0    # "arr$":[Landroid/content/pm/ServiceInfo;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    .end local v9    # "pi":Landroid/content/pm/PackageInfo;
    .end local v12    # "svcInfo":Landroid/content/pm/ServiceInfo;
    .end local v13    # "svclist":[Landroid/content/pm/ServiceInfo;
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v2, "finalPkgInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v3, v14, :cond_6

    .line 122
    const/4 v1, 0x0

    .line 123
    .local v1, "duplicated":Z
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageInfo;

    .line 124
    .local v10, "pkgInfo":Landroid/content/pm/PackageInfo;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v6, v14, :cond_3

    .line 125
    iget-object v14, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageInfo;

    iget-object v14, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 127
    const/4 v1, 0x1

    .line 131
    :cond_3
    if-nez v1, :cond_4

    .line 132
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 124
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 135
    .end local v1    # "duplicated":Z
    .end local v6    # "j":I
    .end local v10    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_6
    return-object v2
.end method

.method private removeApp(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 153
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DELETE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 156
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/TableFullDialogActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-direct {p0, p0}, Lcom/android/nfc/cardemulation/TableFullDialogActivity;->getInstalledPkgs(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 56
    .local v0, "hcePkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    invoke-direct {p0, v0}, Lcom/android/nfc/cardemulation/TableFullDialogActivity;->findLatestPkg(Ljava/util/ArrayList;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 57
    .local v1, "latestPkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 58
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/TableFullDialogActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/android/nfc/cardemulation/TableFullDialogActivity;->latestPkgName:Ljava/lang/String;

    .line 60
    :cond_0
    const v2, 0x7f03000c

    invoke-virtual {p0, v2}, Lcom/android/nfc/cardemulation/TableFullDialogActivity;->setContentView(I)V

    .line 61
    return-void
.end method

.method protected onResume()V
    .locals 9

    .prologue
    .line 66
    invoke-direct {p0, p0}, Lcom/android/nfc/cardemulation/TableFullDialogActivity;->getInstalledPkgs(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 68
    .local v1, "hcePkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    const v6, 0x7f090017

    invoke-virtual {p0, v6}, Lcom/android/nfc/cardemulation/TableFullDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 69
    .local v5, "tvExplain":Landroid/widget/TextView;
    const v6, 0x7f070045

    invoke-virtual {p0, v6}, Lcom/android/nfc/cardemulation/TableFullDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "formatString":Ljava/lang/String;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/nfc/cardemulation/TableFullDialogActivity;->latestPkgName:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "msg":Ljava/lang/String;
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_0

    .line 73
    const v6, 0x7f090018

    invoke-virtual {p0, v6}, Lcom/android/nfc/cardemulation/TableFullDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 74
    .local v2, "lv":Landroid/widget/ListView;
    new-instance v6, Lcom/android/nfc/cardemulation/TableFullDialogActivity$HceAppAdapter;

    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/TableFullDialogActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-direct {v6, p0, p0, v7, v1}, Lcom/android/nfc/cardemulation/TableFullDialogActivity$HceAppAdapter;-><init>(Lcom/android/nfc/cardemulation/TableFullDialogActivity;Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    new-instance v6, Lcom/android/nfc/cardemulation/TableFullDialogActivity$HceAppListOnClickListener;

    invoke-direct {v6, p0, v1}, Lcom/android/nfc/cardemulation/TableFullDialogActivity$HceAppListOnClickListener;-><init>(Lcom/android/nfc/cardemulation/TableFullDialogActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 81
    .end local v2    # "lv":Landroid/widget/ListView;
    :goto_0
    const v6, 0x7f090019

    invoke-virtual {p0, v6}, Lcom/android/nfc/cardemulation/TableFullDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 82
    .local v4, "okButton":Landroid/widget/Button;
    new-instance v6, Lcom/android/nfc/cardemulation/TableFullDialogActivity$1;

    invoke-direct {v6, p0}, Lcom/android/nfc/cardemulation/TableFullDialogActivity$1;-><init>(Lcom/android/nfc/cardemulation/TableFullDialogActivity;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 92
    return-void

    .line 78
    .end local v4    # "okButton":Landroid/widget/Button;
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/TableFullDialogActivity;->finish()V

    goto :goto_0
.end method
