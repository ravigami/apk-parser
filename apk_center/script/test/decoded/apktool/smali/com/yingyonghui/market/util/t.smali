.class public final Lcom/yingyonghui/market/util/t;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# static fields
.field private static a:Lcom/yingyonghui/market/util/t;


# instance fields
.field private final b:Landroid/content/Context;

.field private c:Lcom/yingyonghui/market/util/n;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/yingyonghui/market/util/t;->b:Landroid/content/Context;

    .line 34
    invoke-static {p1}, Lcom/yingyonghui/market/util/n;->a(Landroid/content/Context;)Lcom/yingyonghui/market/util/n;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/util/t;->c:Lcom/yingyonghui/market/util/n;

    .line 35
    return-void
.end method

.method private static a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 297
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 298
    const-string v1, "mimetype"

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v1, "description"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v1, "uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v1, "no_integrity"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 303
    const-string v1, "visibility"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 304
    const-string v1, "notificationpackage"

    sget-object v2, Lcom/yingyonghui/market/by;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v1, "notificationclass"

    const-class v2, Lcom/yingyonghui/market/util/DownloadExtReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v1, "notificationextras"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-static {}, Lcom/yingyonghui/market/util/GlobalUtil;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    const-string v1, "destination"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 312
    :goto_0
    sget-object v1, Lcom/yingyonghui/downloads/g;->a:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 313
    return-object v0

    .line 310
    :cond_0
    const-string v1, "destination"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/yingyonghui/market/util/t;
    .locals 1
    .parameter

    .prologue
    .line 38
    sget-object v0, Lcom/yingyonghui/market/util/t;->a:Lcom/yingyonghui/market/util/t;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/yingyonghui/market/util/t;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/util/t;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/yingyonghui/market/util/t;->a:Lcom/yingyonghui/market/util/t;

    .line 41
    :cond_0
    sget-object v0, Lcom/yingyonghui/market/util/t;->a:Lcom/yingyonghui/market/util/t;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 369
    iget-object v0, p0, Lcom/yingyonghui/market/util/t;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/yingyonghui/downloads/g;->a:Landroid/net/Uri;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v7

    const-string v3, "status >= \'200\'"

    const-string v5, "lastmod"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/lit16 v0, v0, -0x3e8

    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    :goto_0
    if-lez v0, :cond_0

    iget-object v3, p0, Lcom/yingyonghui/market/util/t;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/yingyonghui/downloads/g;->a:Landroid/net/Uri;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v5, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 370
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    move v0, v7

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_3

    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "lost+found"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "recovery"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/yingyonghui/market/util/t;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/yingyonghui/downloads/g;->a:Landroid/net/Uri;

    new-array v3, v6, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v3, v7

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-boolean v2, Lcom/yingyonghui/downloads/w;->a:Z

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleting spurious file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_7
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 371
    :cond_8
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 317
    iget-object v0, p0, Lcom/yingyonghui/market/util/t;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 318
    invoke-static {v0, p1}, Lcom/yingyonghui/market/provider/k;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/yingyonghui/market/provider/k;

    move-result-object v1

    .line 319
    invoke-virtual {v1}, Lcom/yingyonghui/market/provider/k;->g()Landroid/net/Uri;

    move-result-object v2

    .line 321
    invoke-static {}, Lcom/yingyonghui/market/util/GlobalUtil;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 323
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 324
    const-string v4, "visibility"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 325
    const-string v4, "control"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 326
    iget-object v4, p0, Lcom/yingyonghui/market/util/t;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 331
    :goto_0
    invoke-virtual {v1}, Lcom/yingyonghui/market/provider/k;->d()Lcom/yingyonghui/market/provider/m;

    move-result-object v2

    sget-object v3, Lcom/yingyonghui/market/provider/m;->b:Lcom/yingyonghui/market/provider/m;

    if-ne v2, v3, :cond_2

    .line 332
    sget-object v2, Lcom/yingyonghui/market/provider/m;->n:Lcom/yingyonghui/market/provider/m;

    invoke-virtual {v1, v2}, Lcom/yingyonghui/market/provider/k;->a(Lcom/yingyonghui/market/provider/m;)V

    .line 336
    :cond_0
    :goto_1
    invoke-virtual {v1, v0}, Lcom/yingyonghui/market/provider/k;->b(Landroid/content/ContentResolver;)V

    .line 338
    iget-object v0, p0, Lcom/yingyonghui/market/util/t;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/yingyonghui/market/log/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yingyonghui/market/log/LogService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 339
    return-void

    .line 328
    :cond_1
    iget-object v3, p0, Lcom/yingyonghui/market/util/t;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 333
    :cond_2
    invoke-virtual {v1}, Lcom/yingyonghui/market/provider/k;->d()Lcom/yingyonghui/market/provider/m;

    move-result-object v2

    sget-object v3, Lcom/yingyonghui/market/provider/m;->h:Lcom/yingyonghui/market/provider/m;

    if-ne v2, v3, :cond_0

    .line 334
    sget-object v2, Lcom/yingyonghui/market/provider/m;->f:Lcom/yingyonghui/market/provider/m;

    invoke-virtual {v1, v2}, Lcom/yingyonghui/market/provider/k;->a(Lcom/yingyonghui/market/provider/m;)V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    if-lez p6, :cond_0

    .line 47
    iget-object v1, p0, Lcom/yingyonghui/market/util/t;->c:Lcom/yingyonghui/market/util/n;

    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v1, v2, v0, p3}, Lcom/yingyonghui/market/util/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    .line 49
    invoke-virtual/range {v1 .. v10}, Lcom/yingyonghui/market/util/t;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/yingyonghui/market/util/t;->b:Landroid/content/Context;

    const v2, 0x7f09016b

    invoke-static {v1, v2}, Lcom/yingyonghui/market/util/GlobalUtil;->a(Landroid/content/Context;I)V

    .line 86
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/yingyonghui/market/util/t;->b:Landroid/content/Context;

    const-string v2, "checkbox_allow_without_wifi"

    invoke-static {v1, v2}, Lcom/yingyonghui/market/util/l;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 61
    iget-object v2, p0, Lcom/yingyonghui/market/util/t;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/yingyonghui/market/util/g;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 62
    if-nez v1, :cond_1

    .line 63
    iget-object v1, p0, Lcom/yingyonghui/market/util/t;->b:Landroid/content/Context;

    const v2, 0x7f0900d8

    invoke-static {v1, v2}, Lcom/yingyonghui/market/util/GlobalUtil;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/yingyonghui/market/util/t;->b:Landroid/content/Context;

    const-string v2, "list_app_limit"

    const-string v3, "5"

    invoke-static {v1, v2, v3}, Lcom/yingyonghui/market/util/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yingyonghui/market/util/m;->a(Ljava/lang/String;)I

    move-result v1

    .line 69
    mul-int/lit16 v1, v1, 0x400

    mul-int/lit16 v1, v1, 0x400

    if-le p5, v1, :cond_2

    .line 70
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 71
    iget-object v2, p0, Lcom/yingyonghui/market/util/t;->b:Landroid/content/Context;

    const-class v3, Lcom/yingyonghui/market/ActivityWarningTraffic;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string v2, "_id"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    const-string v2, "pkgName"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    const-string v2, "size"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 75
    const-string v2, "title"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const-string v2, "channel"

    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const-string v2, "action"

    move-object/from16 v0, p8

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const-string v2, "downloadUrl"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string v2, "iconUrl"

    move-object/from16 v0, p9

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    iget-object v2, p0, Lcom/yingyonghui/market/util/t;->b:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    .line 85
    invoke-virtual/range {v1 .. v7}, Lcom/yingyonghui/market/util/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yingyonghui/market/util/t;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 100
    invoke-static/range {p4 .. p4}, Lcom/yingyonghui/market/util/b;->g(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 106
    :goto_0
    move-object/from16 v0, p2

    invoke-static {v4, v0}, Lcom/yingyonghui/market/provider/k;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/yingyonghui/market/provider/k;

    move-result-object v5

    .line 107
    if-nez v5, :cond_1d

    .line 108
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v4, v0, v1}, Lcom/yingyonghui/market/provider/k;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Lcom/yingyonghui/market/provider/k;

    move-result-object v5

    move-object v10, v5

    .line 111
    :goto_1
    invoke-virtual {v10}, Lcom/yingyonghui/market/provider/k;->d()Lcom/yingyonghui/market/provider/m;

    move-result-object v5

    .line 113
    sget-object v6, Lcom/yingyonghui/market/provider/m;->a:Lcom/yingyonghui/market/provider/m;

    if-eq v5, v6, :cond_0

    sget-object v6, Lcom/yingyonghui/market/provider/m;->c:Lcom/yingyonghui/market/provider/m;

    if-eq v5, v6, :cond_0

    sget-object v6, Lcom/yingyonghui/market/provider/m;->g:Lcom/yingyonghui/market/provider/m;

    if-eq v5, v6, :cond_0

    sget-object v6, Lcom/yingyonghui/market/provider/m;->n:Lcom/yingyonghui/market/provider/m;

    if-ne v5, v6, :cond_c

    .line 117
    :cond_0
    invoke-virtual {v10}, Lcom/yingyonghui/market/provider/k;->g()Landroid/net/Uri;

    move-result-object v5

    .line 118
    if-nez v5, :cond_3

    .line 119
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    move-object/from16 v3, p2

    invoke-static {v4, v0, v1, v2, v3}, Lcom/yingyonghui/market/util/t;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 120
    if-nez v5, :cond_2

    .line 122
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yingyonghui/market/util/t;->b:Landroid/content/Context;

    const v5, 0x7f09016b

    invoke-static {v4, v5}, Lcom/yingyonghui/market/util/GlobalUtil;->a(Landroid/content/Context;I)V

    .line 294
    :goto_2
    return-void

    :cond_1
    move-object/from16 p4, p1

    .line 103
    goto :goto_0

    .line 125
    :cond_2
    invoke-virtual {v10, v5}, Lcom/yingyonghui/market/provider/k;->a(Landroid/net/Uri;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yingyonghui/market/util/t;->b:Landroid/content/Context;

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v5, v0, v1}, Lcom/yingyonghui/market/log/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :goto_3
    sget-object v5, Lcom/yingyonghui/market/provider/m;->b:Lcom/yingyonghui/market/provider/m;

    invoke-virtual {v10, v5}, Lcom/yingyonghui/market/provider/k;->a(Lcom/yingyonghui/market/provider/m;)V

    .line 209
    invoke-virtual {v10, v4}, Lcom/yingyonghui/market/provider/k;->b(Landroid/content/ContentResolver;)V

    goto :goto_2

    .line 129
    :cond_3
    const/4 v15, -0x1

    .line 130
    const/4 v14, 0x0

    .line 131
    const/4 v13, 0x0

    .line 132
    const/4 v12, 0x0

    .line 133
    const/4 v11, 0x0

    .line 134
    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "status"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "notificationpackage"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "notificationclass"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "notificationextras"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "_data"

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 139
    if-eqz v16, :cond_1c

    .line 140
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 141
    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 142
    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 143
    const/4 v6, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 144
    const/4 v6, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 145
    const/4 v6, 0x4

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 147
    :goto_4
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 150
    :goto_5
    const/4 v12, -0x1

    if-ne v11, v12, :cond_5

    .line 151
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    move-object/from16 v3, p2

    invoke-static {v4, v0, v1, v2, v3}, Lcom/yingyonghui/market/util/t;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 152
    if-nez v5, :cond_4

    .line 154
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yingyonghui/market/util/t;->b:Landroid/content/Context;

    const v5, 0x7f09016b

    invoke-static {v4, v5}, Lcom/yingyonghui/market/util/GlobalUtil;->a(Landroid/content/Context;I)V

    goto/16 :goto_2

    .line 157
    :cond_4
    invoke-virtual {v10, v5}, Lcom/yingyonghui/market/provider/k;->a(Landroid/net/Uri;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yingyonghui/market/util/t;->b:Landroid/content/Context;

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v5, v0, v1}, Lcom/yingyonghui/market/log/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 160
    :cond_5
    const/16 v12, 0xc8

    if-ne v11, v12, :cond_9

    .line 161
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 162
    sget-object v6, Lcom/yingyonghui/market/provider/m;->b:Lcom/yingyonghui/market/provider/m;

    invoke-virtual {v10, v6}, Lcom/yingyonghui/market/provider/k;->a(Lcom/yingyonghui/market/provider/m;)V

    .line 163
    invoke-virtual {v10, v4}, Lcom/yingyonghui/market/provider/k;->b(Landroid/content/ContentResolver;)V

    .line 165
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.DOWNLOAD_COMPLETED"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v4, v9, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    if-eqz v7, :cond_6

    .line 168
    const-string v6, "notificationextras"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    :cond_6
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 171
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yingyonghui/market/util/t;->b:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 174
    :cond_7
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 176
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    move-object/from16 v3, p2

    invoke-static {v4, v0, v1, v2, v3}, Lcom/yingyonghui/market/util/t;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 177
    if-nez v5, :cond_8

    .line 179
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yingyonghui/market/util/t;->b:Landroid/content/Context;

    const v5, 0x7f09016b

    invoke-static {v4, v5}, Lcom/yingyonghui/market/util/GlobalUtil;->a(Landroid/content/Context;I)V

    goto/16 :goto_2

    .line 182
    :cond_8
    invoke-virtual {v10, v5}, Lcom/yingyonghui/market/provider/k;->a(Landroid/net/Uri;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yingyonghui/market/util/t;->b:Landroid/content/Context;

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v5, v0, v1}, Lcom/yingyonghui/market/log/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 186
    :cond_9
    invoke-static {v11}, Lcom/yingyonghui/downloads/g;->c(I)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 187
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 189
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    move-object/from16 v3, p2

    invoke-static {v4, v0, v1, v2, v3}, Lcom/yingyonghui/market/util/t;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 190
    if-nez v5, :cond_a

    .line 192
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yingyonghui/market/util/t;->b:Landroid/content/Context;

    const v5, 0x7f09016b

    invoke-static {v4, v5}, Lcom/yingyonghui/market/util/GlobalUtil;->a(Landroid/content/Context;I)V

    goto/16 :goto_2

    .line 195
    :cond_a
    invoke-virtual {v10, v5}, Lcom/yingyonghui/market/provider/k;->a(Landroid/net/Uri;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yingyonghui/market/util/t;->b:Landroid/content/Context;

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v5, v0, v1}, Lcom/yingyonghui/market/log/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 199
    :cond_b
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 200
    const-string v7, "visibility"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 201
    const-string v7, "control"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 202
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 204
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yingyonghui/market/util/t;->b:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-static {v5, v0}, Lcom/yingyonghui/market/log/l;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 210
    :cond_c
    sget-object v6, Lcom/yingyonghui/market/provider/m;->f:Lcom/yingyonghui/market/provider/m;

    if-eq v5, v6, :cond_d

    sget-object v6, Lcom/yingyonghui/market/provider/m;->m:Lcom/yingyonghui/market/provider/m;

    if-eq v5, v6, :cond_d

    sget-object v6, Lcom/yingyonghui/market/provider/m;->i:Lcom/yingyonghui/market/provider/m;

    if-eq v5, v6, :cond_d

    sget-object v6, Lcom/yingyonghui/market/provider/m;->l:Lcom/yingyonghui/market/provider/m;

    if-ne v5, v6, :cond_16

    .line 215
    :cond_d
    invoke-virtual {v10}, Lcom/yingyonghui/market/provider/k;->g()Landroid/net/Uri;

    move-result-object v5

    .line 216
    if-nez v5, :cond_f

    .line 217
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    move-object/from16 v3, p2

    invoke-static {v4, v0, v1, v2, v3}, Lcom/yingyonghui/market/util/t;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 218
    if-nez v5, :cond_e

    .line 220
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yingyonghui/market/util/t;->b:Landroid/content/Context;

    const v5, 0x7f09016b

    invoke-static {v4, v5}, Lcom/yingyonghui/market/util/GlobalUtil;->a(Landroid/content/Context;I)V

    goto/16 :goto_2

    .line 223
    :cond_e
    invoke-virtual {v10, v5}, Lcom/yingyonghui/market/provider/k;->a(Landroid/net/Uri;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yingyonghui/market/util/t;->b:Landroid/content/Context;

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v5, v0, v1}, Lcom/yingyonghui/market/log/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :goto_6
    sget-object v5, Lcom/yingyonghui/market/provider/m;->h:Lcom/yingyonghui/market/provider/m;

    invoke-virtual {v10, v5}, Lcom/yingyonghui/market/provider/k;->a(Lcom/yingyonghui/market/provider/m;)V

    .line 279
    invoke-virtual {v10, v4}, Lcom/yingyonghui/market/provider/k;->b(Landroid/content/ContentResolver;)V

    goto/16 :goto_2

    .line 227
    :cond_f
    const/4 v11, -0x1

    .line 228
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "status"

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 229
    if-eqz v7, :cond_1a

    .line 230
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_19

    .line 231
    const/4 v6, 0x0

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 233
    :goto_7
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 236
    :goto_8
    const/4 v7, -0x1

    if-ne v6, v7, :cond_11

    .line 237
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    move-object/from16 v3, p2

    invoke-static {v4, v0, v1, v2, v3}, Lcom/yingyonghui/market/util/t;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 238
    if-nez v5, :cond_10

    .line 240
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yingyonghui/market/util/t;->b:Landroid/content/Context;

    const v5, 0x7f09016b

    invoke-static {v4, v5}, Lcom/yingyonghui/market/util/GlobalUtil;->a(Landroid/content/Context;I)V

    goto/16 :goto_2

    .line 243
    :cond_10
    invoke-virtual {v10, v5}, Lcom/yingyonghui/market/provider/k;->a(Landroid/net/Uri;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yingyonghui/market/util/t;->b:Landroid/content/Context;

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v5, v0, v1}, Lcom/yingyonghui/market/log/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 246
    :cond_11
    const/16 v7, 0xc8

    if-ne v6, v7, :cond_13

    .line 247
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 248
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    move-object/from16 v3, p2

    invoke-static {v4, v0, v1, v2, v3}, Lcom/yingyonghui/market/util/t;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 249
    if-nez v5, :cond_12

    .line 251
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yingyonghui/market/util/t;->b:Landroid/content/Context;

    const v5, 0x7f09016b

    invoke-static {v4, v5}, Lcom/yingyonghui/market/util/GlobalUtil;->a(Landroid/content/Context;I)V

    goto/16 :goto_2

    .line 254
    :cond_12
    invoke-virtual {v10, v5}, Lcom/yingyonghui/market/provider/k;->a(Landroid/net/Uri;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yingyonghui/market/util/t;->b:Landroid/content/Context;

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v5, v0, v1}, Lcom/yingyonghui/market/log/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 257
    :cond_13
    invoke-static {v6}, Lcom/yingyonghui/downloads/g;->c(I)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 258
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 260
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    move-object/from16 v3, p2

    invoke-static {v4, v0, v1, v2, v3}, Lcom/yingyonghui/market/util/t;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 261
    if-nez v5, :cond_14

    .line 263
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yingyonghui/market/util/t;->b:Landroid/content/Context;

    const v5, 0x7f09016b

    invoke-static {v4, v5}, Lcom/yingyonghui/market/util/GlobalUtil;->a(Landroid/content/Context;I)V

    goto/16 :goto_2

    .line 266
    :cond_14
    invoke-virtual {v10, v5}, Lcom/yingyonghui/market/provider/k;->a(Landroid/net/Uri;)V

    .line 268
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yingyonghui/market/util/t;->b:Landroid/content/Context;

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v5, v0, v1}, Lcom/yingyonghui/market/log/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 270
    :cond_15
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 271
    const-string v7, "visibility"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 272
    const-string v7, "control"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 273
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 275
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yingyonghui/market/util/t;->b:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-static {v5, v0}, Lcom/yingyonghui/market/log/l;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 280
    :cond_16
    sget-object v4, Lcom/yingyonghui/market/provider/m;->d:Lcom/yingyonghui/market/provider/m;

    if-eq v5, v4, :cond_17

    sget-object v4, Lcom/yingyonghui/market/provider/m;->j:Lcom/yingyonghui/market/provider/m;

    if-ne v5, v4, :cond_18

    .line 281
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yingyonghui/market/util/t;->b:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-static {v4, v0}, Lcom/yingyonghui/market/util/GlobalUtil;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 292
    :cond_18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "State \""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" is wrong when start downloading."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_2

    :cond_19
    move v6, v11

    goto/16 :goto_7

    :cond_1a
    move v6, v11

    goto/16 :goto_8

    :cond_1b
    move-object v6, v11

    move-object v7, v12

    move-object v8, v13

    move-object v9, v14

    move v11, v15

    goto/16 :goto_4

    :cond_1c
    move-object v6, v11

    move-object v7, v12

    move-object v8, v13

    move-object v9, v14

    move v11, v15

    goto/16 :goto_5

    :cond_1d
    move-object v10, v5

    goto/16 :goto_1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 342
    iget-object v0, p0, Lcom/yingyonghui/market/util/t;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 343
    invoke-static {v0, p1}, Lcom/yingyonghui/market/provider/k;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/yingyonghui/market/provider/k;

    move-result-object v6

    .line 344
    invoke-virtual {v6}, Lcom/yingyonghui/market/provider/k;->g()Landroid/net/Uri;

    move-result-object v1

    .line 346
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_data"

    aput-object v4, v2, v7

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 348
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 349
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 350
    if-eqz v4, :cond_0

    .line 351
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 353
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 356
    :cond_1
    iget-object v2, p0, Lcom/yingyonghui/market/util/t;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 358
    invoke-virtual {v6}, Lcom/yingyonghui/market/provider/k;->d()Lcom/yingyonghui/market/provider/m;

    move-result-object v1

    sget-object v2, Lcom/yingyonghui/market/provider/m;->b:Lcom/yingyonghui/market/provider/m;

    if-ne v1, v2, :cond_3

    .line 359
    sget-object v1, Lcom/yingyonghui/market/provider/m;->n:Lcom/yingyonghui/market/provider/m;

    invoke-virtual {v6, v1}, Lcom/yingyonghui/market/provider/k;->a(Lcom/yingyonghui/market/provider/m;)V

    .line 363
    :cond_2
    :goto_0
    invoke-virtual {v6, v0}, Lcom/yingyonghui/market/provider/k;->b(Landroid/content/ContentResolver;)V

    .line 365
    iget-object v0, p0, Lcom/yingyonghui/market/util/t;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/yingyonghui/market/log/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yingyonghui/market/log/LogService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 366
    return-void

    .line 360
    :cond_3
    invoke-virtual {v6}, Lcom/yingyonghui/market/provider/k;->d()Lcom/yingyonghui/market/provider/m;

    move-result-object v1

    sget-object v2, Lcom/yingyonghui/market/provider/m;->h:Lcom/yingyonghui/market/provider/m;

    if-ne v1, v2, :cond_2

    .line 361
    sget-object v1, Lcom/yingyonghui/market/provider/m;->f:Lcom/yingyonghui/market/provider/m;

    invoke-virtual {v6, v1}, Lcom/yingyonghui/market/provider/k;->a(Lcom/yingyonghui/market/provider/m;)V

    goto :goto_0
.end method
