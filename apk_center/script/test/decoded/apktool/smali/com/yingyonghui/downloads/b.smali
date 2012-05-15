.class final Lcom/yingyonghui/downloads/b;
.super Ljava/lang/Thread;
.source "DownloadService.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/downloads/DownloadService;


# direct methods
.method public constructor <init>(Lcom/yingyonghui/downloads/DownloadService;)V
    .locals 1
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/yingyonghui/downloads/b;->a:Lcom/yingyonghui/downloads/DownloadService;

    .line 258
    const-string v0, "Download Service"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 259
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .prologue
    .line 262
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 264
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/yingyonghui/downloads/b;->a:Lcom/yingyonghui/downloads/DownloadService;

    invoke-virtual {v7}, Lcom/yingyonghui/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/yingyonghui/downloads/a;->b:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const-string v4, "status >= \'200\'"

    const/4 v5, 0x0

    const-string v6, "lastmod"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v1, "DownloadManager"

    const-string v2, "null cursor in trimDatabase"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yingyonghui/downloads/b;->a:Lcom/yingyonghui/downloads/DownloadService;

    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_8

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_3

    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "lost+found"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "recovery"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 264
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/lit16 v1, v1, -0x3e8

    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    :goto_2
    if-lez v1, :cond_2

    sget-object v4, Lcom/yingyonghui/downloads/a;->b:Landroid/net/Uri;

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v7}, Lcom/yingyonghui/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v4, v6, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 265
    :cond_3
    invoke-virtual {v2}, Lcom/yingyonghui/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/yingyonghui/downloads/a;->b:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_data"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-boolean v3, Lcom/yingyonghui/downloads/w;->a:Z

    if-eqz v3, :cond_7

    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleting spurious file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_3

    .line 267
    :cond_8
    const/4 v3, 0x0

    .line 270
    const-wide v1, 0x7fffffffffffffffL

    move-wide/from16 v16, v1

    move v1, v3

    move-wide/from16 v2, v16

    .line 272
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yingyonghui/downloads/b;->a:Lcom/yingyonghui/downloads/DownloadService;

    monitor-enter v4

    .line 273
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yingyonghui/downloads/b;->a:Lcom/yingyonghui/downloads/DownloadService;

    iget-object v5, v5, Lcom/yingyonghui/downloads/DownloadService;->a:Lcom/yingyonghui/downloads/b;

    move-object/from16 v0, p0

    if-eq v5, v0, :cond_9

    .line 274
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "multiple UpdateThreads in DownloadService"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 288
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 277
    :cond_9
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yingyonghui/downloads/b;->a:Lcom/yingyonghui/downloads/DownloadService;

    invoke-static {v5}, Lcom/yingyonghui/downloads/DownloadService;->b(Lcom/yingyonghui/downloads/DownloadService;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 278
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yingyonghui/downloads/b;->a:Lcom/yingyonghui/downloads/DownloadService;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/yingyonghui/downloads/DownloadService;->a:Lcom/yingyonghui/downloads/b;

    .line 279
    if-nez v1, :cond_a

    .line 280
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yingyonghui/downloads/b;->a:Lcom/yingyonghui/downloads/DownloadService;

    invoke-virtual {v1}, Lcom/yingyonghui/downloads/DownloadService;->stopSelf()V

    .line 282
    :cond_a
    const-wide v5, 0x7fffffffffffffffL

    cmp-long v1, v2, v5

    if-eqz v1, :cond_b

    .line 283
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yingyonghui/downloads/b;->a:Lcom/yingyonghui/downloads/DownloadService;

    const-string v5, "alarm"

    invoke-virtual {v1, v5}, Lcom/yingyonghui/downloads/DownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    if-nez v1, :cond_c

    const-string v1, "DownloadManager"

    const-string v2, "couldn\'t get alarm manager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_b
    :goto_5
    monitor-exit v4

    return-void

    .line 283
    :cond_c
    sget-boolean v5, Lcom/yingyonghui/downloads/w;->a:Z

    if-eqz v5, :cond_d

    const-string v5, "DownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "scheduling retry in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.DOWNLOAD_WAKEUP"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "com.android.providers.downloads"

    const-class v7, Lcom/yingyonghui/downloads/DownloadReceiver;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/yingyonghui/downloads/b;->a:Lcom/yingyonghui/downloads/DownloadService;

    iget-object v7, v7, Lcom/yingyonghui/downloads/DownloadService;->b:Lcom/yingyonghui/downloads/u;

    invoke-interface {v7}, Lcom/yingyonghui/downloads/u;->a()J

    move-result-wide v7

    add-long/2addr v2, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/yingyonghui/downloads/b;->a:Lcom/yingyonghui/downloads/DownloadService;

    const/4 v8, 0x0

    const/high16 v9, 0x4000

    invoke-static {v7, v8, v5, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v1, v6, v2, v3, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_5

    .line 287
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yingyonghui/downloads/b;->a:Lcom/yingyonghui/downloads/DownloadService;

    invoke-static {v1}, Lcom/yingyonghui/downloads/DownloadService;->c(Lcom/yingyonghui/downloads/DownloadService;)Z

    .line 288
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yingyonghui/downloads/b;->a:Lcom/yingyonghui/downloads/DownloadService;

    iget-object v1, v1, Lcom/yingyonghui/downloads/DownloadService;->b:Lcom/yingyonghui/downloads/u;

    invoke-interface {v1}, Lcom/yingyonghui/downloads/u;->a()J

    move-result-wide v10

    .line 292
    const/4 v9, 0x0

    .line 293
    const-wide v7, 0x7fffffffffffffffL

    .line 294
    new-instance v12, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yingyonghui/downloads/b;->a:Lcom/yingyonghui/downloads/DownloadService;

    invoke-static {v1}, Lcom/yingyonghui/downloads/DownloadService;->d(Lcom/yingyonghui/downloads/DownloadService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v12, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 296
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yingyonghui/downloads/b;->a:Lcom/yingyonghui/downloads/DownloadService;

    invoke-virtual {v1}, Lcom/yingyonghui/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/yingyonghui/downloads/a;->b:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 298
    if-eqz v13, :cond_22

    .line 299
    :try_start_2
    new-instance v14, Lcom/yingyonghui/downloads/p;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yingyonghui/downloads/b;->a:Lcom/yingyonghui/downloads/DownloadService;

    invoke-virtual {v1}, Lcom/yingyonghui/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v14, v1, v13}, Lcom/yingyonghui/downloads/p;-><init>(Landroid/content/ContentResolver;Landroid/database/Cursor;)V

    .line 304
    const-string v1, "_id"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 306
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-wide v3, v7

    move v2, v9

    :goto_6
    invoke-interface {v13}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 307
    invoke-interface {v13, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 308
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 309
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yingyonghui/downloads/b;->a:Lcom/yingyonghui/downloads/DownloadService;

    invoke-static {v1}, Lcom/yingyonghui/downloads/DownloadService;->d(Lcom/yingyonghui/downloads/DownloadService;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yingyonghui/downloads/y;

    .line 310
    if-eqz v1, :cond_14

    .line 311
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/yingyonghui/downloads/b;->a:Lcom/yingyonghui/downloads/DownloadService;

    iget v5, v1, Lcom/yingyonghui/downloads/y;->h:I

    iget v8, v1, Lcom/yingyonghui/downloads/y;->j:I

    invoke-virtual {v14, v1}, Lcom/yingyonghui/downloads/p;->a(Lcom/yingyonghui/downloads/y;)V

    const/4 v6, 0x1

    if-eq v5, v6, :cond_f

    if-nez v5, :cond_12

    :cond_f
    iget v5, v1, Lcom/yingyonghui/downloads/y;->h:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_12

    const/4 v5, 0x1

    move v6, v5

    :goto_7
    invoke-static {v8}, Lcom/yingyonghui/downloads/a;->c(I)Z

    move-result v5

    if-nez v5, :cond_13

    iget v5, v1, Lcom/yingyonghui/downloads/y;->j:I

    invoke-static {v5}, Lcom/yingyonghui/downloads/a;->c(I)Z

    move-result v5

    if-eqz v5, :cond_13

    const/4 v5, 0x1

    :goto_8
    if-nez v6, :cond_10

    if-eqz v5, :cond_11

    :cond_10
    iget-object v5, v7, Lcom/yingyonghui/downloads/DownloadService;->b:Lcom/yingyonghui/downloads/u;

    iget-wide v6, v1, Lcom/yingyonghui/downloads/y;->a:J

    invoke-interface {v5, v6, v7}, Lcom/yingyonghui/downloads/u;->a(J)V

    :cond_11
    invoke-virtual {v1, v10, v11}, Lcom/yingyonghui/downloads/y;->b(J)V

    move-object v6, v1

    .line 320
    :goto_9
    iget v1, v6, Lcom/yingyonghui/downloads/y;->j:I

    invoke-static {v1}, Lcom/yingyonghui/downloads/a;->c(I)Z

    move-result v1

    if-eqz v1, :cond_15

    iget v1, v6, Lcom/yingyonghui/downloads/y;->h:I

    const/4 v5, 0x1

    if-ne v1, v5, :cond_15

    const/4 v1, 0x1

    :goto_a
    if-eqz v1, :cond_24

    .line 321
    const/4 v5, 0x1

    .line 323
    :goto_b
    iget v1, v6, Lcom/yingyonghui/downloads/y;->j:I

    invoke-static {v1}, Lcom/yingyonghui/downloads/a;->c(I)Z

    move-result v1

    if-eqz v1, :cond_16

    const-wide/16 v1, -0x1

    .line 324
    :goto_c
    const-wide/16 v6, 0x0

    cmp-long v6, v1, v6

    if-nez v6, :cond_19

    .line 325
    const/4 v2, 0x1

    .line 306
    :goto_d
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    .line 331
    :catchall_1
    move-exception v1

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v1

    .line 311
    :cond_12
    const/4 v5, 0x0

    move v6, v5

    goto :goto_7

    :cond_13
    const/4 v5, 0x0

    goto :goto_8

    .line 313
    :cond_14
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yingyonghui/downloads/b;->a:Lcom/yingyonghui/downloads/DownloadService;

    invoke-static {v1, v14, v10, v11}, Lcom/yingyonghui/downloads/DownloadService;->a(Lcom/yingyonghui/downloads/DownloadService;Lcom/yingyonghui/downloads/p;J)Lcom/yingyonghui/downloads/y;

    move-result-object v1

    move-object v6, v1

    goto :goto_9

    .line 320
    :cond_15
    const/4 v1, 0x0

    goto :goto_a

    .line 323
    :cond_16
    iget v1, v6, Lcom/yingyonghui/downloads/y;->j:I

    const/16 v2, 0xc2

    if-eq v1, v2, :cond_17

    const-wide/16 v1, 0x0

    goto :goto_c

    :cond_17
    invoke-virtual {v6, v10, v11}, Lcom/yingyonghui/downloads/y;->a(J)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v1

    cmp-long v6, v1, v10

    if-gtz v6, :cond_18

    const-wide/16 v1, 0x0

    goto :goto_c

    :cond_18
    sub-long/2addr v1, v10

    goto :goto_c

    .line 326
    :cond_19
    const-wide/16 v6, 0x0

    cmp-long v6, v1, v6

    if-lez v6, :cond_23

    cmp-long v6, v1, v3

    if-gez v6, :cond_23

    move-wide v3, v1

    move v2, v5

    .line 327
    goto :goto_d

    .line 331
    :cond_1a
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 334
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 335
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yingyonghui/downloads/b;->a:Lcom/yingyonghui/downloads/DownloadService;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Lcom/yingyonghui/downloads/DownloadService;->a(Lcom/yingyonghui/downloads/DownloadService;J)V

    goto :goto_e

    .line 341
    :cond_1b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yingyonghui/downloads/b;->a:Lcom/yingyonghui/downloads/DownloadService;

    invoke-static {v1}, Lcom/yingyonghui/downloads/DownloadService;->d(Lcom/yingyonghui/downloads/DownloadService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yingyonghui/downloads/y;

    .line 342
    iget-boolean v6, v1, Lcom/yingyonghui/downloads/y;->x:Z

    if-eqz v6, :cond_1c

    iget-object v1, v1, Lcom/yingyonghui/downloads/y;->y:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 344
    const/4 v1, 0x1

    move v2, v1

    .line 349
    :cond_1d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yingyonghui/downloads/b;->a:Lcom/yingyonghui/downloads/DownloadService;

    invoke-static {v1}, Lcom/yingyonghui/downloads/DownloadService;->e(Lcom/yingyonghui/downloads/DownloadService;)Lcom/yingyonghui/downloads/j;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yingyonghui/downloads/b;->a:Lcom/yingyonghui/downloads/DownloadService;

    invoke-static {v5}, Lcom/yingyonghui/downloads/DownloadService;->d(Lcom/yingyonghui/downloads/DownloadService;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/yingyonghui/downloads/j;->a(Ljava/util/Collection;)V

    .line 358
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yingyonghui/downloads/b;->a:Lcom/yingyonghui/downloads/DownloadService;

    invoke-static {v1}, Lcom/yingyonghui/downloads/DownloadService;->d(Lcom/yingyonghui/downloads/DownloadService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1e
    :goto_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yingyonghui/downloads/y;

    .line 359
    iget-boolean v5, v1, Lcom/yingyonghui/downloads/y;->x:Z

    if-eqz v5, :cond_1e

    .line 362
    iget-object v5, v1, Lcom/yingyonghui/downloads/y;->y:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 363
    iget-boolean v5, v1, Lcom/yingyonghui/downloads/y;->w:Z

    if-nez v5, :cond_1f

    iget v5, v1, Lcom/yingyonghui/downloads/y;->g:I

    if-nez v5, :cond_1f

    iget v5, v1, Lcom/yingyonghui/downloads/y;->j:I

    invoke-static {v5}, Lcom/yingyonghui/downloads/a;->a(I)Z

    move-result v5

    if-eqz v5, :cond_1f

    const/4 v5, 0x1

    :goto_10
    if-nez v5, :cond_1e

    .line 371
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yingyonghui/downloads/b;->a:Lcom/yingyonghui/downloads/DownloadService;

    invoke-virtual {v5}, Lcom/yingyonghui/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-wide v7, v1, Lcom/yingyonghui/downloads/y;->a:J

    iget-object v1, v1, Lcom/yingyonghui/downloads/y;->e:Ljava/lang/String;

    invoke-static {v5, v7, v8, v1}, Lcom/yingyonghui/downloads/e;->a(Landroid/content/ContentResolver;JLjava/lang/String;)V

    goto :goto_f

    .line 363
    :cond_1f
    const/4 v5, 0x0

    goto :goto_10

    .line 378
    :cond_20
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yingyonghui/downloads/b;->a:Lcom/yingyonghui/downloads/DownloadService;

    invoke-virtual {v5}, Lcom/yingyonghui/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v7, v1, Lcom/yingyonghui/downloads/y;->y:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v8, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 381
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yingyonghui/downloads/b;->a:Lcom/yingyonghui/downloads/DownloadService;

    invoke-virtual {v5}, Lcom/yingyonghui/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-wide v7, v1, Lcom/yingyonghui/downloads/y;->a:J

    iget-object v1, v1, Lcom/yingyonghui/downloads/y;->e:Ljava/lang/String;

    invoke-static {v5, v7, v8, v1}, Lcom/yingyonghui/downloads/e;->a(Landroid/content/ContentResolver;JLjava/lang/String;)V

    goto :goto_f

    :cond_21
    move v1, v2

    move-wide/from16 v16, v3

    move-wide/from16 v2, v16

    .line 386
    goto/16 :goto_4

    :cond_22
    move-wide v2, v7

    move v1, v9

    goto/16 :goto_4

    :cond_23
    move v2, v5

    goto/16 :goto_d

    :cond_24
    move v5, v2

    goto/16 :goto_b
.end method
