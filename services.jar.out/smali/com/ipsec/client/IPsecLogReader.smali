.class public Lcom/ipsec/client/IPsecLogReader;
.super Ljava/io/BufferedReader;
.source "IPsecLogReader.java"


# direct methods
.method protected constructor <init>(Ljava/io/Reader;)V
    .locals 0
    .param p1, "in"    # Ljava/io/Reader;

    .prologue
    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-void
.end method

.method protected constructor <init>(Ljava/io/Reader;I)V
    .locals 0
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "size"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    return-void
.end method
