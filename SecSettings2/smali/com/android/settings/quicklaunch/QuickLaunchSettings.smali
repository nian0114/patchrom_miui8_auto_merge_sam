.class public Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "QuickLaunchSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings$BookmarksObserver;
    }
.end annotation


# static fields
.field private static final sProjection:[Ljava/lang/String;


# instance fields
.field private mBookmarkedShortcuts:Landroid/util/SparseBooleanArray;

.field private mBookmarksCursor:Landroid/database/Cursor;

.field private mBookmarksObserver:Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings$BookmarksObserver;

.field private mClearDialogBookmarkTitle:Ljava/lang/CharSequence;

.field private mClearDialogShortcut:C

.field private mShortcutGroup:Landroid/preference/PreferenceGroup;

.field private mShortcutToPreference:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings_ex/quicklaunch/ShortcutPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 68
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "shortcut"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "intent"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->mUiHandler:Landroid/os/Handler;

    .line 363
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->refreshShortcuts()V

    return-void
.end method

.method private clearShortcut(C)V
    .locals 6
    .param p1, "shortcut"    # C

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "shortcut=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 198
    return-void
.end method

.method private createPreference(C)Lcom/android/settings_ex/quicklaunch/ShortcutPreference;
    .locals 2
    .param p1, "shortcut"    # C

    .prologue
    .line 262
    new-instance v0, Lcom/android/settings_ex/quicklaunch/ShortcutPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settings_ex/quicklaunch/ShortcutPreference;-><init>(Landroid/content/Context;C)V

    .line 263
    .local v0, "pref":Lcom/android/settings_ex/quicklaunch/ShortcutPreference;
    iget-object v1, p0, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->mShortcutGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 264
    iget-object v1, p0, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->mShortcutToPreference:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 265
    return-object v0
.end method

.method private getOrCreatePreference(C)Lcom/android/settings_ex/quicklaunch/ShortcutPreference;
    .locals 4
    .param p1, "shortcut"    # C

    .prologue
    .line 252
    iget-object v1, p0, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->mShortcutToPreference:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/quicklaunch/ShortcutPreference;

    .line 253
    .local v0, "pref":Lcom/android/settings_ex/quicklaunch/ShortcutPreference;
    if-eqz v0, :cond_0

    .line 257
    .end local v0    # "pref":Lcom/android/settings_ex/quicklaunch/ShortcutPreference;
    :goto_0
    return-object v0

    .line 256
    .restart local v0    # "pref":Lcom/android/settings_ex/quicklaunch/ShortcutPreference;
    :cond_0
    const-string v1, "QuickLaunchSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown shortcut \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', creating preference anyway"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-direct {p0, p1}, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->createPreference(C)Lcom/android/settings_ex/quicklaunch/ShortcutPreference;

    move-result-object v0

    goto :goto_0
.end method

.method private initShortcutPreferences()V
    .locals 5

    .prologue
    .line 271
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 272
    .local v3, "shortcutSeen":Landroid/util/SparseBooleanArray;
    const/4 v4, -0x1

    invoke-static {v4}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    .line 275
    .local v1, "keyMap":Landroid/view/KeyCharacterMap;
    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "keyCode":I
    :goto_0
    if-ltz v0, :cond_2

    .line 277
    invoke-virtual {v1, v0}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    .line 278
    .local v2, "shortcut":C
    if-eqz v2, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 275
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 281
    :cond_1
    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 282
    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 284
    invoke-direct {p0, v2}, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->createPreference(C)Lcom/android/settings_ex/quicklaunch/ShortcutPreference;

    goto :goto_1

    .line 286
    .end local v2    # "shortcut":C
    :cond_2
    return-void
.end method

.method private declared-synchronized refreshShortcuts()V
    .locals 17

    .prologue
    .line 289
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->mBookmarksCursor:Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    .local v1, "c":Landroid/database/Cursor;
    if-nez v1, :cond_0

    .line 361
    :goto_0
    monitor-exit p0

    return-void

    .line 295
    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z

    move-result v13

    if-nez v13, :cond_1

    .line 296
    const-string v13, "QuickLaunchSettings"

    const-string v14, "Could not requery cursor when refreshing shortcuts."

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 289
    .end local v1    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13

    .line 305
    .restart local v1    # "c":Landroid/database/Cursor;
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->mBookmarkedShortcuts:Landroid/util/SparseBooleanArray;

    .line 306
    .local v8, "noLongerBookmarkedShortcuts":Landroid/util/SparseBooleanArray;
    new-instance v7, Landroid/util/SparseBooleanArray;

    invoke-direct {v7}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 307
    .local v7, "newBookmarkedShortcuts":Landroid/util/SparseBooleanArray;
    :cond_2
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 308
    const/4 v13, 0x0

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    int-to-char v13, v13

    invoke-static {v13}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v11

    .line 309
    .local v11, "shortcut":C
    if-eqz v11, :cond_2

    .line 311
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->getOrCreatePreference(C)Lcom/android/settings_ex/quicklaunch/ShortcutPreference;

    move-result-object v10

    .line 312
    .local v10, "pref":Lcom/android/settings_ex/quicklaunch/ShortcutPreference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13, v1}, Landroid/provider/Settings$Bookmarks;->getTitle(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 319
    .local v12, "title":Ljava/lang/CharSequence;
    const-string v13, "intent"

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 320
    .local v5, "intentColumn":I
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 321
    .local v6, "intentUri":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v9

    .line 323
    .local v9, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v13, 0x0

    :try_start_3
    invoke-static {v6, v13}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    .line 324
    .local v4, "intent":Landroid/content/Intent;
    const/4 v13, 0x0

    invoke-virtual {v9, v4, v13}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 325
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_3

    .line 326
    invoke-virtual {v3, v9}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v12

    .line 332
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_3
    :goto_2
    :try_start_4
    invoke-virtual {v10, v12}, Lcom/android/settings_ex/quicklaunch/ShortcutPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 333
    const v13, 0x7f0e08bc

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v11}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/android/settings_ex/quicklaunch/ShortcutPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 335
    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Lcom/android/settings_ex/quicklaunch/ShortcutPreference;->setHasBookmark(Z)V

    .line 337
    const/4 v13, 0x1

    invoke-virtual {v7, v11, v13}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 338
    if-eqz v8, :cond_2

    .line 341
    const/4 v13, 0x0

    invoke-virtual {v8, v11, v13}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_1

    .line 345
    .end local v5    # "intentColumn":I
    .end local v6    # "intentUri":Ljava/lang/String;
    .end local v9    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v10    # "pref":Lcom/android/settings_ex/quicklaunch/ShortcutPreference;
    .end local v11    # "shortcut":C
    .end local v12    # "title":Ljava/lang/CharSequence;
    :cond_4
    if-eqz v8, :cond_6

    .line 346
    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->size()I

    move-result v13

    add-int/lit8 v2, v13, -0x1

    .local v2, "i":I
    :goto_3
    if-ltz v2, :cond_6

    .line 347
    invoke-virtual {v8, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 349
    invoke-virtual {v8, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v13

    int-to-char v11, v13

    .line 350
    .restart local v11    # "shortcut":C
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->mShortcutToPreference:Landroid/util/SparseArray;

    invoke-virtual {v13, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings_ex/quicklaunch/ShortcutPreference;

    .line 351
    .restart local v10    # "pref":Lcom/android/settings_ex/quicklaunch/ShortcutPreference;
    if-eqz v10, :cond_5

    .line 352
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Lcom/android/settings_ex/quicklaunch/ShortcutPreference;->setHasBookmark(Z)V

    .line 346
    .end local v10    # "pref":Lcom/android/settings_ex/quicklaunch/ShortcutPreference;
    .end local v11    # "shortcut":C
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 358
    .end local v2    # "i":I
    :cond_6
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->mBookmarkedShortcuts:Landroid/util/SparseBooleanArray;

    .line 360
    invoke-interface {v1}, Landroid/database/Cursor;->deactivate()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 328
    .restart local v5    # "intentColumn":I
    .restart local v6    # "intentUri":Ljava/lang/String;
    .restart local v9    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v10    # "pref":Lcom/android/settings_ex/quicklaunch/ShortcutPreference;
    .restart local v11    # "shortcut":C
    .restart local v12    # "title":Ljava/lang/CharSequence;
    :catch_0
    move-exception v13

    goto :goto_2
.end method

.method private showClearDialog(Lcom/android/settings_ex/quicklaunch/ShortcutPreference;)V
    .locals 1
    .param p1, "pref"    # Lcom/android/settings_ex/quicklaunch/ShortcutPreference;

    .prologue
    .line 179
    invoke-virtual {p1}, Lcom/android/settings_ex/quicklaunch/ShortcutPreference;->hasBookmark()Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 181
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings_ex/quicklaunch/ShortcutPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->mClearDialogBookmarkTitle:Ljava/lang/CharSequence;

    .line 182
    invoke-virtual {p1}, Lcom/android/settings_ex/quicklaunch/ShortcutPreference;->getShortcut()C

    move-result v0

    iput-char v0, p0, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->mClearDialogShortcut:C

    .line 183
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->showDialog(I)V

    goto :goto_0
.end method

.method private updateShortcut(CLandroid/content/Intent;)V
    .locals 6
    .param p1, "shortcut"    # C
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, ""

    const-string v3, "@quicklaunch"

    const/4 v5, 0x0

    move-object v1, p2

    move v4, p1

    invoke-static/range {v0 .. v5}, Landroid/provider/Settings$Bookmarks;->add(Landroid/content/ContentResolver;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;CI)Landroid/net/Uri;

    .line 249
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 97
    const/16 v0, 0x2a

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 138
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 140
    invoke-virtual {p0}, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 142
    if-eqz p1, :cond_0

    .line 144
    const-string v0, "CLEAR_DIALOG_BOOKMARK_TITLE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->mClearDialogBookmarkTitle:Ljava/lang/CharSequence;

    .line 145
    const-string v0, "CLEAR_DIALOG_SHORTCUT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->mClearDialogShortcut:C

    .line 147
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 224
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 242
    :goto_0
    return-void

    .line 228
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 231
    if-nez p3, :cond_1

    .line 232
    const-string v1, "QuickLaunchSettings"

    const-string v2, "Result from bookmark picker does not have an intent."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 236
    :cond_1
    const-string v1, "com.android.settings.quicklaunch.SHORTCUT"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getCharExtra(Ljava/lang/String;C)C

    move-result v0

    .line 237
    .local v0, "shortcut":C
    invoke-direct {p0, v0, p3}, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->updateShortcut(CLandroid/content/Intent;)V

    goto :goto_0

    .line 240
    .end local v0    # "shortcut":C
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 187
    iget-char v0, p0, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->mClearDialogShortcut:C

    if-lez v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 189
    iget-char v0, p0, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->mClearDialogShortcut:C

    invoke-direct {p0, v0}, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->clearShortcut(C)V

    .line 191
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->mClearDialogBookmarkTitle:Ljava/lang/CharSequence;

    .line 192
    const/4 v0, 0x0

    iput-char v0, p0, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->mClearDialogShortcut:C

    .line 193
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 102
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    const v0, 0x7f080096

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->addPreferencesFromResource(I)V

    .line 106
    const-string v0, "shortcut_category"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->mShortcutGroup:Landroid/preference/PreferenceGroup;

    .line 107
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->mShortcutToPreference:Landroid/util/SparseArray;

    .line 108
    new-instance v0, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings$BookmarksObserver;

    iget-object v1, p0, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->mUiHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings$BookmarksObserver;-><init>(Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->mBookmarksObserver:Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings$BookmarksObserver;

    .line 109
    invoke-direct {p0}, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->initShortcutPreferences()V

    .line 110
    invoke-virtual {p0}, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->sProjection:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->mBookmarksCursor:Landroid/database/Cursor;

    .line 112
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 160
    packed-switch p1, :pswitch_data_0

    .line 174
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 164
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e08bd

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e08be

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-char v4, p0, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->mClearDialogShortcut:C

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->mClearDialogBookmarkTitle:Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e08bf

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e08c0

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 217
    .local v0, "pref":Landroid/preference/Preference;
    instance-of v1, v0, Lcom/android/settings_ex/quicklaunch/ShortcutPreference;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 219
    .end local v0    # "pref":Landroid/preference/Preference;
    :goto_0
    return v1

    .line 218
    .restart local v0    # "pref":Landroid/preference/Preference;
    :cond_0
    check-cast v0, Lcom/android/settings_ex/quicklaunch/ShortcutPreference;

    .end local v0    # "pref":Landroid/preference/Preference;
    invoke-direct {p0, v0}, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->showClearDialog(Lcom/android/settings_ex/quicklaunch/ShortcutPreference;)V

    .line 219
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 126
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 127
    invoke-virtual {p0}, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->mBookmarksObserver:Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings$BookmarksObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 128
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    .line 202
    instance-of v3, p2, Lcom/android/settings_ex/quicklaunch/ShortcutPreference;

    if-nez v3, :cond_0

    const/4 v2, 0x0

    .line 210
    :goto_0
    return v2

    :cond_0
    move-object v1, p2

    .line 205
    check-cast v1, Lcom/android/settings_ex/quicklaunch/ShortcutPreference;

    .line 206
    .local v1, "pref":Lcom/android/settings_ex/quicklaunch/ShortcutPreference;
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/android/settings_ex/quicklaunch/BookmarkPicker;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 207
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "com.android.settings.quicklaunch.SHORTCUT"

    invoke-virtual {v1}, Lcom/android/settings_ex/quicklaunch/ShortcutPreference;->getShortcut()C

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;C)Landroid/content/Intent;

    .line 208
    invoke-virtual {p0, v0, v2}, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 116
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 117
    invoke-virtual {p0}, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->sProjection:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->mBookmarksCursor:Landroid/database/Cursor;

    .line 119
    invoke-virtual {p0}, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->mBookmarksObserver:Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings$BookmarksObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 121
    invoke-direct {p0}, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->refreshShortcuts()V

    .line 122
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 151
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 154
    const-string v0, "CLEAR_DIALOG_BOOKMARK_TITLE"

    iget-object v1, p0, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->mClearDialogBookmarkTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 155
    const-string v0, "CLEAR_DIALOG_SHORTCUT"

    iget-char v1, p0, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->mClearDialogShortcut:C

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 156
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 132
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onStop()V

    .line 133
    iget-object v0, p0, Lcom/android/settings_ex/quicklaunch/QuickLaunchSettings;->mBookmarksCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 134
    return-void
.end method
