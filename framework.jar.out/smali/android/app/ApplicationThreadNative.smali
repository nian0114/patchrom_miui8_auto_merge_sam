.class public abstract Landroid/app/ApplicationThreadNative;
.super Landroid/os/Binder;
.source "ApplicationThreadNative.java"

# interfaces
.implements Landroid/app/IApplicationThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 88
    const-string v0, "android.app.IApplicationThread"

    invoke-virtual {p0, p0, v0}, Landroid/app/ApplicationThreadNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 75
    if-nez p0, :cond_1

    .line 76
    const/4 v0, 0x0

    .line 84
    :cond_0
    :goto_0
    return-object v0

    .line 78
    :cond_1
    const-string v1, "android.app.IApplicationThread"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IApplicationThread;

    .line 80
    .local v0, "in":Landroid/app/IApplicationThread;
    if-nez v0, :cond_0

    .line 84
    new-instance v0, Landroid/app/ApplicationThreadProxy;

    .end local v0    # "in":Landroid/app/IApplicationThread;
    invoke-direct {v0, p0}, Landroid/app/ApplicationThreadProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 944
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 136
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 94
    sparse-switch p1, :sswitch_data_0

    .line 939
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 97
    :sswitch_0
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 99
    .local v6, "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    const/4 v7, 0x1

    .line 100
    .local v7, "finished":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v8, 0x1

    .line 101
    .local v8, "userLeaving":Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 102
    .local v9, "configChanges":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v10, 0x1

    .local v10, "dontReport":Z
    :goto_3
    move-object/from16 v5, p0

    .line 103
    invoke-virtual/range {v5 .. v10}, Landroid/app/ApplicationThreadNative;->schedulePauseActivity(Landroid/os/IBinder;ZZIZ)V

    .line 104
    const/4 v5, 0x1

    goto :goto_0

    .line 99
    .end local v7    # "finished":Z
    .end local v8    # "userLeaving":Z
    .end local v9    # "configChanges":I
    .end local v10    # "dontReport":Z
    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    .line 100
    .restart local v7    # "finished":Z
    :cond_1
    const/4 v8, 0x0

    goto :goto_2

    .line 102
    .restart local v8    # "userLeaving":Z
    .restart local v9    # "configChanges":I
    :cond_2
    const/4 v10, 0x0

    goto :goto_3

    .line 109
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v7    # "finished":Z
    .end local v8    # "userLeaving":Z
    .end local v9    # "configChanges":I
    :sswitch_1
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 111
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    const/16 v129, 0x1

    .line 112
    .local v129, "show":Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 113
    .restart local v9    # "configChanges":I
    move-object/from16 v0, p0

    move/from16 v1, v129

    invoke-virtual {v0, v6, v1, v9}, Landroid/app/ApplicationThreadNative;->scheduleStopActivity(Landroid/os/IBinder;ZI)V

    .line 114
    const/4 v5, 0x1

    goto :goto_0

    .line 111
    .end local v9    # "configChanges":I
    .end local v129    # "show":Z
    :cond_3
    const/16 v129, 0x0

    goto :goto_4

    .line 119
    .end local v6    # "b":Landroid/os/IBinder;
    :sswitch_2
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 121
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    const/16 v129, 0x1

    .line 122
    .restart local v129    # "show":Z
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v129

    invoke-virtual {v0, v6, v1}, Landroid/app/ApplicationThreadNative;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V

    .line 123
    const/4 v5, 0x1

    goto :goto_0

    .line 121
    .end local v129    # "show":Z
    :cond_4
    const/16 v129, 0x0

    goto :goto_5

    .line 128
    .end local v6    # "b":Landroid/os/IBinder;
    :sswitch_3
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 130
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    const/16 v131, 0x1

    .line 131
    .local v131, "sleeping":Z
    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v131

    invoke-virtual {v0, v6, v1}, Landroid/app/ApplicationThreadNative;->scheduleSleeping(Landroid/os/IBinder;Z)V

    .line 132
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 130
    .end local v131    # "sleeping":Z
    :cond_5
    const/16 v131, 0x0

    goto :goto_6

    .line 137
    .end local v6    # "b":Landroid/os/IBinder;
    :sswitch_4
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 139
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 140
    .local v21, "procState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    const/16 v27, 0x1

    .line 141
    .local v27, "isForward":Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v126

    .line 142
    .local v126, "resumeArgs":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v27

    move-object/from16 v3, v126

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleResumeActivity(Landroid/os/IBinder;IZLandroid/os/Bundle;)V

    .line 143
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 140
    .end local v27    # "isForward":Z
    .end local v126    # "resumeArgs":Landroid/os/Bundle;
    :cond_6
    const/16 v27, 0x0

    goto :goto_7

    .line 148
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v21    # "procState":I
    :sswitch_5
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 150
    .restart local v6    # "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ApplicationThreadNative;->forceCallResumeActivity(Landroid/os/IBinder;)V

    .line 151
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 156
    .end local v6    # "b":Landroid/os/IBinder;
    :sswitch_6
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 158
    .restart local v6    # "b":Landroid/os/IBinder;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v24

    .line 159
    .local v24, "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v6, v1}, Landroid/app/ApplicationThreadNative;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V

    .line 160
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 165
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v24    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    :sswitch_7
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Intent;

    .line 167
    .local v12, "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 168
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 169
    .local v14, "ident":I
    sget-object v5, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ActivityInfo;

    .line 170
    .local v15, "info":Landroid/content/pm/ActivityInfo;
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/res/Configuration;

    .line 171
    .local v16, "curConfig":Landroid/content/res/Configuration;
    const/16 v17, 0x0

    .line 172
    .local v17, "overrideConfig":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    .line 173
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "overrideConfig":Landroid/content/res/Configuration;
    check-cast v17, Landroid/content/res/Configuration;

    .line 175
    .restart local v17    # "overrideConfig":Landroid/content/res/Configuration;
    :cond_7
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/res/CompatibilityInfo;

    .line 176
    .local v18, "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 177
    .local v19, "referrer":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v20

    .line 179
    .local v20, "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 180
    .restart local v21    # "procState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v22

    .line 181
    .local v22, "state":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v23

    .line 182
    .local v23, "persistentState":Landroid/os/PersistableBundle;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v24

    .line 183
    .restart local v24    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    sget-object v5, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v25

    .line 184
    .local v25, "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    const/16 v26, 0x1

    .line 185
    .local v26, "notResumed":Z
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    const/16 v27, 0x1

    .line 186
    .restart local v27    # "isForward":Z
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    sget-object v5, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ProfilerInfo;

    move-object/from16 v28, v5

    .line 189
    .local v28, "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_a
    const/16 v29, 0x0

    .line 191
    .local v29, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    sget-object v5, Lcom/samsung/android/multiwindow/MultiWindowStyle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    .end local v29    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    check-cast v29, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 195
    .restart local v29    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    .local v30, "displayId":I
    move-object/from16 v11, p0

    move-object v13, v6

    .line 197
    invoke-virtual/range {v11 .. v30}, Landroid/app/ApplicationThreadNative;->scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;ZZLandroid/app/ProfilerInfo;Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V

    .line 201
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 184
    .end local v26    # "notResumed":Z
    .end local v27    # "isForward":Z
    .end local v28    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v29    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v30    # "displayId":I
    :cond_8
    const/16 v26, 0x0

    goto :goto_8

    .line 185
    .restart local v26    # "notResumed":Z
    :cond_9
    const/16 v27, 0x0

    goto :goto_9

    .line 186
    .restart local v27    # "isForward":Z
    :cond_a
    const/16 v28, 0x0

    goto :goto_a

    .line 206
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v14    # "ident":I
    .end local v15    # "info":Landroid/content/pm/ActivityInfo;
    .end local v16    # "curConfig":Landroid/content/res/Configuration;
    .end local v17    # "overrideConfig":Landroid/content/res/Configuration;
    .end local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v19    # "referrer":Ljava/lang/String;
    .end local v20    # "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    .end local v21    # "procState":I
    .end local v22    # "state":Landroid/os/Bundle;
    .end local v23    # "persistentState":Landroid/os/PersistableBundle;
    .end local v24    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v25    # "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .end local v26    # "notResumed":Z
    .end local v27    # "isForward":Z
    :sswitch_8
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 208
    .restart local v6    # "b":Landroid/os/IBinder;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v24

    .line 209
    .restart local v24    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    sget-object v5, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v25

    .line 210
    .restart local v25    # "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 211
    .restart local v9    # "configChanges":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c

    const/16 v26, 0x1

    .line 212
    .restart local v26    # "notResumed":Z
    :goto_b
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/content/res/Configuration;

    .line 213
    .local v37, "config":Landroid/content/res/Configuration;
    const/16 v17, 0x0

    .line 214
    .restart local v17    # "overrideConfig":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b

    .line 215
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "overrideConfig":Landroid/content/res/Configuration;
    check-cast v17, Landroid/content/res/Configuration;

    .line 218
    .restart local v17    # "overrideConfig":Landroid/content/res/Configuration;
    :cond_b
    const/16 v29, 0x0

    .line 220
    .restart local v29    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    sget-object v5, Lcom/samsung/android/multiwindow/MultiWindowStyle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    .end local v29    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    check-cast v29, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 224
    .restart local v29    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    .restart local v30    # "displayId":I
    move-object/from16 v31, p0

    move-object/from16 v32, v6

    move-object/from16 v33, v24

    move-object/from16 v34, v25

    move/from16 v35, v9

    move/from16 v36, v26

    move-object/from16 v38, v17

    move-object/from16 v39, v29

    move/from16 v40, v30

    .line 226
    invoke-virtual/range {v31 .. v40}, Landroid/app/ApplicationThreadNative;->scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Landroid/content/res/Configuration;Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V

    .line 229
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 211
    .end local v17    # "overrideConfig":Landroid/content/res/Configuration;
    .end local v26    # "notResumed":Z
    .end local v29    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v30    # "displayId":I
    .end local v37    # "config":Landroid/content/res/Configuration;
    :cond_c
    const/16 v26, 0x0

    goto :goto_b

    .line 234
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v9    # "configChanges":I
    .end local v24    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v25    # "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    :sswitch_9
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    sget-object v5, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v25

    .line 236
    .restart local v25    # "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 237
    .restart local v6    # "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Landroid/app/ApplicationThreadNative;->scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V

    .line 238
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 243
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v25    # "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    :sswitch_a
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 245
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d

    const/16 v105, 0x1

    .line 246
    .local v105, "finishing":Z
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 247
    .restart local v9    # "configChanges":I
    move-object/from16 v0, p0

    move/from16 v1, v105

    invoke-virtual {v0, v6, v1, v9}, Landroid/app/ApplicationThreadNative;->scheduleDestroyActivity(Landroid/os/IBinder;ZI)V

    .line 248
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 245
    .end local v9    # "configChanges":I
    .end local v105    # "finishing":Z
    :cond_d
    const/16 v105, 0x0

    goto :goto_c

    .line 254
    .end local v6    # "b":Landroid/os/IBinder;
    :sswitch_b
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v117

    .line 256
    .local v117, "path":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v56

    .line 257
    .local v56, "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v110

    .line 258
    .local v110, "isDisable":I
    move-object/from16 v0, p0

    move-object/from16 v1, v117

    move-object/from16 v2, v56

    move/from16 v3, v110

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->updateOverlayPath(Ljava/lang/String;Ljava/lang/String;I)V

    .line 259
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 265
    .end local v56    # "packageName":Ljava/lang/String;
    .end local v110    # "isDisable":I
    .end local v117    # "path":Ljava/lang/String;
    :sswitch_c
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Intent;

    .line 267
    .restart local v12    # "intent":Landroid/content/Intent;
    sget-object v5, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ActivityInfo;

    .line 268
    .restart local v15    # "info":Landroid/content/pm/ActivityInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/res/CompatibilityInfo;

    .line 269
    .restart local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .line 270
    .local v42, "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v43

    .line 271
    .local v43, "resultData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v44

    .line 272
    .local v44, "resultExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e

    const/16 v45, 0x1

    .line 273
    .local v45, "sync":Z
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 274
    .local v46, "sendingUser":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v47

    .local v47, "processState":I
    move-object/from16 v38, p0

    move-object/from16 v39, v12

    move-object/from16 v40, v15

    move-object/from16 v41, v18

    .line 275
    invoke-virtual/range {v38 .. v47}, Landroid/app/ApplicationThreadNative;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZII)V

    .line 277
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 272
    .end local v45    # "sync":Z
    .end local v46    # "sendingUser":I
    .end local v47    # "processState":I
    :cond_e
    const/16 v45, 0x0

    goto :goto_d

    .line 281
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v15    # "info":Landroid/content/pm/ActivityInfo;
    .end local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v42    # "resultCode":I
    .end local v43    # "resultData":Ljava/lang/String;
    .end local v44    # "resultExtras":Landroid/os/Bundle;
    :sswitch_d
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 283
    .local v49, "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/pm/ServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ServiceInfo;

    .line 284
    .local v15, "info":Landroid/content/pm/ServiceInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/res/CompatibilityInfo;

    .line 285
    .restart local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v47

    .line 286
    .restart local v47    # "processState":I
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move-object/from16 v2, v18

    move/from16 v3, v47

    invoke-virtual {v0, v1, v15, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V

    .line 287
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 292
    .end local v15    # "info":Landroid/content/pm/ServiceInfo;
    .end local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v47    # "processState":I
    .end local v49    # "token":Landroid/os/IBinder;
    :sswitch_e
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 294
    .restart local v49    # "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/pm/ServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ServiceInfo;

    .line 295
    .restart local v15    # "info":Landroid/content/pm/ServiceInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/res/CompatibilityInfo;

    .line 296
    .restart local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v47

    .line 297
    .restart local v47    # "processState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    .line 298
    .restart local v30    # "displayId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v54

    .local v54, "callerActivityToken":Landroid/os/IBinder;
    move-object/from16 v48, p0

    move-object/from16 v50, v15

    move-object/from16 v51, v18

    move/from16 v52, v47

    move/from16 v53, v30

    .line 299
    invoke-virtual/range {v48 .. v54}, Landroid/app/ApplicationThreadNative;->scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;IILandroid/os/IBinder;)V

    .line 300
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 305
    .end local v15    # "info":Landroid/content/pm/ServiceInfo;
    .end local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v30    # "displayId":I
    .end local v47    # "processState":I
    .end local v49    # "token":Landroid/os/IBinder;
    .end local v54    # "callerActivityToken":Landroid/os/IBinder;
    :sswitch_f
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 307
    .restart local v49    # "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Intent;

    .line 308
    .restart local v12    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f

    const/16 v123, 0x1

    .line 309
    .local v123, "rebind":Z
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v47

    .line 310
    .restart local v47    # "processState":I
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v123

    move/from16 v3, v47

    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZI)V

    .line 311
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 308
    .end local v47    # "processState":I
    .end local v123    # "rebind":Z
    :cond_f
    const/16 v123, 0x0

    goto :goto_e

    .line 315
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v49    # "token":Landroid/os/IBinder;
    :sswitch_10
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 317
    .restart local v49    # "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Intent;

    .line 318
    .restart local v12    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1, v12}, Landroid/app/ApplicationThreadNative;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V

    .line 319
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 324
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v49    # "token":Landroid/os/IBinder;
    :sswitch_11
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 326
    .restart local v49    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_10

    const/16 v50, 0x1

    .line 327
    .local v50, "taskRemoved":Z
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v51

    .line 328
    .local v51, "startId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v52

    .line 330
    .local v52, "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_11

    .line 331
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Landroid/content/Intent;

    .local v53, "args":Landroid/content/Intent;
    :goto_10
    move-object/from16 v48, p0

    .line 335
    invoke-virtual/range {v48 .. v53}, Landroid/app/ApplicationThreadNative;->scheduleServiceArgs(Landroid/os/IBinder;ZIILandroid/content/Intent;)V

    .line 336
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 326
    .end local v50    # "taskRemoved":Z
    .end local v51    # "startId":I
    .end local v52    # "fl":I
    .end local v53    # "args":Landroid/content/Intent;
    :cond_10
    const/16 v50, 0x0

    goto :goto_f

    .line 333
    .restart local v50    # "taskRemoved":Z
    .restart local v51    # "startId":I
    .restart local v52    # "fl":I
    :cond_11
    const/16 v53, 0x0

    .restart local v53    # "args":Landroid/content/Intent;
    goto :goto_10

    .line 341
    .end local v49    # "token":Landroid/os/IBinder;
    .end local v50    # "taskRemoved":Z
    .end local v51    # "startId":I
    .end local v52    # "fl":I
    .end local v53    # "args":Landroid/content/Intent;
    :sswitch_12
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 343
    .restart local v49    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleStopService(Landroid/os/IBinder;)V

    .line 344
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 349
    .end local v49    # "token":Landroid/os/IBinder;
    :sswitch_13
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v56

    .line 351
    .restart local v56    # "packageName":Ljava/lang/String;
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ApplicationInfo;

    .line 353
    .local v15, "info":Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v58

    .line 355
    .local v58, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_12

    new-instance v59, Landroid/content/ComponentName;

    move-object/from16 v0, v59

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/os/Parcel;)V

    .line 357
    .local v59, "testName":Landroid/content/ComponentName;
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_13

    sget-object v5, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ProfilerInfo;

    move-object/from16 v28, v5

    .line 359
    .restart local v28    # "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v61

    .line 360
    .local v61, "testArgs":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v99

    .line 361
    .local v99, "binder":Landroid/os/IBinder;
    invoke-static/range {v99 .. v99}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v62

    .line 362
    .local v62, "testWatcher":Landroid/app/IInstrumentationWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v99

    .line 363
    invoke-static/range {v99 .. v99}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v63

    .line 365
    .local v63, "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v64

    .line 366
    .local v64, "testMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_14

    const/16 v65, 0x1

    .line 367
    .local v65, "openGlTrace":Z
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_15

    const/16 v66, 0x1

    .line 368
    .local v66, "restrictedBackupMode":Z
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_16

    const/16 v67, 0x1

    .line 370
    .local v67, "persistent":Z
    :goto_15
    new-instance v68, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;

    invoke-direct/range {v68 .. v68}, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;-><init>()V

    .line 376
    .local v68, "configs":Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;, "Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList<Landroid/content/res/Configuration;>;"
    const/4 v5, 0x0

    sget-object v11, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v11, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v0, v68

    invoke-virtual {v0, v5, v11}, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/res/CompatibilityInfo;

    .line 380
    .restart local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v70

    .line 381
    .local v70, "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/IBinder;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v71

    .line 383
    .local v71, "coreSettings":Landroid/os/Bundle;
    const/16 v30, 0x0

    .restart local v30    # "displayId":I
    move-object/from16 v55, p0

    move-object/from16 v57, v15

    move-object/from16 v60, v28

    move-object/from16 v69, v18

    move/from16 v72, v30

    .line 388
    invoke-virtual/range {v55 .. v72}, Landroid/app/ApplicationThreadNative;->bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;Landroid/content/ComponentName;Landroid/app/ProfilerInfo;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;IZZZLcom/samsung/android/multidisplay/common/UnRestrictedArrayList;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;I)V

    .line 392
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 355
    .end local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v28    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v30    # "displayId":I
    .end local v59    # "testName":Landroid/content/ComponentName;
    .end local v61    # "testArgs":Landroid/os/Bundle;
    .end local v62    # "testWatcher":Landroid/app/IInstrumentationWatcher;
    .end local v63    # "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    .end local v64    # "testMode":I
    .end local v65    # "openGlTrace":Z
    .end local v66    # "restrictedBackupMode":Z
    .end local v67    # "persistent":Z
    .end local v68    # "configs":Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;, "Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList<Landroid/content/res/Configuration;>;"
    .end local v70    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/IBinder;>;"
    .end local v71    # "coreSettings":Landroid/os/Bundle;
    .end local v99    # "binder":Landroid/os/IBinder;
    :cond_12
    const/16 v59, 0x0

    goto :goto_11

    .line 357
    .restart local v59    # "testName":Landroid/content/ComponentName;
    :cond_13
    const/16 v28, 0x0

    goto :goto_12

    .line 366
    .restart local v28    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v61    # "testArgs":Landroid/os/Bundle;
    .restart local v62    # "testWatcher":Landroid/app/IInstrumentationWatcher;
    .restart local v63    # "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    .restart local v64    # "testMode":I
    .restart local v99    # "binder":Landroid/os/IBinder;
    :cond_14
    const/16 v65, 0x0

    goto :goto_13

    .line 367
    .restart local v65    # "openGlTrace":Z
    :cond_15
    const/16 v66, 0x0

    goto :goto_14

    .line 368
    .restart local v66    # "restrictedBackupMode":Z
    :cond_16
    const/16 v67, 0x0

    goto :goto_15

    .line 397
    .end local v15    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v28    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v56    # "packageName":Ljava/lang/String;
    .end local v58    # "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .end local v59    # "testName":Landroid/content/ComponentName;
    .end local v61    # "testArgs":Landroid/os/Bundle;
    .end local v62    # "testWatcher":Landroid/app/IInstrumentationWatcher;
    .end local v63    # "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    .end local v64    # "testMode":I
    .end local v65    # "openGlTrace":Z
    .end local v66    # "restrictedBackupMode":Z
    .end local v99    # "binder":Landroid/os/IBinder;
    :sswitch_14
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleExit()V

    .line 399
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 404
    :sswitch_15
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 405
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleSuicide()V

    .line 406
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 411
    :sswitch_16
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/content/res/Configuration;

    .line 413
    .restart local v37    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 414
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 418
    .end local v37    # "config":Landroid/content/res/Configuration;
    :sswitch_17
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->updateTimeZone()V

    .line 420
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 424
    :sswitch_18
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->clearDnsCache()V

    .line 426
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 430
    :sswitch_19
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v73

    .line 432
    .local v73, "proxy":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v74

    .line 433
    .local v74, "port":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v77

    .line 434
    .local v77, "exclList":Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Landroid/net/Uri;

    .line 435
    .local v78, "pacFileUrl":Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v74

    move-object/from16 v3, v77

    move-object/from16 v4, v78

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ApplicationThreadNative;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 436
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 441
    .end local v73    # "proxy":Ljava/lang/String;
    .end local v74    # "port":Ljava/lang/String;
    .end local v77    # "exclList":Ljava/lang/String;
    .end local v78    # "pacFileUrl":Landroid/net/Uri;
    :sswitch_1a
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v73

    .line 443
    .restart local v73    # "proxy":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v74

    .line 444
    .restart local v74    # "port":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v75

    .line 445
    .local v75, "username":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v76

    .line 446
    .local v76, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v77

    .line 447
    .restart local v77    # "exclList":Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Landroid/net/Uri;

    .restart local v78    # "pacFileUrl":Landroid/net/Uri;
    move-object/from16 v72, p0

    .line 448
    invoke-virtual/range {v72 .. v78}, Landroid/app/ApplicationThreadNative;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 449
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 455
    .end local v73    # "proxy":Ljava/lang/String;
    .end local v74    # "port":Ljava/lang/String;
    .end local v75    # "username":Ljava/lang/String;
    .end local v76    # "password":Ljava/lang/String;
    .end local v77    # "exclList":Ljava/lang/String;
    .end local v78    # "pacFileUrl":Landroid/net/Uri;
    :sswitch_1b
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 456
    sget-object v5, Landroid/net/ProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v122

    check-cast v122, Landroid/net/ProxyInfo;

    .line 457
    .local v122, "proxyInfo":Landroid/net/ProxyInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v122

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 458
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 463
    .end local v122    # "proxyInfo":Landroid/net/ProxyInfo;
    :sswitch_1c
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 464
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->processInBackground()V

    .line 465
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 469
    :sswitch_1d
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v104

    .line 471
    .local v104, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v127

    .line 472
    .local v127, "service":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v53

    .line 473
    .local v53, "args":[Ljava/lang/String;
    if-eqz v104, :cond_17

    .line 474
    invoke-virtual/range {v104 .. v104}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    move-object/from16 v2, v53

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/ApplicationThreadNative;->dumpService(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 476
    :try_start_0
    invoke-virtual/range {v104 .. v104}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    :cond_17
    :goto_16
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 484
    .end local v53    # "args":[Ljava/lang/String;
    .end local v104    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v127    # "service":Landroid/os/IBinder;
    :sswitch_1e
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 485
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v104

    .line 486
    .restart local v104    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v127

    .line 487
    .restart local v127    # "service":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v53

    .line 488
    .restart local v53    # "args":[Ljava/lang/String;
    if-eqz v104, :cond_18

    .line 489
    invoke-virtual/range {v104 .. v104}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    move-object/from16 v2, v53

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/ApplicationThreadNative;->dumpProvider(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 491
    :try_start_1
    invoke-virtual/range {v104 .. v104}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 495
    :cond_18
    :goto_17
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 499
    .end local v53    # "args":[Ljava/lang/String;
    .end local v104    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v127    # "service":Landroid/os/IBinder;
    :sswitch_1f
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 500
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v80

    .line 502
    .local v80, "receiver":Landroid/content/IIntentReceiver;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Intent;

    .line 503
    .restart local v12    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .line 504
    .restart local v42    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v83

    .line 505
    .local v83, "dataStr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v84

    .line 506
    .local v84, "extras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_19

    const/16 v85, 0x1

    .line 507
    .local v85, "ordered":Z
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1a

    const/16 v86, 0x1

    .line 508
    .local v86, "sticky":Z
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 509
    .restart local v46    # "sendingUser":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v47

    .restart local v47    # "processState":I
    move-object/from16 v79, p0

    move-object/from16 v81, v12

    move/from16 v82, v42

    move/from16 v87, v46

    move/from16 v88, v47

    .line 510
    invoke-virtual/range {v79 .. v88}, Landroid/app/ApplicationThreadNative;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZII)V

    .line 512
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 506
    .end local v46    # "sendingUser":I
    .end local v47    # "processState":I
    .end local v85    # "ordered":Z
    .end local v86    # "sticky":Z
    :cond_19
    const/16 v85, 0x0

    goto :goto_18

    .line 507
    .restart local v85    # "ordered":Z
    :cond_1a
    const/16 v86, 0x0

    goto :goto_19

    .line 517
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v42    # "resultCode":I
    .end local v80    # "receiver":Landroid/content/IIntentReceiver;
    .end local v83    # "dataStr":Ljava/lang/String;
    .end local v84    # "extras":Landroid/os/Bundle;
    .end local v85    # "ordered":Z
    :sswitch_20
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 518
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleLowMemory()V

    .line 519
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 524
    :sswitch_21
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 525
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 526
    .restart local v6    # "b":Landroid/os/IBinder;
    const/16 v17, 0x0

    .line 527
    .restart local v17    # "overrideConfig":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1b

    .line 528
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "overrideConfig":Landroid/content/res/Configuration;
    check-cast v17, Landroid/content/res/Configuration;

    .line 530
    .restart local v17    # "overrideConfig":Landroid/content/res/Configuration;
    :cond_1b
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v6, v1}, Landroid/app/ApplicationThreadNative;->scheduleActivityConfigurationChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;)V

    .line 531
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 536
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v17    # "overrideConfig":Landroid/content/res/Configuration;
    :sswitch_22
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 537
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 538
    .local v96, "activityToken":Landroid/os/IBinder;
    new-instance v133, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, v133

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Landroid/os/Parcel;)V

    .line 539
    .local v133, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v114

    .line 540
    .local v114, "notifyReason":I
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    move-object/from16 v2, v133

    move/from16 v3, v114

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleMultiWindowStyleChanged(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V

    .line 541
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 542
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 546
    .end local v96    # "activityToken":Landroid/os/IBinder;
    .end local v114    # "notifyReason":I
    .end local v133    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :sswitch_23
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 547
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 548
    .restart local v96    # "activityToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/4 v11, 0x1

    if-ne v5, v11, :cond_1c

    const/4 v5, 0x1

    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    const/16 v31, 0x1

    move/from16 v0, v31

    if-ne v11, v0, :cond_1d

    const/4 v11, 0x1

    :goto_1b
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-virtual {v0, v1, v13, v5, v11}, Landroid/app/ApplicationThreadNative;->scheduleMultiWindowFocusChanged(Landroid/os/IBinder;IZZ)V

    .line 549
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 550
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 548
    :cond_1c
    const/4 v5, 0x0

    goto :goto_1a

    :cond_1d
    const/4 v11, 0x0

    goto :goto_1b

    .line 554
    .end local v96    # "activityToken":Landroid/os/IBinder;
    :sswitch_24
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 556
    .restart local v96    # "activityToken":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleMultiWindowExitByCloseBtn(Landroid/os/IBinder;)V

    .line 557
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 565
    .end local v96    # "activityToken":Landroid/os/IBinder;
    :sswitch_25
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 566
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 567
    .restart local v49    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    .line 568
    .restart local v30    # "displayId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleActivityDisplayIdChanged(Landroid/os/IBinder;I)V

    .line 569
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 570
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 577
    .end local v30    # "displayId":I
    .end local v49    # "token":Landroid/os/IBinder;
    :sswitch_26
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 578
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    .line 579
    .restart local v30    # "displayId":I
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleApplicationDisplayIdChanged(I)V

    .line 580
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 581
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 586
    .end local v30    # "displayId":I
    :sswitch_27
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 587
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v104

    .line 588
    .restart local v104    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v119

    .line 589
    .local v119, "prefix":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v53

    .line 590
    .restart local v53    # "args":[Ljava/lang/String;
    if-eqz v104, :cond_1e

    .line 591
    invoke-virtual/range {v104 .. v104}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v119

    move-object/from16 v2, v53

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/ApplicationThreadNative;->dumpContextRelationInfo(Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 593
    :try_start_2
    invoke-virtual/range {v104 .. v104}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 597
    :cond_1e
    :goto_1c
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 602
    .end local v53    # "args":[Ljava/lang/String;
    .end local v104    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v119    # "prefix":Ljava/lang/String;
    :sswitch_28
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 603
    new-instance v68, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;

    invoke-direct/range {v68 .. v68}, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;-><init>()V

    .line 604
    .restart local v68    # "configs":Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;, "Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList<Landroid/content/res/Configuration;>;"
    const/16 v108, 0x0

    .local v108, "i":I
    :goto_1d
    const/4 v5, 0x4

    move/from16 v0, v108

    if-ge v0, v5, :cond_1f

    .line 605
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/content/res/Configuration;

    .line 606
    .restart local v37    # "config":Landroid/content/res/Configuration;
    if-eqz v37, :cond_1f

    move-object/from16 v0, v37

    iget v5, v0, Landroid/content/res/Configuration;->displayId:I

    move-object/from16 v0, v68

    invoke-virtual {v0, v5}, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1f

    invoke-virtual/range {v68 .. v68}, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;->size()I

    move-result v5

    move-object/from16 v0, v37

    iget v11, v0, Landroid/content/res/Configuration;->displayId:I

    if-le v5, v11, :cond_20

    .line 609
    .end local v37    # "config":Landroid/content/res/Configuration;
    :cond_1f
    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleConfigurationsChanged(Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;)V

    .line 610
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 607
    .restart local v37    # "config":Landroid/content/res/Configuration;
    :cond_20
    move-object/from16 v0, v37

    iget v5, v0, Landroid/content/res/Configuration;->displayId:I

    move-object/from16 v0, v68

    move-object/from16 v1, v37

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 604
    add-int/lit8 v108, v108, 0x1

    goto :goto_1d

    .line 615
    .end local v37    # "config":Landroid/content/res/Configuration;
    .end local v68    # "configs":Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;, "Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList<Landroid/content/res/Configuration;>;"
    .end local v108    # "i":I
    :sswitch_29
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 616
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_21

    const/16 v130, 0x1

    .line 617
    .local v130, "shrinkRequested":Z
    :goto_1e
    move-object/from16 v0, p0

    move/from16 v1, v130

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setShrinkRequestedState(Z)V

    .line 618
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 616
    .end local v130    # "shrinkRequested":Z
    :cond_21
    const/16 v130, 0x0

    goto :goto_1e

    .line 624
    :sswitch_2a
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 625
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 626
    .restart local v49    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v135

    .line 627
    .local v135, "toDisplayId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v114

    .line 628
    .restart local v114    # "notifyReason":I
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v135

    move/from16 v3, v114

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleSendShrinkRequest(Landroid/os/IBinder;II)V

    .line 629
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 630
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 635
    .end local v49    # "token":Landroid/os/IBinder;
    .end local v114    # "notifyReason":I
    .end local v135    # "toDisplayId":I
    :sswitch_2b
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 636
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 637
    .restart local v49    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v114

    .line 638
    .restart local v114    # "notifyReason":I
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v114

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleSendExpandRequest(Landroid/os/IBinder;I)V

    .line 639
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 640
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 646
    .end local v49    # "token":Landroid/os/IBinder;
    .end local v114    # "notifyReason":I
    :sswitch_2c
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 647
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_22

    const/16 v132, 0x1

    .line 648
    .local v132, "start":Z
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v120

    .line 649
    .local v120, "profileType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_23

    sget-object v5, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ProfilerInfo;

    move-object/from16 v28, v5

    .line 651
    .restart local v28    # "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_20
    move-object/from16 v0, p0

    move/from16 v1, v132

    move-object/from16 v2, v28

    move/from16 v3, v120

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->profilerControl(ZLandroid/app/ProfilerInfo;I)V

    .line 652
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 647
    .end local v28    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v120    # "profileType":I
    .end local v132    # "start":Z
    :cond_22
    const/16 v132, 0x0

    goto :goto_1f

    .line 649
    .restart local v120    # "profileType":I
    .restart local v132    # "start":Z
    :cond_23
    const/16 v28, 0x0

    goto :goto_20

    .line 657
    .end local v120    # "profileType":I
    .end local v132    # "start":Z
    :sswitch_2d
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 658
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v107

    .line 659
    .local v107, "group":I
    move-object/from16 v0, p0

    move/from16 v1, v107

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setSchedulingGroup(I)V

    .line 660
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 665
    .end local v107    # "group":I
    :sswitch_2e
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 666
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/content/pm/ApplicationInfo;

    .line 667
    .local v97, "appInfo":Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/res/CompatibilityInfo;

    .line 668
    .restart local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 669
    .local v98, "backupMode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v97

    move-object/from16 v2, v18

    move/from16 v3, v98

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)V

    .line 670
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 675
    .end local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v97    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v98    # "backupMode":I
    :sswitch_2f
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 676
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/content/pm/ApplicationInfo;

    .line 677
    .restart local v97    # "appInfo":Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/res/CompatibilityInfo;

    .line 678
    .restart local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v97

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)V

    .line 679
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 684
    .end local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v97    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :sswitch_30
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 685
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v100

    .line 686
    .local v100, "cmd":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v116

    .line 687
    .local v116, "packages":[Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v100

    move-object/from16 v2, v116

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->dispatchPackageBroadcast(I[Ljava/lang/String;)V

    .line 688
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 693
    .end local v100    # "cmd":I
    .end local v116    # "packages":[Ljava/lang/String;
    :sswitch_31
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 694
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v113

    .line 695
    .local v113, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v113

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleCrash(Ljava/lang/String;)V

    .line 696
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 701
    .end local v113    # "msg":Ljava/lang/String;
    :sswitch_32
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 702
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_24

    const/16 v112, 0x1

    .line 703
    .local v112, "managed":Z
    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v117

    .line 704
    .restart local v117    # "path":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_25

    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v104, v5

    .line 706
    .restart local v104    # "fd":Landroid/os/ParcelFileDescriptor;
    :goto_22
    move-object/from16 v0, p0

    move/from16 v1, v112

    move-object/from16 v2, v117

    move-object/from16 v3, v104

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->dumpHeap(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 707
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 702
    .end local v104    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v112    # "managed":Z
    .end local v117    # "path":Ljava/lang/String;
    :cond_24
    const/16 v112, 0x0

    goto :goto_21

    .line 704
    .restart local v112    # "managed":Z
    .restart local v117    # "path":Ljava/lang/String;
    :cond_25
    const/16 v104, 0x0

    goto :goto_22

    .line 711
    .end local v112    # "managed":Z
    .end local v117    # "path":Ljava/lang/String;
    :sswitch_33
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 712
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v104

    .line 713
    .restart local v104    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 714
    .local v95, "activity":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v119

    .line 715
    .restart local v119    # "prefix":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v53

    .line 716
    .restart local v53    # "args":[Ljava/lang/String;
    if-eqz v104, :cond_26

    .line 717
    invoke-virtual/range {v104 .. v104}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    move-object/from16 v2, v119

    move-object/from16 v3, v53

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->dumpActivity(Ljava/io/FileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    .line 719
    :try_start_3
    invoke-virtual/range {v104 .. v104}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 723
    :cond_26
    :goto_23
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 727
    .end local v53    # "args":[Ljava/lang/String;
    .end local v95    # "activity":Landroid/os/IBinder;
    .end local v104    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v119    # "prefix":Ljava/lang/String;
    :sswitch_34
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 728
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v128

    .line 729
    .local v128, "settings":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v128

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setCoreSettings(Landroid/os/Bundle;)V

    .line 730
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 734
    .end local v128    # "settings":Landroid/os/Bundle;
    :sswitch_35
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 735
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v118

    .line 736
    .local v118, "pkg":Ljava/lang/String;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v101

    check-cast v101, Landroid/content/res/CompatibilityInfo;

    .line 737
    .local v101, "compat":Landroid/content/res/CompatibilityInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v118

    move-object/from16 v2, v101

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V

    .line 738
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 742
    .end local v101    # "compat":Landroid/content/res/CompatibilityInfo;
    .end local v118    # "pkg":Ljava/lang/String;
    :sswitch_36
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 743
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v111

    .line 744
    .local v111, "level":I
    move-object/from16 v0, p0

    move/from16 v1, v111

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleTrimMemory(I)V

    .line 745
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 750
    .end local v111    # "level":I
    :sswitch_37
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 751
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v104

    .line 752
    .restart local v104    # "fd":Landroid/os/ParcelFileDescriptor;
    sget-object v5, Landroid/os/Debug$MemoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v89

    check-cast v89, Landroid/os/Debug$MemoryInfo;

    .line 753
    .local v89, "mi":Landroid/os/Debug$MemoryInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_28

    const/16 v90, 0x1

    .line 754
    .local v90, "checkin":Z
    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_29

    const/16 v91, 0x1

    .line 755
    .local v91, "dumpInfo":Z
    :goto_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2a

    const/16 v92, 0x1

    .line 756
    .local v92, "dumpDalvik":Z
    :goto_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2b

    const/16 v93, 0x1

    .line 757
    .local v93, "dumpSummaryOnly":Z
    :goto_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v53

    .line 758
    .restart local v53    # "args":[Ljava/lang/String;
    if-eqz v104, :cond_27

    .line 760
    :try_start_4
    invoke-virtual/range {v104 .. v104}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v88

    move-object/from16 v87, p0

    move-object/from16 v94, v53

    invoke-virtual/range {v87 .. v94}, Landroid/app/ApplicationThreadNative;->dumpMemInfo(Ljava/io/FileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZ[Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 764
    :try_start_5
    invoke-virtual/range {v104 .. v104}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 770
    :cond_27
    :goto_28
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 771
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 753
    .end local v53    # "args":[Ljava/lang/String;
    .end local v90    # "checkin":Z
    .end local v91    # "dumpInfo":Z
    .end local v92    # "dumpDalvik":Z
    .end local v93    # "dumpSummaryOnly":Z
    :cond_28
    const/16 v90, 0x0

    goto :goto_24

    .line 754
    .restart local v90    # "checkin":Z
    :cond_29
    const/16 v91, 0x0

    goto :goto_25

    .line 755
    .restart local v91    # "dumpInfo":Z
    :cond_2a
    const/16 v92, 0x0

    goto :goto_26

    .line 756
    .restart local v92    # "dumpDalvik":Z
    :cond_2b
    const/16 v93, 0x0

    goto :goto_27

    .line 763
    .restart local v53    # "args":[Ljava/lang/String;
    .restart local v93    # "dumpSummaryOnly":Z
    :catchall_0
    move-exception v5

    .line 764
    :try_start_6
    invoke-virtual/range {v104 .. v104}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 767
    :goto_29
    throw v5

    .line 776
    .end local v53    # "args":[Ljava/lang/String;
    .end local v89    # "mi":Landroid/os/Debug$MemoryInfo;
    .end local v90    # "checkin":Z
    .end local v91    # "dumpInfo":Z
    .end local v92    # "dumpDalvik":Z
    .end local v93    # "dumpSummaryOnly":Z
    .end local v104    # "fd":Landroid/os/ParcelFileDescriptor;
    :sswitch_38
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 777
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v104

    .line 778
    .restart local v104    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v53

    .line 779
    .restart local v53    # "args":[Ljava/lang/String;
    if-eqz v104, :cond_2c

    .line 781
    :try_start_7
    invoke-virtual/range {v104 .. v104}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-virtual {v0, v5, v1}, Landroid/app/ApplicationThreadNative;->dumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 784
    :try_start_8
    invoke-virtual/range {v104 .. v104}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 790
    :cond_2c
    :goto_2a
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 791
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 783
    :catchall_1
    move-exception v5

    .line 784
    :try_start_9
    invoke-virtual/range {v104 .. v104}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 787
    :goto_2b
    throw v5

    .line 796
    .end local v53    # "args":[Ljava/lang/String;
    .end local v104    # "fd":Landroid/os/ParcelFileDescriptor;
    :sswitch_39
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 797
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v104

    .line 798
    .restart local v104    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v53

    .line 799
    .restart local v53    # "args":[Ljava/lang/String;
    if-eqz v104, :cond_2d

    .line 801
    :try_start_a
    invoke-virtual/range {v104 .. v104}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-virtual {v0, v5, v1}, Landroid/app/ApplicationThreadNative;->dumpDbInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 804
    :try_start_b
    invoke-virtual/range {v104 .. v104}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 810
    :cond_2d
    :goto_2c
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 811
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 803
    :catchall_2
    move-exception v5

    .line 804
    :try_start_c
    invoke-virtual/range {v104 .. v104}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 807
    :goto_2d
    throw v5

    .line 816
    .end local v53    # "args":[Ljava/lang/String;
    .end local v104    # "fd":Landroid/os/ParcelFileDescriptor;
    :sswitch_3a
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 817
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v121

    .line 818
    .local v121, "provider":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->unstableProviderDied(Landroid/os/IBinder;)V

    .line 819
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 820
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 825
    .end local v121    # "provider":Landroid/os/IBinder;
    :sswitch_3b
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 826
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 827
    .restart local v96    # "activityToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v124

    .line 828
    .local v124, "requestToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v125

    .line 829
    .local v125, "requestType":I
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    move-object/from16 v2, v124

    move/from16 v3, v125

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;I)V

    .line 830
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 831
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 836
    .end local v96    # "activityToken":Landroid/os/IBinder;
    .end local v124    # "requestToken":Landroid/os/IBinder;
    .end local v125    # "requestType":I
    :sswitch_3c
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 837
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 838
    .restart local v49    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/4 v11, 0x1

    if-ne v5, v11, :cond_2e

    const/16 v134, 0x1

    .line 839
    .local v134, "timeout":Z
    :goto_2e
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v134

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V

    .line 840
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 841
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 838
    .end local v134    # "timeout":Z
    :cond_2e
    const/16 v134, 0x0

    goto :goto_2e

    .line 846
    .end local v49    # "token":Landroid/os/IBinder;
    :sswitch_3d
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 847
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 848
    .restart local v49    # "token":Landroid/os/IBinder;
    new-instance v115, Landroid/app/ActivityOptions;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v5

    move-object/from16 v0, v115

    invoke-direct {v0, v5}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    .line 849
    .local v115, "options":Landroid/app/ActivityOptions;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move-object/from16 v2, v115

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleOnNewActivityOptions(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V

    .line 850
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 851
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 856
    .end local v49    # "token":Landroid/os/IBinder;
    .end local v115    # "options":Landroid/app/ActivityOptions;
    :sswitch_3e
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 857
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 858
    .local v22, "state":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setProcessState(I)V

    .line 859
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 860
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 865
    .end local v22    # "state":I
    :sswitch_3f
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 866
    sget-object v5, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v121

    check-cast v121, Landroid/content/pm/ProviderInfo;

    .line 867
    .local v121, "provider":Landroid/content/pm/ProviderInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V

    .line 868
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 869
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 874
    .end local v121    # "provider":Landroid/content/pm/ProviderInfo;
    :sswitch_40
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 875
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 876
    .restart local v96    # "activityToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v113

    .line 877
    .restart local v113    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    move-object/from16 v2, v113

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleResetTargetHeapUtilization(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 878
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 885
    .end local v96    # "activityToken":Landroid/os/IBinder;
    .end local v113    # "msg":Ljava/lang/String;
    :sswitch_41
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 886
    sget-object v5, Landroid/view/DisplayInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v102

    check-cast v102, Landroid/view/DisplayInfo;

    .line 887
    .local v102, "dInfo":Landroid/view/DisplayInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleDisplayMetricsChanged(Landroid/view/DisplayInfo;)V

    .line 888
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 894
    .end local v102    # "dInfo":Landroid/view/DisplayInfo;
    :sswitch_42
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 895
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v109

    .line 896
    .local v109, "is24Hour":B
    const/4 v5, 0x1

    move/from16 v0, v109

    if-ne v0, v5, :cond_2f

    const/4 v5, 0x1

    :goto_2f
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/ApplicationThreadNative;->updateTimePrefs(Z)V

    .line 897
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 898
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 896
    :cond_2f
    const/4 v5, 0x0

    goto :goto_2f

    .line 903
    .end local v109    # "is24Hour":B
    :sswitch_43
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 904
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 905
    .restart local v49    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleCancelVisibleBehind(Landroid/os/IBinder;)V

    .line 906
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 907
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 912
    .end local v49    # "token":Landroid/os/IBinder;
    :sswitch_44
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 913
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 914
    .restart local v49    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-lez v5, :cond_30

    const/16 v103, 0x1

    .line 915
    .local v103, "enabled":Z
    :goto_30
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v103

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleBackgroundVisibleBehindChanged(Landroid/os/IBinder;Z)V

    .line 916
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 917
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 914
    .end local v103    # "enabled":Z
    :cond_30
    const/16 v103, 0x0

    goto :goto_30

    .line 922
    .end local v49    # "token":Landroid/os/IBinder;
    :sswitch_45
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 923
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 924
    .restart local v49    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleEnterAnimationComplete(Landroid/os/IBinder;)V

    .line 925
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 926
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 931
    .end local v49    # "token":Landroid/os/IBinder;
    :sswitch_46
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 932
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v106

    .line 933
    .local v106, "firstPacket":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->notifyCleartextNetwork([B)V

    .line 934
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 935
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 477
    .end local v106    # "firstPacket":[B
    .restart local v53    # "args":[Ljava/lang/String;
    .restart local v104    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v127    # "service":Landroid/os/IBinder;
    :catch_0
    move-exception v5

    goto/16 :goto_16

    .line 492
    :catch_1
    move-exception v5

    goto/16 :goto_17

    .line 594
    .end local v127    # "service":Landroid/os/IBinder;
    .restart local v119    # "prefix":Ljava/lang/String;
    :catch_2
    move-exception v5

    goto/16 :goto_1c

    .line 720
    .restart local v95    # "activity":Landroid/os/IBinder;
    :catch_3
    move-exception v5

    goto/16 :goto_23

    .line 765
    .end local v95    # "activity":Landroid/os/IBinder;
    .end local v119    # "prefix":Ljava/lang/String;
    .restart local v89    # "mi":Landroid/os/Debug$MemoryInfo;
    .restart local v90    # "checkin":Z
    .restart local v91    # "dumpInfo":Z
    .restart local v92    # "dumpDalvik":Z
    .restart local v93    # "dumpSummaryOnly":Z
    :catch_4
    move-exception v5

    goto/16 :goto_28

    :catch_5
    move-exception v11

    goto/16 :goto_29

    .line 785
    .end local v89    # "mi":Landroid/os/Debug$MemoryInfo;
    .end local v90    # "checkin":Z
    .end local v91    # "dumpInfo":Z
    .end local v92    # "dumpDalvik":Z
    .end local v93    # "dumpSummaryOnly":Z
    :catch_6
    move-exception v5

    goto/16 :goto_2a

    :catch_7
    move-exception v11

    goto/16 :goto_2b

    .line 805
    :catch_8
    move-exception v5

    goto/16 :goto_2c

    :catch_9
    move-exception v11

    goto/16 :goto_2d

    .line 94
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_4
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_9
        0x9 -> :sswitch_a
        0xa -> :sswitch_c
        0xb -> :sswitch_d
        0xc -> :sswitch_12
        0xd -> :sswitch_13
        0xe -> :sswitch_14
        0x10 -> :sswitch_16
        0x11 -> :sswitch_11
        0x12 -> :sswitch_17
        0x13 -> :sswitch_1c
        0x14 -> :sswitch_f
        0x15 -> :sswitch_10
        0x16 -> :sswitch_1d
        0x17 -> :sswitch_1f
        0x18 -> :sswitch_20
        0x19 -> :sswitch_21
        0x1a -> :sswitch_8
        0x1b -> :sswitch_3
        0x1c -> :sswitch_2c
        0x1d -> :sswitch_2d
        0x1e -> :sswitch_2e
        0x1f -> :sswitch_2f
        0x20 -> :sswitch_3d
        0x21 -> :sswitch_15
        0x22 -> :sswitch_30
        0x23 -> :sswitch_31
        0x24 -> :sswitch_32
        0x25 -> :sswitch_33
        0x26 -> :sswitch_18
        0x27 -> :sswitch_19
        0x28 -> :sswitch_34
        0x29 -> :sswitch_35
        0x2a -> :sswitch_36
        0x2b -> :sswitch_37
        0x2c -> :sswitch_38
        0x2d -> :sswitch_1e
        0x2e -> :sswitch_39
        0x2f -> :sswitch_3a
        0x30 -> :sswitch_3b
        0x31 -> :sswitch_3c
        0x32 -> :sswitch_3e
        0x33 -> :sswitch_3f
        0x34 -> :sswitch_42
        0x35 -> :sswitch_43
        0x36 -> :sswitch_44
        0x37 -> :sswitch_45
        0x38 -> :sswitch_46
        0x3e9 -> :sswitch_22
        0x3ea -> :sswitch_23
        0x3eb -> :sswitch_24
        0x5dd -> :sswitch_1a
        0x7d0 -> :sswitch_40
        0x7d1 -> :sswitch_b
        0x9c5 -> :sswitch_41
        0xbba -> :sswitch_25
        0xbbb -> :sswitch_27
        0xbbc -> :sswitch_e
        0xbbd -> :sswitch_28
        0xbbe -> :sswitch_26
        0xbbf -> :sswitch_29
        0xbc0 -> :sswitch_2a
        0xbc1 -> :sswitch_2b
        0xbc2 -> :sswitch_1b
        0xbcd -> :sswitch_5
    .end sparse-switch
.end method
