.class public Lcom/android/providers/media/utils/SecDatabaseUtil;
.super Ljava/lang/Object;
.source "SecDatabaseUtil.java"


# static fields
.field private static mColl:Ljava/text/Collator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/media/utils/SecDatabaseUtil;->mColl:Ljava/text/Collator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCollationKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-static {p0}, Lcom/android/providers/media/utils/SecDatabaseUtil;->getCollationKeyInBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 46
    .local v0, "arr":[B
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0}, Lcom/android/providers/media/utils/SecDatabaseUtil;->getKeyLen([B)I

    move-result v4

    const-string v5, "ISO8859_1"

    invoke-direct {v2, v0, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    return-object v2

    .line 47
    :catch_0
    move-exception v1

    .line 48
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_0
.end method

.method private static getCollationKeyInBytes(Ljava/lang/String;)[B
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 62
    sget-object v0, Lcom/android/providers/media/utils/SecDatabaseUtil;->mColl:Ljava/text/Collator;

    if-nez v0, :cond_0

    .line 63
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/utils/SecDatabaseUtil;->mColl:Ljava/text/Collator;

    .line 64
    sget-object v0, Lcom/android/providers/media/utils/SecDatabaseUtil;->mColl:Ljava/text/Collator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 66
    :cond_0
    sget-object v0, Lcom/android/providers/media/utils/SecDatabaseUtil;->mColl:Ljava/text/Collator;

    invoke-virtual {v0, p0}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/CollationKey;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private static getKeyLen([B)I
    .locals 1
    .param p0, "arr"    # [B

    .prologue
    .line 53
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p0, v0

    if-eqz v0, :cond_0

    .line 54
    array-length v0, p0

    .line 57
    :goto_0
    return v0

    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static keyFor(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x2e

    .line 94
    if-eqz p0, :cond_a

    .line 95
    const/4 v4, 0x0

    .line 96
    .local v4, "sortfirst":Z
    const-string v5, "<unknown>"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 97
    const-string v2, "\u0001"

    .line 141
    .end local v4    # "sortfirst":Z
    :cond_0
    :goto_0
    return-object v2

    .line 101
    .restart local v4    # "sortfirst":Z
    :cond_1
    const-string v5, "\u0001"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 102
    const/4 v4, 0x1

    .line 104
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 105
    const-string v5, "the "

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 106
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 108
    :cond_3
    const-string v5, "an "

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 109
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 111
    :cond_4
    const-string v5, "a "

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 112
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 114
    :cond_5
    const-string v5, ", the"

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, ",the"

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, ", an"

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, ",an"

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, ", a"

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, ",a"

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 117
    :cond_6
    const/4 v5, 0x0

    const/16 v6, 0x2c

    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 119
    :cond_7
    const-string v5, "[\\[\\]\\(\\)\"\'.,?!]"

    const-string v6, ""

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 120
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_9

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v0, "b":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 127
    .local v3, "nl":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_8

    .line 128
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 131
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 132
    invoke-static {p0}, Lcom/android/providers/media/utils/SecDatabaseUtil;->getCollationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "key":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 134
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u0001"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 138
    .end local v0    # "b":Ljava/lang/StringBuilder;
    .end local v1    # "i":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "nl":I
    :cond_9
    const-string v2, ""

    goto/16 :goto_0

    .line 141
    .end local v4    # "sortfirst":Z
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public static setChangedLocale()V
    .locals 2

    .prologue
    .line 74
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/utils/SecDatabaseUtil;->mColl:Ljava/text/Collator;

    .line 75
    sget-object v0, Lcom/android/providers/media/utils/SecDatabaseUtil;->mColl:Ljava/text/Collator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 76
    return-void
.end method
