.class Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;
.super Lcom/gsma/services/nfc/OffHostService;
.source "DynamicServiceManager.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/DynamicServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalOffHostService"
.end annotation


# instance fields
.field private bannerName:Ljava/lang/String;

.field private isDefault:Z

.field private uid:I

.field private userId:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "seName"    # Ljava/lang/String;
    .param p3, "component"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 777
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/gsma/services/nfc/OffHostService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    iput-boolean v2, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->isDefault:Z

    .line 766
    iput v2, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->userId:I

    .line 767
    iput v2, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->uid:I

    .line 768
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->bannerName:Ljava/lang/String;

    .line 779
    invoke-virtual {p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->setVirtualClassName(Ljava/lang/String;)V

    .line 780
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/gsma/services/nfc/OffHostService$extraInfo;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "seName"    # Ljava/lang/String;
    .param p3, "banner"    # Landroid/graphics/drawable/Drawable;
    .param p4, "info"    # Lcom/gsma/services/nfc/OffHostService$extraInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            "Lcom/gsma/services/nfc/OffHostService$extraInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/gsma/services/nfc/AidGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, "group":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gsma/services/nfc/AidGroup;>;"
    const/4 v0, 0x0

    .line 772
    invoke-direct/range {p0 .. p5}, Lcom/gsma/services/nfc/OffHostService;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/gsma/services/nfc/OffHostService$extraInfo;Ljava/util/ArrayList;)V

    .line 765
    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->isDefault:Z

    .line 766
    iput v0, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->userId:I

    .line 767
    iput v0, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->uid:I

    .line 768
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->bannerName:Ljava/lang/String;

    .line 773
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "seName"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "className"    # Ljava/lang/String;
    .param p5, "isDefault"    # Z
    .param p6, "userId"    # I
    .param p7, "uid"    # I
    .param p8, "bannerName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 785
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gsma/services/nfc/OffHostService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->isDefault:Z

    .line 766
    iput v0, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->userId:I

    .line 767
    iput v0, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->uid:I

    .line 768
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->bannerName:Ljava/lang/String;

    .line 786
    iput-boolean p5, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->isDefault:Z

    .line 787
    iput p6, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->userId:I

    .line 788
    iput p7, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->uid:I

    .line 789
    iput-object p8, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->bannerName:Ljava/lang/String;

    .line 790
    return-void
.end method


# virtual methods
.method public clone()Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;
    .locals 11

    .prologue
    .line 873
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 874
    .local v5, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gsma/services/nfc/AidGroup;>;"
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getAidGroups()[Lcom/gsma/services/nfc/AidGroup;

    move-result-object v10

    .line 875
    .local v10, "list":[Lcom/gsma/services/nfc/AidGroup;
    if-eqz v10, :cond_0

    array-length v1, v10

    if-lez v1, :cond_0

    .line 876
    move-object v6, v10

    .local v6, "arr$":[Lcom/gsma/services/nfc/AidGroup;
    array-length v9, v6

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v9, :cond_0

    aget-object v7, v6, v8

    .line 877
    .local v7, "group":Lcom/gsma/services/nfc/AidGroup;
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 876
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 878
    .end local v6    # "arr$":[Lcom/gsma/services/nfc/AidGroup;
    .end local v7    # "group":Lcom/gsma/services/nfc/AidGroup;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    :cond_0
    new-instance v0, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;

    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getBanner()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getExtraInfo()Lcom/gsma/services/nfc/OffHostService$extraInfo;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/gsma/services/nfc/OffHostService$extraInfo;Ljava/util/ArrayList;)V

    .line 881
    .local v0, "service":Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getBannerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->setBannerName(Ljava/lang/String;)V

    .line 882
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->isDefault()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->setDefaultService(Z)V

    .line 883
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->setUid(I)V

    .line 884
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->setUserId(I)V

    .line 885
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 764
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->clone()Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;

    move-result-object v0

    return-object v0
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 853
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 854
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    location: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getLocation()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 855
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    description: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 856
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    default: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->isDefault()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 858
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    key: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", uid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getUid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", userid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 859
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getAidGroups()[Lcom/gsma/services/nfc/AidGroup;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 860
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getAidGroups()[Lcom/gsma/services/nfc/AidGroup;

    move-result-object v2

    .local v2, "arr$":[Lcom/gsma/services/nfc/AidGroup;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v5, v4

    .end local v2    # "arr$":[Lcom/gsma/services/nfc/AidGroup;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v1, v2, v5

    .line 861
    .local v1, "aidgroup":Lcom/gsma/services/nfc/AidGroup;
    const-string v8, "    aid groups: "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 862
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "        category: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/gsma/services/nfc/AidGroup;->getCategory()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 863
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "        description: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/gsma/services/nfc/AidGroup;->getDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 864
    invoke-virtual {v1}, Lcom/gsma/services/nfc/AidGroup;->getAids()[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 865
    invoke-virtual {v1}, Lcom/gsma/services/nfc/AidGroup;->getAids()[Ljava/lang/String;

    move-result-object v3

    .local v3, "arr$":[Ljava/lang/String;
    array-length v7, v3

    .local v7, "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    :goto_1
    if-ge v4, v7, :cond_0

    aget-object v0, v3, v4

    .line 866
    .local v0, "aid":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "            aid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 865
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 860
    .end local v0    # "aid":Ljava/lang/String;
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    :cond_0
    add-int/lit8 v4, v5, 0x1

    .restart local v4    # "i$":I
    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_0

    .line 869
    .end local v1    # "aidgroup":Lcom/gsma/services/nfc/AidGroup;
    .end local v5    # "i$":I
    :cond_1
    return-void
.end method

.method getBannerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->bannerName:Ljava/lang/String;

    return-object v0
.end method

.method getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 829
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getExtraInfo()Lcom/gsma/services/nfc/OffHostService$extraInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gsma/services/nfc/OffHostService$extraInfo;->getClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getComponent()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 849
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getVirtualClassName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 841
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getExtraInfo()Lcom/gsma/services/nfc/OffHostService$extraInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gsma/services/nfc/OffHostService$extraInfo;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 825
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getExtraInfo()Lcom/gsma/services/nfc/OffHostService$extraInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gsma/services/nfc/OffHostService$extraInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getUid()I
    .locals 1

    .prologue
    .line 817
    iget v0, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->uid:I

    return v0
.end method

.method getUserId()I
    .locals 1

    .prologue
    .line 809
    iget v0, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->userId:I

    return v0
.end method

.method getVirtualClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 833
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getExtraInfo()Lcom/gsma/services/nfc/OffHostService$extraInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gsma/services/nfc/OffHostService$extraInfo;->getVirtualClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method isDefault()Z
    .locals 1

    .prologue
    .line 801
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->isDefault:Z

    return v0
.end method

.method setBannerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bannerName"    # Ljava/lang/String;

    .prologue
    .line 797
    iput-object p1, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->bannerName:Ljava/lang/String;

    .line 798
    return-void
.end method

.method setDefaultService(Z)V
    .locals 0
    .param p1, "isDefault"    # Z

    .prologue
    .line 805
    iput-boolean p1, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->isDefault:Z

    .line 806
    return-void
.end method

.method setKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 845
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getExtraInfo()Lcom/gsma/services/nfc/OffHostService$extraInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gsma/services/nfc/OffHostService$extraInfo;->setKey(Ljava/lang/String;)V

    .line 846
    return-void
.end method

.method setUid(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 821
    iput p1, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->uid:I

    .line 822
    return-void
.end method

.method setUserId(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 813
    iput p1, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->userId:I

    .line 814
    return-void
.end method

.method setVirtualClassName(Ljava/lang/String;)V
    .locals 1
    .param p1, "virtualClassName"    # Ljava/lang/String;

    .prologue
    .line 837
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getExtraInfo()Lcom/gsma/services/nfc/OffHostService$extraInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gsma/services/nfc/OffHostService$extraInfo;->setVirtualClassName(Ljava/lang/String;)V

    .line 838
    return-void
.end method
