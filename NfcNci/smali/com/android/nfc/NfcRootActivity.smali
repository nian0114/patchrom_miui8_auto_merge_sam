.class public Lcom/android/nfc/NfcRootActivity;
.super Landroid/app/Activity;
.source "NfcRootActivity.java"


# static fields
.field private static final BROWSER_DIALOG:I = 0x1

.field public static final EXTRA_INVALID_TAG:Ljava/lang/String; = "invalidTag"

.field static final EXTRA_LAUNCH_INTENT:Ljava/lang/String; = "launchIntent"

.field static final EXTRA_UNSUPPORTED_TAG:Ljava/lang/String; = "unSupportedTag"

.field static final EXTRA_UNSUPPORTED_TECH:Ljava/lang/String; = "mTechnology"

.field private static final INVALID_DIALOG:I = 0x3

.field public static final PREF:Ljava/lang/String; = "NfcServicePrefs"

.field static final PREF_BROWSER_NEVER_ASK:Ljava/lang/String; = "browser_never_ask"

.field static final PREF_CONTACT_NEVER_ASK:Ljava/lang/String; = "contact_never_ask"

.field private static final TAG:Ljava/lang/String; = "NfcService"

.field private static final UNSUPPORTED_DIALOG:I = 0x4

.field private static final VCARD_DIALOG:I = 0x2


# instance fields
.field private browserDialog:Landroid/app/AlertDialog;

.field private contactDialog:Landroid/app/AlertDialog;

.field private invalidTagDialog:Landroid/app/AlertDialog;

.field mBrowerSchemeList:[Ljava/lang/String;

.field mFName:Ljava/lang/String;

.field mIntent:Landroid/content/Intent;

.field mLaunchIntent:Landroid/content/Intent;

.field mMessage:Ljava/lang/String;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mPrefsEditor:Landroid/content/SharedPreferences$Editor;

.field mTagTechnology:I

.field mVcardMimeList:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 69
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 89
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "http"

    aput-object v1, v0, v2

    const-string v1, "https"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/nfc/NfcRootActivity;->mBrowerSchemeList:[Ljava/lang/String;

    .line 90
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "text/vcard"

    aput-object v1, v0, v2

    const-string v1, "text/x-vcard"

    aput-object v1, v0, v3

    const-string v1, "text/x-vCard"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/nfc/NfcRootActivity;->mVcardMimeList:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/NfcRootActivity;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcRootActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/nfc/NfcRootActivity;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/nfc/NfcRootActivity;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcRootActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/nfc/NfcRootActivity;->startActivityWithKnox(Landroid/content/Intent;)V

    return-void
.end method

.method private startActivityWithKnox(Landroid/content/Intent;)V
    .locals 17
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 196
    const-string v14, "persona"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/nfc/NfcRootActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PersonaManager;

    .line 197
    .local v7, "personaManager":Landroid/os/PersonaManager;
    invoke-virtual {v7}, Landroid/os/PersonaManager;->getPersonaIds()[I

    move-result-object v8

    .line 198
    .local v8, "personas":[I
    if-eqz v8, :cond_0

    array-length v14, v8

    if-nez v14, :cond_1

    .line 200
    :cond_0
    sget-object v14, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/android/nfc/NfcRootActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 260
    :goto_0
    return-void

    .line 204
    :cond_1
    const-string v14, "NfcService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Handle launch intent with Knox "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-string v14, "user"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/nfc/NfcRootActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/UserManager;

    .line 206
    .local v10, "userManager":Landroid/os/UserManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/NfcRootActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 208
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 209
    .local v3, "currentUser":I
    const/4 v14, 0x1

    invoke-virtual {v10, v14}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v11

    .line 210
    .local v11, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v12, "validUserIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v2, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    .line 214
    .local v9, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v14

    if-eqz v14, :cond_3

    iget v14, v9, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v14, v3, :cond_3

    iget v14, v9, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p1

    invoke-virtual {v7, v14, v0}, Landroid/os/PersonaManager;->isNFCAllowed(ILandroid/content/Intent;)Z

    move-result v14

    if-nez v14, :cond_4

    :cond_3
    iget v14, v9, Landroid/content/pm/UserInfo;->id:I

    if-ne v14, v3, :cond_2

    .line 217
    :cond_4
    invoke-virtual {v7}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v14

    if-eqz v14, :cond_5

    iget v14, v9, Landroid/content/pm/UserInfo;->id:I

    if-nez v14, :cond_5

    .line 219
    const-string v14, "NfcService"

    const-string v15, "skipping owner for kiosk mode"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 223
    :cond_5
    const v14, 0x30040

    iget v15, v9, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v14, v15}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 228
    .local v5, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v5, :cond_6

    .line 231
    const-string v14, "NfcService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "launching preferred activity "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " for user "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v9, Landroid/content/pm/UserInfo;->id:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance v14, Landroid/os/UserHandle;

    iget v15, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v14, v15}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/android/nfc/NfcRootActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 237
    :cond_6
    const v14, 0x10040

    iget v15, v9, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v14, v15}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 240
    iget v14, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 244
    .end local v5    # "info":Landroid/content/pm/ResolveInfo;
    .end local v9    # "user":Landroid/content/pm/UserInfo;
    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_9

    .line 245
    const-string v14, "NfcService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "launch knox chooser user size "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    new-instance v13, Landroid/content/Intent;

    const-class v14, Lcom/android/nfc/KnoxChooserActivity;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 248
    .local v13, "wrapperIntent":Landroid/content/Intent;
    const-string v14, "com.samsung.sec.knox.EXTRA_KNOX_ARRAY"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v12}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 249
    const-string v14, "android.intent.extra.INTENT"

    move-object/from16 v0, p1

    invoke-virtual {v13, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 250
    const-string v14, "rlist"

    invoke-virtual {v13, v14, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 251
    sget-object v14, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/nfc/NfcRootActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 259
    .end local v13    # "wrapperIntent":Landroid/content/Intent;
    :cond_8
    :goto_2
    const-string v14, "NfcService"

    const-string v15, "NFC nothing left to launch"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 252
    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_8

    .line 253
    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 254
    .restart local v5    # "info":Landroid/content/pm/ResolveInfo;
    const-string v14, "NfcService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " NFC only have 1 candidate "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    new-instance v14, Landroid/os/UserHandle;

    iget-object v15, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    invoke-direct {v14, v15}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/android/nfc/NfcRootActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_2
.end method


# virtual methods
.method checkSchemList(Ljava/lang/String;)Z
    .locals 3
    .param p1, "scheme"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 415
    if-nez p1, :cond_1

    .line 422
    :cond_0
    :goto_0
    return v1

    .line 417
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/nfc/NfcRootActivity;->mBrowerSchemeList:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 418
    iget-object v2, p0, Lcom/android/nfc/NfcRootActivity;->mBrowerSchemeList:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 419
    const/4 v1, 0x1

    goto :goto_0

    .line 417
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method checkVCardList(Ljava/lang/String;)Z
    .locals 3
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 426
    if-nez p1, :cond_1

    .line 433
    :cond_0
    :goto_0
    return v1

    .line 428
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/nfc/NfcRootActivity;->mVcardMimeList:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 429
    iget-object v2, p0, Lcom/android/nfc/NfcRootActivity;->mVcardMimeList:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 430
    const/4 v1, 0x1

    goto :goto_0

    .line 428
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method isValidPopFeature(Ljava/lang/String;)Z
    .locals 2
    .param p1, "popup"    # Ljava/lang/String;

    .prologue
    .line 406
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "browser"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contact"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 408
    :cond_0
    const/4 v0, 0x1

    .line 411
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    .line 106
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/nfc/NfcRootActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/nfc/NfcRootActivity;->mIntent:Landroid/content/Intent;

    .line 111
    iget-object v4, p0, Lcom/android/nfc/NfcRootActivity;->mIntent:Landroid/content/Intent;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/nfc/NfcRootActivity;->mIntent:Landroid/content/Intent;

    const-string v5, "invalidTag"

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 112
    const-string v4, "NfcService"

    const-string v5, "Display invalid tag popup"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const-string v4, "NfcService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "technology: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/nfc/NfcRootActivity;->mTagTechnology:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v4, p0, Lcom/android/nfc/NfcRootActivity;->mIntent:Landroid/content/Intent;

    const-string v5, "mTechnology"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/nfc/NfcRootActivity;->mTagTechnology:I

    .line 118
    iget v4, p0, Lcom/android/nfc/NfcRootActivity;->mTagTechnology:I

    if-eq v4, v7, :cond_0

    .line 119
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/android/nfc/NfcRootActivity;->showDialog(I)V

    .line 188
    :goto_0
    return-void

    .line 122
    :cond_0
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/android/nfc/NfcRootActivity;->showDialog(I)V

    goto :goto_0

    .line 129
    :cond_1
    iget-object v4, p0, Lcom/android/nfc/NfcRootActivity;->mIntent:Landroid/content/Intent;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/nfc/NfcRootActivity;->mIntent:Landroid/content/Intent;

    const-string v5, "launchIntent"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 130
    iget-object v4, p0, Lcom/android/nfc/NfcRootActivity;->mIntent:Landroid/content/Intent;

    const-string v5, "launchIntent"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    iput-object v4, p0, Lcom/android/nfc/NfcRootActivity;->mLaunchIntent:Landroid/content/Intent;

    .line 132
    iget-object v4, p0, Lcom/android/nfc/NfcRootActivity;->mLaunchIntent:Landroid/content/Intent;

    if-eqz v4, :cond_7

    .line 133
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_NFC_ConfigSecurityPromptPopup"

    const-string v6, "none"

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, "popup":Ljava/lang/String;
    const-string v4, "NfcService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tag value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v4, p0, Lcom/android/nfc/NfcRootActivity;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 139
    .local v1, "intentData":Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/nfc/NfcRootActivity;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "intentType":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/nfc/NfcRootActivity;->isValidPopFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 146
    const-string v4, "NfcServicePrefs"

    invoke-virtual {p0, v4, v8}, Lcom/android/nfc/NfcRootActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/android/nfc/NfcRootActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 147
    iget-object v4, p0, Lcom/android/nfc/NfcRootActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    iput-object v4, p0, Lcom/android/nfc/NfcRootActivity;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 148
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/nfc/NfcRootActivity;->checkSchemList(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/nfc/NfcRootActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "browser_never_ask"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_3

    .line 150
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "all"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "browser"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 151
    :cond_2
    invoke-virtual {p0}, Lcom/android/nfc/NfcRootActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07001e

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/nfc/NfcRootActivity;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%"

    const-string v6, "%%"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/nfc/NfcRootActivity;->mMessage:Ljava/lang/String;

    .line 152
    invoke-virtual {p0, v9}, Lcom/android/nfc/NfcRootActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 156
    :cond_3
    if-eqz v2, :cond_5

    invoke-virtual {p0, v2}, Lcom/android/nfc/NfcRootActivity;->checkVCardList(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/nfc/NfcRootActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "contact_never_ask"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_5

    .line 158
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "all"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "contact"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 159
    :cond_4
    iget-object v4, p0, Lcom/android/nfc/NfcRootActivity;->mLaunchIntent:Landroid/content/Intent;

    const-string v5, "mFNname"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/nfc/NfcRootActivity;->mFName:Ljava/lang/String;

    .line 160
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/android/nfc/NfcRootActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 169
    :cond_5
    :try_start_0
    sget-object v4, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-static {v4}, Landroid/os/PersonaManager;->isKnoxVersionSupported(Landroid/os/PersonaManager$KnoxContainerVersion;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 171
    iget-object v4, p0, Lcom/android/nfc/NfcRootActivity;->mLaunchIntent:Landroid/content/Intent;

    invoke-direct {p0, v4}, Lcom/android/nfc/NfcRootActivity;->startActivityWithKnox(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_1
    invoke-virtual {p0}, Lcom/android/nfc/NfcRootActivity;->finish()V

    goto/16 :goto_0

    .line 173
    :cond_6
    :try_start_1
    iget-object v4, p0, Lcom/android/nfc/NfcRootActivity;->mLaunchIntent:Landroid/content/Intent;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v4, v5}, Lcom/android/nfc/NfcRootActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v4, "NfcService"

    const-string v5, "activity not found"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 182
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "intentData":Landroid/net/Uri;
    .end local v2    # "intentType":Ljava/lang/String;
    .end local v3    # "popup":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Lcom/android/nfc/NfcRootActivity;->finish()V

    goto/16 :goto_0

    .line 186
    :cond_8
    invoke-virtual {p0}, Lcom/android/nfc/NfcRootActivity;->finish()V

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 11
    .param p1, "id"    # I

    .prologue
    const v5, 0x7f070023

    const/high16 v10, 0x1040000

    const/4 v3, 0x0

    const/4 v9, 0x0

    const v8, 0x104000a

    .line 271
    new-instance v1, Landroid/view/ContextThemeWrapper;

    const/high16 v4, 0x7f080000

    invoke-direct {v1, p0, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 272
    .local v1, "c":Landroid/view/ContextThemeWrapper;
    packed-switch p1, :pswitch_data_0

    .line 391
    :goto_0
    return-object v3

    .line 274
    :pswitch_0
    const/high16 v4, 0x7f030000

    invoke-static {p0, v4, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 275
    .local v2, "linear":Landroid/widget/LinearLayout;
    const/high16 v3, 0x7f090000

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 276
    .local v0, "browserDialogMessage":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/nfc/NfcRootActivity;->mMessage:Ljava/lang/String;

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f07001d

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/nfc/NfcRootActivity$3;

    invoke-direct {v4, p0, v2}, Lcom/android/nfc/NfcRootActivity$3;-><init>(Lcom/android/nfc/NfcRootActivity;Landroid/widget/LinearLayout;)V

    invoke-virtual {v3, v8, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/nfc/NfcRootActivity$2;

    invoke-direct {v4, p0}, Lcom/android/nfc/NfcRootActivity$2;-><init>(Lcom/android/nfc/NfcRootActivity;)V

    invoke-virtual {v3, v10, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/nfc/NfcRootActivity$1;

    invoke-direct {v4, p0}, Lcom/android/nfc/NfcRootActivity$1;-><init>(Lcom/android/nfc/NfcRootActivity;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto :goto_0

    .line 321
    .end local v0    # "browserDialogMessage":Landroid/widget/TextView;
    .end local v2    # "linear":Landroid/widget/LinearLayout;
    :pswitch_1
    const v4, 0x7f030004

    invoke-static {p0, v4, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 322
    .restart local v2    # "linear":Landroid/widget/LinearLayout;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f07001f

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/nfc/NfcRootActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070020

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/nfc/NfcRootActivity;->mFName:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/nfc/NfcRootActivity$6;

    invoke-direct {v4, p0, v2}, Lcom/android/nfc/NfcRootActivity$6;-><init>(Lcom/android/nfc/NfcRootActivity;Landroid/widget/LinearLayout;)V

    invoke-virtual {v3, v8, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/nfc/NfcRootActivity$5;

    invoke-direct {v4, p0}, Lcom/android/nfc/NfcRootActivity$5;-><init>(Lcom/android/nfc/NfcRootActivity;)V

    invoke-virtual {v3, v10, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/nfc/NfcRootActivity$4;

    invoke-direct {v4, p0}, Lcom/android/nfc/NfcRootActivity$4;-><init>(Lcom/android/nfc/NfcRootActivity;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 365
    .end local v2    # "linear":Landroid/widget/LinearLayout;
    :pswitch_2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f070021

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/nfc/NfcRootActivity$7;

    invoke-direct {v4, p0}, Lcom/android/nfc/NfcRootActivity$7;-><init>(Lcom/android/nfc/NfcRootActivity;)V

    invoke-virtual {v3, v8, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 377
    :pswitch_3
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f070022

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/nfc/NfcRootActivity$8;

    invoke-direct {v4, p0}, Lcom/android/nfc/NfcRootActivity$8;-><init>(Lcom/android/nfc/NfcRootActivity;)V

    invoke-virtual {v3, v8, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 272
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 265
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 266
    return-void
.end method
