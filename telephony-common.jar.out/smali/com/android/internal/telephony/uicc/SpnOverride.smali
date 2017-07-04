.class public Lcom/android/internal/telephony/uicc/SpnOverride;
.super Ljava/lang/Object;
.source "SpnOverride.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;
    }
.end annotation


# static fields
.field private static final COMPARATOR_IMSI_SUBSET:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final LOG_TAG:Ljava/lang/String; = "SpnOverride"

.field static final PARTNER_SPN_OVERRIDE_PATH:Ljava/lang/String; = "etc/spn-conf.xml"


# instance fields
.field private mCarrierSpnMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    new-instance v0, Lcom/android/internal/telephony/uicc/SpnOverride$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/SpnOverride$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/uicc/SpnOverride;->COMPARATOR_IMSI_SUBSET:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SpnOverride;->mCarrierSpnMap:Ljava/util/HashMap;

    .line 134
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SpnOverride;->loadSpnOverrides()V

    .line 135
    return-void
.end method

.method private getMatchingSpnOverrideInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;
    .locals 10
    .param p1, "carrier"    # Ljava/lang/String;
    .param p2, "imsi"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 309
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v3, v4

    .line 332
    :goto_0
    return-object v3

    .line 313
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v9, :cond_2

    .line 314
    const-string v5, "SpnOverride"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[SpnOverride] getMatchingSpnOverrideInfo, carrier=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], simop=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SpnOverride;->mCarrierSpnMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 318
    .local v0, "aSoi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;>;"
    if-nez v0, :cond_3

    .line 319
    const-string v5, "SpnOverride"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[SpnOverride] getMatchingSpnOverrideInfo - no entry for carrier=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 320
    goto :goto_0

    .line 323
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;

    .line 324
    .local v3, "soi":Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->getImsiSubset()Ljava/lang/String;

    move-result-object v2

    .line 325
    .local v2, "imsiSubset":Ljava/lang/String;
    const-string v5, "SpnOverride"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[SpnOverride] getMatchingSpnOverrideInfo - imsiSubset=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p2, v5, v2, v8, v6}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_4

    goto/16 :goto_0

    .line 331
    .end local v2    # "imsiSubset":Ljava/lang/String;
    .end local v3    # "soi":Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;
    :cond_5
    const-string v5, "SpnOverride"

    const-string v6, "[SpnOverride] getMatchingSpnOverrideInfo - no match found"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 332
    goto/16 :goto_0
.end method

.method private loadSpnOverrides()V
    .locals 17

    .prologue
    .line 165
    new-instance v14, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "etc/spn-conf.xml"

    invoke-direct {v14, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 169
    .local v14, "spnFile":Ljava/io/File;
    :try_start_0
    new-instance v15, Ljava/io/FileReader;

    invoke-direct {v15, v14}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .local v15, "spnReader":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v13

    .line 178
    .local v13, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v13, v15}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 180
    const-string v2, "spnOverrides"

    invoke-static {v13, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 183
    :goto_0
    invoke-static {v13}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 185
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 186
    .local v12, "name":Ljava/lang/String;
    const-string v2, "spnOverride"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 218
    invoke-virtual {v15}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    if-eqz v15, :cond_0

    .line 227
    :try_start_2
    invoke-virtual {v15}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 234
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v15    # "spnReader":Ljava/io/FileReader;
    :cond_0
    :goto_1
    return-void

    .line 170
    :catch_0
    move-exception v11

    .line 171
    .local v11, "e":Ljava/io/FileNotFoundException;
    const-string v2, "SpnOverride"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not open "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "etc/spn-conf.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 197
    .end local v11    # "e":Ljava/io/FileNotFoundException;
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v15    # "spnReader":Ljava/io/FileReader;
    :cond_1
    :try_start_3
    new-instance v1, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;

    const/4 v2, 0x0

    const-string v3, "numeric"

    invoke-interface {v13, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "spn"

    invoke-interface {v13, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "spn_display_rule"

    invoke-interface {v13, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "spn_override_only_on"

    invoke-interface {v13, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "fake_home_on"

    invoke-interface {v13, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "imsi_subset"

    invoke-interface {v13, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "fake_roaming_on"

    invoke-interface {v13, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const-string v16, "fake_sim_spn"

    move-object/from16 v0, v16

    invoke-interface {v13, v9, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v1 .. v9}, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .local v1, "newSoi":Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SpnOverride;->mCarrierSpnMap:Ljava/util/HashMap;

    # getter for: Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->numeric:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->access$000(Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 208
    .local v10, "aSoi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;>;"
    if-nez v10, :cond_2

    .line 209
    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "aSoi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;>;"
    const/4 v2, 0x1

    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 211
    .restart local v10    # "aSoi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;>;"
    :cond_2
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    sget-object v2, Lcom/android/internal/telephony/uicc/SpnOverride;->COMPARATOR_IMSI_SUBSET:Ljava/util/Comparator;

    invoke-static {v10, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SpnOverride;->mCarrierSpnMap:Ljava/util/HashMap;

    # getter for: Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->numeric:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->access$000(Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 219
    .end local v1    # "newSoi":Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;
    .end local v10    # "aSoi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;>;"
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v11

    .line 220
    .local v11, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4
    const-string v2, "SpnOverride"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in spn-conf parser "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 226
    if-eqz v15, :cond_0

    .line 227
    :try_start_5
    invoke-virtual {v15}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    .line 229
    :catch_2
    move-exception v2

    goto/16 :goto_1

    .line 221
    .end local v11    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v11

    .line 222
    .local v11, "e":Ljava/io/IOException;
    :try_start_6
    const-string v2, "SpnOverride"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in spn-conf parser "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 226
    if-eqz v15, :cond_0

    .line 227
    :try_start_7
    invoke-virtual {v15}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_1

    .line 229
    :catch_4
    move-exception v2

    goto/16 :goto_1

    .line 225
    .end local v11    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 226
    if-eqz v15, :cond_3

    .line 227
    :try_start_8
    invoke-virtual {v15}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 231
    :cond_3
    :goto_2
    throw v2

    .line 229
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_5
    move-exception v2

    goto/16 :goto_1

    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_6
    move-exception v3

    goto :goto_2
.end method


# virtual methods
.method containsCarrier(Ljava/lang/String;)Z
    .locals 1
    .param p1, "carrier"    # Ljava/lang/String;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SpnOverride;->mCarrierSpnMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method getDisplayRule(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "carrier"    # Ljava/lang/String;
    .param p2, "imsi"    # Ljava/lang/String;

    .prologue
    .line 243
    const/4 v0, -0x1

    .line 245
    .local v0, "result":I
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/uicc/SpnOverride;->getMatchingSpnOverrideInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;

    move-result-object v3

    .line 247
    .local v3, "soi":Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;
    if-nez v3, :cond_0

    move v1, v0

    .line 264
    .end local v0    # "result":I
    .local v1, "result":I
    :goto_0
    return v1

    .line 251
    .end local v1    # "result":I
    .restart local v0    # "result":I
    :cond_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->getSpnDisplayRule()Ljava/lang/String;

    move-result-object v2

    .line 252
    .local v2, "rule":Ljava/lang/String;
    if-nez v2, :cond_1

    move v1, v0

    .line 253
    .end local v0    # "result":I
    .restart local v1    # "result":I
    goto :goto_0

    .line 256
    .end local v1    # "result":I
    .restart local v0    # "result":I
    :cond_1
    const/4 v0, 0x0

    .line 257
    const-string v4, "SPN_RULE_SHOW_SPN"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 258
    add-int/lit8 v0, v0, 0x1

    .line 260
    :cond_2
    const-string v4, "SPN_RULE_SHOW_PLMN"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 261
    add-int/lit8 v0, v0, 0x2

    :cond_3
    move v1, v0

    .line 264
    .end local v0    # "result":I
    .restart local v1    # "result":I
    goto :goto_0
.end method

.method getFakeHomeOn(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "carrier"    # Ljava/lang/String;
    .param p2, "imsi"    # Ljava/lang/String;

    .prologue
    .line 282
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/uicc/SpnOverride;->getMatchingSpnOverrideInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;

    move-result-object v0

    .line 283
    .local v0, "soi":Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;
    if-nez v0, :cond_0

    .line 284
    const/4 v1, 0x0

    .line 287
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->getFakeHomeOn()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method getFakeRoamingOn(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "carrier"    # Ljava/lang/String;
    .param p2, "imsi"    # Ljava/lang/String;

    .prologue
    .line 291
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/uicc/SpnOverride;->getMatchingSpnOverrideInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;

    move-result-object v0

    .line 292
    .local v0, "soi":Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;
    if-nez v0, :cond_0

    .line 293
    const/4 v1, 0x0

    .line 296
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->getFakeRoamingOn()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method getFakeSimSpn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "carrier"    # Ljava/lang/String;
    .param p2, "imsi"    # Ljava/lang/String;

    .prologue
    .line 300
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/uicc/SpnOverride;->getMatchingSpnOverrideInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;

    move-result-object v0

    .line 301
    .local v0, "soi":Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;
    if-nez v0, :cond_0

    .line 302
    const/4 v1, 0x0

    .line 305
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->getFakeSimSpn()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method getOverrideOnlyOn(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "carrier"    # Ljava/lang/String;
    .param p2, "imsi"    # Ljava/lang/String;

    .prologue
    .line 273
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/uicc/SpnOverride;->getMatchingSpnOverrideInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;

    move-result-object v0

    .line 274
    .local v0, "soi":Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;
    if-nez v0, :cond_0

    .line 275
    const/4 v1, 0x0

    .line 278
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->getSpnOverrideOnlyOn()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSpn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "carrier"    # Ljava/lang/String;
    .param p2, "imsi"    # Ljava/lang/String;

    .prologue
    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/uicc/SpnOverride;->getMatchingSpnOverrideInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;

    move-result-object v0

    .line 155
    .local v0, "soi":Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;
    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->getSpn()Ljava/lang/String;

    move-result-object v1

    .line 158
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
