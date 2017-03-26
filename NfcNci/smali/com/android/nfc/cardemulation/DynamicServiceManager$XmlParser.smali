.class Lcom/android/nfc/cardemulation/DynamicServiceManager$XmlParser;
.super Ljava/lang/Object;
.source "DynamicServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/DynamicServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XmlParser"
.end annotation


# static fields
.field private static final FILE_NAME:Ljava/lang/String; = "dynamic_services.xml"

.field private static final TAG:Ljava/lang/String; = "DynamicServiceXmlManager"

.field private static final XML_INDENT_OUTPUT_FEATURE:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#indent-output"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFile:Landroid/util/AtomicFile;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 531
    iput-object p1, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager$XmlParser;->mContext:Landroid/content/Context;

    .line 532
    iget-object v1, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager$XmlParser;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 533
    .local v0, "dataDir":Ljava/io/File;
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    const-string v3, "dynamic_services.xml"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/nfc/cardemulation/DynamicServiceManager$XmlParser;->mFile:Landroid/util/AtomicFile;

    .line 534
    return-void
.end method

.method private createAidGroupFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/gsma/services/nfc/OffHostService;)Z
    .locals 13
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "service"    # Lcom/gsma/services/nfc/OffHostService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 703
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 704
    :cond_0
    const-string v10, "DynamicServiceXmlManager"

    const-string v11, "parse or service is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    const/4 v10, 0x0

    .line 750
    :goto_0
    return v10

    .line 708
    :cond_1
    const/4 v2, 0x0

    .line 709
    .local v2, "category":Ljava/lang/String;
    const/4 v3, 0x0

    .line 710
    .local v3, "description":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 711
    .local v1, "aids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 712
    .local v5, "group":Lcom/gsma/services/nfc/AidGroup;
    const/4 v7, 0x0

    .line 713
    .local v7, "inGroup":Z
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 714
    .local v4, "eventType":I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    .line 717
    .local v8, "minDepth":I
    :goto_1
    const/4 v10, 0x1

    if-eq v4, v10, :cond_9

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    if-lt v10, v8, :cond_9

    .line 718
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 719
    .local v9, "tagName":Ljava/lang/String;
    const/4 v10, 0x2

    if-ne v4, v10, :cond_7

    .line 720
    const-string v10, "aid"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 721
    if-eqz v7, :cond_3

    .line 722
    const/4 v10, 0x0

    const-string v11, "value"

    invoke-interface {p1, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 723
    .local v0, "aid":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 724
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 748
    .end local v0    # "aid":Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 749
    goto :goto_1

    .line 726
    :cond_3
    const-string v10, "DynamicServiceXmlManager"

    const-string v11, "ignoring <aid> tag while not in group"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 728
    :cond_4
    const-string v10, "aid-group"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 729
    const/4 v10, 0x0

    const-string v11, "category"

    invoke-interface {p1, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 730
    const/4 v10, 0x0

    const-string v11, "description"

    invoke-interface {p1, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 732
    if-nez v2, :cond_5

    .line 733
    const-string v10, "DynamicServiceXmlManager"

    const-string v11, "<aid-group> tag without valid description"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    const/4 v10, 0x0

    goto :goto_0

    .line 736
    :cond_5
    const/4 v7, 0x1

    goto :goto_2

    .line 738
    :cond_6
    const-string v10, "DynamicServiceXmlManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ignoring unexpected tag: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 740
    :cond_7
    const/4 v10, 0x3

    if-ne v4, v10, :cond_2

    .line 741
    const-string v10, "aid-group"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    if-eqz v7, :cond_2

    .line 742
    invoke-virtual {p2, v3, v2}, Lcom/gsma/services/nfc/OffHostService;->defineAidGroup(Ljava/lang/String;Ljava/lang/String;)Lcom/gsma/services/nfc/AidGroup;

    move-result-object v5

    .line 743
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 744
    .restart local v0    # "aid":Ljava/lang/String;
    invoke-virtual {v5, v0}, Lcom/gsma/services/nfc/AidGroup;->addNewAid(Ljava/lang/String;)V

    goto :goto_3

    .line 745
    .end local v0    # "aid":Ljava/lang/String;
    :cond_8
    const/4 v7, 0x0

    goto :goto_2

    .line 750
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v9    # "tagName":Ljava/lang/String;
    :cond_9
    const/4 v10, 0x1

    goto/16 :goto_0
.end method

.method private findOrCreateService(Landroid/util/SparseArray;I)Ljava/util/ArrayList;
    .locals 1
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;",
            ">;>;I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 755
    .local p1, "dynamicServices":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;>;>;"
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 756
    .local v0, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;>;"
    if-nez v0, :cond_0

    .line 757
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 758
    .restart local v0    # "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;>;"
    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 760
    :cond_0
    return-object v0
.end method


# virtual methods
.method declared-synchronized read()Landroid/util/SparseArray;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 593
    monitor-enter p0

    const/4 v14, 0x0

    .line 594
    .local v14, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 597
    .local v11, "dynamicServices":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;>;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/nfc/cardemulation/DynamicServiceManager$XmlParser;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 598
    const-string v7, "DynamicServiceXmlManager"

    const-string v25, "services file does not exist."

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 686
    if-eqz v14, :cond_0

    .line 688
    :try_start_2
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 697
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v11

    .line 689
    :catch_0
    move-exception v12

    .line 690
    .local v12, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 593
    .end local v11    # "dynamicServices":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;>;>;"
    .end local v12    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 691
    .restart local v11    # "dynamicServices":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;>;>;"
    :catch_1
    move-exception v12

    .line 692
    .local v12, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 602
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/nfc/cardemulation/DynamicServiceManager$XmlParser;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v14

    .line 603
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v19

    .line 604
    .local v19, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v7, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v14, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 605
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v13

    .line 608
    .local v13, "eventType":I
    :goto_1
    const/4 v7, 0x2

    if-eq v13, v7, :cond_2

    const/4 v7, 0x1

    if-eq v13, v7, :cond_2

    .line 609
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    goto :goto_1

    .line 610
    :cond_2
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v21

    .line 611
    .local v21, "tagName":Ljava/lang/String;
    const-string v7, "services"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 612
    const/4 v2, 0x0

    .line 613
    .local v2, "service":Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;
    const/4 v15, 0x0

    .line 614
    .local v15, "inService":Z
    const/4 v5, 0x0

    .line 615
    .local v5, "packageName":Ljava/lang/String;
    const/4 v8, -0x1

    .line 616
    .local v8, "userId":I
    const/4 v9, -0x1

    .line 617
    .local v9, "currentUid":I
    :goto_2
    const/4 v7, 0x1

    if-eq v13, v7, :cond_d

    .line 618
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v21

    .line 619
    const/4 v7, 0x2

    if-ne v13, v7, :cond_b

    .line 620
    const-string v7, "service"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    const/16 v25, 0x2

    move/from16 v0, v25

    if-ne v7, v0, :cond_5

    .line 621
    const/4 v7, 0x0

    const-string v25, "default"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-interface {v0, v7, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 623
    .local v16, "isDefault":Ljava/lang/String;
    const/4 v7, 0x0

    const-string v25, "package"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-interface {v0, v7, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 624
    const/4 v7, 0x0

    const-string v25, "class"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-interface {v0, v7, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 625
    .local v6, "className":Ljava/lang/String;
    const/4 v7, 0x0

    const-string v25, "virtual-class"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-interface {v0, v7, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 626
    .local v24, "virtualClassName":Ljava/lang/String;
    const/4 v7, 0x0

    const-string v25, "key"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-interface {v0, v7, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 627
    .local v17, "key":Ljava/lang/String;
    const/4 v7, 0x0

    const-string v25, "location"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-interface {v0, v7, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 628
    .local v4, "location":Ljava/lang/String;
    const/4 v7, 0x0

    const-string v25, "banner"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-interface {v0, v7, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 629
    .local v10, "bannerName":Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v10, 0x0

    .line 630
    :cond_3
    const/4 v7, 0x0

    const-string v25, "description"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-interface {v0, v7, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 631
    .local v3, "description":Ljava/lang/String;
    const/4 v7, 0x0

    const-string v25, "userid"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-interface {v0, v7, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 632
    .local v23, "userIdString":Ljava/lang/String;
    const/4 v7, 0x0

    const-string v25, "uid"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-interface {v0, v7, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 633
    .local v22, "uidString":Ljava/lang/String;
    if-eqz v5, :cond_4

    if-eqz v6, :cond_4

    if-eqz v24, :cond_4

    if-eqz v23, :cond_4

    if-nez v22, :cond_7

    .line 637
    :cond_4
    const-string v7, "DynamicServiceXmlManager"

    const-string v25, "invalid service attributes"

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :goto_3
    new-instance v2, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;

    .end local v2    # "service":Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;
    const-string v7, "true"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v7, 0x1

    :goto_4
    invoke-direct/range {v2 .. v10}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;)V

    .line 654
    .restart local v2    # "service":Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;
    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->setKey(Ljava/lang/String;)V

    .line 655
    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->setVirtualClassName(Ljava/lang/String;)V

    .line 658
    .end local v3    # "description":Ljava/lang/String;
    .end local v4    # "location":Ljava/lang/String;
    .end local v6    # "className":Ljava/lang/String;
    .end local v10    # "bannerName":Ljava/lang/String;
    .end local v16    # "isDefault":Ljava/lang/String;
    .end local v17    # "key":Ljava/lang/String;
    .end local v22    # "uidString":Ljava/lang/String;
    .end local v23    # "userIdString":Ljava/lang/String;
    .end local v24    # "virtualClassName":Ljava/lang/String;
    :cond_5
    const-string v7, "aid-group"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    const/16 v25, 0x3

    move/from16 v0, v25

    if-ne v7, v0, :cond_6

    if-eqz v15, :cond_6

    .line 660
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v2}, Lcom/android/nfc/cardemulation/DynamicServiceManager$XmlParser;->createAidGroupFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/gsma/services/nfc/OffHostService;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 661
    const-string v7, "DynamicServiceXmlManager"

    const-string v25, "could not parse aid group."

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_6
    :goto_5
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v13

    goto/16 :goto_2

    .line 640
    .restart local v3    # "description":Ljava/lang/String;
    .restart local v4    # "location":Ljava/lang/String;
    .restart local v6    # "className":Ljava/lang/String;
    .restart local v10    # "bannerName":Ljava/lang/String;
    .restart local v16    # "isDefault":Ljava/lang/String;
    .restart local v17    # "key":Ljava/lang/String;
    .restart local v22    # "uidString":Ljava/lang/String;
    .restart local v23    # "userIdString":Ljava/lang/String;
    .restart local v24    # "virtualClassName":Ljava/lang/String;
    :cond_7
    :try_start_6
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 641
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v8

    .line 642
    const/4 v15, 0x1

    goto :goto_3

    .line 643
    :catch_2
    move-exception v12

    .line 644
    .local v12, "e":Ljava/lang/NumberFormatException;
    :try_start_7
    const-string v7, "DynamicServiceXmlManager"

    const-string v25, "could not parse service uid"

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    .line 682
    .end local v2    # "service":Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;
    .end local v3    # "description":Ljava/lang/String;
    .end local v4    # "location":Ljava/lang/String;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "className":Ljava/lang/String;
    .end local v8    # "userId":I
    .end local v9    # "currentUid":I
    .end local v10    # "bannerName":Ljava/lang/String;
    .end local v12    # "e":Ljava/lang/NumberFormatException;
    .end local v13    # "eventType":I
    .end local v15    # "inService":Z
    .end local v16    # "isDefault":Ljava/lang/String;
    .end local v17    # "key":Ljava/lang/String;
    .end local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v21    # "tagName":Ljava/lang/String;
    .end local v22    # "uidString":Ljava/lang/String;
    .end local v23    # "userIdString":Ljava/lang/String;
    .end local v24    # "virtualClassName":Ljava/lang/String;
    :catch_3
    move-exception v12

    .line 683
    .local v12, "e":Ljava/lang/Exception;
    :try_start_8
    const-string v7, "DynamicServiceXmlManager"

    const-string v25, "could not parse services file, trashing."

    move-object/from16 v0, v25

    invoke-static {v7, v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 684
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/nfc/cardemulation/DynamicServiceManager$XmlParser;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->delete()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 686
    if-eqz v14, :cond_8

    .line 688
    :try_start_9
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 696
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_8
    :goto_6
    :try_start_a
    # getter for: Lcom/android/nfc/cardemulation/DynamicServiceManager;->DBG:Z
    invoke-static {}, Lcom/android/nfc/cardemulation/DynamicServiceManager;->access$100()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "DynamicServiceXmlManager"

    const-string v25, "success reading service(s)"

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 645
    .restart local v2    # "service":Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;
    .restart local v3    # "description":Ljava/lang/String;
    .restart local v4    # "location":Ljava/lang/String;
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v6    # "className":Ljava/lang/String;
    .restart local v8    # "userId":I
    .restart local v9    # "currentUid":I
    .restart local v10    # "bannerName":Ljava/lang/String;
    .restart local v13    # "eventType":I
    .restart local v15    # "inService":Z
    .restart local v16    # "isDefault":Ljava/lang/String;
    .restart local v17    # "key":Ljava/lang/String;
    .restart local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v21    # "tagName":Ljava/lang/String;
    .restart local v22    # "uidString":Ljava/lang/String;
    .restart local v23    # "userIdString":Ljava/lang/String;
    .restart local v24    # "virtualClassName":Ljava/lang/String;
    :catch_4
    move-exception v12

    .line 646
    .restart local v12    # "e":Ljava/lang/Exception;
    :try_start_b
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_3

    .line 686
    .end local v2    # "service":Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;
    .end local v3    # "description":Ljava/lang/String;
    .end local v4    # "location":Ljava/lang/String;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "className":Ljava/lang/String;
    .end local v8    # "userId":I
    .end local v9    # "currentUid":I
    .end local v10    # "bannerName":Ljava/lang/String;
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v13    # "eventType":I
    .end local v15    # "inService":Z
    .end local v16    # "isDefault":Ljava/lang/String;
    .end local v17    # "key":Ljava/lang/String;
    .end local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v21    # "tagName":Ljava/lang/String;
    .end local v22    # "uidString":Ljava/lang/String;
    .end local v23    # "userIdString":Ljava/lang/String;
    .end local v24    # "virtualClassName":Ljava/lang/String;
    :catchall_1
    move-exception v7

    if-eqz v14, :cond_9

    .line 688
    :try_start_c
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 693
    :cond_9
    :goto_7
    :try_start_d
    throw v7
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 649
    .restart local v3    # "description":Ljava/lang/String;
    .restart local v4    # "location":Ljava/lang/String;
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v6    # "className":Ljava/lang/String;
    .restart local v8    # "userId":I
    .restart local v9    # "currentUid":I
    .restart local v10    # "bannerName":Ljava/lang/String;
    .restart local v13    # "eventType":I
    .restart local v15    # "inService":Z
    .restart local v16    # "isDefault":Ljava/lang/String;
    .restart local v17    # "key":Ljava/lang/String;
    .restart local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v21    # "tagName":Ljava/lang/String;
    .restart local v22    # "uidString":Ljava/lang/String;
    .restart local v23    # "userIdString":Ljava/lang/String;
    .restart local v24    # "virtualClassName":Ljava/lang/String;
    :cond_a
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 664
    .end local v3    # "description":Ljava/lang/String;
    .end local v4    # "location":Ljava/lang/String;
    .end local v6    # "className":Ljava/lang/String;
    .end local v10    # "bannerName":Ljava/lang/String;
    .end local v16    # "isDefault":Ljava/lang/String;
    .end local v17    # "key":Ljava/lang/String;
    .end local v22    # "uidString":Ljava/lang/String;
    .end local v23    # "userIdString":Ljava/lang/String;
    .end local v24    # "virtualClassName":Ljava/lang/String;
    .restart local v2    # "service":Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;
    :cond_b
    const/4 v7, 0x3

    if-ne v13, v7, :cond_6

    .line 665
    :try_start_e
    const-string v7, "service"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 667
    if-eqz v5, :cond_c

    if-ltz v9, :cond_c

    .line 668
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v18

    .line 670
    .local v18, "myUserId":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v11, v1}, Lcom/android/nfc/cardemulation/DynamicServiceManager$XmlParser;->findOrCreateService(Landroid/util/SparseArray;I)Ljava/util/ArrayList;

    move-result-object v20

    .line 672
    .local v20, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;>;"
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 674
    .end local v18    # "myUserId":I
    .end local v20    # "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;>;"
    :cond_c
    const/4 v9, -0x1

    .line 675
    const/4 v8, -0x1

    .line 676
    const/4 v15, 0x0

    goto :goto_5

    .line 686
    .end local v2    # "service":Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v8    # "userId":I
    .end local v9    # "currentUid":I
    .end local v15    # "inService":Z
    :cond_d
    if-eqz v14, :cond_8

    .line 688
    :try_start_f
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_6

    .line 689
    :catch_5
    move-exception v12

    .line 690
    .local v12, "e":Ljava/io/IOException;
    :try_start_10
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 691
    .end local v12    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v12

    .line 692
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 689
    .end local v13    # "eventType":I
    .end local v19    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v21    # "tagName":Ljava/lang/String;
    :catch_7
    move-exception v12

    .line 690
    .local v12, "e":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 691
    .local v12, "e":Ljava/lang/Exception;
    :catch_8
    move-exception v12

    .line 692
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 689
    .end local v12    # "e":Ljava/lang/Exception;
    :catch_9
    move-exception v12

    .line 690
    .local v12, "e":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 691
    .end local v12    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v12

    .line 692
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_7
.end method

.method declared-synchronized write(Landroid/util/SparseArray;)Z
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 538
    .local p1, "dynamicServices":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;>;>;"
    monitor-enter p0

    const/4 v10, 0x0

    .line 540
    .local v10, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/DynamicServiceManager$XmlParser;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v10

    .line 541
    new-instance v17, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct/range {v17 .. v17}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 542
    .local v17, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v20, "utf-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v0, v10, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 543
    const/16 v20, 0x0

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 544
    const-string v20, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/16 v21, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 545
    const/16 v20, 0x0

    const-string v21, "services"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 546
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/SparseArray;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v11, v0, :cond_6

    .line 547
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    .line 548
    .local v19, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;

    .line 549
    .local v18, "service":Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;
    const/16 v20, 0x0

    const-string v21, "service"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 550
    const/16 v21, 0x0

    const-string v22, "default"

    invoke-virtual/range {v18 .. v18}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->isDefault()Z

    move-result v20

    if-eqz v20, :cond_1

    const-string v20, "true"

    :goto_2
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v20

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 551
    const/16 v20, 0x0

    const-string v21, "package"

    invoke-virtual/range {v18 .. v18}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getPackageName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 552
    const/16 v20, 0x0

    const-string v21, "class"

    invoke-virtual/range {v18 .. v18}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getClassName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 553
    const/16 v20, 0x0

    const-string v21, "virtual-class"

    invoke-virtual/range {v18 .. v18}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getVirtualClassName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 554
    const/16 v20, 0x0

    const-string v21, "key"

    invoke-virtual/range {v18 .. v18}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getKey()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 555
    const/16 v20, 0x0

    const-string v21, "location"

    invoke-virtual/range {v18 .. v18}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getLocation()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 556
    invoke-virtual/range {v18 .. v18}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getBannerName()Ljava/lang/String;

    move-result-object v8

    .line 557
    .local v8, "bannerName":Ljava/lang/String;
    const/16 v20, 0x0

    const-string v21, "banner"

    if-nez v8, :cond_0

    const-string v8, ""

    .end local v8    # "bannerName":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 558
    const/16 v20, 0x0

    const-string v21, "description"

    invoke-virtual/range {v18 .. v18}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getDescription()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 559
    const/16 v20, 0x0

    const-string v21, "userid"

    invoke-virtual/range {v18 .. v18}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getUserId()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 560
    const/16 v20, 0x0

    const-string v21, "uid"

    invoke-virtual/range {v18 .. v18}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getUid()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 561
    invoke-virtual/range {v18 .. v18}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getAidGroups()[Lcom/gsma/services/nfc/AidGroup;

    move-result-object v20

    if-eqz v20, :cond_3

    .line 562
    invoke-virtual/range {v18 .. v18}, Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;->getAidGroups()[Lcom/gsma/services/nfc/AidGroup;

    move-result-object v6

    .local v6, "arr$":[Lcom/gsma/services/nfc/AidGroup;
    array-length v15, v6

    .local v15, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    move v14, v13

    .end local v6    # "arr$":[Lcom/gsma/services/nfc/AidGroup;
    .end local v13    # "i$":I
    .end local v15    # "len$":I
    .local v14, "i$":I
    :goto_3
    if-ge v14, v15, :cond_3

    aget-object v5, v6, v14

    .line 563
    .local v5, "aidgroup":Lcom/gsma/services/nfc/AidGroup;
    const/16 v20, 0x0

    const-string v21, "aid-group"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 564
    const/16 v20, 0x0

    const-string v21, "category"

    invoke-virtual {v5}, Lcom/gsma/services/nfc/AidGroup;->getCategory()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 565
    const/16 v20, 0x0

    const-string v21, "description"

    invoke-virtual {v5}, Lcom/gsma/services/nfc/AidGroup;->getDescription()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 566
    invoke-virtual {v5}, Lcom/gsma/services/nfc/AidGroup;->getAids()[Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_2

    .line 567
    invoke-virtual {v5}, Lcom/gsma/services/nfc/AidGroup;->getAids()[Ljava/lang/String;

    move-result-object v7

    .local v7, "arr$":[Ljava/lang/String;
    array-length v0, v7

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v13, 0x0

    .end local v14    # "i$":I
    .restart local v13    # "i$":I
    :goto_4
    move/from16 v0, v16

    if-ge v13, v0, :cond_2

    aget-object v4, v7, v13

    .line 568
    .local v4, "aid":Ljava/lang/String;
    const/16 v20, 0x0

    const-string v21, "aid"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 569
    const/16 v20, 0x0

    const-string v21, "value"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 570
    const/16 v20, 0x0

    const-string v21, "aid"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 567
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 550
    .end local v4    # "aid":Ljava/lang/String;
    .end local v5    # "aidgroup":Lcom/gsma/services/nfc/AidGroup;
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v13    # "i$":I
    .end local v16    # "len$":I
    :cond_1
    const-string v20, "false"

    goto/16 :goto_2

    .line 573
    .restart local v5    # "aidgroup":Lcom/gsma/services/nfc/AidGroup;
    :cond_2
    const/16 v20, 0x0

    const-string v21, "aid-group"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 562
    add-int/lit8 v13, v14, 0x1

    .restart local v13    # "i$":I
    move v14, v13

    .end local v13    # "i$":I
    .restart local v14    # "i$":I
    goto/16 :goto_3

    .line 576
    .end local v5    # "aidgroup":Lcom/gsma/services/nfc/AidGroup;
    .end local v14    # "i$":I
    :cond_3
    const/16 v20, 0x0

    const-string v21, "service"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 584
    .end local v11    # "i":I
    .end local v17    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v18    # "service":Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;
    .end local v19    # "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;>;"
    :catch_0
    move-exception v9

    .line 585
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v20, "DynamicServiceXmlManager"

    const-string v21, "error writing services"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 586
    if-eqz v10, :cond_4

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/DynamicServiceManager$XmlParser;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 588
    :cond_4
    const/16 v20, 0x0

    .end local v9    # "e":Ljava/lang/Exception;
    :goto_5
    monitor-exit p0

    return v20

    .line 546
    .restart local v11    # "i":I
    .restart local v17    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v19    # "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;>;"
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 579
    .end local v19    # "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/DynamicServiceManager$LocalOffHostService;>;"
    :cond_6
    const/16 v20, 0x0

    :try_start_2
    const-string v21, "services"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 580
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/DynamicServiceManager$XmlParser;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 582
    # getter for: Lcom/android/nfc/cardemulation/DynamicServiceManager;->DBG:Z
    invoke-static {}, Lcom/android/nfc/cardemulation/DynamicServiceManager;->access$100()Z

    move-result v20

    if-eqz v20, :cond_7

    const-string v20, "DynamicServiceXmlManager"

    const-string v21, "success writing services"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 583
    :cond_7
    const/16 v20, 0x1

    goto :goto_5

    .line 538
    .end local v11    # "i":I
    .end local v17    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catchall_0
    move-exception v20

    monitor-exit p0

    throw v20
.end method
