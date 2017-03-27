.class public Lcom/android/settings_ex/LockscreenNotificationApplist$AppRow;
.super Lcom/android/settings_ex/LockscreenNotificationApplist$Row;
.source "LockscreenNotificationApplist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/LockscreenNotificationApplist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppRow"
.end annotation


# instance fields
.field public banned:Z

.field public first:Z

.field public icon:Landroid/graphics/drawable/Drawable;

.field public label:Ljava/lang/CharSequence;

.field public pkg:Ljava/lang/String;

.field public priority:Z

.field public sensitive:Z

.field public show:Z

.field public uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 331
    invoke-direct {p0}, Lcom/android/settings_ex/LockscreenNotificationApplist$Row;-><init>()V

    return-void
.end method
