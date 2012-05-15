.class final Lcom/yingyonghui/market/ai;
.super Landroid/os/AsyncTask;
.source "ActivityMain.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/online/b;

.field private synthetic b:Lcom/yingyonghui/market/ActivityMain;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityMain;Lcom/yingyonghui/market/online/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 401
    iput-object p1, p0, Lcom/yingyonghui/market/ai;->b:Lcom/yingyonghui/market/ActivityMain;

    iput-object p2, p0, Lcom/yingyonghui/market/ai;->a:Lcom/yingyonghui/market/online/b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 17

    .prologue
    .line 405
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yingyonghui/market/ai;->b:Lcom/yingyonghui/market/ActivityMain;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yingyonghui/market/ai;->a:Lcom/yingyonghui/market/online/b;

    iget-object v1, v1, Lcom/yingyonghui/market/online/b;->h:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/yingyonghui/market/online/e;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 406
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yingyonghui/market/ai;->b:Lcom/yingyonghui/market/ActivityMain;

    invoke-virtual {v1}, Lcom/yingyonghui/market/ActivityMain;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/yingyonghui/market/MarketApplication;

    .line 407
    invoke-virtual {v1, v7}, Lcom/yingyonghui/market/MarketApplication;->a(Ljava/util/ArrayList;)V

    .line 409
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yingyonghui/market/ai;->b:Lcom/yingyonghui/market/ActivityMain;

    invoke-virtual {v1}, Lcom/yingyonghui/market/ActivityMain;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/yingyonghui/market/provider/f;->a:Landroid/net/Uri;

    invoke-static {}, Lcom/yingyonghui/market/ActivityMain;->b()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 411
    :try_start_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yingyonghui/market/model/q;

    .line 412
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yingyonghui/market/ai;->b:Lcom/yingyonghui/market/ActivityMain;

    invoke-static {v2}, Lcom/yingyonghui/market/ActivityMain;->b(Lcom/yingyonghui/market/ActivityMain;)Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, v1, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/yingyonghui/market/util/GlobalUtil;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 413
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_0

    .line 414
    iget v3, v1, Lcom/yingyonghui/market/model/q;->s:I

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    if-le v3, v2, :cond_0

    .line 420
    const/4 v2, 0x0

    .line 421
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 422
    const-string v3, "_id"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 423
    const-string v3, "pkgname"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 424
    const-string v3, "version_code"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 425
    const-string v3, "flg"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 433
    :cond_1
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 434
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 435
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 436
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 438
    iget-object v13, v1, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 439
    const/4 v2, 0x1

    .line 440
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    iget v3, v1, Lcom/yingyonghui/market/model/q;->s:I

    int-to-long v15, v3

    cmp-long v3, v13, v15

    if-gez v3, :cond_6

    .line 442
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 443
    const-string v3, "apkid"

    iget v12, v1, Lcom/yingyonghui/market/model/q;->e:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v3, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 444
    const-string v3, "apkname"

    iget-object v12, v1, Lcom/yingyonghui/market/model/q;->i:Ljava/lang/String;

    invoke-virtual {v11, v3, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const-string v3, "lastmodifiedtime"

    iget-object v12, v1, Lcom/yingyonghui/market/model/q;->r:Ljava/lang/String;

    invoke-virtual {v11, v3, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const-string v3, "pkgname"

    iget-object v12, v1, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-virtual {v11, v3, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 449
    iget-object v3, v1, Lcom/yingyonghui/market/model/q;->t:[Ljava/lang/String;

    if-eqz v3, :cond_3

    iget v3, v1, Lcom/yingyonghui/market/model/q;->o:I

    if-lez v3, :cond_3

    .line 450
    iget-object v13, v1, Lcom/yingyonghui/market/model/q;->t:[Ljava/lang/String;

    array-length v14, v13

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v14, :cond_2

    aget-object v15, v13, v3

    .line 451
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 450
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 453
    :cond_2
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    .line 454
    if-lez v3, :cond_3

    .line 455
    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 458
    :cond_3
    const-string v3, "permission"

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v3, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const-string v3, "promotion_agent"

    iget-object v12, v1, Lcom/yingyonghui/market/model/q;->F:Ljava/lang/String;

    invoke-virtual {v11, v3, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const-string v3, "promotion_id"

    iget v12, v1, Lcom/yingyonghui/market/model/q;->E:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v3, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 462
    const-string v3, "pubkey_hash"

    iget-object v12, v1, Lcom/yingyonghui/market/model/q;->D:Ljava/lang/String;

    invoke-virtual {v11, v3, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const-string v3, "rating"

    iget v12, v1, Lcom/yingyonghui/market/model/q;->l:F

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v11, v3, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 464
    const-string v3, "rating_count"

    iget v12, v1, Lcom/yingyonghui/market/model/q;->B:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v3, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 465
    const-string v3, "size"

    iget v12, v1, Lcom/yingyonghui/market/model/q;->o:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v3, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 466
    const-string v3, "version_code"

    iget v12, v1, Lcom/yingyonghui/market/model/q;->s:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v3, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 467
    const-string v3, "version_name"

    iget-object v12, v1, Lcom/yingyonghui/market/model/q;->q:Ljava/lang/String;

    invoke-virtual {v11, v3, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const-string v3, "apk_url"

    iget-object v12, v1, Lcom/yingyonghui/market/model/q;->g:Ljava/lang/String;

    invoke-virtual {v11, v3, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const-string v3, "flg"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v11, v3, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 470
    sget-object v3, Lcom/yingyonghui/market/provider/f;->a:Landroid/net/Uri;

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v3, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 471
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/yingyonghui/market/ai;->b:Lcom/yingyonghui/market/ActivityMain;

    invoke-virtual {v10}, Lcom/yingyonghui/market/ActivityMain;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v3, v11, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 473
    invoke-static {}, Lcom/yingyonghui/market/ActivityMain;->c()I

    .line 481
    :cond_4
    :goto_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 486
    :cond_5
    if-nez v2, :cond_0

    .line 487
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 488
    const-string v2, "apkid"

    iget v6, v1, Lcom/yingyonghui/market/model/q;->e:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 489
    const-string v2, "apkname"

    iget-object v6, v1, Lcom/yingyonghui/market/model/q;->i:Ljava/lang/String;

    invoke-virtual {v3, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    const-string v2, "lastmodifiedtime"

    iget-object v6, v1, Lcom/yingyonghui/market/model/q;->r:Ljava/lang/String;

    invoke-virtual {v3, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const-string v2, "pkgname"

    iget-object v6, v1, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-virtual {v3, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 494
    iget-object v2, v1, Lcom/yingyonghui/market/model/q;->t:[Ljava/lang/String;

    if-eqz v2, :cond_9

    iget v2, v1, Lcom/yingyonghui/market/model/q;->o:I

    if-lez v2, :cond_9

    .line 495
    iget-object v7, v1, Lcom/yingyonghui/market/model/q;->t:[Ljava/lang/String;

    array-length v8, v7

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v8, :cond_8

    aget-object v9, v7, v2

    .line 496
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 495
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 476
    :cond_6
    const-string v3, "0"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 477
    invoke-static {}, Lcom/yingyonghui/market/ActivityMain;->c()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 527
    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 530
    if-eqz v4, :cond_7

    .line 531
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 536
    :cond_7
    :goto_4
    const/4 v1, 0x0

    return-object v1

    .line 498
    :cond_8
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    .line 499
    if-lez v2, :cond_9

    .line 500
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 503
    :cond_9
    const-string v2, "permission"

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const-string v2, "promotion_agent"

    iget-object v6, v1, Lcom/yingyonghui/market/model/q;->F:Ljava/lang/String;

    invoke-virtual {v3, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string v2, "promotion_id"

    iget v6, v1, Lcom/yingyonghui/market/model/q;->E:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 507
    const-string v2, "pubkey_hash"

    iget-object v6, v1, Lcom/yingyonghui/market/model/q;->D:Ljava/lang/String;

    invoke-virtual {v3, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    const-string v2, "rating"

    iget v6, v1, Lcom/yingyonghui/market/model/q;->l:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v3, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 509
    const-string v2, "rating_count"

    iget v6, v1, Lcom/yingyonghui/market/model/q;->B:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 510
    const-string v2, "size"

    iget v6, v1, Lcom/yingyonghui/market/model/q;->o:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 511
    const-string v2, "version_code"

    iget v6, v1, Lcom/yingyonghui/market/model/q;->s:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 512
    const-string v2, "version_name"

    iget-object v6, v1, Lcom/yingyonghui/market/model/q;->q:Ljava/lang/String;

    invoke-virtual {v3, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const-string v2, "apk_url"

    iget-object v1, v1, Lcom/yingyonghui/market/model/q;->g:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    const-string v1, "flg"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 517
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yingyonghui/market/ai;->b:Lcom/yingyonghui/market/ActivityMain;

    invoke-virtual {v1}, Lcom/yingyonghui/market/ActivityMain;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/yingyonghui/market/provider/f;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 519
    :goto_5
    :try_start_4
    invoke-static {}, Lcom/yingyonghui/market/ActivityMain;->c()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 530
    :catchall_0
    move-exception v1

    if-eqz v4, :cond_a

    .line 531
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v1

    .line 530
    :cond_b
    if-eqz v4, :cond_7

    .line 531
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    :catch_1
    move-exception v1

    goto :goto_5
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 401
    invoke-direct {p0}, Lcom/yingyonghui/market/ai;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 401
    sget-object v0, Lcom/yingyonghui/market/ActivityMain;->c:Landroid/widget/TextView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yingyonghui/market/ai;->b:Lcom/yingyonghui/market/ActivityMain;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityMain;->c(Lcom/yingyonghui/market/ActivityMain;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const v1, 0x7f0b011a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/yingyonghui/market/ActivityMain;->c:Landroid/widget/TextView;

    :cond_0
    invoke-static {}, Lcom/yingyonghui/market/ActivityMain;->d()I

    move-result v0

    if-lez v0, :cond_2

    sget-object v0, Lcom/yingyonghui/market/ActivityMain;->c:Landroid/widget/TextView;

    invoke-static {}, Lcom/yingyonghui/market/ActivityMain;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/yingyonghui/market/ActivityMain;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/yingyonghui/market/ai;->b:Lcom/yingyonghui/market/ActivityMain;

    const-string v1, "ignore_app_update_notification"

    invoke-static {v0, v1}, Lcom/yingyonghui/market/util/l;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yingyonghui/market/ai;->b:Lcom/yingyonghui/market/ActivityMain;

    invoke-static {v0}, Lcom/yingyonghui/market/online/f;->a(Landroid/content/Context;)Lcom/yingyonghui/market/online/f;

    move-result-object v0

    invoke-static {}, Lcom/yingyonghui/market/ActivityMain;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/online/f;->a(I)V

    :cond_1
    iget-object v0, p0, Lcom/yingyonghui/market/ai;->b:Lcom/yingyonghui/market/ActivityMain;

    invoke-static {v0}, Lcom/yingyonghui/market/online/f;->a(Landroid/content/Context;)Lcom/yingyonghui/market/online/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yingyonghui/market/online/f;->b()V

    return-void

    :cond_2
    sget-object v0, Lcom/yingyonghui/market/ActivityMain;->c:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/yingyonghui/market/ActivityMain;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
