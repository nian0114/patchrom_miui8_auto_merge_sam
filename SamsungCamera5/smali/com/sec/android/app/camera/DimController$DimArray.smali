.class Lcom/sec/android/app/camera/DimController$DimArray;
.super Ljava/lang/Object;
.source "DimController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/DimController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DimArray"
.end annotation


# instance fields
.field private mChangeArray:[Z

.field private mDimArray:[Z

.field private final mMenuId:I

.field final synthetic this$0:Lcom/sec/android/app/camera/DimController;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/DimController;I)V
    .locals 4
    .param p2, "menuId"    # I

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x26

    .line 1054
    iput-object p1, p0, Lcom/sec/android/app/camera/DimController$DimArray;->this$0:Lcom/sec/android/app/camera/DimController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1050
    new-array v1, v2, [Z

    iput-object v1, p0, Lcom/sec/android/app/camera/DimController$DimArray;->mDimArray:[Z

    .line 1052
    new-array v1, v2, [Z

    iput-object v1, p0, Lcom/sec/android/app/camera/DimController$DimArray;->mChangeArray:[Z

    .line 1055
    iput p2, p0, Lcom/sec/android/app/camera/DimController$DimArray;->mMenuId:I

    .line 1056
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1057
    iget-object v1, p0, Lcom/sec/android/app/camera/DimController$DimArray;->mDimArray:[Z

    aput-boolean v3, v1, v0

    .line 1058
    iget-object v1, p0, Lcom/sec/android/app/camera/DimController$DimArray;->mChangeArray:[Z

    aput-boolean v3, v1, v0

    .line 1056
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1060
    :cond_0
    return-void
.end method


# virtual methods
.method public getArray()[Z
    .locals 1

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/sec/android/app/camera/DimController$DimArray;->mDimArray:[Z

    return-object v0
.end method

.method public getMenuId()I
    .locals 1

    .prologue
    .line 1067
    iget v0, p0, Lcom/sec/android/app/camera/DimController$DimArray;->mMenuId:I

    return v0
.end method

.method public getSavedSettingValue(I)I
    .locals 3
    .param p1, "menuid"    # I

    .prologue
    .line 1073
    iget-object v2, p0, Lcom/sec/android/app/camera/DimController$DimArray;->this$0:Lcom/sec/android/app/camera/DimController;

    # getter for: Lcom/sec/android/app/camera/DimController;->mUserSettingValueList:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/sec/android/app/camera/DimController;->access$000(Lcom/sec/android/app/camera/DimController;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/DimController$SettingValueReference;

    .line 1075
    .local v0, "dimReference":Lcom/sec/android/app/camera/DimController$SettingValueReference;
    if-eqz v0, :cond_1

    .line 1076
    invoke-virtual {v0}, Lcom/sec/android/app/camera/DimController$SettingValueReference;->getReferenceCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 1077
    invoke-virtual {v0}, Lcom/sec/android/app/camera/DimController$SettingValueReference;->getSettingsValue()I

    move-result v1

    .line 1078
    .local v1, "settingValue":I
    iget-object v2, p0, Lcom/sec/android/app/camera/DimController$DimArray;->this$0:Lcom/sec/android/app/camera/DimController;

    # getter for: Lcom/sec/android/app/camera/DimController;->mUserSettingValueList:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/sec/android/app/camera/DimController;->access$000(Lcom/sec/android/app/camera/DimController;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1084
    .end local v1    # "settingValue":I
    :goto_0
    return v1

    .line 1081
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/DimController$SettingValueReference;->decreaseReferenceCount()V

    .line 1084
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public restoreUserSettingValues(Z)V
    .locals 10
    .param p1, "exiting"    # Z

    .prologue
    const/16 v9, 0xaa

    const/16 v8, 0x26

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, -0x1

    .line 1089
    iget-object v3, p0, Lcom/sec/android/app/camera/DimController$DimArray;->this$0:Lcom/sec/android/app/camera/DimController;

    # getter for: Lcom/sec/android/app/camera/DimController;->mCameraContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v3}, Lcom/sec/android/app/camera/DimController;->access$100(Lcom/sec/android/app/camera/DimController;)Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    .line 1091
    .local v0, "cs":Lcom/sec/android/app/camera/interfaces/CameraSettings;
    const/4 v1, 0x0

    .local v1, "key":I
    :goto_0
    if-ge v1, v8, :cond_a

    .line 1092
    if-eqz p1, :cond_0

    if-ne v1, v7, :cond_0

    .line 1093
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 1094
    .local v2, "savedValue":I
    if-eq v2, v5, :cond_0

    .line 1095
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFlashMode(I)V

    .line 1099
    .end local v2    # "savedValue":I
    :cond_0
    if-eqz p1, :cond_2

    const/16 v3, 0x23

    if-ne v1, v3, :cond_2

    .line 1100
    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FRONT_FLASH:Z

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SCREEN_FLASH_VI:Z

    if-eqz v3, :cond_2

    .line 1101
    :cond_1
    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 1102
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_2

    .line 1103
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFrontFlashMode(I)V

    .line 1108
    .end local v2    # "savedValue":I
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/DimController$DimArray;->mChangeArray:[Z

    aget-boolean v3, v3, v1

    if-nez v3, :cond_4

    .line 1091
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1112
    :cond_4
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 1114
    :pswitch_1
    const/16 v3, 0xc

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 1115
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_3

    .line 1116
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraHDR(I)V

    goto :goto_1

    .line 1119
    .end local v2    # "savedValue":I
    :pswitch_2
    const/16 v3, 0xbbf

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 1120
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_3

    .line 1121
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCamcorderAntishake(I)V

    goto :goto_1

    .line 1124
    .end local v2    # "savedValue":I
    :pswitch_3
    const/16 v3, 0x75

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 1125
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_3

    .line 1126
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setAntiFogLevel(I)V

    goto :goto_1

    .line 1130
    .end local v2    # "savedValue":I
    :pswitch_4
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 1131
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_3

    .line 1132
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getWhiteBalance()I

    move-result v3

    if-nez v3, :cond_5

    .line 1133
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraEffect(I)V

    goto :goto_1

    .line 1135
    :cond_5
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraEffect(I)V

    goto :goto_1

    .line 1139
    .end local v2    # "savedValue":I
    :pswitch_5
    const/16 v3, 0x12

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 1140
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_3

    .line 1141
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setZoomValue(I)V

    goto :goto_1

    .line 1144
    .end local v2    # "savedValue":I
    :pswitch_6
    if-nez p1, :cond_3

    .line 1145
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 1146
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_3

    .line 1147
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFlashMode(I)V

    goto :goto_1

    .line 1152
    .end local v2    # "savedValue":I
    :pswitch_7
    if-nez p1, :cond_3

    .line 1153
    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FRONT_FLASH:Z

    if-nez v3, :cond_6

    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SCREEN_FLASH_VI:Z

    if-eqz v3, :cond_3

    .line 1154
    :cond_6
    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 1155
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_3

    .line 1156
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFrontFlashMode(I)V

    goto :goto_1

    .line 1162
    .end local v2    # "savedValue":I
    :pswitch_8
    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 1163
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_3

    .line 1164
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setExposureValue(I)V

    goto :goto_1

    .line 1167
    .end local v2    # "savedValue":I
    :pswitch_9
    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 1168
    .restart local v2    # "savedValue":I
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualBackCamera()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1169
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSupportedBackCameraResolutionFeature(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1170
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraResolution(I)Z

    goto/16 :goto_1

    .line 1172
    :cond_7
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1173
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSupportedFrontCameraResolutionFeature(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1174
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraResolution(I)Z

    goto/16 :goto_1

    .line 1177
    :cond_8
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1178
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSupportedBackCameraResolutionFeature(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1179
    if-eq v2, v5, :cond_3

    .line 1180
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraResolution(I)Z

    goto/16 :goto_1

    .line 1183
    :cond_9
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1184
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSupportedFrontCameraResolutionFeature(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1185
    if-eq v2, v5, :cond_3

    .line 1186
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraResolution(I)Z

    goto/16 :goto_1

    .line 1192
    .end local v2    # "savedValue":I
    :pswitch_a
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 1193
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_3

    .line 1194
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setTimer(I)V

    goto/16 :goto_1

    .line 1197
    .end local v2    # "savedValue":I
    :pswitch_b
    const/16 v3, 0x11

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 1198
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_3

    .line 1199
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setReview(I)V

    goto/16 :goto_1

    .line 1202
    .end local v2    # "savedValue":I
    :pswitch_c
    const/16 v3, 0x16

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 1203
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_3

    .line 1204
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setStorage(I)V

    goto/16 :goto_1

    .line 1207
    .end local v2    # "savedValue":I
    :pswitch_d
    const/16 v3, 0xbb9

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 1208
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_3

    .line 1209
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_1

    .line 1213
    .end local v2    # "savedValue":I
    :pswitch_e
    const/16 v3, 0x15

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 1214
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_3

    .line 1215
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraShutterSound(I)V

    goto/16 :goto_1

    .line 1218
    .end local v2    # "savedValue":I
    :pswitch_f
    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 1219
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_3

    .line 1220
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSelfFlip(I)V

    goto/16 :goto_1

    .line 1223
    .end local v2    # "savedValue":I
    :pswitch_10
    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 1224
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_3

    .line 1225
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraQuality(I)V

    goto/16 :goto_1

    .line 1228
    .end local v2    # "savedValue":I
    :pswitch_11
    const/16 v3, 0x47

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 1229
    .restart local v2    # "savedValue":I
    const-string v3, "DimController"

    const-string v4, "Voice Command"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    if-eq v2, v5, :cond_3

    .line 1231
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraVoiceCommand(I)V

    goto/16 :goto_1

    .line 1234
    .end local v2    # "savedValue":I
    :pswitch_12
    const/16 v3, 0x13

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 1235
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_3

    .line 1236
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setGuideline(I)V

    goto/16 :goto_1

    .line 1239
    .end local v2    # "savedValue":I
    :pswitch_13
    const/16 v3, 0x17

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 1240
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_3

    .line 1241
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setObjectTrackingAF(I)V

    goto/16 :goto_1

    .line 1244
    .end local v2    # "savedValue":I
    :pswitch_14
    const/16 v3, 0x22

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 1245
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_3

    .line 1246
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSaveRichTone(I)V

    goto/16 :goto_1

    .line 1249
    .end local v2    # "savedValue":I
    :pswitch_15
    const/16 v3, 0x14

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 1250
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_3

    .line 1251
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setGPS(I)V

    goto/16 :goto_1

    .line 1254
    .end local v2    # "savedValue":I
    :pswitch_16
    const/16 v3, 0x138

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 1255
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_3

    .line 1256
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setViewMode(I)V

    goto/16 :goto_1

    .line 1260
    .end local v2    # "savedValue":I
    :pswitch_17
    const/16 v3, 0x7d

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 1261
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_3

    .line 1262
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setGestureControlMode(I)V

    goto/16 :goto_1

    .line 1266
    .end local v2    # "savedValue":I
    :pswitch_18
    const/16 v3, 0x49

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 1267
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_3

    .line 1268
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setVolumeKeyAs(I)V

    goto/16 :goto_1

    .line 1271
    .end local v2    # "savedValue":I
    :pswitch_19
    const/16 v3, 0x13b

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 1272
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_3

    .line 1273
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setPictureFormat(I)V

    goto/16 :goto_1

    .line 1276
    .end local v2    # "savedValue":I
    :pswitch_1a
    const/16 v3, 0x13c

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 1277
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_3

    .line 1278
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setQRCodeDetection(I)V

    goto/16 :goto_1

    .line 1281
    .end local v2    # "savedValue":I
    :pswitch_1b
    const/16 v3, 0x7f

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 1282
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_3

    .line 1283
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setInterval(I)V

    goto/16 :goto_1

    .line 1286
    .end local v2    # "savedValue":I
    :pswitch_1c
    const/16 v3, 0x73

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 1287
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_3

    .line 1288
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setTapToTakePictures(I)V

    goto/16 :goto_1

    .line 1292
    .end local v2    # "savedValue":I
    :pswitch_1d
    const/16 v3, 0x74

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 1293
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_3

    .line 1294
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setHRMShutter(I)V

    goto/16 :goto_1

    .line 1298
    .end local v2    # "savedValue":I
    :pswitch_1e
    const/16 v3, 0x2a

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 1299
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_3

    .line 1300
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setMotionPhoto(I)V

    goto/16 :goto_1

    .line 1303
    .end local v2    # "savedValue":I
    :pswitch_1f
    const/16 v3, 0x91

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/DimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    .line 1304
    .restart local v2    # "savedValue":I
    if-eq v2, v5, :cond_3

    .line 1305
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setMultiAFMode(I)V

    goto/16 :goto_1

    .line 1312
    .end local v2    # "savedValue":I
    :cond_a
    return-void

    .line 1112
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_12
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_2
        :pswitch_14
        :pswitch_10
        :pswitch_11
        :pswitch_15
        :pswitch_0
        :pswitch_16
        :pswitch_17
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_18
        :pswitch_3
        :pswitch_19
        :pswitch_0
        :pswitch_1a
        :pswitch_1b
        :pswitch_0
        :pswitch_1c
        :pswitch_1d
        :pswitch_7
        :pswitch_1e
        :pswitch_1f
    .end packed-switch
.end method

.method public saveSetting(II)Z
    .locals 3
    .param p1, "menuid"    # I
    .param p2, "value"    # I

    .prologue
    .line 1318
    iget-object v1, p0, Lcom/sec/android/app/camera/DimController$DimArray;->this$0:Lcom/sec/android/app/camera/DimController;

    # getter for: Lcom/sec/android/app/camera/DimController;->mUserSettingValueList:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/sec/android/app/camera/DimController;->access$000(Lcom/sec/android/app/camera/DimController;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/DimController$SettingValueReference;

    .line 1319
    .local v0, "dimReference":Lcom/sec/android/app/camera/DimController$SettingValueReference;
    if-nez v0, :cond_0

    .line 1320
    iget-object v1, p0, Lcom/sec/android/app/camera/DimController$DimArray;->this$0:Lcom/sec/android/app/camera/DimController;

    # getter for: Lcom/sec/android/app/camera/DimController;->mUserSettingValueList:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/sec/android/app/camera/DimController;->access$000(Lcom/sec/android/app/camera/DimController;)Landroid/util/SparseArray;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/DimController$SettingValueReference;

    invoke-direct {v2, p2}, Lcom/sec/android/app/camera/DimController$SettingValueReference;-><init>(I)V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1321
    const/4 v1, 0x1

    .line 1324
    :goto_0
    return v1

    .line 1323
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/DimController$SettingValueReference;->increaseReferenceCount()V

    .line 1324
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public varargs saveSettingMulti([I)V
    .locals 8
    .param p1, "indices"    # [I

    .prologue
    const/16 v7, 0x26

    .line 1329
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget v3, v0, v2

    .line 1331
    .local v3, "index":I
    iget-object v5, p0, Lcom/sec/android/app/camera/DimController$DimArray;->this$0:Lcom/sec/android/app/camera/DimController;

    # getter for: Lcom/sec/android/app/camera/DimController;->mCameraContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v5}, Lcom/sec/android/app/camera/DimController;->access$100(Lcom/sec/android/app/camera/DimController;)Lcom/sec/android/app/camera/Camera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    .line 1333
    .local v1, "cs":Lcom/sec/android/app/camera/interfaces/CameraSettings;
    if-eqz v1, :cond_0

    if-ltz v3, :cond_0

    if-lt v3, v7, :cond_1

    .line 1438
    .end local v1    # "cs":Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .end local v3    # "index":I
    :cond_0
    return-void

    .line 1337
    .restart local v1    # "cs":Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .restart local v3    # "index":I
    :cond_1
    packed-switch v3, :pswitch_data_0

    .line 1329
    :cond_2
    :goto_1
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1339
    :pswitch_1
    const/16 v5, 0xc

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraHDR()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto :goto_1

    .line 1342
    :pswitch_2
    const/16 v5, 0x8

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    .line 1343
    const/16 v5, 0x5a

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraDualEffect()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto :goto_1

    .line 1346
    :pswitch_3
    const/16 v5, 0x12

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getZoomValue()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto :goto_1

    .line 1349
    :pswitch_4
    const/4 v5, 0x3

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto :goto_1

    .line 1352
    :pswitch_5
    sget-boolean v5, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FRONT_FLASH:Z

    if-nez v5, :cond_3

    sget-boolean v5, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SCREEN_FLASH_VI:Z

    if-eqz v5, :cond_2

    .line 1353
    :cond_3
    const/16 v5, 0xaa

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontFlashMode()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto :goto_1

    .line 1357
    :pswitch_6
    const/4 v5, 0x7

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getExposureValue()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto :goto_1

    .line 1360
    :pswitch_7
    const/16 v5, 0x75

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getAntiFogLevel()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto :goto_1

    .line 1363
    :pswitch_8
    const/16 v5, 0x7d

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGestureControlMode()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto :goto_1

    .line 1366
    :pswitch_9
    const/4 v5, 0x4

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto :goto_1

    .line 1369
    :pswitch_a
    const/4 v5, 0x6

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto :goto_1

    .line 1372
    :pswitch_b
    const/16 v5, 0x11

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getReview()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto :goto_1

    .line 1375
    :pswitch_c
    const/16 v5, 0x2a

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMotionPhoto()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    .line 1378
    :pswitch_d
    const/16 v5, 0x16

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    .line 1381
    :pswitch_e
    const/16 v5, 0x13

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGuideline()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    .line 1384
    :pswitch_f
    const/16 v5, 0x17

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getObjectTrackingAF()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    .line 1387
    :pswitch_10
    const/16 v5, 0xbb9

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    .line 1390
    :pswitch_11
    const/16 v5, 0xbbf

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderAntishake()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    .line 1393
    :pswitch_12
    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSelfFlip()I

    move-result v5

    invoke-virtual {p0, v7, v5}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    .line 1396
    :pswitch_13
    const/16 v5, 0x10

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraQuality()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    .line 1399
    :pswitch_14
    const/16 v5, 0x47

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    .line 1402
    :pswitch_15
    const/16 v5, 0x15

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraShutterSound()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    .line 1405
    :pswitch_16
    const/16 v5, 0x22

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSaveRichTone()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    .line 1408
    :pswitch_17
    const/16 v5, 0x14

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGPS()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    .line 1411
    :pswitch_18
    const/16 v5, 0x138

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getViewMode()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    .line 1414
    :pswitch_19
    const/16 v5, 0x49

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVolumeKeyAs()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    .line 1417
    :pswitch_1a
    const/16 v5, 0x13b

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getPictureFormat()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    .line 1420
    :pswitch_1b
    const/16 v5, 0x13c

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getQRCodeDetection()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    .line 1423
    :pswitch_1c
    const/16 v5, 0x7f

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getInterval()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    .line 1426
    :pswitch_1d
    const/16 v5, 0x73

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTapToTakePictures()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    .line 1429
    :pswitch_1e
    const/16 v5, 0x74

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHRMShutter()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    .line 1432
    :pswitch_1f
    const/16 v5, 0x91

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiAFMode()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/camera/DimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_1

    .line 1337
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_10
        :pswitch_15
        :pswitch_12
        :pswitch_11
        :pswitch_16
        :pswitch_13
        :pswitch_14
        :pswitch_17
        :pswitch_0
        :pswitch_18
        :pswitch_8
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_19
        :pswitch_7
        :pswitch_1a
        :pswitch_0
        :pswitch_1b
        :pswitch_1c
        :pswitch_0
        :pswitch_1d
        :pswitch_1e
        :pswitch_5
        :pswitch_c
        :pswitch_1f
    .end packed-switch
.end method

.method public set(IZ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "dimmed"    # Z

    .prologue
    .line 1441
    if-ltz p1, :cond_0

    const/16 v0, 0x26

    if-lt p1, v0, :cond_1

    .line 1449
    :cond_0
    :goto_0
    return-void

    .line 1445
    :cond_1
    if-eqz p2, :cond_0

    .line 1446
    iget-object v0, p0, Lcom/sec/android/app/camera/DimController$DimArray;->mDimArray:[Z

    aput-boolean p2, v0, p1

    .line 1447
    iget-object v0, p0, Lcom/sec/android/app/camera/DimController$DimArray;->mChangeArray:[Z

    aput-boolean p2, v0, p1

    goto :goto_0
.end method

.method public setChangedOnly(IZ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "changed"    # Z

    .prologue
    .line 1454
    if-ltz p1, :cond_0

    const/16 v0, 0x26

    if-lt p1, v0, :cond_1

    .line 1461
    :cond_0
    :goto_0
    return-void

    .line 1458
    :cond_1
    if-eqz p2, :cond_0

    .line 1459
    iget-object v0, p0, Lcom/sec/android/app/camera/DimController$DimArray;->mChangeArray:[Z

    aput-boolean p2, v0, p1

    goto :goto_0
.end method

.method public varargs setDimMulti([I)V
    .locals 5
    .param p1, "indices"    # [I

    .prologue
    .line 1464
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget v2, v0, v1

    .line 1465
    .local v2, "index":I
    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/DimController$DimArray;->set(IZ)V

    .line 1464
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1467
    .end local v2    # "index":I
    :cond_0
    return-void
.end method
