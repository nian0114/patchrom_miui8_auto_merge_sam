.class public final Landroid/view/MotionEvent;
.super Landroid/view/InputEvent;
.source "MotionEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/MotionEvent$PointerProperties;,
        Landroid/view/MotionEvent$PointerCoords;
    }
.end annotation


# static fields
.field public static final ACTION_BUTTON_PRESS:I = 0xb

.field public static final ACTION_BUTTON_RELEASE:I = 0xc

.field public static final ACTION_CANCEL:I = 0x3

.field public static final ACTION_DOWN:I = 0x0

.field public static final ACTION_HOVER_ENTER:I = 0x9

.field public static final ACTION_HOVER_EXIT:I = 0xa

.field public static final ACTION_HOVER_MOVE:I = 0x7

.field public static final ACTION_MASK:I = 0xff

.field public static final ACTION_MOVE:I = 0x2

.field public static final ACTION_OUTSIDE:I = 0x4

.field public static final ACTION_PEN_CANCEL:I = 0xd6

.field public static final ACTION_PEN_DOWN:I = 0xd3

.field public static final ACTION_PEN_MOVE:I = 0xd5

.field public static final ACTION_PEN_UP:I = 0xd4

.field public static final ACTION_POINTER_1_DOWN:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_1_UP:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_2_DOWN:I = 0x105
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_2_UP:I = 0x106
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_3_DOWN:I = 0x205
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_3_UP:I = 0x206
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_DOWN:I = 0x5

.field public static final ACTION_POINTER_ID_MASK:I = 0xff00
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_ID_SHIFT:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_INDEX_MASK:I = 0xff00

.field public static final ACTION_POINTER_INDEX_SHIFT:I = 0x8

.field public static final ACTION_POINTER_UP:I = 0x6

.field public static final ACTION_SCROLL:I = 0x8

.field public static final ACTION_UP:I = 0x1

.field public static final AXIS_BRAKE:I = 0x17

.field public static final AXIS_DISTANCE:I = 0x18

.field public static final AXIS_GAS:I = 0x16

.field public static final AXIS_GENERIC_1:I = 0x20

.field public static final AXIS_GENERIC_10:I = 0x29

.field public static final AXIS_GENERIC_11:I = 0x2a

.field public static final AXIS_GENERIC_12:I = 0x2b

.field public static final AXIS_GENERIC_13:I = 0x2c

.field public static final AXIS_GENERIC_14:I = 0x2d

.field public static final AXIS_GENERIC_15:I = 0x2e

.field public static final AXIS_GENERIC_16:I = 0x2f

.field public static final AXIS_GENERIC_2:I = 0x21

.field public static final AXIS_GENERIC_3:I = 0x22

.field public static final AXIS_GENERIC_4:I = 0x23

.field public static final AXIS_GENERIC_5:I = 0x24

.field public static final AXIS_GENERIC_6:I = 0x25

.field public static final AXIS_GENERIC_7:I = 0x26

.field public static final AXIS_GENERIC_8:I = 0x27

.field public static final AXIS_GENERIC_9:I = 0x28

.field public static final AXIS_GRIP:I = 0x31

.field public static final AXIS_HAT_X:I = 0xf

.field public static final AXIS_HAT_Y:I = 0x10

.field public static final AXIS_HSCROLL:I = 0xa

.field public static final AXIS_LTRIGGER:I = 0x11

.field public static final AXIS_ORIENTATION:I = 0x8

.field public static final AXIS_PALM:I = 0x30

.field public static final AXIS_PREDICTED_X_OFFSET:I = 0x33

.field public static final AXIS_PREDICTED_Y_OFFSET:I = 0x34

.field public static final AXIS_PRESSURE:I = 0x2

.field public static final AXIS_RTRIGGER:I = 0x12

.field public static final AXIS_RUDDER:I = 0x14

.field public static final AXIS_RX:I = 0xc

.field public static final AXIS_RY:I = 0xd

.field public static final AXIS_RZ:I = 0xe

.field public static final AXIS_SIZE:I = 0x3

.field private static final AXIS_SYMBOLIC_NAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final AXIS_THROTTLE:I = 0x13

.field public static final AXIS_TILT:I = 0x19

.field public static final AXIS_TOOL_MAJOR:I = 0x6

.field public static final AXIS_TOOL_MINOR:I = 0x7

.field public static final AXIS_TOUCH_MAJOR:I = 0x4

.field public static final AXIS_TOUCH_MINOR:I = 0x5

.field public static final AXIS_VSCROLL:I = 0x9

.field public static final AXIS_WHEEL:I = 0x15

.field public static final AXIS_X:I = 0x0

.field public static final AXIS_Y:I = 0x1

.field public static final AXIS_Z:I = 0xb

.field public static final BUTTON_3FINGER_DOWN:I = 0x200000

.field public static final BUTTON_3FINGER_LEFT:I = 0x400000

.field public static final BUTTON_3FINGER_RIGHT:I = 0x800000

.field public static final BUTTON_3FINGER_UP:I = 0x100000

.field public static final BUTTON_BACK:I = 0x8

.field public static final BUTTON_FORWARD:I = 0x10

.field public static final BUTTON_PRIMARY:I = 0x1

.field public static final BUTTON_SECONDARY:I = 0x2

.field public static final BUTTON_STYLUS_PRIMARY:I = 0x20

.field public static final BUTTON_STYLUS_SECONDARY:I = 0x40

.field private static final BUTTON_SYMBOLIC_NAMES:[Ljava/lang/String;

.field public static final BUTTON_TERTIARY:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final EDGE_BOTTOM:I = 0x2

.field public static final EDGE_LEFT:I = 0x4

.field public static final EDGE_RIGHT:I = 0x8

.field public static final EDGE_TOP:I = 0x1

.field public static final FLAG_BOTH_DISPLAY_TOUCH_HOLD:I = 0x10000000

.field public static final FLAG_TAINTED:I = -0x80000000

.field public static final FLAG_TARGET_ACCESSIBILITY_FOCUS:I = 0x40000000

.field public static final FLAG_WINDOW_IS_OBSCURED:I = 0x1

.field public static final FLAG_WINDOW_IS_PARTIALLY_OBSCURED:I = 0x2

.field private static final HISTORY_CURRENT:I = -0x80000000

.field public static final INVALID_POINTER_ID:I = -0x1

.field private static final LABEL_PREFIX:Ljava/lang/String; = "AXIS_"

.field private static final MAX_RECYCLED:I = 0xa

.field private static final NS_PER_MS:J = 0xf4240L

.field public static final TOOL_TYPE_ERASER:I = 0x4

.field public static final TOOL_TYPE_FINGER:I = 0x1

.field public static final TOOL_TYPE_MOUSE:I = 0x3

.field public static final TOOL_TYPE_STYLUS:I = 0x2

.field private static final TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TOOL_TYPE_UNKNOWN:I = 0x0

.field private static final bDSSEnabled:Z = true

.field private static final gRecyclerLock:Ljava/lang/Object;

.field private static gRecyclerTop:Landroid/view/MotionEvent;

.field private static gRecyclerUsed:I

.field private static final gSharedTempLock:Ljava/lang/Object;

.field private static gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private static gSharedTempPointerIndexMap:[I

.field private static gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;


# instance fields
.field private mDssScale:F

.field private mNativePtr:J

.field mNeedWindowOffset:Z

.field private mNext:Landroid/view/MotionEvent;

.field mScaleFactorX:F

.field mScaleFactorY:F

.field mScaledWindowOffsetX:I

.field mScaledWindowOffsetY:I

.field mWindowOffsetX:I

.field mWindowOffsetY:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1240
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Landroid/view/MotionEvent;->AXIS_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    .line 1242
    sget-object v0, Landroid/view/MotionEvent;->AXIS_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    .line 1243
    .local v0, "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string v1, "AXIS_X"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1244
    const-string v1, "AXIS_Y"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1245
    const-string v1, "AXIS_PRESSURE"

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1246
    const-string v1, "AXIS_SIZE"

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1247
    const-string v1, "AXIS_TOUCH_MAJOR"

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1248
    const/4 v1, 0x5

    const-string v2, "AXIS_TOUCH_MINOR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1249
    const/4 v1, 0x6

    const-string v2, "AXIS_TOOL_MAJOR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1250
    const/4 v1, 0x7

    const-string v2, "AXIS_TOOL_MINOR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1251
    const/16 v1, 0x8

    const-string v2, "AXIS_ORIENTATION"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1252
    const/16 v1, 0x9

    const-string v2, "AXIS_VSCROLL"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1253
    const/16 v1, 0xa

    const-string v2, "AXIS_HSCROLL"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1254
    const/16 v1, 0xb

    const-string v2, "AXIS_Z"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1255
    const/16 v1, 0xc

    const-string v2, "AXIS_RX"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1256
    const/16 v1, 0xd

    const-string v2, "AXIS_RY"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1257
    const/16 v1, 0xe

    const-string v2, "AXIS_RZ"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1258
    const/16 v1, 0xf

    const-string v2, "AXIS_HAT_X"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1259
    const/16 v1, 0x10

    const-string v2, "AXIS_HAT_Y"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1260
    const/16 v1, 0x11

    const-string v2, "AXIS_LTRIGGER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1261
    const/16 v1, 0x12

    const-string v2, "AXIS_RTRIGGER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1262
    const/16 v1, 0x13

    const-string v2, "AXIS_THROTTLE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1263
    const/16 v1, 0x14

    const-string v2, "AXIS_RUDDER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1264
    const/16 v1, 0x15

    const-string v2, "AXIS_WHEEL"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1265
    const/16 v1, 0x16

    const-string v2, "AXIS_GAS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1266
    const/16 v1, 0x17

    const-string v2, "AXIS_BRAKE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1267
    const/16 v1, 0x18

    const-string v2, "AXIS_DISTANCE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1268
    const/16 v1, 0x19

    const-string v2, "AXIS_TILT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1269
    const/16 v1, 0x20

    const-string v2, "AXIS_GENERIC_1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1270
    const/16 v1, 0x21

    const-string v2, "AXIS_GENERIC_2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1271
    const/16 v1, 0x22

    const-string v2, "AXIS_GENERIC_3"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1272
    const/16 v1, 0x23

    const-string v2, "AXIS_GENERIC_4"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1273
    const/16 v1, 0x24

    const-string v2, "AXIS_GENERIC_5"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1274
    const/16 v1, 0x25

    const-string v2, "AXIS_GENERIC_6"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1275
    const/16 v1, 0x26

    const-string v2, "AXIS_GENERIC_7"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1276
    const/16 v1, 0x27

    const-string v2, "AXIS_GENERIC_8"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1277
    const/16 v1, 0x28

    const-string v2, "AXIS_GENERIC_9"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1278
    const/16 v1, 0x29

    const-string v2, "AXIS_GENERIC_10"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1279
    const/16 v1, 0x2a

    const-string v2, "AXIS_GENERIC_11"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1280
    const/16 v1, 0x2b

    const-string v2, "AXIS_GENERIC_12"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1281
    const/16 v1, 0x2c

    const-string v2, "AXIS_GENERIC_13"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1282
    const/16 v1, 0x2d

    const-string v2, "AXIS_GENERIC_14"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1283
    const/16 v1, 0x2e

    const-string v2, "AXIS_GENERIC_15"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1284
    const/16 v1, 0x2f

    const-string v2, "AXIS_GENERIC_16"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1288
    const/16 v1, 0x30

    const-string v2, "AXIS_PALM"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1380
    const/16 v1, 0x20

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "BUTTON_PRIMARY"

    aput-object v2, v1, v4

    const-string v2, "BUTTON_SECONDARY"

    aput-object v2, v1, v5

    const-string v2, "BUTTON_TERTIARY"

    aput-object v2, v1, v6

    const-string v2, "BUTTON_BACK"

    aput-object v2, v1, v7

    const-string v2, "BUTTON_FORWARD"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "BUTTON_STYLUS_PRIMARY"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "BUTTON_STYLUS_SECONDARY"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "0x00000080"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "0x00000100"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "0x00000200"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "0x00000400"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "0x00000800"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "0x00001000"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "0x00002000"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "0x00004000"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "0x00008000"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "0x00010000"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "0x00020000"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "0x00040000"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "0x00080000"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "0x00100000"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "0x00200000"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "0x00400000"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "0x00800000"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "0x01000000"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "0x02000000"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "0x04000000"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "0x08000000"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "0x10000000"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "0x20000000"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "0x40000000"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "0x80000000"

    aput-object v3, v1, v2

    sput-object v1, Landroid/view/MotionEvent;->BUTTON_SYMBOLIC_NAMES:[Ljava/lang/String;

    .line 1456
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Landroid/view/MotionEvent;->TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    .line 1458
    sget-object v0, Landroid/view/MotionEvent;->TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    .line 1459
    const-string v1, "TOOL_TYPE_UNKNOWN"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1460
    const-string v1, "TOOL_TYPE_FINGER"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1461
    const-string v1, "TOOL_TYPE_STYLUS"

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1462
    const-string v1, "TOOL_TYPE_MOUSE"

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1463
    const-string v1, "TOOL_TYPE_ERASER"

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1470
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/view/MotionEvent;->gRecyclerLock:Ljava/lang/Object;

    .line 1476
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    .line 3688
    new-instance v1, Landroid/view/MotionEvent$1;

    invoke-direct {v1}, Landroid/view/MotionEvent$1;-><init>()V

    sput-object v1, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 1561
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 188
    iput v1, p0, Landroid/view/MotionEvent;->mDssScale:F

    .line 2661
    iput v1, p0, Landroid/view/MotionEvent;->mScaleFactorX:F

    .line 2662
    iput v1, p0, Landroid/view/MotionEvent;->mScaleFactorY:F

    .line 2663
    iput v0, p0, Landroid/view/MotionEvent;->mScaledWindowOffsetX:I

    .line 2664
    iput v0, p0, Landroid/view/MotionEvent;->mScaledWindowOffsetY:I

    .line 2689
    iput v0, p0, Landroid/view/MotionEvent;->mWindowOffsetX:I

    .line 2690
    iput v0, p0, Landroid/view/MotionEvent;->mWindowOffsetY:I

    .line 2691
    iput-boolean v0, p0, Landroid/view/MotionEvent;->mNeedWindowOffset:Z

    .line 1562
    return-void
.end method

.method public static actionToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "action"    # I

    .prologue
    .line 3549
    packed-switch p0, :pswitch_data_0

    .line 3573
    :pswitch_0
    const v1, 0xff00

    and-int/2addr v1, p0

    shr-int/lit8 v0, v1, 0x8

    .line 3574
    .local v0, "index":I
    and-int/lit16 v1, p0, 0xff

    packed-switch v1, :pswitch_data_1

    .line 3580
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .end local v0    # "index":I
    :goto_0
    return-object v1

    .line 3551
    :pswitch_1
    const-string v1, "ACTION_DOWN"

    goto :goto_0

    .line 3553
    :pswitch_2
    const-string v1, "ACTION_UP"

    goto :goto_0

    .line 3555
    :pswitch_3
    const-string v1, "ACTION_CANCEL"

    goto :goto_0

    .line 3557
    :pswitch_4
    const-string v1, "ACTION_OUTSIDE"

    goto :goto_0

    .line 3559
    :pswitch_5
    const-string v1, "ACTION_MOVE"

    goto :goto_0

    .line 3561
    :pswitch_6
    const-string v1, "ACTION_HOVER_MOVE"

    goto :goto_0

    .line 3563
    :pswitch_7
    const-string v1, "ACTION_SCROLL"

    goto :goto_0

    .line 3565
    :pswitch_8
    const-string v1, "ACTION_HOVER_ENTER"

    goto :goto_0

    .line 3567
    :pswitch_9
    const-string v1, "ACTION_HOVER_EXIT"

    goto :goto_0

    .line 3569
    :pswitch_a
    const-string v1, "ACTION_BUTTON_PRESS"

    goto :goto_0

    .line 3571
    :pswitch_b
    const-string v1, "ACTION_BUTTON_RELEASE"

    goto :goto_0

    .line 3576
    .restart local v0    # "index":I
    :pswitch_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_POINTER_DOWN("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 3578
    :pswitch_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_POINTER_UP("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 3549
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 3574
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public static axisFromString(Ljava/lang/String;)I
    .locals 3
    .param p0, "symbolicName"    # Ljava/lang/String;

    .prologue
    .line 3605
    const-string v2, "AXIS_"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3606
    const-string v2, "AXIS_"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 3607
    invoke-static {p0}, Landroid/view/MotionEvent;->nativeAxisFromString(Ljava/lang/String;)I

    move-result v0

    .line 3608
    .local v0, "axis":I
    if-ltz v0, :cond_0

    .line 3615
    .end local v0    # "axis":I
    :goto_0
    return v0

    .line 3613
    :cond_0
    const/16 v2, 0xa

    :try_start_0
    invoke-static {p0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 3614
    :catch_0
    move-exception v1

    .line 3615
    .local v1, "ex":Ljava/lang/NumberFormatException;
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static axisToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "axis"    # I

    .prologue
    .line 3592
    invoke-static {p0}, Landroid/view/MotionEvent;->nativeAxisToString(I)Ljava/lang/String;

    move-result-object v0

    .line 3593
    .local v0, "symbolicName":Ljava/lang/String;
    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AXIS_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static buttonStateToString(I)Ljava/lang/String;
    .locals 5
    .param p0, "buttonState"    # I

    .prologue
    .line 3630
    if-nez p0, :cond_1

    .line 3631
    const-string v2, "0"

    .line 3652
    :cond_0
    :goto_0
    return-object v2

    .line 3633
    :cond_1
    const/4 v3, 0x0

    .line 3634
    .local v3, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 3635
    .local v0, "i":I
    :goto_1
    if-eqz p0, :cond_5

    .line 3636
    and-int/lit8 v4, p0, 0x1

    if-eqz v4, :cond_3

    const/4 v1, 0x1

    .line 3637
    .local v1, "isSet":Z
    :goto_2
    ushr-int/lit8 p0, p0, 0x1

    .line 3638
    if-eqz v1, :cond_2

    .line 3639
    sget-object v4, Landroid/view/MotionEvent;->BUTTON_SYMBOLIC_NAMES:[Ljava/lang/String;

    aget-object v2, v4, v0

    .line 3640
    .local v2, "name":Ljava/lang/String;
    if-nez v3, :cond_4

    .line 3641
    if-eqz p0, :cond_0

    .line 3644
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "result":Ljava/lang/StringBuilder;
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3650
    .end local v2    # "name":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/StringBuilder;
    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 3651
    goto :goto_1

    .line 3636
    .end local v1    # "isSet":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 3646
    .restart local v1    # "isSet":Z
    .restart local v2    # "name":Ljava/lang/String;
    :cond_4
    const/16 v4, 0x7c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3647
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 3652
    .end local v1    # "isSet":Z
    .end local v2    # "name":Ljava/lang/String;
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static final clamp(FFF)F
    .locals 1
    .param p0, "value"    # F
    .param p1, "low"    # F
    .param p2, "high"    # F

    .prologue
    .line 3356
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .line 3361
    .end local p1    # "low":F
    :goto_0
    return p1

    .line 3358
    .restart local p1    # "low":F
    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move p1, p2

    .line 3359
    goto :goto_0

    :cond_1
    move p1, p0

    .line 3361
    goto :goto_0
.end method

.method public static createFromParcelBody(Landroid/os/Parcel;)Landroid/view/MotionEvent;
    .locals 4
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 3702
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    .line 3703
    .local v0, "ev":Landroid/view/MotionEvent;
    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v2, v3, p0}, Landroid/view/MotionEvent;->nativeReadFromParcel(JLandroid/os/Parcel;)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3704
    return-object v0
.end method

.method private static final ensureSharedTempPointerCapacity(I)V
    .locals 2
    .param p0, "desiredCapacity"    # I

    .prologue
    .line 1482
    sget-object v1, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    array-length v1, v1

    if-ge v1, p0, :cond_3

    .line 1484
    :cond_0
    sget-object v1, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-eqz v1, :cond_1

    sget-object v1, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    array-length v0, v1

    .line 1485
    .local v0, "capacity":I
    :goto_0
    if-ge v0, p0, :cond_2

    .line 1486
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 1484
    .end local v0    # "capacity":I
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    .line 1488
    .restart local v0    # "capacity":I
    :cond_2
    invoke-static {v0}, Landroid/view/MotionEvent$PointerCoords;->createArray(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v1

    sput-object v1, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 1489
    invoke-static {v0}, Landroid/view/MotionEvent$PointerProperties;->createArray(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v1

    sput-object v1, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 1490
    new-array v1, v0, [I

    sput-object v1, Landroid/view/MotionEvent;->gSharedTempPointerIndexMap:[I

    .line 1492
    .end local v0    # "capacity":I
    :cond_3
    return-void
.end method

.method private static native nativeAddBatch(JJ[Landroid/view/MotionEvent$PointerCoords;I)V
.end method

.method private static native nativeAxisFromString(Ljava/lang/String;)I
.end method

.method private static native nativeAxisToString(I)Ljava/lang/String;
.end method

.method private static native nativeCopy(JJZ)J
.end method

.method private static native nativeDispose(J)V
.end method

.method private static native nativeFindPointerIndex(JI)I
.end method

.method private static native nativeGetAction(J)I
.end method

.method private static native nativeGetActionButton(J)I
.end method

.method private static native nativeGetAxisValue(JIII)F
.end method

.method private static native nativeGetButtonState(J)I
.end method

.method private static native nativeGetDeviceId(J)I
.end method

.method private static native nativeGetDisplayId(J)I
.end method

.method private static native nativeGetDownTimeNanos(J)J
.end method

.method private static native nativeGetEdgeFlags(J)I
.end method

.method private static native nativeGetEventTimeNanos(JI)J
.end method

.method private static native nativeGetFlags(J)I
.end method

.method private static native nativeGetHistorySize(J)I
.end method

.method private static native nativeGetMetaState(J)I
.end method

.method private static native nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V
.end method

.method private static native nativeGetPointerCount(J)I
.end method

.method private static native nativeGetPointerId(JI)I
.end method

.method private static native nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V
.end method

.method private static native nativeGetRawAxisValue(JIII)F
.end method

.method private static native nativeGetSource(J)I
.end method

.method private static native nativeGetToolType(JI)I
.end method

.method private static native nativeGetXOffset(J)F
.end method

.method private static native nativeGetXPrecision(J)F
.end method

.method private static native nativeGetYOffset(J)F
.end method

.method private static native nativeGetYPrecision(J)F
.end method

.method private static native nativeInitialize(JIIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)J
.end method

.method private static native nativeIsTouchEvent(J)Z
.end method

.method private static native nativeOffsetLocation(JFF)V
.end method

.method private static native nativeReadFromParcel(JLandroid/os/Parcel;)J
.end method

.method private static native nativeScale(JF)V
.end method

.method private static native nativeSetAction(JI)V
.end method

.method private static native nativeSetActionButton(JI)V
.end method

.method private static native nativeSetButtonState(JI)V
.end method

.method private static native nativeSetDisplayId(JI)V
.end method

.method private static native nativeSetDownTimeNanos(JJ)V
.end method

.method private static native nativeSetEdgeFlags(JI)V
.end method

.method private static native nativeSetFlags(JI)V
.end method

.method private static native nativeSetSource(JI)I
.end method

.method private static native nativeTransform(JLandroid/graphics/Matrix;)V
.end method

.method private static native nativeWriteToParcel(JLandroid/os/Parcel;)V
.end method

.method private static obtain()Landroid/view/MotionEvent;
    .locals 3

    .prologue
    .line 1578
    sget-object v2, Landroid/view/MotionEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1579
    :try_start_0
    sget-object v0, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    .line 1580
    .local v0, "ev":Landroid/view/MotionEvent;
    if-nez v0, :cond_0

    .line 1581
    new-instance v0, Landroid/view/MotionEvent;

    .end local v0    # "ev":Landroid/view/MotionEvent;
    invoke-direct {v0}, Landroid/view/MotionEvent;-><init>()V

    monitor-exit v2

    .line 1588
    .restart local v0    # "ev":Landroid/view/MotionEvent;
    :goto_0
    return-object v0

    .line 1583
    :cond_0
    iget-object v1, v0, Landroid/view/MotionEvent;->mNext:Landroid/view/MotionEvent;

    sput-object v1, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    .line 1584
    sget v1, Landroid/view/MotionEvent;->gRecyclerUsed:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroid/view/MotionEvent;->gRecyclerUsed:I

    .line 1585
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1586
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/MotionEvent;->mNext:Landroid/view/MotionEvent;

    .line 1587
    invoke-virtual {v0}, Landroid/view/MotionEvent;->prepareForReuse()V

    goto :goto_0

    .line 1585
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;
    .locals 26
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .param p5, "x"    # F
    .param p6, "y"    # F
    .param p7, "pressure"    # F
    .param p8, "size"    # F
    .param p9, "metaState"    # I
    .param p10, "xPrecision"    # F
    .param p11, "yPrecision"    # F
    .param p12, "deviceId"    # I
    .param p13, "edgeFlags"    # I

    .prologue
    .line 1731
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v23

    .line 1732
    .local v23, "ev":Landroid/view/MotionEvent;
    sget-object v24, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v24

    .line 1733
    const/4 v2, 0x1

    :try_start_0
    invoke-static {v2}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 1734
    sget-object v21, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 1735
    .local v21, "pp":[Landroid/view/MotionEvent$PointerProperties;
    const/4 v2, 0x0

    aget-object v2, v21, v2

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    .line 1736
    const/4 v2, 0x0

    aget-object v2, v21, v2

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 1738
    sget-object v22, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 1739
    .local v22, "pc":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v2, 0x0

    aget-object v2, v22, v2

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    .line 1740
    const/4 v2, 0x0

    aget-object v2, v22, v2

    move/from16 v0, p5

    iput v0, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 1741
    const/4 v2, 0x0

    aget-object v2, v22, v2

    move/from16 v0, p6

    iput v0, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 1742
    const/4 v2, 0x0

    aget-object v2, v22, v2

    move/from16 v0, p7

    iput v0, v2, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 1743
    const/4 v2, 0x0

    aget-object v2, v22, v2

    move/from16 v0, p8

    iput v0, v2, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 1745
    move-object/from16 v0, v23

    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/32 v8, 0xf4240

    mul-long v16, p0, v8

    const-wide/32 v8, 0xf4240

    mul-long v18, p2, v8

    const/16 v20, 0x1

    move/from16 v4, p12

    move/from16 v6, p4

    move/from16 v8, p13

    move/from16 v9, p9

    move/from16 v14, p10

    move/from16 v15, p11

    invoke-static/range {v2 .. v22}, Landroid/view/MotionEvent;->nativeInitialize(JIIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)J

    move-result-wide v2

    move-object/from16 v0, v23

    iput-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 1750
    monitor-exit v24

    return-object v23

    .line 1751
    .end local v21    # "pp":[Landroid/view/MotionEvent$PointerProperties;
    .end local v22    # "pc":[Landroid/view/MotionEvent$PointerCoords;
    :catchall_0
    move-exception v2

    monitor-exit v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static obtain(JJIFFFFIIFFII)Landroid/view/MotionEvent;
    .locals 26
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .param p5, "x"    # F
    .param p6, "y"    # F
    .param p7, "pressure"    # F
    .param p8, "size"    # F
    .param p9, "metaState"    # I
    .param p10, "displayId"    # I
    .param p11, "xPrecision"    # F
    .param p12, "yPrecision"    # F
    .param p13, "deviceId"    # I
    .param p14, "edgeFlags"    # I

    .prologue
    .line 1761
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v23

    .line 1762
    .local v23, "ev":Landroid/view/MotionEvent;
    sget-object v24, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v24

    .line 1763
    const/4 v2, 0x1

    :try_start_0
    invoke-static {v2}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 1764
    sget-object v21, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 1765
    .local v21, "pp":[Landroid/view/MotionEvent$PointerProperties;
    const/4 v2, 0x0

    aget-object v2, v21, v2

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    .line 1766
    const/4 v2, 0x0

    aget-object v2, v21, v2

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 1768
    sget-object v22, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 1769
    .local v22, "pc":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v2, 0x0

    aget-object v2, v22, v2

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    .line 1770
    const/4 v2, 0x0

    aget-object v2, v22, v2

    move/from16 v0, p5

    iput v0, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 1771
    const/4 v2, 0x0

    aget-object v2, v22, v2

    move/from16 v0, p6

    iput v0, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 1772
    const/4 v2, 0x0

    aget-object v2, v22, v2

    move/from16 v0, p7

    iput v0, v2, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 1773
    const/4 v2, 0x0

    aget-object v2, v22, v2

    move/from16 v0, p8

    iput v0, v2, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 1775
    move-object/from16 v0, v23

    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/32 v8, 0xf4240

    mul-long v16, p0, v8

    const-wide/32 v8, 0xf4240

    mul-long v18, p2, v8

    const/16 v20, 0x1

    move/from16 v4, p13

    move/from16 v6, p4

    move/from16 v8, p14

    move/from16 v9, p9

    move/from16 v11, p10

    move/from16 v14, p11

    move/from16 v15, p12

    invoke-static/range {v2 .. v22}, Landroid/view/MotionEvent;->nativeInitialize(JIIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)J

    move-result-wide v2

    move-object/from16 v0, v23

    iput-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 1780
    monitor-exit v24

    return-object v23

    .line 1781
    .end local v21    # "pp":[Landroid/view/MotionEvent$PointerProperties;
    .end local v22    # "pc":[Landroid/view/MotionEvent$PointerCoords;
    :catchall_0
    move-exception v2

    monitor-exit v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static obtain(JJIFFI)Landroid/view/MotionEvent;
    .locals 14
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .param p5, "x"    # F
    .param p6, "y"    # F
    .param p7, "metaState"    # I

    .prologue
    .line 1843
    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v9, p7

    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(JJIIFFFFIFFII)Landroid/view/MotionEvent;
    .locals 14
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .param p5, "pointerCount"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "pressure"    # F
    .param p9, "size"    # F
    .param p10, "metaState"    # I
    .param p11, "xPrecision"    # F
    .param p12, "yPrecision"    # F
    .param p13, "deviceId"    # I
    .param p14, "edgeFlags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1822
    move-wide v0, p0

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    move/from16 v12, p13

    move/from16 v13, p14

    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;
    .locals 20
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .param p5, "pointerCount"    # I
    .param p6, "pointerIds"    # [I
    .param p7, "pointerCoords"    # [Landroid/view/MotionEvent$PointerCoords;
    .param p8, "metaState"    # I
    .param p9, "xPrecision"    # F
    .param p10, "yPrecision"    # F
    .param p11, "deviceId"    # I
    .param p12, "edgeFlags"    # I
    .param p13, "source"    # I
    .param p14, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1686
    sget-object v19, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v19

    .line 1687
    :try_start_0
    invoke-static/range {p5 .. p5}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 1688
    sget-object v8, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 1689
    .local v8, "pp":[Landroid/view/MotionEvent$PointerProperties;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, p5

    if-ge v0, v1, :cond_0

    .line 1690
    aget-object v2, v8, v18

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    .line 1691
    aget-object v2, v8, v18

    aget v3, p6, v18

    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 1689
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 1693
    :cond_0
    const/4 v11, 0x0

    move-wide/from16 v2, p0

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    monitor-exit v19

    return-object v2

    .line 1696
    .end local v8    # "pp":[Landroid/view/MotionEvent$PointerProperties;
    .end local v18    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;
    .locals 24
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .param p5, "pointerCount"    # I
    .param p6, "pointerProperties"    # [Landroid/view/MotionEvent$PointerProperties;
    .param p7, "pointerCoords"    # [Landroid/view/MotionEvent$PointerCoords;
    .param p8, "metaState"    # I
    .param p9, "buttonState"    # I
    .param p10, "xPrecision"    # F
    .param p11, "yPrecision"    # F
    .param p12, "deviceId"    # I
    .param p13, "edgeFlags"    # I
    .param p14, "source"    # I
    .param p15, "flags"    # I

    .prologue
    .line 1624
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v23

    .line 1625
    .local v23, "ev":Landroid/view/MotionEvent;
    move-object/from16 v0, v23

    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/32 v4, 0xf4240

    mul-long v16, p0, v4

    const-wide/32 v4, 0xf4240

    mul-long v18, p2, v4

    move/from16 v4, p12

    move/from16 v5, p14

    move/from16 v6, p4

    move/from16 v7, p15

    move/from16 v8, p13

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v14, p10

    move/from16 v15, p11

    move/from16 v20, p5

    move-object/from16 v21, p6

    move-object/from16 v22, p7

    invoke-static/range {v2 .. v22}, Landroid/view/MotionEvent;->nativeInitialize(JIIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)J

    move-result-wide v2

    move-object/from16 v0, v23

    iput-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 1630
    return-object v23
.end method

.method public static obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;
    .locals 24
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .param p5, "pointerCount"    # I
    .param p6, "pointerProperties"    # [Landroid/view/MotionEvent$PointerProperties;
    .param p7, "pointerCoords"    # [Landroid/view/MotionEvent$PointerCoords;
    .param p8, "metaState"    # I
    .param p9, "buttonState"    # I
    .param p10, "displayId"    # I
    .param p11, "xPrecision"    # F
    .param p12, "yPrecision"    # F
    .param p13, "deviceId"    # I
    .param p14, "edgeFlags"    # I
    .param p15, "source"    # I
    .param p16, "flags"    # I

    .prologue
    .line 1642
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v23

    .line 1643
    .local v23, "ev":Landroid/view/MotionEvent;
    move-object/from16 v0, v23

    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/32 v4, 0xf4240

    mul-long v16, p0, v4

    const-wide/32 v4, 0xf4240

    mul-long v18, p2, v4

    move/from16 v4, p13

    move/from16 v5, p15

    move/from16 v6, p4

    move/from16 v7, p16

    move/from16 v8, p14

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v20, p5

    move-object/from16 v21, p6

    move-object/from16 v22, p7

    invoke-static/range {v2 .. v22}, Landroid/view/MotionEvent;->nativeInitialize(JIIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)J

    move-result-wide v2

    move-object/from16 v0, v23

    iput-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 1648
    return-object v23
.end method

.method public static obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 6
    .param p0, "other"    # Landroid/view/MotionEvent;

    .prologue
    .line 1851
    if-nez p0, :cond_0

    .line 1852
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "other motion event must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1855
    :cond_0
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    .line 1856
    .local v0, "ev":Landroid/view/MotionEvent;
    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    iget-wide v4, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v1, 0x1

    invoke-static {v2, v3, v4, v5, v1}, Landroid/view/MotionEvent;->nativeCopy(JJZ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 1858
    iget-boolean v1, p0, Landroid/view/MotionEvent;->mNeedWindowOffset:Z

    if-eqz v1, :cond_1

    .line 1859
    iget-boolean v1, p0, Landroid/view/MotionEvent;->mNeedWindowOffset:Z

    iput-boolean v1, v0, Landroid/view/MotionEvent;->mNeedWindowOffset:Z

    .line 1860
    iget v1, p0, Landroid/view/MotionEvent;->mWindowOffsetX:I

    iput v1, v0, Landroid/view/MotionEvent;->mWindowOffsetX:I

    .line 1861
    iget v1, p0, Landroid/view/MotionEvent;->mWindowOffsetY:I

    iput v1, v0, Landroid/view/MotionEvent;->mWindowOffsetY:I

    .line 1862
    iget v1, p0, Landroid/view/MotionEvent;->mScaleFactorX:F

    iput v1, v0, Landroid/view/MotionEvent;->mScaleFactorX:F

    .line 1863
    iget v1, p0, Landroid/view/MotionEvent;->mScaleFactorY:F

    iput v1, v0, Landroid/view/MotionEvent;->mScaleFactorY:F

    .line 1864
    iget v1, p0, Landroid/view/MotionEvent;->mScaledWindowOffsetX:I

    iput v1, v0, Landroid/view/MotionEvent;->mScaledWindowOffsetX:I

    .line 1865
    iget v1, p0, Landroid/view/MotionEvent;->mScaledWindowOffsetY:I

    iput v1, v0, Landroid/view/MotionEvent;->mScaledWindowOffsetY:I

    .line 1871
    :goto_0
    return-object v0

    .line 1867
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/MotionEvent;->mNeedWindowOffset:Z

    goto :goto_0
.end method

.method public static obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 6
    .param p0, "other"    # Landroid/view/MotionEvent;

    .prologue
    .line 1879
    if-nez p0, :cond_0

    .line 1880
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "other motion event must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1883
    :cond_0
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    .line 1884
    .local v0, "ev":Landroid/view/MotionEvent;
    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    iget-wide v4, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v1, 0x0

    invoke-static {v2, v3, v4, v5, v1}, Landroid/view/MotionEvent;->nativeCopy(JJZ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 1885
    return-object v0
.end method

.method public static toolTypeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "toolType"    # I

    .prologue
    .line 3664
    sget-object v1, Landroid/view/MotionEvent;->TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3665
    .local v0, "symbolicName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "symbolicName":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "symbolicName":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final addBatch(JFFFFI)V
    .locals 7
    .param p1, "eventTime"    # J
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "pressure"    # F
    .param p6, "size"    # F
    .param p7, "metaState"    # I

    .prologue
    .line 3249
    sget-object v6, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v6

    .line 3250
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 3251
    sget-object v4, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 3252
    .local v4, "pc":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v0, 0x0

    aget-object v0, v4, v0

    invoke-virtual {v0}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    .line 3253
    const/4 v0, 0x0

    aget-object v0, v4, v0

    iput p3, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3254
    const/4 v0, 0x0

    aget-object v0, v4, v0

    iput p4, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 3255
    const/4 v0, 0x0

    aget-object v0, v4, v0

    iput p5, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 3256
    const/4 v0, 0x0

    aget-object v0, v4, v0

    iput p6, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 3258
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, p1

    move v5, p7

    invoke-static/range {v0 .. v5}, Landroid/view/MotionEvent;->nativeAddBatch(JJ[Landroid/view/MotionEvent$PointerCoords;I)V

    .line 3259
    monitor-exit v6

    .line 3260
    return-void

    .line 3259
    .end local v4    # "pc":[Landroid/view/MotionEvent$PointerCoords;
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final addBatch(J[Landroid/view/MotionEvent$PointerCoords;I)V
    .locals 7
    .param p1, "eventTime"    # J
    .param p3, "pointerCoords"    # [Landroid/view/MotionEvent$PointerCoords;
    .param p4, "metaState"    # I

    .prologue
    .line 3274
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, p1

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/view/MotionEvent;->nativeAddBatch(JJ[Landroid/view/MotionEvent$PointerCoords;I)V

    .line 3275
    return-void
.end method

.method public final addBatch(Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 3290
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v2, v3}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result v8

    .line 3291
    .local v8, "action":I
    const/4 v2, 0x2

    if-eq v8, v2, :cond_0

    const/4 v2, 0x7

    if-eq v8, v2, :cond_0

    .line 3292
    const/4 v2, 0x0

    .line 3335
    :goto_0
    return v2

    .line 3294
    :cond_0
    move-object/from16 v0, p1

    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v2, v3}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result v2

    if-eq v8, v2, :cond_1

    .line 3295
    const/4 v2, 0x0

    goto :goto_0

    .line 3298
    :cond_1
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v2, v3}, Landroid/view/MotionEvent;->nativeGetDeviceId(J)I

    move-result v2

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/view/MotionEvent;->mNativePtr:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Landroid/view/MotionEvent;->nativeGetDeviceId(J)I

    move-result v3

    if-ne v2, v3, :cond_2

    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v2, v3}, Landroid/view/MotionEvent;->nativeGetSource(J)I

    move-result v2

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/view/MotionEvent;->mNativePtr:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Landroid/view/MotionEvent;->nativeGetSource(J)I

    move-result v3

    if-ne v2, v3, :cond_2

    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v2, v3}, Landroid/view/MotionEvent;->nativeGetFlags(J)I

    move-result v2

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/view/MotionEvent;->mNativePtr:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Landroid/view/MotionEvent;->nativeGetFlags(J)I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 3301
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 3304
    :cond_3
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v2, v3}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v13

    .line 3305
    .local v13, "pointerCount":I
    move-object/from16 v0, p1

    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v2, v3}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v2

    if-eq v13, v2, :cond_4

    .line 3306
    const/4 v2, 0x0

    goto :goto_0

    .line 3309
    :cond_4
    sget-object v15, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v15

    .line 3310
    const/4 v2, 0x2

    :try_start_0
    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 3311
    sget-object v14, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 3312
    .local v14, "pp":[Landroid/view/MotionEvent$PointerProperties;
    sget-object v6, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 3314
    .local v6, "pc":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v13, :cond_6

    .line 3315
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    const/16 v16, 0x0

    aget-object v16, v14, v16

    move-object/from16 v0, v16

    invoke-static {v2, v3, v12, v0}, Landroid/view/MotionEvent;->nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V

    .line 3316
    move-object/from16 v0, p1

    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    const/16 v16, 0x1

    aget-object v16, v14, v16

    move-object/from16 v0, v16

    invoke-static {v2, v3, v12, v0}, Landroid/view/MotionEvent;->nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V

    .line 3317
    const/4 v2, 0x0

    aget-object v2, v14, v2

    const/4 v3, 0x1

    aget-object v3, v14, v3

    # invokes: Landroid/view/MotionEvent$PointerProperties;->equals(Landroid/view/MotionEvent$PointerProperties;)Z
    invoke-static {v2, v3}, Landroid/view/MotionEvent$PointerProperties;->access$000(Landroid/view/MotionEvent$PointerProperties;Landroid/view/MotionEvent$PointerProperties;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 3318
    const/4 v2, 0x0

    monitor-exit v15

    goto/16 :goto_0

    .line 3334
    .end local v6    # "pc":[Landroid/view/MotionEvent$PointerCoords;
    .end local v12    # "i":I
    .end local v14    # "pp":[Landroid/view/MotionEvent$PointerProperties;
    :catchall_0
    move-exception v2

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3314
    .restart local v6    # "pc":[Landroid/view/MotionEvent$PointerCoords;
    .restart local v12    # "i":I
    .restart local v14    # "pp":[Landroid/view/MotionEvent$PointerProperties;
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 3322
    :cond_6
    :try_start_1
    move-object/from16 v0, p1

    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v2, v3}, Landroid/view/MotionEvent;->nativeGetMetaState(J)I

    move-result v7

    .line 3323
    .local v7, "metaState":I
    move-object/from16 v0, p1

    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v2, v3}, Landroid/view/MotionEvent;->nativeGetHistorySize(J)I

    move-result v11

    .line 3324
    .local v11, "historySize":I
    const/4 v9, 0x0

    .local v9, "h":I
    :goto_2
    if-gt v9, v11, :cond_9

    .line 3325
    if-ne v9, v11, :cond_7

    const/high16 v10, -0x80000000

    .line 3327
    .local v10, "historyPos":I
    :goto_3
    const/4 v12, 0x0

    :goto_4
    if-ge v12, v13, :cond_8

    .line 3328
    move-object/from16 v0, p1

    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    aget-object v16, v6, v12

    move-object/from16 v0, v16

    invoke-static {v2, v3, v12, v10, v0}, Landroid/view/MotionEvent;->nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V

    .line 3327
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .end local v10    # "historyPos":I
    :cond_7
    move v10, v9

    .line 3325
    goto :goto_3

    .line 3331
    .restart local v10    # "historyPos":I
    :cond_8
    move-object/from16 v0, p1

    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v2, v3, v10}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v4

    .line 3332
    .local v4, "eventTimeNanos":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static/range {v2 .. v7}, Landroid/view/MotionEvent;->nativeAddBatch(JJ[Landroid/view/MotionEvent$PointerCoords;I)V

    .line 3324
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 3334
    .end local v4    # "eventTimeNanos":J
    .end local v10    # "historyPos":I
    :cond_9
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3335
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public final cancel()V
    .locals 1

    .prologue
    .line 3710
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 3711
    return-void
.end method

.method public final clampNoHistory(FFFF)Landroid/view/MotionEvent;
    .locals 29
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 3369
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v25

    .line 3370
    .local v25, "ev":Landroid/view/MotionEvent;
    sget-object v27, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v27

    .line 3371
    :try_start_0
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v4, v5}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v22

    .line 3373
    .local v22, "pointerCount":I
    invoke-static/range {v22 .. v22}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 3374
    sget-object v23, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 3375
    .local v23, "pp":[Landroid/view/MotionEvent$PointerProperties;
    sget-object v24, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 3377
    .local v24, "pc":[Landroid/view/MotionEvent$PointerCoords;
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_0
    move/from16 v0, v26

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    .line 3378
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/view/MotionEvent;->mNativePtr:J

    aget-object v6, v23, v26

    move/from16 v0, v26

    invoke-static {v4, v5, v0, v6}, Landroid/view/MotionEvent;->nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V

    .line 3379
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/view/MotionEvent;->mNativePtr:J

    const/high16 v6, -0x80000000

    aget-object v7, v24, v26

    move/from16 v0, v26

    invoke-static {v4, v5, v0, v6, v7}, Landroid/view/MotionEvent;->nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V

    .line 3380
    aget-object v4, v24, v26

    aget-object v5, v24, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    move/from16 v0, p1

    move/from16 v1, p3

    invoke-static {v5, v0, v1}, Landroid/view/MotionEvent;->clamp(FFF)F

    move-result v5

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3381
    aget-object v4, v24, v26

    aget-object v5, v24, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    move/from16 v0, p2

    move/from16 v1, p4

    invoke-static {v5, v0, v1}, Landroid/view/MotionEvent;->clamp(FFF)F

    move-result v5

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 3377
    add-int/lit8 v26, v26, 0x1

    goto :goto_0

    .line 3383
    :cond_0
    move-object/from16 v0, v25

    iget-wide v4, v0, Landroid/view/MotionEvent;->mNativePtr:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v6, v7}, Landroid/view/MotionEvent;->nativeGetDeviceId(J)I

    move-result v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v8, v9}, Landroid/view/MotionEvent;->nativeGetSource(J)I

    move-result v7

    move-object/from16 v0, p0

    iget-wide v8, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v8, v9}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result v8

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v10, v11}, Landroid/view/MotionEvent;->nativeGetFlags(J)I

    move-result v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v10, v11}, Landroid/view/MotionEvent;->nativeGetEdgeFlags(J)I

    move-result v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v12, v13}, Landroid/view/MotionEvent;->nativeGetMetaState(J)I

    move-result v11

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v12, v13}, Landroid/view/MotionEvent;->nativeGetButtonState(J)I

    move-result v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v14, v15}, Landroid/view/MotionEvent;->nativeGetDisplayId(J)I

    move-result v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v14, v15}, Landroid/view/MotionEvent;->nativeGetXOffset(J)F

    move-result v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/MotionEvent;->mNativePtr:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Landroid/view/MotionEvent;->nativeGetYOffset(J)F

    move-result v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/MotionEvent;->mNativePtr:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Landroid/view/MotionEvent;->nativeGetXPrecision(J)F

    move-result v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/MotionEvent;->mNativePtr:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Landroid/view/MotionEvent;->nativeGetYPrecision(J)F

    move-result v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/MotionEvent;->mNativePtr:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Landroid/view/MotionEvent;->nativeGetDownTimeNanos(J)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/MotionEvent;->mNativePtr:J

    move-wide/from16 v20, v0

    const/high16 v28, -0x80000000

    move-wide/from16 v0, v20

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v20

    invoke-static/range {v4 .. v24}, Landroid/view/MotionEvent;->nativeInitialize(JIIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)J

    move-result-wide v4

    move-object/from16 v0, v25

    iput-wide v4, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3393
    monitor-exit v27

    return-object v25

    .line 3394
    .end local v22    # "pointerCount":I
    .end local v23    # "pp":[Landroid/view/MotionEvent$PointerProperties;
    .end local v24    # "pc":[Landroid/view/MotionEvent$PointerCoords;
    .end local v26    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v27
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public bridge synthetic copy()Landroid/view/InputEvent;
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public copy()Landroid/view/MotionEvent;
    .locals 1

    .prologue
    .line 1891
    invoke-static {p0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 1567
    :try_start_0
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1568
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeDispose(J)V

    .line 1569
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1572
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1574
    return-void

    .line 1572
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final findPointerIndex(I)I
    .locals 2
    .param p1, "pointerId"    # I

    .prologue
    .line 2271
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeFindPointerIndex(JI)I

    move-result v0

    return v0
.end method

.method public final getAction()I
    .locals 2

    .prologue
    .line 1954
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result v0

    return v0
.end method

.method public final getActionButton()I
    .locals 2

    .prologue
    .line 2563
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetActionButton(J)I

    move-result v0

    return v0
.end method

.method public final getActionIndex()I
    .locals 2

    .prologue
    .line 1977
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public final getActionMasked()I
    .locals 2

    .prologue
    .line 1963
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final getAdjustedRawXByWindowOffset()F
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2706
    iget-wide v2, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/high16 v1, -0x80000000

    invoke-static {v2, v3, v4, v4, v1}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(JIII)F

    move-result v0

    .line 2707
    .local v0, "rawX":F
    iget v1, p0, Landroid/view/MotionEvent;->mScaleFactorX:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 2708
    iget v1, p0, Landroid/view/MotionEvent;->mScaledWindowOffsetX:I

    int-to-float v1, v1

    sub-float v1, v0, v1

    iget v2, p0, Landroid/view/MotionEvent;->mWindowOffsetX:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Landroid/view/MotionEvent;->mScaleFactorX:F

    mul-float v0, v1, v2

    .line 2712
    :goto_0
    return v0

    .line 2710
    :cond_0
    iget v1, p0, Landroid/view/MotionEvent;->mWindowOffsetX:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method public final getAdjustedRawYByWindowOffset()F
    .locals 6

    .prologue
    .line 2717
    iget-wide v2, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/high16 v5, -0x80000000

    invoke-static {v2, v3, v1, v4, v5}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(JIII)F

    move-result v0

    .line 2718
    .local v0, "rawY":F
    iget v1, p0, Landroid/view/MotionEvent;->mScaleFactorY:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 2719
    iget v1, p0, Landroid/view/MotionEvent;->mScaledWindowOffsetY:I

    int-to-float v1, v1

    sub-float v1, v0, v1

    iget v2, p0, Landroid/view/MotionEvent;->mWindowOffsetY:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Landroid/view/MotionEvent;->mScaleFactorY:F

    mul-float v0, v1, v2

    .line 2723
    :goto_0
    return v0

    .line 2721
    :cond_0
    iget v1, p0, Landroid/view/MotionEvent;->mWindowOffsetY:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method public final getAxisValue(I)F
    .locals 4
    .param p1, "axis"    # I

    .prologue
    .line 2181
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, p1, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getAxisValue(II)F
    .locals 3
    .param p1, "axis"    # I
    .param p2, "pointerIndex"    # I

    .prologue
    .line 2481
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p1, p2, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getButtonState()I
    .locals 2

    .prologue
    .line 2541
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetButtonState(J)I

    move-result v0

    return v0
.end method

.method public final getDeviceId()I
    .locals 2

    .prologue
    .line 1931
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetDeviceId(J)I

    move-result v0

    return v0
.end method

.method public final getDisplayId()I
    .locals 2

    .prologue
    .line 2582
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetDisplayId(J)I

    move-result v0

    return v0
.end method

.method public final getDownTime()J
    .locals 4

    .prologue
    .line 2037
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetDownTimeNanos(J)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final getEdgeFlags()I
    .locals 2

    .prologue
    .line 3176
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetEdgeFlags(J)I

    move-result v0

    return v0
.end method

.method public final getEventTime()J
    .locals 4

    .prologue
    .line 2059
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, v2}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final getEventTimeNano()J
    .locals 3

    .prologue
    .line 2078
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, v2}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getFlags()I
    .locals 2

    .prologue
    .line 2001
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetFlags(J)I

    move-result v0

    return v0
.end method

.method public final getHistoricalAxisValue(II)F
    .locals 3
    .param p1, "axis"    # I
    .param p2, "pos"    # I

    .prologue
    .line 2958
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalAxisValue(III)F
    .locals 2
    .param p1, "axis"    # I
    .param p2, "pointerIndex"    # I
    .param p3, "pos"    # I

    .prologue
    .line 3139
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalEventTime(I)J
    .locals 4
    .param p1, "pos"    # I

    .prologue
    .line 2780
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final getHistoricalEventTimeNano(I)J
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 2806
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getHistoricalOrientation(I)F
    .locals 4
    .param p1, "pos"    # I

    .prologue
    .line 2941
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalOrientation(II)F
    .locals 3
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    .prologue
    .line 3120
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/16 v2, 0x8

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V
    .locals 2
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I
    .param p3, "outPointerCoords"    # Landroid/view/MotionEvent$PointerCoords;

    .prologue
    .line 3160
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/view/MotionEvent;->nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V

    .line 3161
    return-void
.end method

.method public final getHistoricalPressure(I)F
    .locals 4
    .param p1, "pos"    # I

    .prologue
    .line 2851
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalPressure(II)F
    .locals 3
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    .prologue
    .line 3012
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalSize(I)F
    .locals 4
    .param p1, "pos"    # I

    .prologue
    .line 2866
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalSize(II)F
    .locals 3
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    .prologue
    .line 3030
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x3

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalToolMajor(I)F
    .locals 4
    .param p1, "pos"    # I

    .prologue
    .line 2911
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalToolMajor(II)F
    .locals 3
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    .prologue
    .line 3084
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x6

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalToolMinor(I)F
    .locals 4
    .param p1, "pos"    # I

    .prologue
    .line 2926
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalToolMinor(II)F
    .locals 3
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    .prologue
    .line 3102
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x7

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalTouchMajor(I)F
    .locals 4
    .param p1, "pos"    # I

    .prologue
    .line 2881
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalTouchMajor(II)F
    .locals 3
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    .prologue
    .line 3048
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x4

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalTouchMinor(I)F
    .locals 4
    .param p1, "pos"    # I

    .prologue
    .line 2896
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalTouchMinor(II)F
    .locals 3
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    .prologue
    .line 3066
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x5

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalX(I)F
    .locals 3
    .param p1, "pos"    # I

    .prologue
    const/4 v2, 0x0

    .line 2821
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, v2, v2, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalX(II)F
    .locals 3
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    .prologue
    .line 2976
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalY(I)F
    .locals 4
    .param p1, "pos"    # I

    .prologue
    .line 2836
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalY(II)F
    .locals 3
    .param p1, "pointerIndex"    # I
    .param p2, "pos"    # I

    .prologue
    .line 2994
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistorySize()I
    .locals 2

    .prologue
    .line 2760
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetHistorySize(J)I

    move-result v0

    return v0
.end method

.method public final getMetaState()I
    .locals 2

    .prologue
    .line 2524
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetMetaState(J)I

    move-result v0

    return v0
.end method

.method public final getOrientation()F
    .locals 5

    .prologue
    .line 2168
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getOrientation(I)F
    .locals 4
    .param p1, "pointerIndex"    # I

    .prologue
    .line 2449
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/16 v2, 0x8

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getPalm()F
    .locals 5

    .prologue
    .line 2191
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/16 v2, 0x30

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getPalm(I)F
    .locals 4
    .param p1, "pointerIndex"    # I

    .prologue
    .line 2459
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/16 v2, 0x30

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V
    .locals 3
    .param p1, "pointerIndex"    # I
    .param p2, "outPointerCoords"    # Landroid/view/MotionEvent$PointerCoords;

    .prologue
    .line 2495
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p1, v2, p2}, Landroid/view/MotionEvent;->nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V

    .line 2496
    return-void
.end method

.method public final getPointerCount()I
    .locals 2

    .prologue
    .line 2229
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v0

    return v0
.end method

.method public final getPointerId(I)I
    .locals 2
    .param p1, "pointerIndex"    # I

    .prologue
    .line 2241
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeGetPointerId(JI)I

    move-result v0

    return v0
.end method

.method public final getPointerIdBits()I
    .locals 6

    .prologue
    .line 3402
    const/4 v1, 0x0

    .line 3403
    .local v1, "idBits":I
    iget-wide v4, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v4, v5}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v2

    .line 3404
    .local v2, "pointerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 3405
    const/4 v3, 0x1

    iget-wide v4, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v4, v5, v0}, Landroid/view/MotionEvent;->nativeGetPointerId(JI)I

    move-result v4

    shl-int/2addr v3, v4

    or-int/2addr v1, v3

    .line 3404
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3407
    :cond_0
    return v1
.end method

.method public final getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V
    .locals 2
    .param p1, "pointerIndex"    # I
    .param p2, "outPointerProperties"    # Landroid/view/MotionEvent$PointerProperties;

    .prologue
    .line 2510
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V

    .line 2511
    return-void
.end method

.method public final getPredictedX(I)F
    .locals 5
    .param p1, "pointerIndex"    # I

    .prologue
    const/high16 v4, -0x80000000

    .line 2317
    iget-wide v2, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/16 v1, 0x33

    invoke-static {v2, v3, v1, p1, v4}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    .line 2318
    .local v0, "predictedXOffset":F
    iget-wide v2, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v1, 0x0

    invoke-static {v2, v3, v1, p1, v4}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v1

    add-float/2addr v1, v0

    return v1
.end method

.method public final getPredictedY(I)F
    .locals 5
    .param p1, "pointerIndex"    # I

    .prologue
    const/high16 v4, -0x80000000

    .line 2333
    iget-wide v2, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/16 v1, 0x34

    invoke-static {v2, v3, v1, p1, v4}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    .line 2334
    .local v0, "predictedYOffset":F
    iget-wide v2, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v1, 0x1

    invoke-static {v2, v3, v1, p1, v4}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v1

    add-float/2addr v1, v0

    return v1
.end method

.method public final getPressure()F
    .locals 5

    .prologue
    .line 2108
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getPressure(I)F
    .locals 4
    .param p1, "pointerIndex"    # I

    .prologue
    .line 2352
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x2

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getRawX()F
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2603
    iget-boolean v0, p0, Landroid/view/MotionEvent;->mNeedWindowOffset:Z

    if-eqz v0, :cond_0

    .line 2604
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAdjustedRawXByWindowOffset()F

    move-result v0

    .line 2606
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, v3, v3, v2}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(JIII)F

    move-result v0

    goto :goto_0
.end method

.method public final getRawXForScaledWindow()F
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2614
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, v3, v3, v2}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(JIII)F

    move-result v0

    iget v1, p0, Landroid/view/MotionEvent;->mDssScale:F

    div-float/2addr v0, v1

    return v0
.end method

.method public final getRawY()F
    .locals 5

    .prologue
    .line 2632
    iget-boolean v0, p0, Landroid/view/MotionEvent;->mNeedWindowOffset:Z

    if-eqz v0, :cond_0

    .line 2633
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAdjustedRawYByWindowOffset()F

    move-result v0

    .line 2635
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(JIII)F

    move-result v0

    goto :goto_0
.end method

.method public final getRawYForScaledWindow()F
    .locals 5

    .prologue
    .line 2654
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(JIII)F

    move-result v0

    iget v1, p0, Landroid/view/MotionEvent;->mDssScale:F

    div-float/2addr v0, v1

    return v0
.end method

.method public final getSize()F
    .locals 5

    .prologue
    .line 2118
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getSize(I)F
    .locals 4
    .param p1, "pointerIndex"    # I

    .prologue
    .line 2370
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x3

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getSource()I
    .locals 2

    .prologue
    .line 1937
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetSource(J)I

    move-result v0

    return v0
.end method

.method public final getSumSize()Ljava/lang/Float;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2208
    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public final getSurfaceSize(I)F
    .locals 1
    .param p1, "pointerIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2220
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public final getToolMajor()F
    .locals 5

    .prologue
    .line 2148
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getToolMajor(I)F
    .locals 4
    .param p1, "pointerIndex"    # I

    .prologue
    .line 2414
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x6

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getToolMinor()F
    .locals 5

    .prologue
    .line 2158
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getToolMinor(I)F
    .locals 4
    .param p1, "pointerIndex"    # I

    .prologue
    .line 2430
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x7

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getToolType(I)I
    .locals 2
    .param p1, "pointerIndex"    # I

    .prologue
    .line 2259
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeGetToolType(JI)I

    move-result v0

    return v0
.end method

.method public final getTouchMajor()F
    .locals 5

    .prologue
    .line 2128
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getTouchMajor(I)F
    .locals 4
    .param p1, "pointerIndex"    # I

    .prologue
    .line 2384
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x4

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getTouchMinor()F
    .locals 5

    .prologue
    .line 2138
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getTouchMinor(I)F
    .locals 4
    .param p1, "pointerIndex"    # I

    .prologue
    .line 2398
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x5

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getX()F
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2088
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, v3, v3, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getX(I)F
    .locals 4
    .param p1, "pointerIndex"    # I

    .prologue
    .line 2286
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getXPrecision()F
    .locals 2

    .prologue
    .line 2736
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetXPrecision(J)F

    move-result v0

    return v0
.end method

.method public final getY()F
    .locals 5

    .prologue
    .line 2098
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getY(I)F
    .locals 4
    .param p1, "pointerIndex"    # I

    .prologue
    .line 2301
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x1

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getYPrecision()F
    .locals 2

    .prologue
    .line 2748
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetYPrecision(J)F

    move-result v0

    return v0
.end method

.method public final isButtonPressed(I)Z
    .locals 2
    .param p1, "button"    # I

    .prologue
    const/4 v0, 0x0

    .line 3682
    if-nez p1, :cond_1

    .line 3685
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    and-int/2addr v1, p1

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final isTainted()Z
    .locals 2

    .prologue
    .line 2007
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    .line 2008
    .local v0, "flags":I
    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isTargetAccessibilityFocus()Z
    .locals 2

    .prologue
    .line 2020
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    .line 2021
    .local v0, "flags":I
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isTouchEvent()Z
    .locals 2

    .prologue
    .line 1992
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeIsTouchEvent(J)Z

    move-result v0

    return v0
.end method

.method public final isWithinBoundsNoHistory(FFFF)Z
    .locals 9
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v8, -0x80000000

    .line 3344
    iget-wide v6, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v6, v7}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v1

    .line 3345
    .local v1, "pointerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 3346
    iget-wide v6, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v6, v7, v4, v0, v8}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v2

    .line 3347
    .local v2, "x":F
    iget-wide v6, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v6, v7, v5, v0, v8}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v3

    .line 3348
    .local v3, "y":F
    cmpg-float v6, v2, p1

    if-ltz v6, :cond_0

    cmpl-float v6, v2, p3

    if-gtz v6, :cond_0

    cmpg-float v6, v3, p2

    if-ltz v6, :cond_0

    cmpl-float v6, v3, p4

    if-lez v6, :cond_1

    .line 3352
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_0
    :goto_1
    return v4

    .line 3345
    .restart local v2    # "x":F
    .restart local v3    # "y":F
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_2
    move v4, v5

    .line 3352
    goto :goto_1
.end method

.method public final offsetLocation(FF)V
    .locals 2
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .prologue
    const/4 v1, 0x0

    .line 3202
    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    cmpl-float v0, p2, v1

    if-eqz v0, :cond_1

    .line 3203
    :cond_0
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeOffsetLocation(JFF)V

    .line 3205
    :cond_1
    return-void
.end method

.method public final recycle()V
    .locals 3

    .prologue
    .line 1900
    invoke-super {p0}, Landroid/view/InputEvent;->recycle()V

    .line 1902
    sget-object v1, Landroid/view/MotionEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1903
    :try_start_0
    sget v0, Landroid/view/MotionEvent;->gRecyclerUsed:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 1904
    sget v0, Landroid/view/MotionEvent;->gRecyclerUsed:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/view/MotionEvent;->gRecyclerUsed:I

    .line 1905
    sget-object v0, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    iput-object v0, p0, Landroid/view/MotionEvent;->mNext:Landroid/view/MotionEvent;

    .line 1906
    sput-object p0, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    .line 1908
    :cond_0
    monitor-exit v1

    .line 1909
    return-void

    .line 1908
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final scale(F)V
    .locals 2
    .param p1, "scale"    # F

    .prologue
    .line 1923
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1924
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeScale(JF)V

    .line 1926
    :cond_0
    return-void
.end method

.method public final setAction(I)V
    .locals 2
    .param p1, "action"    # I

    .prologue
    .line 3193
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetAction(JI)V

    .line 3194
    return-void
.end method

.method public final setActionButton(I)V
    .locals 2
    .param p1, "button"    # I

    .prologue
    .line 2573
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetActionButton(JI)V

    .line 2574
    return-void
.end method

.method public final setButtonState(I)V
    .locals 2
    .param p1, "buttonState"    # I

    .prologue
    .line 2551
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetButtonState(JI)V

    .line 2552
    return-void
.end method

.method public final setDisplayId(I)V
    .locals 2
    .param p1, "displayId"    # I

    .prologue
    .line 2589
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetDisplayId(JI)V

    .line 2590
    return-void
.end method

.method public final setDownTime(J)V
    .locals 5
    .param p1, "downTime"    # J

    .prologue
    .line 2047
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, p1

    invoke-static {v0, v1, v2, v3}, Landroid/view/MotionEvent;->nativeSetDownTimeNanos(JJ)V

    .line 2048
    return-void
.end method

.method public setDssScale(F)V
    .locals 0
    .param p1, "dssScale"    # F

    .prologue
    .line 2642
    iput p1, p0, Landroid/view/MotionEvent;->mDssScale:F

    .line 2645
    return-void
.end method

.method public final setEdgeFlags(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 3186
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetEdgeFlags(JI)V

    .line 3187
    return-void
.end method

.method public final setLocation(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 3215
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 3216
    .local v0, "oldX":F
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 3217
    .local v1, "oldY":F
    sub-float v2, p1, v0

    sub-float v3, p2, v1

    invoke-virtual {p0, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 3218
    return-void
.end method

.method public setScale(FF)V
    .locals 2
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 2669
    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    cmpl-float v0, p2, v1

    if-eqz v0, :cond_1

    .line 2670
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/MotionEvent;->mNeedWindowOffset:Z

    .line 2674
    :goto_0
    iput p1, p0, Landroid/view/MotionEvent;->mScaleFactorX:F

    .line 2675
    iput p2, p0, Landroid/view/MotionEvent;->mScaleFactorY:F

    .line 2677
    return-void

    .line 2672
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/MotionEvent;->mNeedWindowOffset:Z

    goto :goto_0
.end method

.method public setScaledWindowOffset(II)V
    .locals 0
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I

    .prologue
    .line 2682
    iput p1, p0, Landroid/view/MotionEvent;->mScaledWindowOffsetX:I

    .line 2683
    iput p2, p0, Landroid/view/MotionEvent;->mScaledWindowOffsetY:I

    .line 2685
    return-void
.end method

.method public final setSource(I)V
    .locals 2
    .param p1, "source"    # I

    .prologue
    .line 1943
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetSource(JI)I

    .line 1944
    return-void
.end method

.method public final setTainted(Z)V
    .locals 4
    .param p1, "tainted"    # Z

    .prologue
    .line 2014
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    .line 2015
    .local v0, "flags":I
    iget-wide v2, p0, Landroid/view/MotionEvent;->mNativePtr:J

    if-eqz p1, :cond_0

    const/high16 v1, -0x80000000

    or-int/2addr v1, v0

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/view/MotionEvent;->nativeSetFlags(JI)V

    .line 2016
    return-void

    .line 2015
    :cond_0
    const v1, 0x7fffffff

    and-int/2addr v1, v0

    goto :goto_0
.end method

.method public final setTargetAccessibilityFocus(Z)V
    .locals 4
    .param p1, "targetsFocus"    # Z

    .prologue
    .line 2026
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    .line 2027
    .local v0, "flags":I
    iget-wide v2, p0, Landroid/view/MotionEvent;->mNativePtr:J

    if-eqz p1, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v1, v0

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/view/MotionEvent;->nativeSetFlags(JI)V

    .line 2030
    return-void

    .line 2027
    :cond_0
    const v1, -0x40000001    # -1.9999999f

    and-int/2addr v1, v0

    goto :goto_0
.end method

.method public setWindowOffsetByCocktailBar(II)V
    .locals 1
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I

    .prologue
    .line 2696
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 2697
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/MotionEvent;->mNeedWindowOffset:Z

    .line 2699
    :cond_1
    iput p1, p0, Landroid/view/MotionEvent;->mWindowOffsetX:I

    .line 2700
    iput p2, p0, Landroid/view/MotionEvent;->mWindowOffsetY:I

    .line 2702
    return-void
.end method

.method public final split(I)Landroid/view/MotionEvent;
    .locals 37
    .param p1, "idBits"    # I

    .prologue
    .line 3415
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v23

    .line 3416
    .local v23, "ev":Landroid/view/MotionEvent;
    sget-object v36, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v36

    .line 3417
    :try_start_0
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v2, v3}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v35

    .line 3418
    .local v35, "oldPointerCount":I
    invoke-static/range {v35 .. v35}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 3419
    sget-object v21, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 3420
    .local v21, "pp":[Landroid/view/MotionEvent$PointerProperties;
    sget-object v22, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 3421
    .local v22, "pc":[Landroid/view/MotionEvent$PointerCoords;
    sget-object v29, Landroid/view/MotionEvent;->gSharedTempPointerIndexMap:[I

    .line 3423
    .local v29, "map":[I
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v2, v3}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result v32

    .line 3424
    .local v32, "oldAction":I
    move/from16 v0, v32

    and-int/lit16 v0, v0, 0xff

    move/from16 v33, v0

    .line 3425
    .local v33, "oldActionMasked":I
    const v2, 0xff00

    and-int v2, v2, v32

    shr-int/lit8 v34, v2, 0x8

    .line 3427
    .local v34, "oldActionPointerIndex":I
    const/16 v30, -0x1

    .line 3428
    .local v30, "newActionPointerIndex":I
    const/16 v20, 0x0

    .line 3429
    .local v20, "newPointerCount":I
    const/16 v31, 0x0

    .line 3430
    .local v31, "newIdBits":I
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_0
    move/from16 v0, v27

    move/from16 v1, v35

    if-ge v0, v1, :cond_2

    .line 3431
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    aget-object v4, v21, v20

    move/from16 v0, v27

    invoke-static {v2, v3, v0, v4}, Landroid/view/MotionEvent;->nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V

    .line 3432
    const/4 v2, 0x1

    aget-object v3, v21, v20

    iget v3, v3, Landroid/view/MotionEvent$PointerProperties;->id:I

    shl-int v28, v2, v3

    .line 3433
    .local v28, "idBit":I
    and-int v2, v28, p1

    if-eqz v2, :cond_1

    .line 3434
    move/from16 v0, v27

    move/from16 v1, v34

    if-ne v0, v1, :cond_0

    .line 3435
    move/from16 v30, v20

    .line 3437
    :cond_0
    aput v27, v29, v20

    .line 3438
    add-int/lit8 v20, v20, 0x1

    .line 3439
    or-int v31, v31, v28

    .line 3430
    :cond_1
    add-int/lit8 v27, v27, 0x1

    goto :goto_0

    .line 3443
    .end local v28    # "idBit":I
    :cond_2
    if-nez v20, :cond_3

    .line 3444
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "idBits did not match any ids in the event"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3501
    .end local v20    # "newPointerCount":I
    .end local v21    # "pp":[Landroid/view/MotionEvent$PointerProperties;
    .end local v22    # "pc":[Landroid/view/MotionEvent$PointerCoords;
    .end local v27    # "i":I
    .end local v29    # "map":[I
    .end local v30    # "newActionPointerIndex":I
    .end local v31    # "newIdBits":I
    .end local v32    # "oldAction":I
    .end local v33    # "oldActionMasked":I
    .end local v34    # "oldActionPointerIndex":I
    .end local v35    # "oldPointerCount":I
    :catchall_0
    move-exception v2

    monitor-exit v36
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3448
    .restart local v20    # "newPointerCount":I
    .restart local v21    # "pp":[Landroid/view/MotionEvent$PointerProperties;
    .restart local v22    # "pc":[Landroid/view/MotionEvent$PointerCoords;
    .restart local v27    # "i":I
    .restart local v29    # "map":[I
    .restart local v30    # "newActionPointerIndex":I
    .restart local v31    # "newIdBits":I
    .restart local v32    # "oldAction":I
    .restart local v33    # "oldActionMasked":I
    .restart local v34    # "oldActionPointerIndex":I
    .restart local v35    # "oldPointerCount":I
    :cond_3
    const/4 v2, 0x5

    move/from16 v0, v33

    if-eq v0, v2, :cond_4

    const/4 v2, 0x6

    move/from16 v0, v33

    if-ne v0, v2, :cond_8

    .line 3449
    :cond_4
    if-gez v30, :cond_5

    .line 3451
    const/4 v6, 0x2

    .line 3466
    .local v6, "newAction":I
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v2, v3}, Landroid/view/MotionEvent;->nativeGetHistorySize(J)I

    move-result v26

    .line 3467
    .local v26, "historySize":I
    const/16 v24, 0x0

    .local v24, "h":I
    :goto_2
    move/from16 v0, v24

    move/from16 v1, v26

    if-gt v0, v1, :cond_c

    .line 3468
    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_9

    const/high16 v25, -0x80000000

    .line 3470
    .local v25, "historyPos":I
    :goto_3
    const/16 v27, 0x0

    :goto_4
    move/from16 v0, v27

    move/from16 v1, v20

    if-ge v0, v1, :cond_a

    .line 3471
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    aget v4, v29, v27

    aget-object v5, v22, v27

    move/from16 v0, v25

    invoke-static {v2, v3, v4, v0, v5}, Landroid/view/MotionEvent;->nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V

    .line 3470
    add-int/lit8 v27, v27, 0x1

    goto :goto_4

    .line 3452
    .end local v6    # "newAction":I
    .end local v24    # "h":I
    .end local v25    # "historyPos":I
    .end local v26    # "historySize":I
    :cond_5
    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_7

    .line 3454
    const/4 v2, 0x5

    move/from16 v0, v33

    if-ne v0, v2, :cond_6

    const/4 v6, 0x0

    .restart local v6    # "newAction":I
    :goto_5
    goto :goto_1

    .end local v6    # "newAction":I
    :cond_6
    const/4 v6, 0x1

    goto :goto_5

    .line 3458
    :cond_7
    shl-int/lit8 v2, v30, 0x8

    or-int v6, v33, v2

    .restart local v6    # "newAction":I
    goto :goto_1

    .line 3463
    .end local v6    # "newAction":I
    :cond_8
    move/from16 v6, v32

    .restart local v6    # "newAction":I
    goto :goto_1

    .restart local v24    # "h":I
    .restart local v26    # "historySize":I
    :cond_9
    move/from16 v25, v24

    .line 3468
    goto :goto_3

    .line 3474
    .restart local v25    # "historyPos":I
    :cond_a
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    move/from16 v0, v25

    invoke-static {v2, v3, v0}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v18

    .line 3475
    .local v18, "eventTimeNanos":J
    if-nez v24, :cond_b

    .line 3476
    move-object/from16 v0, v23

    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v4, v5}, Landroid/view/MotionEvent;->nativeGetDeviceId(J)I

    move-result v4

    move-object/from16 v0, p0

    iget-wide v8, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v8, v9}, Landroid/view/MotionEvent;->nativeGetSource(J)I

    move-result v5

    move-object/from16 v0, p0

    iget-wide v8, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v8, v9}, Landroid/view/MotionEvent;->nativeGetFlags(J)I

    move-result v7

    move-object/from16 v0, p0

    iget-wide v8, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v8, v9}, Landroid/view/MotionEvent;->nativeGetEdgeFlags(J)I

    move-result v8

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v10, v11}, Landroid/view/MotionEvent;->nativeGetMetaState(J)I

    move-result v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v10, v11}, Landroid/view/MotionEvent;->nativeGetButtonState(J)I

    move-result v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v12, v13}, Landroid/view/MotionEvent;->nativeGetDisplayId(J)I

    move-result v11

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v12, v13}, Landroid/view/MotionEvent;->nativeGetXOffset(J)F

    move-result v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v14, v15}, Landroid/view/MotionEvent;->nativeGetYOffset(J)F

    move-result v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v14, v15}, Landroid/view/MotionEvent;->nativeGetXPrecision(J)F

    move-result v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/MotionEvent;->mNativePtr:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Landroid/view/MotionEvent;->nativeGetYPrecision(J)F

    move-result v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/MotionEvent;->mNativePtr:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Landroid/view/MotionEvent;->nativeGetDownTimeNanos(J)J

    move-result-wide v16

    invoke-static/range {v2 .. v22}, Landroid/view/MotionEvent;->nativeInitialize(JIIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)J

    move-result-wide v2

    move-object/from16 v0, v23

    iput-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3467
    :goto_6
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_2

    .line 3486
    :cond_b
    move-object/from16 v0, v23

    iget-wide v8, v0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v13, 0x0

    move-wide/from16 v10, v18

    move-object/from16 v12, v22

    invoke-static/range {v8 .. v13}, Landroid/view/MotionEvent;->nativeAddBatch(JJ[Landroid/view/MotionEvent$PointerCoords;I)V

    goto :goto_6

    .line 3490
    .end local v18    # "eventTimeNanos":J
    .end local v25    # "historyPos":I
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/MotionEvent;->mNeedWindowOffset:Z

    if-eqz v2, :cond_d

    .line 3491
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/MotionEvent;->mNeedWindowOffset:Z

    move-object/from16 v0, v23

    iput-boolean v2, v0, Landroid/view/MotionEvent;->mNeedWindowOffset:Z

    .line 3492
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/MotionEvent;->mWindowOffsetX:I

    move-object/from16 v0, v23

    iput v2, v0, Landroid/view/MotionEvent;->mWindowOffsetX:I

    .line 3493
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/MotionEvent;->mWindowOffsetY:I

    move-object/from16 v0, v23

    iput v2, v0, Landroid/view/MotionEvent;->mWindowOffsetY:I

    .line 3494
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/MotionEvent;->mScaleFactorX:F

    move-object/from16 v0, v23

    iput v2, v0, Landroid/view/MotionEvent;->mScaleFactorX:F

    .line 3495
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/MotionEvent;->mScaleFactorY:F

    move-object/from16 v0, v23

    iput v2, v0, Landroid/view/MotionEvent;->mScaleFactorY:F

    .line 3496
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/MotionEvent;->mScaledWindowOffsetX:I

    move-object/from16 v0, v23

    iput v2, v0, Landroid/view/MotionEvent;->mScaledWindowOffsetX:I

    .line 3497
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/MotionEvent;->mScaledWindowOffsetY:I

    move-object/from16 v0, v23

    iput v2, v0, Landroid/view/MotionEvent;->mScaledWindowOffsetY:I

    .line 3500
    :cond_d
    monitor-exit v36
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v23
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 3506
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3512
    .local v1, "msg":Ljava/lang/StringBuilder;
    const-string v3, "MotionEvent { action="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-static {v4}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3514
    const-string v3, ", actionButton="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v4

    invoke-static {v4}, Landroid/view/MotionEvent;->buttonStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3516
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 3517
    .local v2, "pointerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 3518
    const-string v3, ", id["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3519
    const-string v3, ", x["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 3520
    const-string v3, ", y["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 3521
    const-string v3, ", toolType["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    invoke-static {v4}, Landroid/view/MotionEvent;->toolTypeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3517
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3525
    :cond_0
    const-string v3, ", buttonState="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v4

    invoke-static {v4}, Landroid/view/MotionEvent;->buttonStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3526
    const-string v3, ", metaState="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v4

    invoke-static {v4}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3527
    const-string v3, ", flags=0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3528
    const-string v3, ", edgeFlags=0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3529
    const-string v3, ", pointerCount="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3530
    const-string v3, ", historySize="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3531
    const-string v3, ", eventTime="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3532
    const-string v3, ", downTime="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3533
    const-string v3, ", deviceId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3534
    const-string v3, ", source=0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3535
    const-string v3, " }"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3536
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public final transform(Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 3226
    if-nez p1, :cond_0

    .line 3227
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "matrix must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3230
    :cond_0
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeTransform(JLandroid/graphics/Matrix;)V

    .line 3231
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 3714
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3715
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeWriteToParcel(JLandroid/os/Parcel;)V

    .line 3716
    return-void
.end method
