.class Lcom/android/settings_ex/notification/PriorityNotiAppList$ViewHolder;
.super Ljava/lang/Object;
.source "PriorityNotiAppList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/PriorityNotiAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field icon:Landroid/widget/ImageView;

.field mSwitch:Landroid/widget/Switch;

.field row:Landroid/view/ViewGroup;

.field rowDivider:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/notification/PriorityNotiAppList$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/notification/PriorityNotiAppList$1;

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/android/settings_ex/notification/PriorityNotiAppList$ViewHolder;-><init>()V

    return-void
.end method
