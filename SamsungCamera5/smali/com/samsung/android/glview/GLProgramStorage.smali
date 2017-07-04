.class public Lcom/samsung/android/glview/GLProgramStorage;
.super Ljava/lang/Object;
.source "GLProgramStorage.java"


# static fields
.field public static final BASE_FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;\nuniform lowp sampler2D tex_sampler;\nuniform lowp float u_alpha;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler, v_texcoord) * u_alpha;\n}\n"

.field public static final BASE_VERTEX_SHADER:Ljava/lang/String; = "precision highp float;\nuniform mat4 u_MVPMatrix;\nattribute vec4 a_position;\nattribute vec2 a_texcoord;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_Position = u_MVPMatrix * a_position;\n  v_texcoord = a_texcoord;\n}\n"

.field public static final CIRCLE_FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;\nuniform lowp vec4 tex_sampler;\nuniform lowp float u_alpha;\nvarying vec2 v_texcoord;\nuniform float u_thickness;\nuniform float u_type;\nuniform float u_param;\nconst float center = 0.5;\nvoid main() {\n  if (abs(distance(v_texcoord, vec2(center, center))) <= center) {\n     if (u_type == 1.0 || pow(v_texcoord.x - center, 2.0) / pow(center - u_thickness, 2.0) + pow((1.0 - v_texcoord.y - center), 2.0) / pow(center - u_thickness * u_param, 2.0) >= 1.0) {\n         gl_FragColor = vec4(tex_sampler.rgb, 1.0) * u_alpha;\n     } else {\n      discard;\n     }\n  } else {\n      discard;\n  }\n}\n"

.field public static final CIRCULAR_CLIP_FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;\nuniform lowp sampler2D tex_sampler;\nuniform lowp float u_alpha;\nvarying lowp vec2 v_texcoord;\nuniform float u_step;\nconst float diameter = 0.9999;\nconst float center = 0.5;\nvoid main() {\n  vec2 coord = v_texcoord - vec2(center, center);\n  float dist = length(coord / diameter);\n  if ((dist < center) && (dist > center * u_step)) {\n      gl_FragColor = texture2D(tex_sampler, v_texcoord) * u_alpha;\n  } else {\n      gl_FragColor = vec4(0.0, 0.0, 0.0, 0.0);\n  }\n}\n"

.field public static final FADE_FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;\nuniform lowp sampler2D tex_sampler;\nvarying lowp vec2 v_texcoord;\nuniform float u_step;\nuniform float u_param;\nuniform float u_alpha;\nconst float accel_pos = 0.2;\nvoid main() {\n    float orientation_pos = sign(u_step);\n    float direction = sign(1.0 - abs(u_step));\n    float alpha = 1.0;\n    float pos = ((1.0 - direction) + direction * abs(u_step)) * (1.0 + u_param);\n    if (pos < accel_pos) {\n        pos = sin(radians(90.0 * (1.0 / accel_pos) * pos)) * accel_pos;\n    }\n    orientation_pos = v_texcoord.x * sign(1.0 - orientation_pos) + v_texcoord.y * sign(1.0 + orientation_pos);\n    if (orientation_pos < pos) {\n        alpha = max(0.0, (orientation_pos - (pos - u_param)) / u_param);\n    }\n    direction = sign(direction + 0.5);\n    alpha = sign(1.0 - direction) + direction * alpha;\n    gl_FragColor = texture2D(tex_sampler, v_texcoord) * (alpha * u_alpha);\n}\n"

.field public static final FRAGMENT_RECTANGLE_SHADER:Ljava/lang/String; = "precision highp float;\nuniform lowp vec4 tex_sampler;\nuniform lowp float u_alpha;\nvarying vec2 v_texcoord;\nuniform float u_thickness;\nuniform float u_type;\nuniform float u_param;\nvoid main() {\n  if (u_type == 1.0 || v_texcoord.x < u_thickness || v_texcoord.x > (1.0 - u_thickness) || v_texcoord.y < u_thickness*u_param || v_texcoord.y > (1.0 - u_thickness*u_param)) {\n     gl_FragColor = vec4(tex_sampler.rgb, 1.0) * u_alpha;\n  } else {\n     discard;\n  }\n}\n"

.field public static final LINE_FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;\nuniform lowp vec4 tex_sampler;\nuniform lowp float u_alpha;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = vec4(tex_sampler.rgb, 1.0) * u_alpha;\n}\n"

.field public static final LINE_VERTEX_SHADER:Ljava/lang/String; = "precision highp float;\nuniform mat4 u_MVPMatrix;\nattribute vec4 a_position;\nattribute float a_pointsize;\nvoid main() {\n  gl_Position = u_MVPMatrix * a_position;\n  gl_PointSize = a_pointsize;\n}\n"

.field public static final ROUND_RECT_FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;\nuniform lowp sampler2D tex_sampler;\nuniform lowp float u_alpha;\nvarying lowp vec2 v_texcoord;\nuniform float u_step;\nuniform float u_param;\nconst float center = 0.5;\nvoid main() {\n  vec2 new_center = vec2(center * u_param, center);\n  vec2 new_texcoord = v_texcoord * vec2(u_param, 1.0);\n  vec2 coord = new_texcoord - new_center;\n  float fix_pos = max(0.0, sign(u_param - 1.0));\n  vec2 mini_circle_pos = new_center + sign(coord) * ( u_step * min(1.0, u_param) * vec2(center, center) + vec2(fix_pos, 1.0 - fix_pos) * center * abs(u_param - 1.0) );\n  float dist = center * min(1.0, u_param) * (1.0 - u_step);\n  float mini_dist = length(new_texcoord - mini_circle_pos);\n  if ( sign(new_texcoord - mini_circle_pos) == sign(coord) && mini_dist > dist) {\n      gl_FragColor = vec4(0.0, 0.0, 0.0, 0.0);\n  } else {\n      gl_FragColor = texture2D(tex_sampler, v_texcoord) * u_alpha;\n  }\n}\n"

.field public static final TYPE_PROGRAM_BASIC:I = 0x3e9

.field public static final TYPE_PROGRAM_CIRCLE:I = 0x3eb

.field public static final TYPE_PROGRAM_CIRCULAR_CLIP:I = 0x3ed

.field public static final TYPE_PROGRAM_FADE:I = 0x3ee

.field public static final TYPE_PROGRAM_LINE:I = 0x3ea

.field public static final TYPE_PROGRAM_RECTANGLE:I = 0x3ef

.field public static final TYPE_PROGRAM_ROUND_RECT:I = 0x3ec


# instance fields
.field private final mProgramObjMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/glview/GLProgram;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/glview/GLProgramStorage;->mProgramObjMap:Ljava/util/Hashtable;

    .line 192
    return-void
.end method

.method private deleteStorage()V
    .locals 4

    .prologue
    .line 298
    iget-object v3, p0, Lcom/samsung/android/glview/GLProgramStorage;->mProgramObjMap:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    .line 299
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/samsung/android/glview/GLProgram;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/glview/GLProgram;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 300
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 301
    .local v2, "obj":Ljava/lang/Object;
    instance-of v3, v2, Lcom/samsung/android/glview/GLProgram;

    if-eqz v3, :cond_0

    .line 302
    check-cast v2, Lcom/samsung/android/glview/GLProgram;

    .end local v2    # "obj":Ljava/lang/Object;
    invoke-virtual {v2}, Lcom/samsung/android/glview/GLProgram;->release()V

    goto :goto_0

    .line 306
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/glview/GLProgramStorage;->mProgramObjMap:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->clear()V

    .line 307
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/glview/GLProgramStorage;
    .locals 1

    .prologue
    .line 195
    new-instance v0, Lcom/samsung/android/glview/GLProgramStorage;

    invoke-direct {v0}, Lcom/samsung/android/glview/GLProgramStorage;-><init>()V

    return-object v0
.end method

.method public static releaseInstance(Lcom/samsung/android/glview/GLProgramStorage;)V
    .locals 0
    .param p0, "storage"    # Lcom/samsung/android/glview/GLProgramStorage;

    .prologue
    .line 199
    if-eqz p0, :cond_0

    .line 200
    invoke-direct {p0}, Lcom/samsung/android/glview/GLProgramStorage;->deleteStorage()V

    .line 201
    const/4 p0, 0x0

    .line 203
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addProgram(I)Z
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 207
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLProgramStorage;->mProgramObjMap:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 208
    const/4 v1, 0x0

    .line 288
    :goto_0
    monitor-exit p0

    return v1

    .line 210
    :cond_0
    const/4 v0, 0x0

    .line 212
    .local v0, "program":Lcom/samsung/android/glview/GLProgram;
    packed-switch p1, :pswitch_data_0

    .line 285
    :goto_1
    if-eqz v0, :cond_1

    .line 286
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/glview/GLProgramStorage;->mProgramObjMap:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 214
    :pswitch_0
    new-instance v0, Lcom/samsung/android/glview/GLProgram;

    .end local v0    # "program":Lcom/samsung/android/glview/GLProgram;
    const-string v1, "precision highp float;\nuniform mat4 u_MVPMatrix;\nattribute vec4 a_position;\nattribute vec2 a_texcoord;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_Position = u_MVPMatrix * a_position;\n  v_texcoord = a_texcoord;\n}\n"

    const-string v2, "precision mediump float;\nuniform lowp sampler2D tex_sampler;\nuniform lowp float u_alpha;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler, v_texcoord) * u_alpha;\n}\n"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/glview/GLProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .restart local v0    # "program":Lcom/samsung/android/glview/GLProgram;
    const-string v1, "a_position"

    const/16 v2, 0x66

    const/16 v3, 0xcf

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 216
    const-string v1, "a_texcoord"

    const/16 v2, 0x66

    const/16 v3, 0xcd

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 217
    const-string v1, "u_MVPMatrix"

    const/16 v2, 0x67

    const/16 v3, 0xd8

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 218
    const-string v1, "u_alpha"

    const/16 v2, 0x67

    const/16 v3, 0xcc

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 207
    .end local v0    # "program":Lcom/samsung/android/glview/GLProgram;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 222
    .restart local v0    # "program":Lcom/samsung/android/glview/GLProgram;
    :pswitch_1
    :try_start_2
    new-instance v0, Lcom/samsung/android/glview/GLProgram;

    .end local v0    # "program":Lcom/samsung/android/glview/GLProgram;
    const-string v1, "precision highp float;\nuniform mat4 u_MVPMatrix;\nattribute vec4 a_position;\nattribute float a_pointsize;\nvoid main() {\n  gl_Position = u_MVPMatrix * a_position;\n  gl_PointSize = a_pointsize;\n}\n"

    const-string v2, "precision mediump float;\nuniform lowp vec4 tex_sampler;\nuniform lowp float u_alpha;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = vec4(tex_sampler.rgb, 1.0) * u_alpha;\n}\n"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/glview/GLProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .restart local v0    # "program":Lcom/samsung/android/glview/GLProgram;
    const-string v1, "a_position"

    const/16 v2, 0x66

    const/16 v3, 0xcf

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 224
    const-string v1, "a_pointsize"

    const/16 v2, 0x66

    const/16 v3, 0xcc

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 225
    const-string v1, "tex_sampler"

    const/16 v2, 0x67

    const/16 v3, 0xcf

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 226
    const-string v1, "u_MVPMatrix"

    const/16 v2, 0x67

    const/16 v3, 0xd8

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 227
    const-string v1, "u_alpha"

    const/16 v2, 0x67

    const/16 v3, 0xcc

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    goto :goto_1

    .line 231
    :pswitch_2
    new-instance v0, Lcom/samsung/android/glview/GLProgram;

    .end local v0    # "program":Lcom/samsung/android/glview/GLProgram;
    const-string v1, "precision highp float;\nuniform mat4 u_MVPMatrix;\nattribute vec4 a_position;\nattribute vec2 a_texcoord;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_Position = u_MVPMatrix * a_position;\n  v_texcoord = a_texcoord;\n}\n"

    const-string v2, "precision highp float;\nuniform lowp vec4 tex_sampler;\nuniform lowp float u_alpha;\nvarying vec2 v_texcoord;\nuniform float u_thickness;\nuniform float u_type;\nuniform float u_param;\nvoid main() {\n  if (u_type == 1.0 || v_texcoord.x < u_thickness || v_texcoord.x > (1.0 - u_thickness) || v_texcoord.y < u_thickness*u_param || v_texcoord.y > (1.0 - u_thickness*u_param)) {\n     gl_FragColor = vec4(tex_sampler.rgb, 1.0) * u_alpha;\n  } else {\n     discard;\n  }\n}\n"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/glview/GLProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .restart local v0    # "program":Lcom/samsung/android/glview/GLProgram;
    const-string v1, "u_MVPMatrix"

    const/16 v2, 0x67

    const/16 v3, 0xd8

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 233
    const-string v1, "a_position"

    const/16 v2, 0x66

    const/16 v3, 0xcf

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 234
    const-string v1, "a_texcoord"

    const/16 v2, 0x66

    const/16 v3, 0xcd

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 235
    const-string v1, "tex_sampler"

    const/16 v2, 0x67

    const/16 v3, 0xcf

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 236
    const-string v1, "u_alpha"

    const/16 v2, 0x67

    const/16 v3, 0xcc

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 237
    const-string v1, "u_thickness"

    const/16 v2, 0x67

    const/16 v3, 0xcc

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 238
    const-string v1, "u_param"

    const/16 v2, 0x67

    const/16 v3, 0xcc

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 239
    const-string v1, "u_type"

    const/16 v2, 0x67

    const/16 v3, 0xcc

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    goto/16 :goto_1

    .line 243
    :pswitch_3
    new-instance v0, Lcom/samsung/android/glview/GLProgram;

    .end local v0    # "program":Lcom/samsung/android/glview/GLProgram;
    const-string v1, "precision highp float;\nuniform mat4 u_MVPMatrix;\nattribute vec4 a_position;\nattribute vec2 a_texcoord;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_Position = u_MVPMatrix * a_position;\n  v_texcoord = a_texcoord;\n}\n"

    const-string v2, "precision mediump float;\nuniform lowp vec4 tex_sampler;\nuniform lowp float u_alpha;\nvarying vec2 v_texcoord;\nuniform float u_thickness;\nuniform float u_type;\nuniform float u_param;\nconst float center = 0.5;\nvoid main() {\n  if (abs(distance(v_texcoord, vec2(center, center))) <= center) {\n     if (u_type == 1.0 || pow(v_texcoord.x - center, 2.0) / pow(center - u_thickness, 2.0) + pow((1.0 - v_texcoord.y - center), 2.0) / pow(center - u_thickness * u_param, 2.0) >= 1.0) {\n         gl_FragColor = vec4(tex_sampler.rgb, 1.0) * u_alpha;\n     } else {\n      discard;\n     }\n  } else {\n      discard;\n  }\n}\n"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/glview/GLProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .restart local v0    # "program":Lcom/samsung/android/glview/GLProgram;
    const-string v1, "a_position"

    const/16 v2, 0x66

    const/16 v3, 0xcf

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 245
    const-string v1, "a_texcoord"

    const/16 v2, 0x66

    const/16 v3, 0xcd

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 246
    const-string v1, "tex_sampler"

    const/16 v2, 0x67

    const/16 v3, 0xcf

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 247
    const-string v1, "u_MVPMatrix"

    const/16 v2, 0x67

    const/16 v3, 0xd8

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 248
    const-string v1, "u_alpha"

    const/16 v2, 0x67

    const/16 v3, 0xcc

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 249
    const-string v1, "u_param"

    const/16 v2, 0x67

    const/16 v3, 0xcc

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 250
    const-string v1, "u_thickness"

    const/16 v2, 0x67

    const/16 v3, 0xcc

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 251
    const-string v1, "u_type"

    const/16 v2, 0x67

    const/16 v3, 0xcc

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    goto/16 :goto_1

    .line 255
    :pswitch_4
    new-instance v0, Lcom/samsung/android/glview/GLProgram;

    .end local v0    # "program":Lcom/samsung/android/glview/GLProgram;
    const-string v1, "precision highp float;\nuniform mat4 u_MVPMatrix;\nattribute vec4 a_position;\nattribute vec2 a_texcoord;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_Position = u_MVPMatrix * a_position;\n  v_texcoord = a_texcoord;\n}\n"

    const-string v2, "precision mediump float;\nuniform lowp sampler2D tex_sampler;\nuniform lowp float u_alpha;\nvarying lowp vec2 v_texcoord;\nuniform float u_step;\nuniform float u_param;\nconst float center = 0.5;\nvoid main() {\n  vec2 new_center = vec2(center * u_param, center);\n  vec2 new_texcoord = v_texcoord * vec2(u_param, 1.0);\n  vec2 coord = new_texcoord - new_center;\n  float fix_pos = max(0.0, sign(u_param - 1.0));\n  vec2 mini_circle_pos = new_center + sign(coord) * ( u_step * min(1.0, u_param) * vec2(center, center) + vec2(fix_pos, 1.0 - fix_pos) * center * abs(u_param - 1.0) );\n  float dist = center * min(1.0, u_param) * (1.0 - u_step);\n  float mini_dist = length(new_texcoord - mini_circle_pos);\n  if ( sign(new_texcoord - mini_circle_pos) == sign(coord) && mini_dist > dist) {\n      gl_FragColor = vec4(0.0, 0.0, 0.0, 0.0);\n  } else {\n      gl_FragColor = texture2D(tex_sampler, v_texcoord) * u_alpha;\n  }\n}\n"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/glview/GLProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .restart local v0    # "program":Lcom/samsung/android/glview/GLProgram;
    const-string v1, "a_position"

    const/16 v2, 0x66

    const/16 v3, 0xcf

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 257
    const-string v1, "a_texcoord"

    const/16 v2, 0x66

    const/16 v3, 0xcd

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 258
    const-string v1, "u_MVPMatrix"

    const/16 v2, 0x67

    const/16 v3, 0xd8

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 259
    const-string v1, "u_alpha"

    const/16 v2, 0x67

    const/16 v3, 0xcc

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 260
    const-string v1, "u_step"

    const/16 v2, 0x67

    const/16 v3, 0xcc

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 261
    const-string v1, "u_param"

    const/16 v2, 0x67

    const/16 v3, 0xcc

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    goto/16 :goto_1

    .line 265
    :pswitch_5
    new-instance v0, Lcom/samsung/android/glview/GLProgram;

    .end local v0    # "program":Lcom/samsung/android/glview/GLProgram;
    const-string v1, "precision highp float;\nuniform mat4 u_MVPMatrix;\nattribute vec4 a_position;\nattribute vec2 a_texcoord;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_Position = u_MVPMatrix * a_position;\n  v_texcoord = a_texcoord;\n}\n"

    const-string v2, "precision mediump float;\nuniform lowp sampler2D tex_sampler;\nuniform lowp float u_alpha;\nvarying lowp vec2 v_texcoord;\nuniform float u_step;\nconst float diameter = 0.9999;\nconst float center = 0.5;\nvoid main() {\n  vec2 coord = v_texcoord - vec2(center, center);\n  float dist = length(coord / diameter);\n  if ((dist < center) && (dist > center * u_step)) {\n      gl_FragColor = texture2D(tex_sampler, v_texcoord) * u_alpha;\n  } else {\n      gl_FragColor = vec4(0.0, 0.0, 0.0, 0.0);\n  }\n}\n"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/glview/GLProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    .restart local v0    # "program":Lcom/samsung/android/glview/GLProgram;
    const-string v1, "a_position"

    const/16 v2, 0x66

    const/16 v3, 0xcf

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 267
    const-string v1, "a_texcoord"

    const/16 v2, 0x66

    const/16 v3, 0xcd

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 268
    const-string v1, "u_MVPMatrix"

    const/16 v2, 0x67

    const/16 v3, 0xd8

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 269
    const-string v1, "u_alpha"

    const/16 v2, 0x67

    const/16 v3, 0xcc

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 270
    const-string v1, "u_step"

    const/16 v2, 0x67

    const/16 v3, 0xcc

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 271
    const-string v1, "u_param"

    const/16 v2, 0x67

    const/16 v3, 0xcc

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    goto/16 :goto_1

    .line 275
    :pswitch_6
    new-instance v0, Lcom/samsung/android/glview/GLProgram;

    .end local v0    # "program":Lcom/samsung/android/glview/GLProgram;
    const-string v1, "precision highp float;\nuniform mat4 u_MVPMatrix;\nattribute vec4 a_position;\nattribute vec2 a_texcoord;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_Position = u_MVPMatrix * a_position;\n  v_texcoord = a_texcoord;\n}\n"

    const-string v2, "precision mediump float;\nuniform lowp sampler2D tex_sampler;\nvarying lowp vec2 v_texcoord;\nuniform float u_step;\nuniform float u_param;\nuniform float u_alpha;\nconst float accel_pos = 0.2;\nvoid main() {\n    float orientation_pos = sign(u_step);\n    float direction = sign(1.0 - abs(u_step));\n    float alpha = 1.0;\n    float pos = ((1.0 - direction) + direction * abs(u_step)) * (1.0 + u_param);\n    if (pos < accel_pos) {\n        pos = sin(radians(90.0 * (1.0 / accel_pos) * pos)) * accel_pos;\n    }\n    orientation_pos = v_texcoord.x * sign(1.0 - orientation_pos) + v_texcoord.y * sign(1.0 + orientation_pos);\n    if (orientation_pos < pos) {\n        alpha = max(0.0, (orientation_pos - (pos - u_param)) / u_param);\n    }\n    direction = sign(direction + 0.5);\n    alpha = sign(1.0 - direction) + direction * alpha;\n    gl_FragColor = texture2D(tex_sampler, v_texcoord) * (alpha * u_alpha);\n}\n"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/glview/GLProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    .restart local v0    # "program":Lcom/samsung/android/glview/GLProgram;
    const-string v1, "a_position"

    const/16 v2, 0x66

    const/16 v3, 0xcf

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 277
    const-string v1, "a_texcoord"

    const/16 v2, 0x66

    const/16 v3, 0xcd

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 278
    const-string v1, "u_MVPMatrix"

    const/16 v2, 0x67

    const/16 v3, 0xd8

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 279
    const-string v1, "u_alpha"

    const/16 v2, 0x67

    const/16 v3, 0xcc

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 280
    const-string v1, "u_step"

    const/16 v2, 0x67

    const/16 v3, 0xcc

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z

    .line 281
    const-string v1, "u_param"

    const/16 v2, 0x67

    const/16 v3, 0xcc

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLProgram;->addNameIndexer(Ljava/lang/String;II)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 212
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method public declared-synchronized getProgram(I)Lcom/samsung/android/glview/GLProgram;
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 293
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLProgramStorage;->mProgramObjMap:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLProgram;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
