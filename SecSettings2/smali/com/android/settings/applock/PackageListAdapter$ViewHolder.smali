.class Lcom/android/settings_ex/applock/PackageListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "PackageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applock/PackageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field mFolderTextView:Landroid/widget/TextView;

.field mImageView:Landroid/widget/ImageView;

.field mLockSwitch:Landroid/widget/Switch;

.field mNameView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/settings_ex/applock/PackageListAdapter;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/applock/PackageListAdapter;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/settings_ex/applock/PackageListAdapter$ViewHolder;->this$0:Lcom/android/settings_ex/applock/PackageListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/applock/PackageListAdapter;Lcom/android/settings_ex/applock/PackageListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/applock/PackageListAdapter;
    .param p2, "x1"    # Lcom/android/settings_ex/applock/PackageListAdapter$1;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/settings_ex/applock/PackageListAdapter$ViewHolder;-><init>(Lcom/android/settings_ex/applock/PackageListAdapter;)V

    return-void
.end method
