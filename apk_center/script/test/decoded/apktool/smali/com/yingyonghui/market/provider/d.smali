.class final Lcom/yingyonghui/market/provider/d;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PackageInfoProvider.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/provider/PackageInfoProvider;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/provider/PackageInfoProvider;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/yingyonghui/market/provider/d;->a:Lcom/yingyonghui/market/provider/PackageInfoProvider;

    .line 25
    const-string v0, "packages.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 26
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-static {p1}, Lcom/yingyonghui/market/provider/k;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 30
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Upgrading database from version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", which will destroy all old data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    const-string v0, "DROP TABLE IF EXISTS packages"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0, p1}, Lcom/yingyonghui/market/provider/d;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 38
    return-void
.end method
