.class final Lcom/android/settings_ex/notification/ZenModeEventRuleSettings$3;
.super Ljava/lang/Object;
.source "ZenModeEventRuleSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/ZenModeEventRuleSettings;
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
        "Lcom/android/settings_ex/notification/ZenModeEventRuleSettings$CalendarInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings_ex/notification/ZenModeEventRuleSettings$CalendarInfo;Lcom/android/settings_ex/notification/ZenModeEventRuleSettings$CalendarInfo;)I
    .locals 2
    .param p1, "lhs"    # Lcom/android/settings_ex/notification/ZenModeEventRuleSettings$CalendarInfo;
    .param p2, "rhs"    # Lcom/android/settings_ex/notification/ZenModeEventRuleSettings$CalendarInfo;

    .prologue
    .line 223
    iget-object v0, p1, Lcom/android/settings_ex/notification/ZenModeEventRuleSettings$CalendarInfo;->name:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/settings_ex/notification/ZenModeEventRuleSettings$CalendarInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 220
    check-cast p1, Lcom/android/settings_ex/notification/ZenModeEventRuleSettings$CalendarInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/settings_ex/notification/ZenModeEventRuleSettings$CalendarInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/notification/ZenModeEventRuleSettings$3;->compare(Lcom/android/settings_ex/notification/ZenModeEventRuleSettings$CalendarInfo;Lcom/android/settings_ex/notification/ZenModeEventRuleSettings$CalendarInfo;)I

    move-result v0

    return v0
.end method
