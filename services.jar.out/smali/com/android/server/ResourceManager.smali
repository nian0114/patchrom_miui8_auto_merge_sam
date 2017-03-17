.class public Lcom/android/server/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# static fields
.field private static BT_TYPE:I = 0x0

.field private static SDCARD_TYPE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BTSdcard"

.field private static WHITELIST_MAC_PERM:Ljava/lang/String;

.field private static WHITELIST_SEANDROID_FOLDER:Ljava/lang/String;

.field private static instance:Lcom/android/server/ResourceManager;

.field private static mSKLog:Lcom/android/server/SKLogger;


# instance fields
.field private mPms:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "/data/security/whitelist"

    sput-object v0, Lcom/android/server/ResourceManager;->WHITELIST_SEANDROID_FOLDER:Ljava/lang/String;

    const-string v0, "/data/security/whitelist/mac_permissions.xml"

    sput-object v0, Lcom/android/server/ResourceManager;->WHITELIST_MAC_PERM:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    const/4 v0, 0x1

    sput v0, Lcom/android/server/ResourceManager;->BT_TYPE:I

    invoke-static {}, Lcom/android/server/SKLogger;->getLogger()Lcom/android/server/SKLogger;

    move-result-object v0

    sput-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ResourceManager;->instance:Lcom/android/server/ResourceManager;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static declared-synchronized addBlacklistEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;I)I
    .locals 36
    .param p0, "macPermFile"    # Ljava/io/File;
    .param p1, "signature"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p5, "resourceType"    # I

    .prologue
    const-class v34, Lcom/android/server/ResourceManager;

    monitor-enter v34

    :try_start_0
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v24, v0

    .local v24, "seinfo":Ljava/lang/String;
    move-object/from16 v0, p4

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->category:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .local v6, "category":Ljava/lang/String;
    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    .local v5, "allowcategory":Ljava/lang/String;
    move-object/from16 v0, p4

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    .local v3, "allowContainerCategory":Ljava/lang/String;
    move-object/from16 v0, p4

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    move/from16 v33, v0

    and-int/lit8 v33, v33, 0x4

    const/16 v35, 0x4

    move/from16 v0, v33

    move/from16 v1, v35

    if-ne v0, v1, :cond_a

    const/16 v33, 0x1

    :goto_0
    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v16

    .local v16, "issdcardsbaapp":Ljava/lang/String;
    move-object/from16 v0, p4

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    move/from16 v33, v0

    and-int/lit8 v33, v33, 0x8

    const/16 v35, 0x8

    move/from16 v0, v33

    move/from16 v1, v35

    if-ne v0, v1, :cond_b

    const/16 v33, 0x1

    :goto_1
    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v15

    .local v15, "isbluetoothsbaapp":Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, "isAddedMac":Z
    const/16 v17, 0x0

    .local v17, "macPermExists":Z
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .local v9, "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v8, 0x0

    .local v8, "doc":Lorg/w3c/dom/Document;
    :try_start_1
    invoke-virtual {v9}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v7

    .local v7, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v33

    if-eqz v33, :cond_c

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v33

    if-nez v33, :cond_0

    const/16 v33, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v8

    const/16 v17, 0x1

    :goto_2
    invoke-interface {v8}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Lorg/w3c/dom/Element;->normalize()V

    const-string v33, "policy"

    move-object/from16 v0, v33

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v21

    .local v21, "policyNodeList":Lorg/w3c/dom/NodeList;
    const/16 v20, 0x0

    .local v20, "policyElement":Lorg/w3c/dom/Element;
    const/16 v33, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    .end local v20    # "policyElement":Lorg/w3c/dom/Element;
    check-cast v20, Lorg/w3c/dom/Element;

    .restart local v20    # "policyElement":Lorg/w3c/dom/Element;
    const-string v33, "signer"

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v26

    .local v26, "signer":Lorg/w3c/dom/NodeList;
    const/16 v28, 0x0

    .local v28, "signerElementCur":Lorg/w3c/dom/Element;
    const/16 v27, 0x0

    .local v27, "signerElement":Lorg/w3c/dom/Element;
    const/4 v4, 0x0

    .local v4, "allowallElement":Lorg/w3c/dom/Element;
    const/16 v18, 0x0

    .local v18, "newElement":Lorg/w3c/dom/Element;
    const/16 v25, 0x0

    .local v25, "seinfoElement":Lorg/w3c/dom/Element;
    const/16 v30, 0x0

    .local v30, "specialTag":Ljava/lang/String;
    const-string v30, "service"

    move-object/from16 v0, v30

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v18

    const-string v33, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v33, "seinfo"

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_1

    const-string v33, "category"

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-interface {v0, v1, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v5, :cond_2

    const-string v33, "allowcategory"

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-interface {v0, v1, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz v3, :cond_3

    const-string v33, "containerallowcategory"

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-interface {v0, v1, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v16, :cond_4

    const-string v33, "issdcardsbaapp"

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz v15, :cond_5

    const-string v33, "isbluetoothsbaapp"

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-interface {v0, v1, v15}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    sget v33, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    move/from16 v0, p5

    move/from16 v1, v33

    if-ne v0, v1, :cond_6

    const-string v33, "sdcarduseridBL"

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    sget v33, Lcom/android/server/ResourceManager;->BT_TYPE:I

    move/from16 v0, p5

    move/from16 v1, v33

    if-ne v0, v1, :cond_7

    const-string v33, "bluetoothuseridBL"

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string v33, "signer"

    move-object/from16 v0, v33

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v27

    const-string v33, "seinfo"

    move-object/from16 v0, v33

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v25

    const-string v33, "allow-all"

    move-object/from16 v0, v33

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    const-string v33, "signature"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v33, "value"

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_8

    const-string v33, "category"

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-interface {v0, v1, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    if-eqz v5, :cond_9

    const-string v33, "allowcategory"

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-interface {v0, v1, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3
    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v33

    move/from16 v0, v33

    if-ge v13, v0, :cond_f

    move-object/from16 v0, v26

    invoke-interface {v0, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v28

    .end local v28    # "signerElementCur":Lorg/w3c/dom/Element;
    check-cast v28, Lorg/w3c/dom/Element;

    .restart local v28    # "signerElementCur":Lorg/w3c/dom/Element;
    const-string v33, "signature"

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_17

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v12

    .local v12, "existElem":Lorg/w3c/dom/Element;
    if-eqz v12, :cond_16

    sget v33, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    move/from16 v0, p5

    move/from16 v1, v33

    if-ne v0, v1, :cond_13

    const-string v33, "sdcarduseridBL"

    move-object/from16 v0, v33

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->checkUser(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v33

    if-eqz v33, :cond_e

    const/16 v33, 0x0

    .end local v4    # "allowallElement":Lorg/w3c/dom/Element;
    .end local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v12    # "existElem":Lorg/w3c/dom/Element;
    .end local v13    # "i":I
    .end local v18    # "newElement":Lorg/w3c/dom/Element;
    .end local v20    # "policyElement":Lorg/w3c/dom/Element;
    .end local v21    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v25    # "seinfoElement":Lorg/w3c/dom/Element;
    .end local v26    # "signer":Lorg/w3c/dom/NodeList;
    .end local v27    # "signerElement":Lorg/w3c/dom/Element;
    .end local v28    # "signerElementCur":Lorg/w3c/dom/Element;
    .end local v30    # "specialTag":Ljava/lang/String;
    :goto_4
    monitor-exit v34

    return v33

    .end local v8    # "doc":Lorg/w3c/dom/Document;
    .end local v9    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v14    # "isAddedMac":Z
    .end local v15    # "isbluetoothsbaapp":Ljava/lang/String;
    .end local v16    # "issdcardsbaapp":Ljava/lang/String;
    .end local v17    # "macPermExists":Z
    :cond_a
    const/16 v33, 0x0

    goto/16 :goto_0

    .restart local v16    # "issdcardsbaapp":Ljava/lang/String;
    :cond_b
    const/16 v33, 0x0

    goto/16 :goto_1

    .restart local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v8    # "doc":Lorg/w3c/dom/Document;
    .restart local v9    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v14    # "isAddedMac":Z
    .restart local v15    # "isbluetoothsbaapp":Ljava/lang/String;
    .restart local v17    # "macPermExists":Z
    :cond_c
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_5
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v33

    if-nez v33, :cond_d

    const/16 v33, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    :cond_d
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v8

    const-string v33, "policy"

    move-object/from16 v0, v33

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v23

    .local v23, "rootElement":Lorg/w3c/dom/Element;
    move-object/from16 v0, v23

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .end local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v23    # "rootElement":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v11

    .local v11, "e1":Lorg/xml/sax/SAXException;
    :try_start_4
    invoke-virtual {v11}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v11    # "e1":Lorg/xml/sax/SAXException;
    :goto_6
    const/16 v33, -0x1

    goto :goto_4

    .restart local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    :catch_1
    move-exception v10

    .local v10, "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    .end local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v10    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v11

    .local v11, "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_6
    invoke-virtual {v11}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    .end local v3    # "allowContainerCategory":Ljava/lang/String;
    .end local v5    # "allowcategory":Ljava/lang/String;
    .end local v6    # "category":Ljava/lang/String;
    .end local v8    # "doc":Lorg/w3c/dom/Document;
    .end local v9    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v11    # "e1":Ljavax/xml/parsers/ParserConfigurationException;
    .end local v14    # "isAddedMac":Z
    .end local v15    # "isbluetoothsbaapp":Ljava/lang/String;
    .end local v16    # "issdcardsbaapp":Ljava/lang/String;
    .end local v17    # "macPermExists":Z
    .end local v24    # "seinfo":Ljava/lang/String;
    :catchall_0
    move-exception v33

    monitor-exit v34

    throw v33

    .restart local v3    # "allowContainerCategory":Ljava/lang/String;
    .restart local v4    # "allowallElement":Lorg/w3c/dom/Element;
    .restart local v5    # "allowcategory":Ljava/lang/String;
    .restart local v6    # "category":Ljava/lang/String;
    .restart local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v8    # "doc":Lorg/w3c/dom/Document;
    .restart local v9    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v12    # "existElem":Lorg/w3c/dom/Element;
    .restart local v13    # "i":I
    .restart local v14    # "isAddedMac":Z
    .restart local v15    # "isbluetoothsbaapp":Ljava/lang/String;
    .restart local v16    # "issdcardsbaapp":Ljava/lang/String;
    .restart local v17    # "macPermExists":Z
    .restart local v18    # "newElement":Lorg/w3c/dom/Element;
    .restart local v20    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v21    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v24    # "seinfo":Ljava/lang/String;
    .restart local v25    # "seinfoElement":Lorg/w3c/dom/Element;
    .restart local v26    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v27    # "signerElement":Lorg/w3c/dom/Element;
    .restart local v28    # "signerElementCur":Lorg/w3c/dom/Element;
    .restart local v30    # "specialTag":Ljava/lang/String;
    :cond_e
    const/16 v19, 0x0

    .local v19, "newValue":Ljava/lang/String;
    :try_start_7
    const-string v33, "sdcarduseridBL"

    move-object/from16 v0, v33

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    if-eqz v33, :cond_12

    const-string v33, "sdcarduseridBL"

    move-object/from16 v0, v33

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string v35, ""

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_12

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v35, ","

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v35, "sdcarduseridBL"

    move-object/from16 v0, v35

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    :goto_7
    const-string v33, "sdcarduseridBL"

    move-object/from16 v0, v33

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x1

    .end local v12    # "existElem":Lorg/w3c/dom/Element;
    .end local v19    # "newValue":Ljava/lang/String;
    :cond_f
    :goto_8
    if-nez v14, :cond_10

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_10
    invoke-interface {v8}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Lorg/w3c/dom/Element;->normalize()V

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v32

    .local v32, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual/range {v32 .. v32}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v31

    .local v31, "transformer":Ljavax/xml/transform/Transformer;
    const/16 v29, 0x0

    .local v29, "source":Ljavax/xml/transform/dom/DOMSource;
    if-eqz v17, :cond_18

    new-instance v29, Ljavax/xml/transform/dom/DOMSource;

    .end local v29    # "source":Ljavax/xml/transform/dom/DOMSource;
    move-object/from16 v0, v29

    invoke-direct {v0, v8}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .restart local v29    # "source":Ljavax/xml/transform/dom/DOMSource;
    :goto_9
    new-instance v22, Ljavax/xml/transform/stream/StreamResult;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .local v22, "result":Ljavax/xml/transform/stream/StreamResult;
    move-object/from16 v0, v31

    move-object/from16 v1, v29

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v33

    if-eqz v33, :cond_11

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    :cond_11
    const/16 v33, 0x0

    goto/16 :goto_4

    .end local v22    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v29    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v31    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v32    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    .restart local v12    # "existElem":Lorg/w3c/dom/Element;
    .restart local v19    # "newValue":Ljava/lang/String;
    :cond_12
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    goto :goto_7

    .end local v19    # "newValue":Ljava/lang/String;
    :cond_13
    sget v33, Lcom/android/server/ResourceManager;->BT_TYPE:I

    move/from16 v0, p5

    move/from16 v1, v33

    if-ne v0, v1, :cond_16

    const-string v33, "bluetoothuseridBL"

    move-object/from16 v0, v33

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->checkUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_14

    const/16 v33, 0x0

    goto/16 :goto_4

    :cond_14
    const/16 v19, 0x0

    .restart local v19    # "newValue":Ljava/lang/String;
    const-string v33, "bluetoothuseridBL"

    move-object/from16 v0, v33

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    if-eqz v33, :cond_15

    const-string v33, "bluetoothuseridBL"

    move-object/from16 v0, v33

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string v35, ""

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_15

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v35, ","

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v35, "bluetoothuseridBL"

    move-object/from16 v0, v35

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    :goto_a
    const-string v33, "bluetoothuseridBL"

    move-object/from16 v0, v33

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x1

    goto/16 :goto_8

    :cond_15
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    goto :goto_a

    .end local v19    # "newValue":Ljava/lang/String;
    :cond_16
    move-object/from16 v0, v26

    invoke-interface {v0, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const/4 v14, 0x1

    goto/16 :goto_8

    .end local v12    # "existElem":Lorg/w3c/dom/Element;
    :cond_17
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .restart local v29    # "source":Ljavax/xml/transform/dom/DOMSource;
    .restart local v31    # "transformer":Ljavax/xml/transform/Transformer;
    .restart local v32    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :cond_18
    new-instance v29, Ljavax/xml/transform/dom/DOMSource;

    .end local v29    # "source":Ljavax/xml/transform/dom/DOMSource;
    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V
    :try_end_7
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .restart local v29    # "source":Ljavax/xml/transform/dom/DOMSource;
    goto/16 :goto_9

    .end local v4    # "allowallElement":Lorg/w3c/dom/Element;
    .end local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v13    # "i":I
    .end local v18    # "newElement":Lorg/w3c/dom/Element;
    .end local v20    # "policyElement":Lorg/w3c/dom/Element;
    .end local v21    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v25    # "seinfoElement":Lorg/w3c/dom/Element;
    .end local v26    # "signer":Lorg/w3c/dom/NodeList;
    .end local v27    # "signerElement":Lorg/w3c/dom/Element;
    .end local v28    # "signerElementCur":Lorg/w3c/dom/Element;
    .end local v29    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v30    # "specialTag":Ljava/lang/String;
    .end local v31    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v32    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :catch_3
    move-exception v11

    .local v11, "e1":Ljavax/xml/transform/TransformerException;
    :try_start_8
    invoke-virtual {v11}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto/16 :goto_6

    .end local v11    # "e1":Ljavax/xml/transform/TransformerException;
    :catch_4
    move-exception v11

    .local v11, "e1":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    .end local v11    # "e1":Ljava/io/IOException;
    :catch_5
    move-exception v10

    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_6
.end method

.method protected static declared-synchronized addWhitelistEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;I)I
    .locals 36
    .param p0, "macPermFile"    # Ljava/io/File;
    .param p1, "signature"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p5, "resourceType"    # I

    .prologue
    const-class v34, Lcom/android/server/ResourceManager;

    monitor-enter v34

    :try_start_0
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v24, v0

    .local v24, "seinfo":Ljava/lang/String;
    move-object/from16 v0, p4

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->category:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .local v6, "category":Ljava/lang/String;
    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    .local v5, "allowcategory":Ljava/lang/String;
    move-object/from16 v0, p4

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    .local v3, "allowContainerCategory":Ljava/lang/String;
    move-object/from16 v0, p4

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    move/from16 v33, v0

    and-int/lit8 v33, v33, 0x4

    const/16 v35, 0x4

    move/from16 v0, v33

    move/from16 v1, v35

    if-ne v0, v1, :cond_a

    const/16 v33, 0x1

    :goto_0
    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v16

    .local v16, "issdcardsbaapp":Ljava/lang/String;
    move-object/from16 v0, p4

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    move/from16 v33, v0

    and-int/lit8 v33, v33, 0x8

    const/16 v35, 0x8

    move/from16 v0, v33

    move/from16 v1, v35

    if-ne v0, v1, :cond_b

    const/16 v33, 0x1

    :goto_1
    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v15

    .local v15, "isbluetoothsbaapp":Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, "isAddedMac":Z
    const/16 v17, 0x0

    .local v17, "macPermExists":Z
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .local v9, "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v8, 0x0

    .local v8, "doc":Lorg/w3c/dom/Document;
    :try_start_1
    invoke-virtual {v9}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v7

    .local v7, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v33

    if-eqz v33, :cond_c

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v33

    if-nez v33, :cond_0

    const/16 v33, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v8

    const/16 v17, 0x1

    :goto_2
    invoke-interface {v8}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Lorg/w3c/dom/Element;->normalize()V

    const-string v33, "policy"

    move-object/from16 v0, v33

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v21

    .local v21, "policyNodeList":Lorg/w3c/dom/NodeList;
    const/16 v20, 0x0

    .local v20, "policyElement":Lorg/w3c/dom/Element;
    const/16 v33, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    .end local v20    # "policyElement":Lorg/w3c/dom/Element;
    check-cast v20, Lorg/w3c/dom/Element;

    .restart local v20    # "policyElement":Lorg/w3c/dom/Element;
    const-string v33, "signer"

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v26

    .local v26, "signer":Lorg/w3c/dom/NodeList;
    const/16 v28, 0x0

    .local v28, "signerElementCur":Lorg/w3c/dom/Element;
    const/16 v27, 0x0

    .local v27, "signerElement":Lorg/w3c/dom/Element;
    const/4 v4, 0x0

    .local v4, "allowallElement":Lorg/w3c/dom/Element;
    const/16 v18, 0x0

    .local v18, "newElement":Lorg/w3c/dom/Element;
    const/16 v25, 0x0

    .local v25, "seinfoElement":Lorg/w3c/dom/Element;
    const/16 v30, 0x0

    .local v30, "specialTag":Ljava/lang/String;
    const-string v30, "service"

    move-object/from16 v0, v30

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v18

    const-string v33, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v33, "seinfo"

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_1

    const-string v33, "category"

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-interface {v0, v1, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v5, :cond_2

    const-string v33, "allowcategory"

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-interface {v0, v1, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz v3, :cond_3

    const-string v33, "containerallowcategory"

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-interface {v0, v1, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v16, :cond_4

    const-string v33, "issdcardsbaapp"

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz v15, :cond_5

    const-string v33, "isbluetoothsbaapp"

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-interface {v0, v1, v15}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    sget v33, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    move/from16 v0, p5

    move/from16 v1, v33

    if-ne v0, v1, :cond_6

    const-string v33, "sdcarduserid"

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    sget v33, Lcom/android/server/ResourceManager;->BT_TYPE:I

    move/from16 v0, p5

    move/from16 v1, v33

    if-ne v0, v1, :cond_7

    const-string v33, "bluetoothuserid"

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string v33, "signer"

    move-object/from16 v0, v33

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v27

    const-string v33, "seinfo"

    move-object/from16 v0, v33

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v25

    const-string v33, "allow-all"

    move-object/from16 v0, v33

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    const-string v33, "signature"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v33, "value"

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_8

    const-string v33, "category"

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-interface {v0, v1, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    if-eqz v5, :cond_9

    const-string v33, "allowcategory"

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-interface {v0, v1, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3
    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v33

    move/from16 v0, v33

    if-ge v13, v0, :cond_f

    move-object/from16 v0, v26

    invoke-interface {v0, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v28

    .end local v28    # "signerElementCur":Lorg/w3c/dom/Element;
    check-cast v28, Lorg/w3c/dom/Element;

    .restart local v28    # "signerElementCur":Lorg/w3c/dom/Element;
    const-string v33, "signature"

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_17

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v12

    .local v12, "existElem":Lorg/w3c/dom/Element;
    if-eqz v12, :cond_16

    sget v33, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    move/from16 v0, p5

    move/from16 v1, v33

    if-ne v0, v1, :cond_13

    const-string v33, "sdcarduserid"

    move-object/from16 v0, v33

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->checkUser(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v33

    if-eqz v33, :cond_e

    const/16 v33, 0x0

    .end local v4    # "allowallElement":Lorg/w3c/dom/Element;
    .end local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v12    # "existElem":Lorg/w3c/dom/Element;
    .end local v13    # "i":I
    .end local v18    # "newElement":Lorg/w3c/dom/Element;
    .end local v20    # "policyElement":Lorg/w3c/dom/Element;
    .end local v21    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v25    # "seinfoElement":Lorg/w3c/dom/Element;
    .end local v26    # "signer":Lorg/w3c/dom/NodeList;
    .end local v27    # "signerElement":Lorg/w3c/dom/Element;
    .end local v28    # "signerElementCur":Lorg/w3c/dom/Element;
    .end local v30    # "specialTag":Ljava/lang/String;
    :goto_4
    monitor-exit v34

    return v33

    .end local v8    # "doc":Lorg/w3c/dom/Document;
    .end local v9    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v14    # "isAddedMac":Z
    .end local v15    # "isbluetoothsbaapp":Ljava/lang/String;
    .end local v16    # "issdcardsbaapp":Ljava/lang/String;
    .end local v17    # "macPermExists":Z
    :cond_a
    const/16 v33, 0x0

    goto/16 :goto_0

    .restart local v16    # "issdcardsbaapp":Ljava/lang/String;
    :cond_b
    const/16 v33, 0x0

    goto/16 :goto_1

    .restart local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v8    # "doc":Lorg/w3c/dom/Document;
    .restart local v9    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v14    # "isAddedMac":Z
    .restart local v15    # "isbluetoothsbaapp":Ljava/lang/String;
    .restart local v17    # "macPermExists":Z
    :cond_c
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_5
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v33

    if-nez v33, :cond_d

    const/16 v33, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    :cond_d
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v8

    const-string v33, "policy"

    move-object/from16 v0, v33

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v23

    .local v23, "rootElement":Lorg/w3c/dom/Element;
    move-object/from16 v0, v23

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .end local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v23    # "rootElement":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v11

    .local v11, "e1":Lorg/xml/sax/SAXException;
    :try_start_4
    invoke-virtual {v11}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v11    # "e1":Lorg/xml/sax/SAXException;
    :goto_6
    const/16 v33, -0x1

    goto :goto_4

    .restart local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    :catch_1
    move-exception v10

    .local v10, "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    .end local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v10    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v11

    .local v11, "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_6
    invoke-virtual {v11}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    .end local v3    # "allowContainerCategory":Ljava/lang/String;
    .end local v5    # "allowcategory":Ljava/lang/String;
    .end local v6    # "category":Ljava/lang/String;
    .end local v8    # "doc":Lorg/w3c/dom/Document;
    .end local v9    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v11    # "e1":Ljavax/xml/parsers/ParserConfigurationException;
    .end local v14    # "isAddedMac":Z
    .end local v15    # "isbluetoothsbaapp":Ljava/lang/String;
    .end local v16    # "issdcardsbaapp":Ljava/lang/String;
    .end local v17    # "macPermExists":Z
    .end local v24    # "seinfo":Ljava/lang/String;
    :catchall_0
    move-exception v33

    monitor-exit v34

    throw v33

    .restart local v3    # "allowContainerCategory":Ljava/lang/String;
    .restart local v4    # "allowallElement":Lorg/w3c/dom/Element;
    .restart local v5    # "allowcategory":Ljava/lang/String;
    .restart local v6    # "category":Ljava/lang/String;
    .restart local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v8    # "doc":Lorg/w3c/dom/Document;
    .restart local v9    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v12    # "existElem":Lorg/w3c/dom/Element;
    .restart local v13    # "i":I
    .restart local v14    # "isAddedMac":Z
    .restart local v15    # "isbluetoothsbaapp":Ljava/lang/String;
    .restart local v16    # "issdcardsbaapp":Ljava/lang/String;
    .restart local v17    # "macPermExists":Z
    .restart local v18    # "newElement":Lorg/w3c/dom/Element;
    .restart local v20    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v21    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v24    # "seinfo":Ljava/lang/String;
    .restart local v25    # "seinfoElement":Lorg/w3c/dom/Element;
    .restart local v26    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v27    # "signerElement":Lorg/w3c/dom/Element;
    .restart local v28    # "signerElementCur":Lorg/w3c/dom/Element;
    .restart local v30    # "specialTag":Ljava/lang/String;
    :cond_e
    const/16 v19, 0x0

    .local v19, "newValue":Ljava/lang/String;
    :try_start_7
    const-string v33, "sdcarduserid"

    move-object/from16 v0, v33

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    if-eqz v33, :cond_12

    const-string v33, "sdcarduserid"

    move-object/from16 v0, v33

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string v35, ""

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_12

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v35, ","

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v35, "sdcarduserid"

    move-object/from16 v0, v35

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    :goto_7
    const-string v33, "sdcarduserid"

    move-object/from16 v0, v33

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x1

    .end local v12    # "existElem":Lorg/w3c/dom/Element;
    .end local v19    # "newValue":Ljava/lang/String;
    :cond_f
    :goto_8
    if-nez v14, :cond_10

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_10
    invoke-interface {v8}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Lorg/w3c/dom/Element;->normalize()V

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v32

    .local v32, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual/range {v32 .. v32}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v31

    .local v31, "transformer":Ljavax/xml/transform/Transformer;
    const/16 v29, 0x0

    .local v29, "source":Ljavax/xml/transform/dom/DOMSource;
    if-eqz v17, :cond_18

    new-instance v29, Ljavax/xml/transform/dom/DOMSource;

    .end local v29    # "source":Ljavax/xml/transform/dom/DOMSource;
    move-object/from16 v0, v29

    invoke-direct {v0, v8}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .restart local v29    # "source":Ljavax/xml/transform/dom/DOMSource;
    :goto_9
    new-instance v22, Ljavax/xml/transform/stream/StreamResult;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .local v22, "result":Ljavax/xml/transform/stream/StreamResult;
    move-object/from16 v0, v31

    move-object/from16 v1, v29

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v33

    if-eqz v33, :cond_11

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    :cond_11
    const/16 v33, 0x0

    goto/16 :goto_4

    .end local v22    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v29    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v31    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v32    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    .restart local v12    # "existElem":Lorg/w3c/dom/Element;
    .restart local v19    # "newValue":Ljava/lang/String;
    :cond_12
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    goto :goto_7

    .end local v19    # "newValue":Ljava/lang/String;
    :cond_13
    sget v33, Lcom/android/server/ResourceManager;->BT_TYPE:I

    move/from16 v0, p5

    move/from16 v1, v33

    if-ne v0, v1, :cond_16

    const-string v33, "bluetoothuserid"

    move-object/from16 v0, v33

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->checkUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_14

    const/16 v33, 0x0

    goto/16 :goto_4

    :cond_14
    const/16 v19, 0x0

    .restart local v19    # "newValue":Ljava/lang/String;
    const-string v33, "bluetoothuserid"

    move-object/from16 v0, v33

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    if-eqz v33, :cond_15

    const-string v33, "bluetoothuserid"

    move-object/from16 v0, v33

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string v35, ""

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_15

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v35, ","

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v35, "bluetoothuserid"

    move-object/from16 v0, v35

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    :goto_a
    const-string v33, "bluetoothuserid"

    move-object/from16 v0, v33

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x1

    goto/16 :goto_8

    :cond_15
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    goto :goto_a

    .end local v19    # "newValue":Ljava/lang/String;
    :cond_16
    move-object/from16 v0, v26

    invoke-interface {v0, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const/4 v14, 0x1

    goto/16 :goto_8

    .end local v12    # "existElem":Lorg/w3c/dom/Element;
    :cond_17
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .restart local v29    # "source":Ljavax/xml/transform/dom/DOMSource;
    .restart local v31    # "transformer":Ljavax/xml/transform/Transformer;
    .restart local v32    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :cond_18
    new-instance v29, Ljavax/xml/transform/dom/DOMSource;

    .end local v29    # "source":Ljavax/xml/transform/dom/DOMSource;
    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V
    :try_end_7
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .restart local v29    # "source":Ljavax/xml/transform/dom/DOMSource;
    goto/16 :goto_9

    .end local v4    # "allowallElement":Lorg/w3c/dom/Element;
    .end local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v13    # "i":I
    .end local v18    # "newElement":Lorg/w3c/dom/Element;
    .end local v20    # "policyElement":Lorg/w3c/dom/Element;
    .end local v21    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v25    # "seinfoElement":Lorg/w3c/dom/Element;
    .end local v26    # "signer":Lorg/w3c/dom/NodeList;
    .end local v27    # "signerElement":Lorg/w3c/dom/Element;
    .end local v28    # "signerElementCur":Lorg/w3c/dom/Element;
    .end local v29    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v30    # "specialTag":Ljava/lang/String;
    .end local v31    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v32    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :catch_3
    move-exception v11

    .local v11, "e1":Ljavax/xml/transform/TransformerException;
    :try_start_8
    invoke-virtual {v11}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto/16 :goto_6

    .end local v11    # "e1":Ljavax/xml/transform/TransformerException;
    :catch_4
    move-exception v11

    .local v11, "e1":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    .end local v11    # "e1":Ljava/io/IOException;
    :catch_5
    move-exception v10

    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_6
.end method

.method private static checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 4
    .param p0, "curElem"    # Lorg/w3c/dom/Element;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    if-nez p0, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .local v0, "currTrustedPackageElem":Lorg/w3c/dom/Element;
    const/4 v1, 0x0

    .local v1, "returnElem":Lorg/w3c/dom/Element;
    :goto_1
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "seinfo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "name"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v1, v0

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    .end local v0    # "currTrustedPackageElem":Lorg/w3c/dom/Element;
    check-cast v0, Lorg/w3c/dom/Element;

    .restart local v0    # "currTrustedPackageElem":Lorg/w3c/dom/Element;
    goto :goto_1
.end method

.method private static checkUser(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "existUsers"    # Ljava/lang/String;
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    const-string v5, ","

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "allowUsers":[Ljava/lang/String;
    move-object v1, v0

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v3, v1, v2

    .local v3, "item":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    .end local v3    # "item":Ljava/lang/String;
    :goto_1
    return v5

    .restart local v3    # "item":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v3    # "item":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/ResourceManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/android/server/ResourceManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/ResourceManager;->instance:Lcom/android/server/ResourceManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/ResourceManager;

    invoke-direct {v0, p0}, Lcom/android/server/ResourceManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/ResourceManager;->instance:Lcom/android/server/ResourceManager;

    :cond_0
    sget-object v0, Lcom/android/server/ResourceManager;->instance:Lcom/android/server/ResourceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getSignatureFromPackage(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 8
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    if-nez p0, :cond_1

    move-object v5, v6

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .local v3, "pm":Landroid/content/pm/IPackageManager;
    const/4 v2, 0x0

    .local v2, "pi":Landroid/content/pm/PackageInfo;
    const/16 v7, 0x40

    :try_start_0
    invoke-interface {v3, p0, v7, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v4, "s":[Landroid/content/pm/Signature;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v7, v4

    if-ge v1, v7, :cond_0

    aget-object v7, v4, v1

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    .end local v4    # "s":[Landroid/content/pm/Signature;
    .end local v5    # "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    move-object v5, v6

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e1":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v5, v6

    goto :goto_0
.end method

.method private static getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    move-object v1, p0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static hashset_to_str_array(Ljava/util/HashSet;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "hs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0

    :cond_2
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v5

    new-array v0, v5, [Ljava/lang/String;

    .local v0, "array":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, "s":Ljava/lang/String;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aput-object v4, v0, v1

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method

.method private loadContainerSetting(Ljava/lang/String;IZ)I
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "containerID"    # I
    .param p3, "appNotInstalled"    # Z

    .prologue
    const/4 v0, -0x1

    .local v0, "ret":I
    if-nez p1, :cond_0

    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "BTSdcard"

    const-string v4, "loadContainerSetting, packageName is null"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .end local v0    # "ret":I
    .local v1, "ret":I
    :goto_0
    return v1

    .end local v1    # "ret":I
    .restart local v0    # "ret":I
    :cond_0
    const-string v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService;

    iput-object v2, p0, Lcom/android/server/ResourceManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, p0, Lcom/android/server/ResourceManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->updateAppInfoForPackage(Ljava/lang/String;IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    :cond_1
    move v1, v0

    .end local v0    # "ret":I
    .restart local v1    # "ret":I
    goto :goto_0
.end method

.method protected static declared-synchronized removeBlacklistEntryFromMac(Ljava/io/File;Ljava/lang/String;II)Z
    .locals 27
    .param p0, "macPermFile"    # Ljava/io/File;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "resourceType"    # I

    .prologue
    const-class v23, Lcom/android/server/ResourceManager;

    monitor-enter v23

    const/4 v9, 0x0

    .local v9, "isRemoveSuccess":Z
    const/4 v15, 0x0

    .local v15, "seinfoElem":Lorg/w3c/dom/Element;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .local v5, "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_1
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .local v3, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v4, 0x0

    .local v4, "doc":Lorg/w3c/dom/Document;
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_5

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v22

    if-nez v22, :cond_0

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Element;->normalize()V

    const-string v22, "policy"

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    .local v12, "policyNodeList":Lorg/w3c/dom/NodeList;
    const/4 v11, 0x0

    .local v11, "policyElement":Lorg/w3c/dom/Element;
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v12, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    .end local v11    # "policyElement":Lorg/w3c/dom/Element;
    check-cast v11, Lorg/w3c/dom/Element;

    .restart local v11    # "policyElement":Lorg/w3c/dom/Element;
    const-string v22, "signer"

    move-object/from16 v0, v22

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v17

    .local v17, "signer":Lorg/w3c/dom/NodeList;
    const/16 v18, 0x0

    .local v18, "signerElementCur":Lorg/w3c/dom/Element;
    const/4 v13, 0x0

    .local v13, "removeElem":Lorg/w3c/dom/Element;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    move/from16 v0, v22

    if-ge v8, v0, :cond_2

    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v18

    .end local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    check-cast v18, Lorg/w3c/dom/Element;

    .restart local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v13

    if-eqz v13, :cond_c

    sget v22, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    move/from16 v0, p3

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    const-string v22, "sdcarduseridBL"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_7

    const-string v22, "sdcarduseridBL"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    const-string v22, "sdcarduseridBL"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->removeAttribute(Ljava/lang/String;)V

    const/4 v9, 0x1

    const-string v22, "bluetoothuseridBL"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_1

    const-string v22, "bluetoothuseridBL"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v24, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    :cond_1
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v13}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_2
    :goto_1
    if-eqz v9, :cond_d

    const-string v22, "service"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v16

    .local v16, "servicePackageList":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    if-nez v22, :cond_3

    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_3
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Element;->normalize()V

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v21

    .local v21, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual/range {v21 .. v21}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v20

    .local v20, "transformer":Ljavax/xml/transform/Transformer;
    new-instance v19, Ljavax/xml/transform/dom/DOMSource;

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .local v19, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v14, Ljavax/xml/transform/stream/StreamResult;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .local v14, "result":Ljavax/xml/transform/stream/StreamResult;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .end local v14    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v16    # "servicePackageList":Lorg/w3c/dom/NodeList;
    .end local v19    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v20    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v21    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v22

    if-eqz v22, :cond_4

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v8    # "i":I
    .end local v11    # "policyElement":Lorg/w3c/dom/Element;
    .end local v12    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v13    # "removeElem":Lorg/w3c/dom/Element;
    .end local v17    # "signer":Lorg/w3c/dom/NodeList;
    .end local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    :cond_4
    :goto_3
    move/from16 v22, v9

    :goto_4
    monitor-exit v23

    return v22

    .restart local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4    # "doc":Lorg/w3c/dom/Document;
    :cond_5
    const/16 v22, 0x0

    goto :goto_4

    .restart local v8    # "i":I
    .restart local v11    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v12    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v13    # "removeElem":Lorg/w3c/dom/Element;
    .restart local v17    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    :cond_6
    :try_start_2
    const-string v22, "sdcarduseridBL"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->removeUser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .local v10, "newVal":Ljava/lang/String;
    if-eqz v10, :cond_8

    const-string v22, "sdcarduseridBL"

    move-object/from16 v0, v22

    invoke-interface {v13, v0, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x1

    goto :goto_1

    .end local v10    # "newVal":Ljava/lang/String;
    :cond_7
    const/16 v22, 0x0

    goto :goto_4

    :cond_8
    sget v22, Lcom/android/server/ResourceManager;->BT_TYPE:I

    move/from16 v0, p3

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    const-string v22, "bluetoothuseridBL"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_b

    const-string v22, "bluetoothuseridBL"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    const-string v22, "bluetoothuseridBL"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->removeAttribute(Ljava/lang/String;)V

    const/4 v9, 0x1

    const-string v22, "sdcarduseridBL"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_9

    const-string v22, "sdcarduseridBL"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v24, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    :cond_9
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v13}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .end local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v8    # "i":I
    .end local v11    # "policyElement":Lorg/w3c/dom/Element;
    .end local v12    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v13    # "removeElem":Lorg/w3c/dom/Element;
    .end local v17    # "signer":Lorg/w3c/dom/NodeList;
    .end local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v7

    .local v7, "e1":Lorg/xml/sax/SAXException;
    :try_start_3
    invoke-virtual {v7}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    .end local v5    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v7    # "e1":Lorg/xml/sax/SAXException;
    :catchall_0
    move-exception v22

    monitor-exit v23

    throw v22

    .restart local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4    # "doc":Lorg/w3c/dom/Document;
    .restart local v5    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v8    # "i":I
    .restart local v11    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v12    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v13    # "removeElem":Lorg/w3c/dom/Element;
    .restart local v17    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    :cond_a
    :try_start_4
    const-string v22, "bluetoothuseridBL"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->removeUser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "newVal":Ljava/lang/String;
    if-eqz v10, :cond_c

    const-string v22, "bluetoothuseridBL"

    move-object/from16 v0, v22

    invoke-interface {v13, v0, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x1

    goto/16 :goto_1

    .end local v10    # "newVal":Ljava/lang/String;
    :cond_b
    const/16 v22, 0x0

    goto/16 :goto_4

    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_d
    sget-object v22, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v24, "BTSdcard"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, " removeBlacklistEntryFromMac, No match for packageName:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ". Please check again"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .end local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v8    # "i":I
    .end local v11    # "policyElement":Lorg/w3c/dom/Element;
    .end local v12    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v13    # "removeElem":Lorg/w3c/dom/Element;
    .end local v17    # "signer":Lorg/w3c/dom/NodeList;
    .end local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    :catch_1
    move-exception v7

    .local v7, "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_5
    invoke-virtual {v7}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto/16 :goto_3

    .end local v7    # "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_2
    move-exception v7

    .local v7, "e1":Ljavax/xml/transform/TransformerException;
    invoke-virtual {v7}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto/16 :goto_3

    .end local v7    # "e1":Ljavax/xml/transform/TransformerException;
    :catch_3
    move-exception v7

    .local v7, "e1":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .end local v7    # "e1":Ljava/io/IOException;
    :catch_4
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3
.end method

.method private static removeUser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "existUsers"    # Ljava/lang/String;
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .local v5, "returnCat":Ljava/lang/String;
    const-string v7, ","

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .local v6, "srcUsers":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "matchFound":Z
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .local v2, "item":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v4, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-nez v5, :cond_1

    move-object v5, v2

    goto :goto_1

    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .end local v2    # "item":Ljava/lang/String;
    :cond_2
    if-eqz v4, :cond_3

    .end local v5    # "returnCat":Ljava/lang/String;
    :goto_2
    return-object v5

    .restart local v5    # "returnCat":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    goto :goto_2
.end method

.method protected static declared-synchronized removeWhitelistEntryFromMac(Ljava/io/File;Ljava/lang/String;II)Z
    .locals 27
    .param p0, "macPermFile"    # Ljava/io/File;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "resourceType"    # I

    .prologue
    const-class v23, Lcom/android/server/ResourceManager;

    monitor-enter v23

    const/4 v9, 0x0

    .local v9, "isRemoveSuccess":Z
    const/4 v15, 0x0

    .local v15, "seinfoElem":Lorg/w3c/dom/Element;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .local v5, "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_1
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .local v3, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v4, 0x0

    .local v4, "doc":Lorg/w3c/dom/Document;
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_5

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v22

    if-nez v22, :cond_0

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Element;->normalize()V

    const-string v22, "policy"

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    .local v12, "policyNodeList":Lorg/w3c/dom/NodeList;
    const/4 v11, 0x0

    .local v11, "policyElement":Lorg/w3c/dom/Element;
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v12, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    .end local v11    # "policyElement":Lorg/w3c/dom/Element;
    check-cast v11, Lorg/w3c/dom/Element;

    .restart local v11    # "policyElement":Lorg/w3c/dom/Element;
    const-string v22, "signer"

    move-object/from16 v0, v22

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v17

    .local v17, "signer":Lorg/w3c/dom/NodeList;
    const/16 v18, 0x0

    .local v18, "signerElementCur":Lorg/w3c/dom/Element;
    const/4 v13, 0x0

    .local v13, "removeElem":Lorg/w3c/dom/Element;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    move/from16 v0, v22

    if-ge v8, v0, :cond_2

    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v18

    .end local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    check-cast v18, Lorg/w3c/dom/Element;

    .restart local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v13

    if-eqz v13, :cond_c

    sget v22, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    move/from16 v0, p3

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    const-string v22, "sdcarduserid"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_7

    const-string v22, "sdcarduserid"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    const-string v22, "sdcarduserid"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->removeAttribute(Ljava/lang/String;)V

    const/4 v9, 0x1

    const-string v22, "bluetoothuserid"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_1

    const-string v22, "bluetoothuserid"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v24, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    :cond_1
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v13}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_2
    :goto_1
    if-eqz v9, :cond_d

    const-string v22, "service"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v16

    .local v16, "servicePackageList":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    if-nez v22, :cond_3

    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_3
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Element;->normalize()V

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v21

    .local v21, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual/range {v21 .. v21}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v20

    .local v20, "transformer":Ljavax/xml/transform/Transformer;
    new-instance v19, Ljavax/xml/transform/dom/DOMSource;

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .local v19, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v14, Ljavax/xml/transform/stream/StreamResult;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .local v14, "result":Ljavax/xml/transform/stream/StreamResult;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .end local v14    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v16    # "servicePackageList":Lorg/w3c/dom/NodeList;
    .end local v19    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v20    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v21    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v22

    if-eqz v22, :cond_4

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v8    # "i":I
    .end local v11    # "policyElement":Lorg/w3c/dom/Element;
    .end local v12    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v13    # "removeElem":Lorg/w3c/dom/Element;
    .end local v17    # "signer":Lorg/w3c/dom/NodeList;
    .end local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    :cond_4
    :goto_3
    move/from16 v22, v9

    :goto_4
    monitor-exit v23

    return v22

    .restart local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4    # "doc":Lorg/w3c/dom/Document;
    :cond_5
    const/16 v22, 0x0

    goto :goto_4

    .restart local v8    # "i":I
    .restart local v11    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v12    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v13    # "removeElem":Lorg/w3c/dom/Element;
    .restart local v17    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    :cond_6
    :try_start_2
    const-string v22, "sdcarduserid"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->removeUser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .local v10, "newVal":Ljava/lang/String;
    if-eqz v10, :cond_8

    const-string v22, "sdcarduserid"

    move-object/from16 v0, v22

    invoke-interface {v13, v0, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x1

    goto :goto_1

    .end local v10    # "newVal":Ljava/lang/String;
    :cond_7
    const/16 v22, 0x0

    goto :goto_4

    :cond_8
    sget v22, Lcom/android/server/ResourceManager;->BT_TYPE:I

    move/from16 v0, p3

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    const-string v22, "bluetoothuserid"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_b

    const-string v22, "bluetoothuserid"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    const-string v22, "bluetoothuserid"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->removeAttribute(Ljava/lang/String;)V

    const/4 v9, 0x1

    const-string v22, "sdcarduserid"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_9

    const-string v22, "sdcarduserid"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v24, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    :cond_9
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v13}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .end local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v8    # "i":I
    .end local v11    # "policyElement":Lorg/w3c/dom/Element;
    .end local v12    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v13    # "removeElem":Lorg/w3c/dom/Element;
    .end local v17    # "signer":Lorg/w3c/dom/NodeList;
    .end local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v7

    .local v7, "e1":Lorg/xml/sax/SAXException;
    :try_start_3
    invoke-virtual {v7}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    .end local v5    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v7    # "e1":Lorg/xml/sax/SAXException;
    :catchall_0
    move-exception v22

    monitor-exit v23

    throw v22

    .restart local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4    # "doc":Lorg/w3c/dom/Document;
    .restart local v5    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v8    # "i":I
    .restart local v11    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v12    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v13    # "removeElem":Lorg/w3c/dom/Element;
    .restart local v17    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    :cond_a
    :try_start_4
    const-string v22, "bluetoothuserid"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->removeUser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "newVal":Ljava/lang/String;
    if-eqz v10, :cond_c

    const-string v22, "bluetoothuserid"

    move-object/from16 v0, v22

    invoke-interface {v13, v0, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x1

    goto/16 :goto_1

    .end local v10    # "newVal":Ljava/lang/String;
    :cond_b
    const/16 v22, 0x0

    goto/16 :goto_4

    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_d
    sget-object v22, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v24, "BTSdcard"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, " removeWhitelistEntryFromMac, No match for packageName:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ". Please check again"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .end local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v8    # "i":I
    .end local v11    # "policyElement":Lorg/w3c/dom/Element;
    .end local v12    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v13    # "removeElem":Lorg/w3c/dom/Element;
    .end local v17    # "signer":Lorg/w3c/dom/NodeList;
    .end local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    :catch_1
    move-exception v7

    .local v7, "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_5
    invoke-virtual {v7}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto/16 :goto_3

    .end local v7    # "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_2
    move-exception v7

    .local v7, "e1":Ljavax/xml/transform/TransformerException;
    invoke-virtual {v7}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto/16 :goto_3

    .end local v7    # "e1":Ljavax/xml/transform/TransformerException;
    :catch_3
    move-exception v7

    .local v7, "e1":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .end local v7    # "e1":Ljava/io/IOException;
    :catch_4
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3
.end method


# virtual methods
.method public addAppToSBABlacklist(ILjava/lang/String;[Ljava/lang/String;I)I
    .locals 11
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "certificate"    # [Ljava/lang/String;
    .param p4, "resourceType"    # I

    .prologue
    const/4 v6, 0x0

    .local v6, "appNotInstalled":Z
    :try_start_0
    sget v2, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p4, v2, :cond_0

    sget v2, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p4, v2, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    new-instance v10, Ljava/io/File;

    sget-object v2, Lcom/android/server/ResourceManager;->WHITELIST_SEANDROID_FOLDER:Ljava/lang/String;

    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v10, "whitelistDir":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v10}, Ljava/io/File;->mkdir()Z

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v10, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v10, v2, v3}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    invoke-static {p2}, Lcom/android/server/ResourceManager;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "BTSdcard"

    const-string v5, " addAppToBlacklist failed, no packageName found"

    invoke-virtual {v2, v3, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    goto :goto_0

    .end local v10    # "whitelistDir":Ljava/io/File;
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "BTSdcard"

    const-string v5, "Issue with whitelistDir directory"

    invoke-virtual {v2, v3, v5, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, -0x1

    goto :goto_0

    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v10    # "whitelistDir":Ljava/io/File;
    :cond_2
    const/4 v7, 0x0

    .local v7, "certMatch":Z
    const/4 v1, 0x0

    .local v1, "signature":Ljava/lang/String;
    invoke-static {p2, p1}, Lcom/android/server/ResourceManager;->getSignatureFromPackage(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v9

    .local v9, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p3, :cond_3

    const/16 v2, -0xe

    goto :goto_0

    :cond_3
    if-nez v9, :cond_6

    const/4 v2, 0x0

    aget-object v1, p3, v2

    const/4 v6, 0x1

    :cond_4
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/android/server/ResourceManager;->WHITELIST_MAC_PERM:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "macPermFile":Ljava/io/File;
    :try_start_1
    invoke-static {p2, p3}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v4, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    if-eqz v2, :cond_9

    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "BTSdcard"

    const-string v5, "addAppToBlacklist, Got Application Info, Seinfo is not null"

    invoke-virtual {v2, v3, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "default"

    iget-object v3, v4, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "untrusted"

    iput-object v2, v4, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    :cond_5
    move-object v2, p2

    move v3, p1

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/ResourceManager;->addBlacklistEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;I)I

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "BTSdcard"

    const-string v5, "addBlacklistEntryToMac failed"

    invoke-virtual {v2, v3, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v2, -0x1

    goto/16 :goto_0

    .end local v0    # "macPermFile":Ljava/io/File;
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_6
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "signature":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "signature":Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, p3, v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v7, 0x1

    :cond_7
    if-nez v7, :cond_4

    const/16 v2, -0xd

    goto/16 :goto_0

    .restart local v0    # "macPermFile":Ljava/io/File;
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_8
    :try_start_2
    invoke-direct {p0, p2, p1, v6}, Lcom/android/server/ResourceManager;->loadContainerSetting(Ljava/lang/String;IZ)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_a

    invoke-static {v0, p2, p1, p4}, Lcom/android/server/ResourceManager;->removeBlacklistEntryFromMac(Ljava/io/File;Ljava/lang/String;II)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v2, -0x1

    goto/16 :goto_0

    :cond_9
    const/4 v2, -0x1

    goto/16 :goto_0

    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v8

    .restart local v8    # "e":Ljava/lang/Exception;
    const/4 v2, -0x1

    goto/16 :goto_0

    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public addAppToWhitelist(ILjava/lang/String;[Ljava/lang/String;I)I
    .locals 11
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "certificate"    # [Ljava/lang/String;
    .param p4, "resourceType"    # I

    .prologue
    const/4 v6, 0x0

    .local v6, "appNotInstalled":Z
    :try_start_0
    sget v2, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p4, v2, :cond_0

    sget v2, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p4, v2, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    new-instance v10, Ljava/io/File;

    sget-object v2, Lcom/android/server/ResourceManager;->WHITELIST_SEANDROID_FOLDER:Ljava/lang/String;

    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v10, "whitelistDir":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v10}, Ljava/io/File;->mkdir()Z

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v10, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v10, v2, v3}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    invoke-static {p2}, Lcom/android/server/ResourceManager;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "BTSdcard"

    const-string v5, " addAppToWhitelist failed, no packageName found"

    invoke-virtual {v2, v3, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    goto :goto_0

    .end local v10    # "whitelistDir":Ljava/io/File;
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "BTSdcard"

    const-string v5, "Issue with whitelistDir directory"

    invoke-virtual {v2, v3, v5, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, -0x1

    goto :goto_0

    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v10    # "whitelistDir":Ljava/io/File;
    :cond_2
    const/4 v7, 0x0

    .local v7, "certMatch":Z
    const/4 v1, 0x0

    .local v1, "signature":Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .local v9, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p2, p1}, Lcom/android/server/ResourceManager;->getSignatureFromPackage(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v9

    if-nez p3, :cond_3

    const/16 v2, -0xe

    goto :goto_0

    :cond_3
    if-nez v9, :cond_6

    const/4 v2, 0x0

    aget-object v1, p3, v2

    const/4 v6, 0x1

    :cond_4
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/android/server/ResourceManager;->WHITELIST_MAC_PERM:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "macPermFile":Ljava/io/File;
    :try_start_1
    invoke-static {p2, p3}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v4, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    if-eqz v2, :cond_9

    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "BTSdcard"

    const-string v5, "addAppToWhitelist, Got Application Info, Seinfo is not null"

    invoke-virtual {v2, v3, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "default"

    iget-object v3, v4, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "untrusted"

    iput-object v2, v4, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    :cond_5
    move-object v2, p2

    move v3, p1

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/ResourceManager;->addWhitelistEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;I)I

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "BTSdcard"

    const-string v5, "addWhitelistEntryToMac failed"

    invoke-virtual {v2, v3, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v2, -0x1

    goto/16 :goto_0

    .end local v0    # "macPermFile":Ljava/io/File;
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_6
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "signature":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "signature":Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, p3, v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v7, 0x1

    :cond_7
    if-nez v7, :cond_4

    const/16 v2, -0xd

    goto/16 :goto_0

    .restart local v0    # "macPermFile":Ljava/io/File;
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_8
    :try_start_2
    invoke-direct {p0, p2, p1, v6}, Lcom/android/server/ResourceManager;->loadContainerSetting(Ljava/lang/String;IZ)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_a

    invoke-static {v0, p2, p1, p4}, Lcom/android/server/ResourceManager;->removeWhitelistEntryFromMac(Ljava/io/File;Ljava/lang/String;II)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v2, -0x1

    goto/16 :goto_0

    :cond_9
    const/4 v2, -0x1

    goto/16 :goto_0

    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v8

    .restart local v8    # "e":Ljava/lang/Exception;
    const/4 v2, -0x1

    goto/16 :goto_0

    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public clearSBABlacklist(II)I
    .locals 9
    .param p1, "userId"    # I
    .param p2, "resourceType"    # I

    .prologue
    const/4 v6, -0x1

    sget v7, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p2, v7, :cond_0

    sget v7, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p2, v7, :cond_0

    :goto_0
    return v6

    :cond_0
    const/4 v4, -0x1

    .local v4, "ret":I
    :try_start_0
    invoke-static {p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->getBlacklist(II)Ljava/util/HashSet;

    move-result-object v2

    .local v2, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v2, :cond_2

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .local v5, "templist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p0, p1, v3, p2}, Lcom/android/server/ResourceManager;->removeAppFromSBABlacklist(ILjava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v5    # "templist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "BTSdcard"

    const-string v8, "clearBlacklist exception"

    invoke-virtual {v6, v7, v8, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public clearWhitelist(II)I
    .locals 9
    .param p1, "userId"    # I
    .param p2, "resourceType"    # I

    .prologue
    const/4 v6, -0x1

    sget v7, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p2, v7, :cond_0

    sget v7, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p2, v7, :cond_0

    :goto_0
    return v6

    :cond_0
    const/4 v4, -0x1

    .local v4, "ret":I
    :try_start_0
    invoke-static {p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->getWhitelist(II)Ljava/util/HashSet;

    move-result-object v2

    .local v2, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v2, :cond_2

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .local v5, "templist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p0, p1, v3, p2}, Lcom/android/server/ResourceManager;->removeAppFromWhitelist(ILjava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v5    # "templist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "BTSdcard"

    const-string v8, "clearWhitelist exception"

    invoke-virtual {v6, v7, v8, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public getPackagesFromSBABlacklist(II)[Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "resourceType"    # I

    .prologue
    sget v1, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p2, v1, :cond_0

    sget v1, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p2, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->getBlacklist(II)Ljava/util/HashSet;

    move-result-object v0

    .local v0, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v0}, Lcom/android/server/ResourceManager;->hashset_to_str_array(Ljava/util/HashSet;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getPackagesFromSBAList(I)[Ljava/lang/String;
    .locals 2
    .param p1, "resourceType"    # I

    .prologue
    sget v1, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p1, v1, :cond_0

    sget v1, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p1, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p1}, Lcom/android/server/pm/SELinuxMMAC;->getSBAlist(I)Ljava/util/HashSet;

    move-result-object v0

    .local v0, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v0}, Lcom/android/server/ResourceManager;->hashset_to_str_array(Ljava/util/HashSet;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getPackagesFromWhitelist(II)[Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "resourceType"    # I

    .prologue
    sget v1, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p2, v1, :cond_0

    sget v1, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p2, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->getWhitelist(II)Ljava/util/HashSet;

    move-result-object v0

    .local v0, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v0}, Lcom/android/server/ResourceManager;->hashset_to_str_array(Ljava/util/HashSet;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public isSBAApp(Ljava/lang/String;I)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resourceType"    # I

    .prologue
    const/4 v2, -0x1

    :try_start_0
    sget v3, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p2, v3, :cond_1

    sget v3, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p2, v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-static {p2}, Lcom/android/server/pm/SELinuxMMAC;->getSBAlist(I)Ljava/util/HashSet;

    move-result-object v1

    .local v1, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .end local v1    # "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public isWhitelistApp(ILjava/lang/String;I)I
    .locals 4
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "resourceType"    # I

    .prologue
    const/4 v2, -0x1

    :try_start_0
    sget v3, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p3, v3, :cond_1

    sget v3, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p3, v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-static {p1, p3}, Lcom/android/server/pm/SELinuxMMAC;->getWhitelist(II)Ljava/util/HashSet;

    move-result-object v1

    .local v1, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .end local v1    # "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public removeAppFromSBABlacklist(ILjava/lang/String;I)I
    .locals 10
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "resourceType"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v0, 0x0

    .local v0, "appNotInstalled":Z
    sget v7, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p3, v7, :cond_1

    sget v7, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p3, v7, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-static {p2}, Lcom/android/server/ResourceManager;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    sget-object v7, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "BTSdcard"

    const-string v9, " removeAppFromBlacklist failed, no packageName found"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .local v1, "certMatch":Z
    const/4 v4, 0x0

    .local v4, "signature":Ljava/lang/String;
    invoke-static {p2, p1}, Lcom/android/server/ResourceManager;->getSignatureFromPackage(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v5

    .local v5, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v5, :cond_3

    const/4 v0, 0x1

    :cond_3
    new-instance v3, Ljava/io/File;

    sget-object v7, Lcom/android/server/ResourceManager;->WHITELIST_MAC_PERM:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v3, "macPermFile":Ljava/io/File;
    :try_start_0
    invoke-static {v3, p2, p1, p3}, Lcom/android/server/ResourceManager;->removeBlacklistEntryFromMac(Ljava/io/File;Ljava/lang/String;II)Z

    move-result v7

    if-nez v7, :cond_4

    sget-object v7, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "BTSdcard"

    const-string v9, "removeEntryFromMac failed"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    invoke-direct {p0, p2, p1, v0}, Lcom/android/server/ResourceManager;->loadContainerSetting(Ljava/lang/String;IZ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eq v7, v6, :cond_0

    const/4 v6, 0x0

    goto :goto_0
.end method

.method public removeAppFromWhitelist(ILjava/lang/String;I)I
    .locals 10
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "resourceType"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v0, 0x0

    .local v0, "appNotInstalled":Z
    sget v7, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p3, v7, :cond_1

    sget v7, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p3, v7, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-static {p2}, Lcom/android/server/ResourceManager;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    sget-object v7, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "BTSdcard"

    const-string v9, " removeAppFromWhitelist failed, no packageName found"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .local v1, "certMatch":Z
    const/4 v4, 0x0

    .local v4, "signature":Ljava/lang/String;
    invoke-static {p2, p1}, Lcom/android/server/ResourceManager;->getSignatureFromPackage(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v5

    .local v5, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v5, :cond_3

    const/4 v0, 0x1

    :cond_3
    new-instance v3, Ljava/io/File;

    sget-object v7, Lcom/android/server/ResourceManager;->WHITELIST_MAC_PERM:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v3, "macPermFile":Ljava/io/File;
    :try_start_0
    invoke-static {v3, p2, p1, p3}, Lcom/android/server/ResourceManager;->removeWhitelistEntryFromMac(Ljava/io/File;Ljava/lang/String;II)Z

    move-result v7

    if-nez v7, :cond_4

    sget-object v7, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "BTSdcard"

    const-string v9, "removeEntryFromMac failed"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    invoke-direct {p0, p2, p1, v0}, Lcom/android/server/ResourceManager;->loadContainerSetting(Ljava/lang/String;IZ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eq v7, v6, :cond_0

    const/4 v6, 0x0

    goto :goto_0
.end method
