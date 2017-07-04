.class public Lcom/sec/android/app/camera/command/CommandBuilder;
.super Ljava/lang/Object;
.source "CommandBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildCommand(ILcom/sec/android/app/camera/command/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;
    .locals 2
    .param p0, "id"    # I
    .param p1, "receiver"    # Lcom/sec/android/app/camera/command/CommandInterface;

    .prologue
    const/4 v0, 0x0

    .line 22
    const/16 v1, 0x63

    if-ne p0, v1, :cond_1

    .line 23
    new-instance v0, Lcom/sec/android/app/camera/command/EmptyCommand;

    invoke-direct {v0}, Lcom/sec/android/app/camera/command/EmptyCommand;-><init>()V

    .line 343
    :cond_0
    :goto_0
    :sswitch_0
    return-object v0

    .line 26
    :cond_1
    if-eqz p1, :cond_0

    .line 30
    sparse-switch p0, :sswitch_data_0

    .line 340
    const/16 v1, 0x1f40

    if-lt p0, v1, :cond_0

    const/16 v1, 0x2328

    if-ge p0, v1, :cond_0

    .line 341
    new-instance v0, Lcom/sec/android/app/camera/command/SingleEffectMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/SingleEffectMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/command/CommandInterface;I)V

    goto :goto_0

    .line 41
    :sswitch_1
    new-instance v0, Lcom/sec/android/app/camera/command/ToggleSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/ToggleSelectCommand;-><init>(Lcom/sec/android/app/camera/command/CommandInterface;I)V

    goto :goto_0

    .line 43
    :sswitch_2
    new-instance v0, Lcom/sec/android/app/camera/command/CheckBoxSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/CheckBoxSelectCommand;-><init>(Lcom/sec/android/app/camera/command/CommandInterface;I)V

    goto :goto_0

    .line 67
    :sswitch_3
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchMenuCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/LaunchMenuCommand;-><init>(Lcom/sec/android/app/camera/command/CommandInterface;I)V

    goto :goto_0

    .line 72
    :sswitch_4
    new-instance v0, Lcom/sec/android/app/camera/command/MotionPanoramaModeSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/MotionPanoramaModeSelectCommand;-><init>(Lcom/sec/android/app/camera/command/CommandInterface;I)V

    goto :goto_0

    .line 87
    :sswitch_5
    new-instance v0, Lcom/sec/android/app/camera/command/ISOSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/ISOSelectCommand;-><init>(Lcom/sec/android/app/camera/command/CommandInterface;I)V

    goto :goto_0

    .line 96
    :sswitch_6
    new-instance v0, Lcom/sec/android/app/camera/command/WhiteBalanceSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/WhiteBalanceSelectCommand;-><init>(Lcom/sec/android/app/camera/command/CommandInterface;I)V

    goto :goto_0

    .line 103
    :sswitch_7
    new-instance v0, Lcom/sec/android/app/camera/command/TimerSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/TimerSelectCommand;-><init>(Lcom/sec/android/app/camera/command/CommandInterface;I)V

    goto :goto_0

    .line 110
    :sswitch_8
    new-instance v0, Lcom/sec/android/app/camera/command/TimerAndIntervalSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/TimerAndIntervalSelectCommand;-><init>(Lcom/sec/android/app/camera/command/CommandInterface;I)V

    goto :goto_0

    .line 116
    :sswitch_9
    new-instance v0, Lcom/sec/android/app/camera/command/ExposuremeterMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/ExposuremeterMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/command/CommandInterface;I)V

    goto :goto_0

    .line 119
    :sswitch_a
    new-instance v0, Lcom/sec/android/app/camera/command/MoreSettingsCommand;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/command/MoreSettingsCommand;-><init>(Lcom/sec/android/app/camera/command/CommandInterface;)V

    goto :goto_0

    .line 133
    :sswitch_b
    new-instance v0, Lcom/sec/android/app/camera/command/DualEffectMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/DualEffectMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/command/CommandInterface;I)V

    goto :goto_0

    .line 168
    :sswitch_c
    new-instance v0, Lcom/sec/android/app/camera/command/SingleEffectMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/SingleEffectMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/command/CommandInterface;I)V

    goto :goto_0

    .line 204
    :sswitch_d
    new-instance v0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;-><init>(Lcom/sec/android/app/camera/command/CommandInterface;I)V

    goto :goto_0

    .line 208
    :sswitch_e
    new-instance v0, Lcom/sec/android/app/camera/command/ShootingModeDownloadCommand;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/command/ShootingModeDownloadCommand;-><init>(Lcom/sec/android/app/camera/command/CommandInterface;)V

    goto :goto_0

    .line 213
    :sswitch_f
    new-instance v0, Lcom/sec/android/app/camera/command/SoundAndShotMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/SoundAndShotMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/command/CommandInterface;I)V

    goto :goto_0

    .line 229
    :sswitch_10
    new-instance v0, Lcom/sec/android/app/camera/command/VideoCollageTypeMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/VideoCollageTypeMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/command/CommandInterface;I)V

    goto :goto_0

    .line 236
    :sswitch_11
    new-instance v0, Lcom/sec/android/app/camera/command/VideoCollageRecTimeMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/VideoCollageRecTimeMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/command/CommandInterface;I)V

    goto :goto_0

    .line 240
    :sswitch_12
    new-instance v0, Lcom/sec/android/app/camera/command/HelpHubCommand;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/command/HelpHubCommand;-><init>(Lcom/sec/android/app/camera/command/CommandInterface;)V

    goto :goto_0

    .line 248
    :sswitch_13
    new-instance v0, Lcom/sec/android/app/camera/command/BeautyMenuCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/BeautyMenuCommand;-><init>(Lcom/sec/android/app/camera/command/CommandInterface;I)V

    goto/16 :goto_0

    .line 304
    :sswitch_14
    new-instance v0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;-><init>(Lcom/sec/android/app/camera/command/CommandInterface;I)V

    goto/16 :goto_0

    .line 309
    :sswitch_15
    new-instance v0, Lcom/sec/android/app/camera/command/FoodBlurTypeMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/FoodBlurTypeMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/command/CommandInterface;I)V

    goto/16 :goto_0

    .line 317
    :sswitch_16
    new-instance v0, Lcom/sec/android/app/camera/command/RecordingMotionSpeedMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/RecordingMotionSpeedMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/command/CommandInterface;I)V

    goto/16 :goto_0

    .line 30
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x3 -> :sswitch_1
        0x4 -> :sswitch_3
        0x6 -> :sswitch_3
        0x8 -> :sswitch_3
        0xb -> :sswitch_3
        0xc -> :sswitch_1
        0x12 -> :sswitch_3
        0x16 -> :sswitch_0
        0x17 -> :sswitch_1
        0x19 -> :sswitch_3
        0x1c -> :sswitch_0
        0x1d -> :sswitch_0
        0x22 -> :sswitch_1
        0x4d -> :sswitch_3
        0x54 -> :sswitch_1
        0x5a -> :sswitch_3
        0x6c -> :sswitch_2
        0x6d -> :sswitch_3
        0x74 -> :sswitch_e
        0x75 -> :sswitch_3
        0x77 -> :sswitch_3
        0x78 -> :sswitch_a
        0x7f -> :sswitch_3
        0x80 -> :sswitch_3
        0x81 -> :sswitch_3
        0x83 -> :sswitch_3
        0x84 -> :sswitch_3
        0x87 -> :sswitch_3
        0x8d -> :sswitch_1
        0x8e -> :sswitch_3
        0x91 -> :sswitch_1
        0x96 -> :sswitch_3
        0xaa -> :sswitch_1
        0xab -> :sswitch_3
        0x12c -> :sswitch_d
        0x12d -> :sswitch_d
        0x12e -> :sswitch_d
        0x130 -> :sswitch_d
        0x131 -> :sswitch_d
        0x133 -> :sswitch_d
        0x135 -> :sswitch_d
        0x137 -> :sswitch_d
        0x13a -> :sswitch_d
        0x13e -> :sswitch_d
        0x13f -> :sswitch_d
        0x149 -> :sswitch_d
        0x14d -> :sswitch_d
        0x14e -> :sswitch_d
        0x14f -> :sswitch_d
        0x150 -> :sswitch_d
        0x151 -> :sswitch_d
        0x152 -> :sswitch_d
        0x154 -> :sswitch_d
        0x156 -> :sswitch_d
        0x157 -> :sswitch_d
        0x158 -> :sswitch_d
        0x15a -> :sswitch_d
        0x15b -> :sswitch_d
        0x15c -> :sswitch_d
        0x15d -> :sswitch_d
        0x15e -> :sswitch_d
        0x15f -> :sswitch_d
        0x160 -> :sswitch_d
        0x161 -> :sswitch_d
        0x162 -> :sswitch_d
        0x163 -> :sswitch_d
        0x164 -> :sswitch_d
        0x320 -> :sswitch_7
        0x321 -> :sswitch_7
        0x322 -> :sswitch_7
        0x323 -> :sswitch_7
        0x32a -> :sswitch_8
        0x32b -> :sswitch_8
        0x32c -> :sswitch_8
        0x32d -> :sswitch_8
        0x384 -> :sswitch_6
        0x385 -> :sswitch_6
        0x386 -> :sswitch_6
        0x387 -> :sswitch_6
        0x388 -> :sswitch_6
        0x389 -> :sswitch_6
        0x3e8 -> :sswitch_c
        0x3e9 -> :sswitch_c
        0x3ea -> :sswitch_c
        0x3eb -> :sswitch_c
        0x3f7 -> :sswitch_c
        0x3f8 -> :sswitch_c
        0x3f9 -> :sswitch_c
        0x3fa -> :sswitch_c
        0x3fb -> :sswitch_c
        0x3fc -> :sswitch_c
        0x3fd -> :sswitch_c
        0x3fe -> :sswitch_c
        0x3ff -> :sswitch_c
        0x404 -> :sswitch_c
        0x405 -> :sswitch_c
        0x406 -> :sswitch_c
        0x407 -> :sswitch_c
        0x408 -> :sswitch_c
        0x409 -> :sswitch_c
        0x40a -> :sswitch_c
        0x40b -> :sswitch_c
        0x40c -> :sswitch_c
        0x40d -> :sswitch_c
        0x40e -> :sswitch_c
        0x40f -> :sswitch_c
        0x410 -> :sswitch_c
        0x411 -> :sswitch_c
        0x412 -> :sswitch_c
        0x413 -> :sswitch_c
        0x414 -> :sswitch_c
        0x415 -> :sswitch_c
        0x41a -> :sswitch_b
        0x41b -> :sswitch_b
        0x41c -> :sswitch_b
        0x41d -> :sswitch_b
        0x41e -> :sswitch_b
        0x41f -> :sswitch_b
        0x420 -> :sswitch_b
        0x421 -> :sswitch_b
        0x422 -> :sswitch_b
        0x423 -> :sswitch_b
        0x424 -> :sswitch_b
        0x425 -> :sswitch_b
        0x44c -> :sswitch_5
        0x44d -> :sswitch_5
        0x44e -> :sswitch_5
        0x44f -> :sswitch_5
        0x450 -> :sswitch_5
        0x451 -> :sswitch_5
        0x452 -> :sswitch_5
        0x453 -> :sswitch_5
        0x454 -> :sswitch_5
        0x455 -> :sswitch_5
        0x456 -> :sswitch_5
        0x457 -> :sswitch_5
        0x458 -> :sswitch_5
        0x4b0 -> :sswitch_9
        0x4b1 -> :sswitch_9
        0x4b2 -> :sswitch_9
        0x8fc -> :sswitch_14
        0x8fd -> :sswitch_14
        0x8fe -> :sswitch_14
        0x8ff -> :sswitch_14
        0x900 -> :sswitch_14
        0x901 -> :sswitch_14
        0x902 -> :sswitch_14
        0x903 -> :sswitch_14
        0x904 -> :sswitch_14
        0x905 -> :sswitch_14
        0x906 -> :sswitch_14
        0x907 -> :sswitch_14
        0x908 -> :sswitch_14
        0x909 -> :sswitch_14
        0x90a -> :sswitch_14
        0x90b -> :sswitch_14
        0x90c -> :sswitch_14
        0x90d -> :sswitch_14
        0x90e -> :sswitch_14
        0x90f -> :sswitch_14
        0x910 -> :sswitch_14
        0x911 -> :sswitch_14
        0x912 -> :sswitch_14
        0x913 -> :sswitch_14
        0x914 -> :sswitch_14
        0x915 -> :sswitch_14
        0x916 -> :sswitch_14
        0x917 -> :sswitch_14
        0x919 -> :sswitch_14
        0x91a -> :sswitch_14
        0x91b -> :sswitch_14
        0x91c -> :sswitch_14
        0x91d -> :sswitch_14
        0x91e -> :sswitch_14
        0x91f -> :sswitch_14
        0x920 -> :sswitch_14
        0x921 -> :sswitch_14
        0x922 -> :sswitch_14
        0x923 -> :sswitch_14
        0x924 -> :sswitch_14
        0x925 -> :sswitch_14
        0x926 -> :sswitch_14
        0x927 -> :sswitch_14
        0x928 -> :sswitch_14
        0x929 -> :sswitch_14
        0x92a -> :sswitch_14
        0x92b -> :sswitch_14
        0x92c -> :sswitch_14
        0x92d -> :sswitch_14
        0x92e -> :sswitch_14
        0x92f -> :sswitch_14
        0x930 -> :sswitch_14
        0x931 -> :sswitch_14
        0x932 -> :sswitch_14
        0x960 -> :sswitch_0
        0x961 -> :sswitch_0
        0x962 -> :sswitch_0
        0x963 -> :sswitch_0
        0x965 -> :sswitch_0
        0x966 -> :sswitch_0
        0x967 -> :sswitch_0
        0x968 -> :sswitch_0
        0x969 -> :sswitch_0
        0x96a -> :sswitch_0
        0x96b -> :sswitch_0
        0x96d -> :sswitch_0
        0xbba -> :sswitch_0
        0xbbb -> :sswitch_0
        0xbc3 -> :sswitch_12
        0xbc4 -> :sswitch_1
        0xbc5 -> :sswitch_1
        0x1004 -> :sswitch_3
        0x1450 -> :sswitch_f
        0x1451 -> :sswitch_f
        0x1838 -> :sswitch_10
        0x1839 -> :sswitch_10
        0x183a -> :sswitch_10
        0x1842 -> :sswitch_10
        0x1843 -> :sswitch_10
        0x184c -> :sswitch_10
        0x184d -> :sswitch_10
        0x184e -> :sswitch_10
        0x184f -> :sswitch_10
        0x1856 -> :sswitch_10
        0x1857 -> :sswitch_10
        0x1858 -> :sswitch_10
        0x1859 -> :sswitch_10
        0x1860 -> :sswitch_11
        0x1861 -> :sswitch_11
        0x1862 -> :sswitch_11
        0x1863 -> :sswitch_11
        0x189c -> :sswitch_4
        0x189d -> :sswitch_4
        0x1900 -> :sswitch_16
        0x1901 -> :sswitch_16
        0x1902 -> :sswitch_16
        0x1903 -> :sswitch_16
        0x1904 -> :sswitch_16
        0x1964 -> :sswitch_13
        0x1965 -> :sswitch_13
        0x1966 -> :sswitch_13
        0x1967 -> :sswitch_13
        0x1968 -> :sswitch_13
        0x1ac2 -> :sswitch_15
        0x1ac3 -> :sswitch_15
        0x232a -> :sswitch_c
    .end sparse-switch
.end method

.method public static buildCommandWithSub(Ljava/lang/String;ILcom/sec/android/app/camera/command/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;
    .locals 1
    .param p0, "subCommandName"    # Ljava/lang/String;
    .param p1, "commandId"    # I
    .param p2, "receiver"    # Lcom/sec/android/app/camera/command/CommandInterface;

    .prologue
    .line 357
    new-instance v0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;

    invoke-direct {v0, p2, p1, p0}, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;-><init>(Lcom/sec/android/app/camera/command/CommandInterface;ILjava/lang/String;)V

    return-object v0
.end method
