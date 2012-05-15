.class final Lcom/yingyonghui/market/log/AnalyticsService$ActivityWatcher;
.super Landroid/app/IActivityWatcher$Stub;
.source "AnalyticsService.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:I

.field private e:Landroid/app/ActivityManager;

.field private synthetic f:Lcom/yingyonghui/market/log/AnalyticsService;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/log/AnalyticsService;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Lcom/yingyonghui/market/log/AnalyticsService$ActivityWatcher;->f:Lcom/yingyonghui/market/log/AnalyticsService;

    invoke-direct {p0}, Landroid/app/IActivityWatcher$Stub;-><init>()V

    .line 284
    iput-object p2, p0, Lcom/yingyonghui/market/log/AnalyticsService$ActivityWatcher;->a:Landroid/content/Context;

    .line 285
    const-string v0, "activity"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/yingyonghui/market/log/AnalyticsService$ActivityWatcher;->e:Landroid/app/ActivityManager;

    .line 286
    return-void
.end method

.method private a()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 374
    invoke-static {}, Lcom/yingyonghui/market/log/AnalyticsService;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/log/AnalyticsService$ActivityWatcher;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/log/q;

    .line 375
    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/yingyonghui/market/log/AnalyticsService$ActivityWatcher;->c:J

    cmp-long v1, v1, v5

    if-lez v1, :cond_0

    .line 376
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/yingyonghui/market/log/AnalyticsService$ActivityWatcher;->c:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/yingyonghui/market/log/q;->b:J

    .line 381
    :cond_0
    iput-wide v5, p0, Lcom/yingyonghui/market/log/AnalyticsService$ActivityWatcher;->c:J

    .line 382
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yingyonghui/market/log/AnalyticsService$ActivityWatcher;->b:Ljava/lang/String;

    .line 383
    return-void
.end method


# virtual methods
.method public final activityResuming(I)V
    .locals 8
    .parameter

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v5, 0x1

    .line 290
    iget v0, p0, Lcom/yingyonghui/market/log/AnalyticsService$ActivityWatcher;->d:I

    if-ne p1, v0, :cond_1

    .line 291
    invoke-direct {p0}, Lcom/yingyonghui/market/log/AnalyticsService$ActivityWatcher;->a()V

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/yingyonghui/market/log/AnalyticsService$ActivityWatcher;->e:Landroid/app/ActivityManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v0

    .line 296
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v5, :cond_0

    .line 297
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 299
    iget-wide v1, p0, Lcom/yingyonghui/market/log/AnalyticsService$ActivityWatcher;->c:J

    cmp-long v1, v1, v6

    if-lez v1, :cond_2

    .line 300
    iget v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    if-ne v1, v3, :cond_2

    .line 301
    invoke-direct {p0}, Lcom/yingyonghui/market/log/AnalyticsService$ActivityWatcher;->a()V

    goto :goto_0

    .line 307
    :cond_2
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    if-eq v1, v3, :cond_0

    .line 308
    iget-object v1, p0, Lcom/yingyonghui/market/log/AnalyticsService$ActivityWatcher;->e:Landroid/app/ActivityManager;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 309
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 310
    iget v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    iget v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    if-ne v3, v4, :cond_3

    .line 311
    iget-object v0, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 313
    invoke-static {v1}, Lcom/yingyonghui/market/log/AnalyticsService;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 314
    invoke-direct {p0}, Lcom/yingyonghui/market/log/AnalyticsService$ActivityWatcher;->a()V

    .line 315
    iput p1, p0, Lcom/yingyonghui/market/log/AnalyticsService$ActivityWatcher;->d:I

    goto :goto_0

    .line 317
    :cond_4
    invoke-static {v1}, Lcom/yingyonghui/market/log/AnalyticsService;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/yingyonghui/market/log/AnalyticsService$ActivityWatcher;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/yingyonghui/market/log/AnalyticsService$ActivityWatcher;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 324
    invoke-static {}, Lcom/yingyonghui/market/log/AnalyticsService;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/yingyonghui/market/log/AnalyticsService$ActivityWatcher;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/log/q;

    .line 325
    if-eqz v0, :cond_5

    iget-wide v2, v0, Lcom/yingyonghui/market/log/q;->b:J

    cmp-long v0, v2, v6

    if-nez v0, :cond_5

    .line 326
    invoke-direct {p0}, Lcom/yingyonghui/market/log/AnalyticsService$ActivityWatcher;->a()V

    .line 330
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/yingyonghui/market/log/AnalyticsService$ActivityWatcher;->c:J

    .line 331
    iput-object v1, p0, Lcom/yingyonghui/market/log/AnalyticsService$ActivityWatcher;->b:Ljava/lang/String;

    .line 333
    invoke-static {}, Lcom/yingyonghui/market/log/AnalyticsService;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/log/q;

    .line 334
    if-nez v0, :cond_7

    .line 335
    new-instance v0, Lcom/yingyonghui/market/log/q;

    invoke-direct {v0}, Lcom/yingyonghui/market/log/q;-><init>()V

    .line 336
    iput v5, v0, Lcom/yingyonghui/market/log/q;->a:I

    .line 338
    iget-object v2, p0, Lcom/yingyonghui/market/log/AnalyticsService$ActivityWatcher;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/yingyonghui/market/util/GlobalUtil;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 339
    if-eqz v2, :cond_6

    .line 340
    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v3, v0, Lcom/yingyonghui/market/log/q;->c:I

    .line 341
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_6

    .line 342
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v2}, Lcom/yingyonghui/market/util/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/yingyonghui/market/log/q;->d:Ljava/lang/String;

    .line 346
    :cond_6
    invoke-static {}, Lcom/yingyonghui/market/log/AnalyticsService;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 348
    :cond_7
    iget v1, v0, Lcom/yingyonghui/market/log/q;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 349
    if-nez v1, :cond_8

    .line 350
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 354
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/yingyonghui/market/log/q;->a:I

    goto/16 :goto_0

    .line 352
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1
.end method

.method public final closingSystemDialogs(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 371
    return-void
.end method
