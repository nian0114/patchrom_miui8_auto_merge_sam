.class final Lcom/android/settings_ex/LockscreenNotificationApplist$3;
.super Ljava/lang/Object;
.source "LockscreenNotificationApplist.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/LockscreenNotificationApplist;
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
        "Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/LockscreenNotificationApplist$3;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;)I
    .locals 3
    .param p1, "lhs"    # Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;
    .param p2, "rhs"    # Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/settings_ex/LockscreenNotificationApplist$3;->sCollator:Ljava/text/Collator;

    iget-object v1, p1, Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;->label:Ljava/lang/CharSequence;

    iget-object v2, p2, Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 344
    check-cast p1, Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/LockscreenNotificationApplist$3;->compare(Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;)I

    move-result v0

    return v0
.end method
