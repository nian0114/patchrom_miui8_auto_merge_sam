.class public Lcom/sec/android/app/camera/feature/ReflectionFeature;
.super Ljava/lang/Object;
.source "ReflectionFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/feature/ReflectionFeature$ReflectionFeatureArray;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ReflectionFeature"


# instance fields
.field private mAllFieldsArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/feature/ReflectionFeature$ReflectionFeatureArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/feature/ReflectionFeature;->mAllFieldsArray:Ljava/util/ArrayList;

    .line 153
    return-void
.end method

.method private addFieldInfoToArray(Ljava/lang/reflect/Field;Z)V
    .locals 7
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "isChanged"    # Z

    .prologue
    const/4 v6, 0x1

    .line 135
    invoke-virtual {p1, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 136
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, "objectName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 138
    .local v4, "objectValue":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "className":Ljava/lang/String;
    invoke-virtual {p1, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 142
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 148
    :goto_0
    new-instance v0, Lcom/sec/android/app/camera/feature/ReflectionFeature$ReflectionFeatureArray;

    invoke-direct {v0, v1, v3, v4, p2}, Lcom/sec/android/app/camera/feature/ReflectionFeature$ReflectionFeatureArray;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 149
    .local v0, "a":Lcom/sec/android/app/camera/feature/ReflectionFeature$ReflectionFeatureArray;
    iget-object v5, p0, Lcom/sec/android/app/camera/feature/ReflectionFeature;->mAllFieldsArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    return-void

    .line 143
    .end local v0    # "a":Lcom/sec/android/app/camera/feature/ReflectionFeature$ReflectionFeatureArray;
    :catch_0
    move-exception v2

    .line 144
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 145
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 146
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public makeReflectionFields()V
    .locals 12

    .prologue
    .line 42
    const-string v10, "ReflectionFeature"

    const-string v11, "makeReflectionFields E"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v10, p0, Lcom/sec/android/app/camera/feature/ReflectionFeature;->mAllFieldsArray:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 44
    const-string v10, "ReflectionFeature"

    const-string v11, "AllFieldsArray is exist"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :goto_0
    return-void

    .line 48
    :cond_0
    new-instance v5, Lcom/sec/android/app/camera/feature/Feature;

    invoke-direct {v5}, Lcom/sec/android/app/camera/feature/Feature;-><init>()V

    .line 49
    .local v5, "feature":Lcom/sec/android/app/camera/feature/Feature;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 50
    .local v3, "extendFields":[Ljava/lang/reflect/Field;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 51
    .local v1, "allfFields":[Ljava/lang/reflect/Field;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v4, "extendFieldsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v2, v3

    .local v2, "arr$":[Ljava/lang/reflect/Field;
    array-length v9, v2

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_1
    if-ge v8, v9, :cond_1

    aget-object v6, v2, v8

    .line 53
    .local v6, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    const/4 v10, 0x1

    invoke-direct {p0, v6, v10}, Lcom/sec/android/app/camera/feature/ReflectionFeature;->addFieldInfoToArray(Ljava/lang/reflect/Field;Z)V

    .line 52
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 58
    .end local v6    # "field":Ljava/lang/reflect/Field;
    :cond_1
    move-object v2, v1

    array-length v9, v2

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v9, :cond_5

    aget-object v6, v2, v8

    .line 59
    .restart local v6    # "field":Ljava/lang/reflect/Field;
    const/4 v0, 0x1

    .line 60
    .local v0, "addField":Z
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 61
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v7, v10, :cond_2

    .line 62
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 63
    const/4 v0, 0x0

    .line 68
    .end local v7    # "i":I
    :cond_2
    if-eqz v0, :cond_3

    .line 69
    const/4 v10, 0x0

    invoke-direct {p0, v6, v10}, Lcom/sec/android/app/camera/feature/ReflectionFeature;->addFieldInfoToArray(Ljava/lang/reflect/Field;Z)V

    .line 58
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 61
    .restart local v7    # "i":I
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 72
    .end local v0    # "addField":Z
    .end local v6    # "field":Ljava/lang/reflect/Field;
    .end local v7    # "i":I
    :cond_5
    const-string v10, "ReflectionFeature"

    const-string v11, "makeReflectionFields X"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public saveReflectionFields(Ljava/lang/String;)V
    .locals 23
    .param p1, "directory"    # Ljava/lang/String;

    .prologue
    .line 76
    const-string v20, "ReflectionFeature"

    const-string v21, "saveReflectionFields E"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    if-nez p1, :cond_0

    .line 78
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object p1

    .line 80
    :cond_0
    const-string v18, "CameraFeatureData.xml"

    .line 81
    .local v18, "xmlFile":Ljava/lang/String;
    const-string v4, "FEATURE_FILE"

    .line 82
    .local v4, "FEATURE_FILE":Ljava/lang/String;
    const-string v3, "FEATURE_DATA"

    .line 83
    .local v3, "FEATURE_DATA":Ljava/lang/String;
    const-string v6, "TYPE"

    .line 84
    .local v6, "FEATURE_TYPE":Ljava/lang/String;
    const-string v5, "NAME"

    .line 85
    .local v5, "FEATURE_NAME":Ljava/lang/String;
    const-string v7, "VALUE"

    .line 86
    .local v7, "FEATURE_VALUE":Ljava/lang/String;
    const-string v8, "REDEFINED"

    .line 88
    .local v8, "REDEFINED":Ljava/lang/String;
    :try_start_0
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    .local v11, "dir":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_1

    .line 90
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 91
    :cond_1
    new-instance v13, Ljava/io/File;

    const-string v20, "CameraFeatureData.xml"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-direct {v13, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .local v13, "file":Ljava/io/File;
    const/4 v14, 0x0

    .line 93
    .local v14, "fileos":Ljava/io/FileOutputStream;
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v19

    .line 94
    .local v19, "xmlSerializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v17, Ljava/io/StringWriter;

    invoke-direct/range {v17 .. v17}, Ljava/io/StringWriter;-><init>()V

    .line 95
    .local v17, "writer":Ljava/io/StringWriter;
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 96
    const-string v20, "UTF-8"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    invoke-interface/range {v19 .. v21}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 97
    const-string v20, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/16 v21, 0x1

    invoke-interface/range {v19 .. v21}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 98
    const-string v20, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 99
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/feature/ReflectionFeature;->mAllFieldsArray:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/feature/ReflectionFeature;->mAllFieldsArray:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/camera/feature/ReflectionFeature$ReflectionFeatureArray;

    .line 101
    .local v9, "a":Lcom/sec/android/app/camera/feature/ReflectionFeature$ReflectionFeatureArray;
    const-string v20, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 102
    const-string v20, ""

    iget-object v0, v9, Lcom/sec/android/app/camera/feature/ReflectionFeature$ReflectionFeatureArray;->mObjectType:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 103
    const-string v20, ""

    iget-object v0, v9, Lcom/sec/android/app/camera/feature/ReflectionFeature$ReflectionFeatureArray;->mObjectName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 104
    const-string v20, ""

    iget-object v0, v9, Lcom/sec/android/app/camera/feature/ReflectionFeature$ReflectionFeatureArray;->mObjectValue:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v7, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 105
    const-string v20, ""

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-boolean v0, v9, Lcom/sec/android/app/camera/feature/ReflectionFeature$ReflectionFeatureArray;->mIsChanged:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v8, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 106
    const-string v20, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 99
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 108
    .end local v9    # "a":Lcom/sec/android/app/camera/feature/ReflectionFeature$ReflectionFeatureArray;
    :cond_2
    const-string v20, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 109
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 110
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 111
    invoke-virtual/range {v17 .. v17}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v10

    .line 113
    .local v10, "dataWrite":Ljava/lang/String;
    :try_start_1
    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    .end local v14    # "fileos":Ljava/io/FileOutputStream;
    .local v15, "fileos":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 118
    if-eqz v15, :cond_5

    .line 119
    :try_start_3
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    move-object v14, v15

    .line 131
    .end local v10    # "dataWrite":Ljava/lang/String;
    .end local v11    # "dir":Ljava/io/File;
    .end local v13    # "file":Ljava/io/File;
    .end local v15    # "fileos":Ljava/io/FileOutputStream;
    .end local v16    # "i":I
    .end local v17    # "writer":Ljava/io/StringWriter;
    .end local v19    # "xmlSerializer":Lorg/xmlpull/v1/XmlSerializer;
    :cond_3
    :goto_1
    const-string v20, "ReflectionFeature"

    const-string v21, "saveReflectionFields X"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void

    .line 115
    .restart local v10    # "dataWrite":Ljava/lang/String;
    .restart local v11    # "dir":Ljava/io/File;
    .restart local v13    # "file":Ljava/io/File;
    .restart local v14    # "fileos":Ljava/io/FileOutputStream;
    .restart local v16    # "i":I
    .restart local v17    # "writer":Ljava/io/StringWriter;
    .restart local v19    # "xmlSerializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v12

    .line 116
    .local v12, "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 118
    if-eqz v14, :cond_3

    .line 119
    :try_start_5
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    .line 122
    .end local v10    # "dataWrite":Ljava/lang/String;
    .end local v11    # "dir":Ljava/io/File;
    .end local v12    # "e":Ljava/io/IOException;
    .end local v13    # "file":Ljava/io/File;
    .end local v14    # "fileos":Ljava/io/FileOutputStream;
    .end local v16    # "i":I
    .end local v17    # "writer":Ljava/io/StringWriter;
    .end local v19    # "xmlSerializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_1
    move-exception v12

    .line 123
    .local v12, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v12}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 118
    .end local v12    # "e":Ljava/io/FileNotFoundException;
    .restart local v10    # "dataWrite":Ljava/lang/String;
    .restart local v11    # "dir":Ljava/io/File;
    .restart local v13    # "file":Ljava/io/File;
    .restart local v14    # "fileos":Ljava/io/FileOutputStream;
    .restart local v16    # "i":I
    .restart local v17    # "writer":Ljava/io/StringWriter;
    .restart local v19    # "xmlSerializer":Lorg/xmlpull/v1/XmlSerializer;
    :catchall_0
    move-exception v20

    :goto_3
    if-eqz v14, :cond_4

    .line 119
    :try_start_6
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    :cond_4
    throw v20
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 124
    .end local v10    # "dataWrite":Ljava/lang/String;
    .end local v11    # "dir":Ljava/io/File;
    .end local v13    # "file":Ljava/io/File;
    .end local v14    # "fileos":Ljava/io/FileOutputStream;
    .end local v16    # "i":I
    .end local v17    # "writer":Ljava/io/StringWriter;
    .end local v19    # "xmlSerializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_2
    move-exception v12

    .line 125
    .local v12, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v12}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 126
    .end local v12    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v12

    .line 127
    .local v12, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v12}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 128
    .end local v12    # "e":Ljava/lang/IllegalStateException;
    :catch_4
    move-exception v12

    .line 129
    .local v12, "e":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 118
    .end local v12    # "e":Ljava/io/IOException;
    .restart local v10    # "dataWrite":Ljava/lang/String;
    .restart local v11    # "dir":Ljava/io/File;
    .restart local v13    # "file":Ljava/io/File;
    .restart local v15    # "fileos":Ljava/io/FileOutputStream;
    .restart local v16    # "i":I
    .restart local v17    # "writer":Ljava/io/StringWriter;
    .restart local v19    # "xmlSerializer":Lorg/xmlpull/v1/XmlSerializer;
    :catchall_1
    move-exception v20

    move-object v14, v15

    .end local v15    # "fileos":Ljava/io/FileOutputStream;
    .restart local v14    # "fileos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 115
    .end local v14    # "fileos":Ljava/io/FileOutputStream;
    .restart local v15    # "fileos":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v12

    move-object v14, v15

    .end local v15    # "fileos":Ljava/io/FileOutputStream;
    .restart local v14    # "fileos":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v14    # "fileos":Ljava/io/FileOutputStream;
    .restart local v15    # "fileos":Ljava/io/FileOutputStream;
    :cond_5
    move-object v14, v15

    .end local v15    # "fileos":Ljava/io/FileOutputStream;
    .restart local v14    # "fileos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method
