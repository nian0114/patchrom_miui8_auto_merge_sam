.class public Lcom/android/providers/media/utils/PinyinUtil;
.super Ljava/lang/Object;
.source "PinyinUtil.java"


# static fields
.field public static final SUPPORT_PINYIN:Z

.field protected static mCollator:Ljava/text/Collator;

.field private static sCscFeature:Lcom/sec/android/app/CscFeature;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/utils/PinyinUtil;->sCscFeature:Lcom/sec/android/app/CscFeature;

    .line 15
    sget-object v0, Lcom/android/providers/media/utils/PinyinUtil;->sCscFeature:Lcom/sec/android/app/CscFeature;

    const-string v1, "CscFeature_Music_SupportPinyinSort"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/media/utils/PinyinUtil;->SUPPORT_PINYIN:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeChineseSortKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "displayName"    # Ljava/lang/String;

    .prologue
    .line 66
    const-string v13, "<unknown>"

    invoke-virtual {p0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 67
    const-string v10, "\u0001"

    .line 128
    :cond_0
    :goto_0
    return-object v10

    .line 69
    :cond_1
    const-string v13, "[\\[\\]\\(\\)\"\'.,?!]"

    const-string v14, ""

    invoke-virtual {p0, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 70
    invoke-static {}, Lcom/android/providers/media/utils/HanziToPinyin;->getInstance()Lcom/android/providers/media/utils/HanziToPinyin;

    move-result-object v13

    invoke-virtual {v13, p0}, Lcom/android/providers/media/utils/HanziToPinyin;->getTokens(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 71
    .local v12, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/providers/media/utils/HanziToPinyin$Token;>;"
    const-string v6, ""

    .line 73
    .local v6, "result":Ljava/lang/String;
    if-eqz v12, :cond_10

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_10

    .line 74
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 75
    .local v5, "n":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .local v3, "keyBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_5

    .line 77
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/providers/media/utils/HanziToPinyin$Token;

    .line 78
    .local v11, "token":Lcom/android/providers/media/utils/HanziToPinyin$Token;
    iget v13, v11, Lcom/android/providers/media/utils/HanziToPinyin$Token;->type:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_3

    .line 79
    iget-object v13, v11, Lcom/android/providers/media/utils/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    .line 80
    .local v7, "sources":[C
    iget-object v13, v11, Lcom/android/providers/media/utils/HanziToPinyin$Token;->target:Ljava/lang/String;

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 81
    .local v9, "targets":[Ljava/lang/String;
    array-length v13, v7

    array-length v14, v9

    if-ge v13, v14, :cond_2

    array-length v4, v7

    .line 83
    .local v4, "m":I
    :goto_2
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_3
    if-ge v2, v4, :cond_4

    .line 84
    aget-object v13, v9, v2

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 81
    .end local v2    # "j":I
    .end local v4    # "m":I
    :cond_2
    array-length v4, v9

    goto :goto_2

    .line 90
    .end local v7    # "sources":[C
    .end local v9    # "targets":[Ljava/lang/String;
    :cond_3
    iget-object v13, v11, Lcom/android/providers/media/utils/HanziToPinyin$Token;->target:Ljava/lang/String;

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 91
    .restart local v9    # "targets":[Ljava/lang/String;
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_4
    array-length v13, v9

    if-ge v2, v13, :cond_4

    .line 92
    aget-object v13, v9, v2

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const/16 v13, 0x20

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 76
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 98
    .end local v2    # "j":I
    .end local v9    # "targets":[Ljava/lang/String;
    .end local v11    # "token":Lcom/android/providers/media/utils/HanziToPinyin$Token;
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    .line 99
    .local v10, "tmp":Ljava/lang/String;
    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "firstLetter":Ljava/lang/String;
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v13

    sput-object v13, Lcom/android/providers/media/utils/PinyinUtil;->mCollator:Ljava/text/Collator;

    .line 101
    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 103
    .local v8, "symbol":Ljava/lang/String;
    sget-object v13, Lcom/android/providers/media/utils/PinyinUtil;->mCollator:Ljava/text/Collator;

    const-string v14, "#"

    invoke-virtual {v13, v0, v14}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_6

    .line 104
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "#"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 105
    :cond_6
    const-string v13, "%7C"

    invoke-virtual {v8, v13}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_7

    .line 106
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "#"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 107
    :cond_7
    const-string v13, "%5B"

    invoke-virtual {v8, v13}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_8

    .line 108
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "#"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 109
    :cond_8
    const-string v13, "~"

    invoke-virtual {v8, v13}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_9

    .line 110
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "#"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 111
    :cond_9
    const-string v13, "_"

    invoke-virtual {v8, v13}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_a

    .line 112
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "#"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 113
    :cond_a
    const-string v13, "%C2%A2"

    invoke-virtual {v8, v13}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_b

    .line 114
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "#"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 115
    :cond_b
    const-string v13, "%C2%A3"

    invoke-virtual {v8, v13}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_c

    .line 116
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "#"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 117
    :cond_c
    const-string v13, "%C2%A5"

    invoke-virtual {v8, v13}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_d

    .line 118
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "#"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 119
    :cond_d
    const-string v13, "%C3%97"

    invoke-virtual {v8, v13}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_e

    .line 120
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "#"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 121
    :cond_e
    const-string v13, "%C3%B7"

    invoke-virtual {v8, v13}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_f

    .line 122
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "#"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 123
    :cond_f
    const-string v13, "%E2%82%AC"

    invoke-virtual {v8, v13}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_0

    .line 124
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "#"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .end local v0    # "firstLetter":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v3    # "keyBuilder":Ljava/lang/StringBuilder;
    .end local v5    # "n":I
    .end local v8    # "symbol":Ljava/lang/String;
    .end local v10    # "tmp":Ljava/lang/String;
    :cond_10
    move-object v10, v6

    .line 128
    goto/16 :goto_0
.end method

.method public static convertOrgin2PinyinForSort(Landroid/content/ContentValues;)V
    .locals 2
    .param p0, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 18
    if-nez p0, :cond_0

    .line 29
    :goto_0
    return-void

    .line 22
    :cond_0
    const-string v0, "genre_name"

    const-string v1, "genre_name_pinyin"

    invoke-static {p0, v0, v1}, Lcom/android/providers/media/utils/PinyinUtil;->subConvertOrgin2PinyinForSort(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    const-string v0, "composer"

    const-string v1, "composer_pinyin"

    invoke-static {p0, v0, v1}, Lcom/android/providers/media/utils/PinyinUtil;->subConvertOrgin2PinyinForSort(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    const-string v0, "title"

    const-string v1, "title_pinyin"

    invoke-static {p0, v0, v1}, Lcom/android/providers/media/utils/PinyinUtil;->subConvertOrgin2PinyinForSort(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    const-string v0, "_display_name"

    const-string v1, "_display_name_pinyin"

    invoke-static {p0, v0, v1}, Lcom/android/providers/media/utils/PinyinUtil;->subConvertOrgin2PinyinForSort(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    const-string v0, "bucket_display_name"

    const-string v1, "bucket_display_name_pinyin"

    invoke-static {p0, v0, v1}, Lcom/android/providers/media/utils/PinyinUtil;->subConvertOrgin2PinyinForSort(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    const-string v0, "title"

    invoke-static {p0, v0}, Lcom/android/providers/media/utils/PinyinUtil;->subConvertOrgin2PinyinForSearch(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public static subConvertOrgin2PinyinForSearch(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "values"    # Landroid/content/ContentValues;
    .param p1, "orginKey"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "orgin":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_search_key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/android/providers/media/utils/PinyinUtil;->computeChineseSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/providers/media/utils/SecDatabaseUtil;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_0
    return-object v0
.end method

.method public static subConvertOrgin2PinyinForSort(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "values"    # Landroid/content/ContentValues;
    .param p1, "orginKey"    # Ljava/lang/String;
    .param p2, "pinyinKey"    # Ljava/lang/String;

    .prologue
    .line 32
    const/4 v1, 0x0

    .line 33
    .local v1, "pinyin":Ljava/lang/String;
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "orgin":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 36
    const-string v2, "<unknown>"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 37
    const-string v1, "\u0001"

    .line 42
    :goto_0
    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {p0, p2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_0
    return-object v1

    .line 40
    :cond_1
    invoke-static {v0}, Lcom/android/providers/media/utils/PinyinUtil;->computeChineseSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
