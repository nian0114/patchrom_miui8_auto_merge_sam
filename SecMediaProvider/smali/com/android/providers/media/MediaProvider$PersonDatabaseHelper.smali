.class Lcom/android/providers/media/MediaProvider$PersonDatabaseHelper;
.super Lcom/android/providers/media/MediaProvider$DatabaseHelper;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PersonDatabaseHelper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1590
    const-string v2, "person.db"

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v5, Lcom/android/providers/media/MediaProvider$PersonDatabaseHelper$1;

    invoke-direct {v5}, Lcom/android/providers/media/MediaProvider$PersonDatabaseHelper$1;-><init>()V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;ZZLandroid/database/sqlite/SQLiteDatabase$CustomFunction;)V

    .line 1597
    # getter for: Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "new PersonDataBaseHelper()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1602
    # getter for: Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PersonDataBaseHelper.onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    const-string v0, "create table if not exists persons(_id integer primary key,flag integer default 0,name text,user_data text not null default \'none\',cover text)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1604
    const-string v0, "create table if not exists faces(_id integer primary key,person_id integer,group_id integer,right_count integer,wrong_count integer,face_data integer,card_id integer,face_id integer)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1605
    const-string v0, "create index if not exists face_data_index on faces(face_data)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1606
    const-string v0, "insert into persons(name) values(null)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1607
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 1611
    # getter for: Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PersonDataBaseHelper.onUpgrade()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    const/16 v0, 0x202

    if-ge p3, v0, :cond_0

    .line 1613
    const-string v0, "drop table if exists person"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1614
    const-string v0, "drop table if exists faces"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1615
    const-string v0, "drop index if exists face_data_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1616
    invoke-virtual {p0, p1}, Lcom/android/providers/media/MediaProvider$PersonDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1618
    :cond_0
    return-void
.end method
