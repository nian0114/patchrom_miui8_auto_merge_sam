.class final Lcom/android/settings_ex/networkconnect/NetworkConnectActivity$4;
.super Ljava/lang/Object;
.source "NetworkConnectActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/networkconnect/NetworkConnectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settings_ex/networkconnect/ApplicationNetInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/networkconnect/NetworkConnectActivity$4;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings_ex/networkconnect/ApplicationNetInfo;Lcom/android/settings_ex/networkconnect/ApplicationNetInfo;)I
    .locals 3
    .param p1, "leftApp"    # Lcom/android/settings_ex/networkconnect/ApplicationNetInfo;
    .param p2, "rightApp"    # Lcom/android/settings_ex/networkconnect/ApplicationNetInfo;

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/settings_ex/networkconnect/NetworkConnectActivity$4;->sCollator:Ljava/text/Collator;

    invoke-virtual {p1}, Lcom/android/settings_ex/networkconnect/ApplicationNetInfo;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/settings_ex/networkconnect/ApplicationNetInfo;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 327
    check-cast p1, Lcom/android/settings_ex/networkconnect/ApplicationNetInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/settings_ex/networkconnect/ApplicationNetInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/networkconnect/NetworkConnectActivity$4;->compare(Lcom/android/settings_ex/networkconnect/ApplicationNetInfo;Lcom/android/settings_ex/networkconnect/ApplicationNetInfo;)I

    move-result v0

    return v0
.end method
