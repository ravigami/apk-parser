.class final Lcom/yingyonghui/market/provider/j;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "IgnoredPkgsInfoProvider.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 37
    const-string v0, "ignoredpkgs.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 38
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 42
    const-string v0, "CREATE TABLE ignoredtable ( _id INTEGER PRIMARY KEY, apkid INTEGER, apkname TEXT, lastmodifiedtime INTEGER, pkgname TEXT, permission TEXT, promotion_agent TEXT, promotion_id INTEGER, pubkey_hash TEXT, rating TEXT, rating_count TEXT, size INTEGER, version_code TEXT, version_name TEXT, apk_url TEXT, flg BOOLEAN); "

    .line 61
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    const-string v0, "DROP TABLE IF EXISTS ignoredtable"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0, p1}, Lcom/yingyonghui/market/provider/j;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 72
    return-void
.end method
