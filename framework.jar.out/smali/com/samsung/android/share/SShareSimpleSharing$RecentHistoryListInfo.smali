.class final Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;
.super Ljava/lang/Object;
.source "SShareSimpleSharing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/share/SShareSimpleSharing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RecentHistoryListInfo"
.end annotation


# instance fields
.field deviceInfo:Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;

.field displayLabel:Ljava/lang/CharSequence;

.field extraInfo:Ljava/lang/CharSequence;

.field iconType:I

.field photoIcon:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/samsung/android/share/SShareSimpleSharing;


# direct methods
.method constructor <init>(Lcom/samsung/android/share/SShareSimpleSharing;Ljava/lang/CharSequence;)V
    .locals 2
    .param p2, "pInitText"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    iput-object p1, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->displayLabel:Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->extraInfo:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->iconType:I

    iput-object v1, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->photoIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->deviceInfo:Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/share/SShareSimpleSharing;Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 1
    .param p2, "pLabel"    # Ljava/lang/CharSequence;
    .param p3, "pIconType"    # I
    .param p4, "pPhoto"    # Landroid/graphics/drawable/Drawable;
    .param p5, "pExtraInfo"    # Ljava/lang/CharSequence;

    .prologue
    iput-object p1, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->displayLabel:Ljava/lang/CharSequence;

    iput p3, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->iconType:I

    iput-object p4, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->photoIcon:Landroid/graphics/drawable/Drawable;

    iput-object p5, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->extraInfo:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->deviceInfo:Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/share/SShareSimpleSharing;Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;)V
    .locals 0
    .param p2, "pLabel"    # Ljava/lang/CharSequence;
    .param p3, "pIconType"    # I
    .param p4, "pPhoto"    # Landroid/graphics/drawable/Drawable;
    .param p5, "pExtraInfo"    # Ljava/lang/CharSequence;
    .param p6, "pDeviceInfo"    # Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;

    .prologue
    iput-object p1, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->displayLabel:Ljava/lang/CharSequence;

    iput p3, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->iconType:I

    iput-object p4, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->photoIcon:Landroid/graphics/drawable/Drawable;

    iput-object p5, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->extraInfo:Ljava/lang/CharSequence;

    iput-object p6, p0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->deviceInfo:Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;

    return-void
.end method
