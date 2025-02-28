.class public Landroid/accounts/ChooseAccountTypeActivity;
.super Landroid/app/Activity;
.source "ChooseAccountTypeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accounts/ChooseAccountTypeActivity$AccountArrayAdapter;,
        Landroid/accounts/ChooseAccountTypeActivity$ViewHolder;,
        Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AccountChooser"


# instance fields
.field private mAuthenticatorInfosToDisplay:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTypeToAuthenticatorInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/accounts/ChooseAccountTypeActivity;->mTypeToAuthenticatorInfo:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Landroid/accounts/ChooseAccountTypeActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/accounts/ChooseAccountTypeActivity;

    .prologue
    iget-object v0, p0, Landroid/accounts/ChooseAccountTypeActivity;->mAuthenticatorInfosToDisplay:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Landroid/accounts/ChooseAccountTypeActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/accounts/ChooseAccountTypeActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/accounts/ChooseAccountTypeActivity;->setResultAndFinish(Ljava/lang/String;)V

    return-void
.end method

.method private buildTypeToAuthDescriptionMap()V
    .locals 14

    .prologue
    const/4 v13, 0x5

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    .local v0, "arr$":[Landroid/accounts/AuthenticatorDescription;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v3, v0, v5

    .local v3, "desc":Landroid/accounts/AuthenticatorDescription;
    const/4 v8, 0x0

    .local v8, "name":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "icon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v10, v3, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Landroid/accounts/ChooseAccountTypeActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .local v1, "authContext":Landroid/content/Context;
    iget v10, v3, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v1, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget v11, v3, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .local v9, "sequence":Ljava/lang/CharSequence;
    if-eqz v9, :cond_0

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_0
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .end local v1    # "authContext":Landroid/content/Context;
    .end local v9    # "sequence":Ljava/lang/CharSequence;
    :cond_1
    :goto_1
    new-instance v2, Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;

    invoke-direct {v2, v3, v8, v6}, Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;-><init>(Landroid/accounts/AuthenticatorDescription;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .local v2, "authInfo":Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;
    iget-object v10, p0, Landroid/accounts/ChooseAccountTypeActivity;->mTypeToAuthenticatorInfo:Ljava/util/HashMap;

    iget-object v11, v3, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v10, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v2    # "authInfo":Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;
    :catch_0
    move-exception v4

    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "AccountChooser"

    invoke-static {v10, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "AccountChooser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No icon name for account type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v3, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v4

    .local v4, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v10, "AccountChooser"

    invoke-static {v10, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "AccountChooser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No icon resource for account type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v3, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v3    # "desc":Landroid/accounts/AuthenticatorDescription;
    .end local v4    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v6    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v8    # "name":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private setResultAndFinish(Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "accountType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/accounts/ChooseAccountTypeActivity;->setResult(ILandroid/content/Intent;)V

    const-string v1, "AccountChooser"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "AccountChooser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChooseAccountTypeActivity.setResultAndFinish: selected account type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroid/accounts/ChooseAccountTypeActivity;->finish()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v13, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v10, "AccountChooser"

    const/4 v11, 0x2

    invoke-static {v10, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "AccountChooser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ChooseAccountTypeActivity.onCreate(savedInstanceState="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v7, 0x0

    .local v7, "setOfAllowableAccountTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/accounts/ChooseAccountTypeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "allowableAccountTypes"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .local v9, "validAccountTypes":[Ljava/lang/String;
    if-eqz v9, :cond_1

    new-instance v7, Ljava/util/HashSet;

    .end local v7    # "setOfAllowableAccountTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v10, v9

    invoke-direct {v7, v10}, Ljava/util/HashSet;-><init>(I)V

    .restart local v7    # "setOfAllowableAccountTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v0, v9

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v8, v0, v3

    .local v8, "type":Ljava/lang/String;
    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v8    # "type":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Landroid/accounts/ChooseAccountTypeActivity;->buildTypeToAuthDescriptionMap()V

    new-instance v10, Ljava/util/ArrayList;

    iget-object v11, p0, Landroid/accounts/ChooseAccountTypeActivity;->mTypeToAuthenticatorInfo:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v10, p0, Landroid/accounts/ChooseAccountTypeActivity;->mAuthenticatorInfosToDisplay:Ljava/util/ArrayList;

    iget-object v10, p0, Landroid/accounts/ChooseAccountTypeActivity;->mTypeToAuthenticatorInfo:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .restart local v8    # "type":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;

    .local v4, "info":Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;
    if-eqz v7, :cond_3

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_3
    iget-object v10, p0, Landroid/accounts/ChooseAccountTypeActivity;->mAuthenticatorInfosToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;>;"
    .end local v4    # "info":Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;
    .end local v8    # "type":Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Landroid/accounts/ChooseAccountTypeActivity;->mAuthenticatorInfosToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_5

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .local v1, "bundle":Landroid/os/Bundle;
    const-string v10, "errorMessage"

    const-string v11, "no allowable account types"

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, -0x1

    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v11, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Landroid/accounts/ChooseAccountTypeActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/accounts/ChooseAccountTypeActivity;->finish()V

    .end local v1    # "bundle":Landroid/os/Bundle;
    :goto_2
    return-void

    :cond_5
    iget-object v10, p0, Landroid/accounts/ChooseAccountTypeActivity;->mAuthenticatorInfosToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    iget-object v10, p0, Landroid/accounts/ChooseAccountTypeActivity;->mAuthenticatorInfosToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;

    iget-object v10, v10, Landroid/accounts/ChooseAccountTypeActivity$AuthInfo;->desc:Landroid/accounts/AuthenticatorDescription;

    iget-object v10, v10, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-direct {p0, v10}, Landroid/accounts/ChooseAccountTypeActivity;->setResultAndFinish(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const v10, 0x1090041

    invoke-virtual {p0, v10}, Landroid/accounts/ChooseAccountTypeActivity;->setContentView(I)V

    const v10, 0x102000a

    invoke-virtual {p0, v10}, Landroid/accounts/ChooseAccountTypeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    .local v6, "list":Landroid/widget/ListView;
    new-instance v10, Landroid/accounts/ChooseAccountTypeActivity$AccountArrayAdapter;

    const v11, 0x1090003

    iget-object v12, p0, Landroid/accounts/ChooseAccountTypeActivity;->mAuthenticatorInfosToDisplay:Ljava/util/ArrayList;

    invoke-direct {v10, p0, v11, v12}, Landroid/accounts/ChooseAccountTypeActivity$AccountArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    invoke-virtual {v6, v10}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v6, v13}, Landroid/widget/ListView;->setChoiceMode(I)V

    invoke-virtual {v6, v13}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    new-instance v10, Landroid/accounts/ChooseAccountTypeActivity$1;

    invoke-direct {v10, p0}, Landroid/accounts/ChooseAccountTypeActivity$1;-><init>(Landroid/accounts/ChooseAccountTypeActivity;)V

    invoke-virtual {v6, v10}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_2
.end method
