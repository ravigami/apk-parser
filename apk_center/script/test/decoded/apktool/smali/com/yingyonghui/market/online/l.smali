.class public Lcom/yingyonghui/market/online/l;
.super Ljava/lang/Object;
.source "HttpManager.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field private static c:Lcom/yingyonghui/market/online/l;


# instance fields
.field private d:Landroid/content/Context;

.field private e:Ljava/util/Queue;

.field private f:I

.field private g:Lcom/yingyonghui/market/online/n;

.field private h:I

.field private i:Landroid/os/Handler;

.field private j:[Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "http://mobile.appchina.com/market/"

    sput-object v0, Lcom/yingyonghui/market/online/l;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/yingyonghui/market/online/l;->e:Ljava/util/Queue;

    .line 52
    iput v0, p0, Lcom/yingyonghui/market/online/l;->f:I

    .line 287
    iput v0, p0, Lcom/yingyonghui/market/online/l;->h:I

    .line 292
    new-array v1, v3, [Landroid/os/Handler;

    iput-object v1, p0, Lcom/yingyonghui/market/online/l;->j:[Landroid/os/Handler;

    .line 349
    iput-object p1, p0, Lcom/yingyonghui/market/online/l;->d:Landroid/content/Context;

    .line 350
    invoke-static {}, Lcom/yingyonghui/market/online/l;->a()V

    .line 353
    :goto_0
    if-ge v0, v3, :cond_0

    .line 354
    new-instance v1, Lcom/yingyonghui/market/online/c;

    invoke-direct {v1, p0, v0}, Lcom/yingyonghui/market/online/c;-><init>(Lcom/yingyonghui/market/online/l;I)V

    .line 355
    invoke-virtual {v1, v2}, Lcom/yingyonghui/market/online/c;->setDaemon(Z)V

    .line 356
    invoke-virtual {v1}, Lcom/yingyonghui/market/online/c;->start()V

    .line 357
    invoke-virtual {v1}, Lcom/yingyonghui/market/online/c;->a()V

    .line 353
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 361
    :cond_0
    new-instance v0, Lcom/yingyonghui/market/online/g;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/online/g;-><init>(Lcom/yingyonghui/market/online/l;)V

    .line 362
    invoke-virtual {v0, v2}, Lcom/yingyonghui/market/online/g;->setDaemon(Z)V

    .line 363
    invoke-virtual {v0}, Lcom/yingyonghui/market/online/g;->start()V

    .line 364
    iget-object v1, v0, Lcom/yingyonghui/market/online/g;->a:Lcom/yingyonghui/market/online/l;

    new-instance v2, Lcom/yingyonghui/market/online/m;

    invoke-virtual {v0}, Lcom/yingyonghui/market/online/g;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/yingyonghui/market/online/m;-><init>(Lcom/yingyonghui/market/online/g;Landroid/os/Looper;)V

    iput-object v2, v1, Lcom/yingyonghui/market/online/l;->i:Landroid/os/Handler;

    .line 366
    new-instance v0, Lcom/yingyonghui/market/online/n;

    invoke-direct {v0}, Lcom/yingyonghui/market/online/n;-><init>()V

    iput-object v0, p0, Lcom/yingyonghui/market/online/l;->g:Lcom/yingyonghui/market/online/n;

    .line 367
    return-void
.end method

.method static synthetic a(Lcom/yingyonghui/market/online/l;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 29
    iget v0, p0, Lcom/yingyonghui/market/online/l;->h:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/yingyonghui/market/online/l;->h:I

    return v0
.end method

.method static synthetic a(Lcom/yingyonghui/market/online/l;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/yingyonghui/market/online/l;->d:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/yingyonghui/market/online/l;
    .locals 2
    .parameter

    .prologue
    .line 371
    const-class v1, Lcom/yingyonghui/market/online/l;

    monitor-enter v1

    .line 372
    :try_start_0
    sget-object v0, Lcom/yingyonghui/market/online/l;->c:Lcom/yingyonghui/market/online/l;

    if-nez v0, :cond_0

    .line 373
    new-instance v0, Lcom/yingyonghui/market/online/l;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/online/l;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/yingyonghui/market/online/l;->c:Lcom/yingyonghui/market/online/l;

    .line 375
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    sget-object v0, Lcom/yingyonghui/market/online/l;->c:Lcom/yingyonghui/market/online/l;

    return-object v0

    .line 375
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/yingyonghui/market/online/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "api"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yingyonghui/market/online/l;->b:Ljava/lang/String;

    .line 81
    return-void
.end method

.method private a(Lcom/yingyonghui/market/online/b;)V
    .locals 2
    .parameter

    .prologue
    .line 380
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 381
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 382
    iget-object v1, p0, Lcom/yingyonghui/market/online/l;->i:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 383
    return-void
.end method

.method static synthetic a(Lcom/yingyonghui/market/online/l;Lcom/yingyonghui/market/online/b;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/yingyonghui/market/online/l;->i:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method static synthetic b(Lcom/yingyonghui/market/online/l;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput p1, p0, Lcom/yingyonghui/market/online/l;->f:I

    return p1
.end method

.method static synthetic b(Lcom/yingyonghui/market/online/l;)[Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/yingyonghui/market/online/l;->j:[Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/yingyonghui/market/online/l;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 29
    iget v0, p0, Lcom/yingyonghui/market/online/l;->h:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/yingyonghui/market/online/l;->h:I

    return v0
.end method

.method static synthetic c(Lcom/yingyonghui/market/online/l;)Lcom/yingyonghui/market/online/n;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/yingyonghui/market/online/l;->g:Lcom/yingyonghui/market/online/n;

    return-object v0
.end method

.method static synthetic d(Lcom/yingyonghui/market/online/l;)Ljava/util/Queue;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/yingyonghui/market/online/l;->e:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic e(Lcom/yingyonghui/market/online/l;)I
    .locals 1
    .parameter

    .prologue
    .line 29
    iget v0, p0, Lcom/yingyonghui/market/online/l;->f:I

    return v0
.end method

.method static synthetic f(Lcom/yingyonghui/market/online/l;)I
    .locals 1
    .parameter

    .prologue
    .line 29
    iget v0, p0, Lcom/yingyonghui/market/online/l;->h:I

    return v0
.end method

.method static synthetic g(Lcom/yingyonghui/market/online/l;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/yingyonghui/market/online/l;->i:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 464
    new-instance v0, Lcom/yingyonghui/market/online/b;

    invoke-direct {v0}, Lcom/yingyonghui/market/online/b;-><init>()V

    .line 465
    const/4 v1, 0x2

    iput v1, v0, Lcom/yingyonghui/market/online/b;->b:I

    .line 466
    iput-object p1, v0, Lcom/yingyonghui/market/online/b;->e:Ljava/lang/String;

    .line 467
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/yingyonghui/market/online/b;->f:Ljava/util/List;

    .line 469
    invoke-direct {p0, v0}, Lcom/yingyonghui/market/online/l;->a(Lcom/yingyonghui/market/online/b;)V

    .line 470
    return-void
.end method

.method public final a(Ljava/lang/String;IILandroid/os/Handler;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 476
    new-instance v0, Lcom/yingyonghui/market/online/b;

    invoke-direct {v0}, Lcom/yingyonghui/market/online/b;-><init>()V

    .line 477
    const/4 v1, 0x2

    iput v1, v0, Lcom/yingyonghui/market/online/b;->b:I

    .line 478
    iput p2, v0, Lcom/yingyonghui/market/online/b;->c:I

    .line 479
    iput p3, v0, Lcom/yingyonghui/market/online/b;->d:I

    .line 480
    iput-object p1, v0, Lcom/yingyonghui/market/online/b;->e:Ljava/lang/String;

    .line 481
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/yingyonghui/market/online/b;->f:Ljava/util/List;

    .line 482
    iput-object p4, v0, Lcom/yingyonghui/market/online/b;->g:Landroid/os/Handler;

    .line 484
    invoke-direct {p0, v0}, Lcom/yingyonghui/market/online/l;->a(Lcom/yingyonghui/market/online/b;)V

    .line 485
    return-void
.end method

.method public final a(Ljava/lang/String;ILandroid/os/Handler;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 435
    new-instance v0, Lcom/yingyonghui/market/online/b;

    invoke-direct {v0}, Lcom/yingyonghui/market/online/b;-><init>()V

    .line 436
    const/4 v1, 0x2

    iput v1, v0, Lcom/yingyonghui/market/online/b;->b:I

    .line 437
    iput p2, v0, Lcom/yingyonghui/market/online/b;->c:I

    .line 438
    iput-object p1, v0, Lcom/yingyonghui/market/online/b;->e:Ljava/lang/String;

    .line 439
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/yingyonghui/market/online/b;->f:Ljava/util/List;

    .line 440
    iput-object p3, v0, Lcom/yingyonghui/market/online/b;->g:Landroid/os/Handler;

    .line 442
    invoke-direct {p0, v0}, Lcom/yingyonghui/market/online/l;->a(Lcom/yingyonghui/market/online/b;)V

    .line 443
    return-void
.end method

.method public final a(Ljava/lang/String;ZILandroid/os/Handler;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 449
    new-instance v0, Lcom/yingyonghui/market/online/b;

    invoke-direct {v0}, Lcom/yingyonghui/market/online/b;-><init>()V

    .line 450
    const/4 v1, 0x2

    iput v1, v0, Lcom/yingyonghui/market/online/b;->b:I

    .line 451
    iput p3, v0, Lcom/yingyonghui/market/online/b;->c:I

    .line 452
    iput-object p1, v0, Lcom/yingyonghui/market/online/b;->e:Ljava/lang/String;

    .line 453
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/yingyonghui/market/online/b;->f:Ljava/util/List;

    .line 454
    iput-object p4, v0, Lcom/yingyonghui/market/online/b;->g:Landroid/os/Handler;

    .line 455
    iput-boolean p2, v0, Lcom/yingyonghui/market/online/b;->j:Z

    .line 457
    invoke-direct {p0, v0}, Lcom/yingyonghui/market/online/l;->a(Lcom/yingyonghui/market/online/b;)V

    .line 458
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .parameter

    .prologue
    .line 394
    new-instance v0, Lcom/yingyonghui/market/online/b;

    invoke-direct {v0}, Lcom/yingyonghui/market/online/b;-><init>()V

    .line 395
    const/4 v1, 0x1

    iput v1, v0, Lcom/yingyonghui/market/online/b;->b:I

    .line 396
    sget-object v1, Lcom/yingyonghui/market/online/l;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/yingyonghui/market/online/b;->e:Ljava/lang/String;

    .line 397
    iput-object p1, v0, Lcom/yingyonghui/market/online/b;->f:Ljava/util/List;

    .line 399
    invoke-direct {p0, v0}, Lcom/yingyonghui/market/online/l;->a(Lcom/yingyonghui/market/online/b;)V

    .line 400
    return-void
.end method

.method public final a(Ljava/util/List;IILandroid/os/Handler;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 420
    new-instance v0, Lcom/yingyonghui/market/online/b;

    invoke-direct {v0}, Lcom/yingyonghui/market/online/b;-><init>()V

    .line 421
    const/4 v1, 0x1

    iput v1, v0, Lcom/yingyonghui/market/online/b;->b:I

    .line 422
    iput p2, v0, Lcom/yingyonghui/market/online/b;->c:I

    .line 423
    iput p3, v0, Lcom/yingyonghui/market/online/b;->d:I

    .line 424
    sget-object v1, Lcom/yingyonghui/market/online/l;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/yingyonghui/market/online/b;->e:Ljava/lang/String;

    .line 425
    iput-object p1, v0, Lcom/yingyonghui/market/online/b;->f:Ljava/util/List;

    .line 426
    iput-object p4, v0, Lcom/yingyonghui/market/online/b;->g:Landroid/os/Handler;

    .line 428
    invoke-direct {p0, v0}, Lcom/yingyonghui/market/online/l;->a(Lcom/yingyonghui/market/online/b;)V

    .line 429
    return-void
.end method

.method public final a(Ljava/util/List;ILandroid/os/Handler;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 406
    new-instance v0, Lcom/yingyonghui/market/online/b;

    invoke-direct {v0}, Lcom/yingyonghui/market/online/b;-><init>()V

    .line 407
    const/4 v1, 0x1

    iput v1, v0, Lcom/yingyonghui/market/online/b;->b:I

    .line 408
    iput p2, v0, Lcom/yingyonghui/market/online/b;->c:I

    .line 409
    sget-object v1, Lcom/yingyonghui/market/online/l;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/yingyonghui/market/online/b;->e:Ljava/lang/String;

    .line 410
    iput-object p1, v0, Lcom/yingyonghui/market/online/b;->f:Ljava/util/List;

    .line 411
    iput-object p3, v0, Lcom/yingyonghui/market/online/b;->g:Landroid/os/Handler;

    .line 413
    invoke-direct {p0, v0}, Lcom/yingyonghui/market/online/l;->a(Lcom/yingyonghui/market/online/b;)V

    .line 414
    return-void
.end method

.method public final a(Ljava/util/List;[BLjava/lang/String;Landroid/os/Handler;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 491
    new-instance v0, Lcom/yingyonghui/market/online/b;

    invoke-direct {v0}, Lcom/yingyonghui/market/online/b;-><init>()V

    .line 492
    const/4 v1, 0x3

    iput v1, v0, Lcom/yingyonghui/market/online/b;->b:I

    .line 493
    sget-object v1, Lcom/yingyonghui/market/online/l;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/yingyonghui/market/online/b;->e:Ljava/lang/String;

    .line 494
    iput-object p1, v0, Lcom/yingyonghui/market/online/b;->f:Ljava/util/List;

    .line 495
    iput-object p2, v0, Lcom/yingyonghui/market/online/b;->l:[B

    .line 496
    iput-object p3, v0, Lcom/yingyonghui/market/online/b;->k:Ljava/lang/String;

    .line 497
    iput-object p4, v0, Lcom/yingyonghui/market/online/b;->g:Landroid/os/Handler;

    .line 499
    invoke-direct {p0, v0}, Lcom/yingyonghui/market/online/l;->a(Lcom/yingyonghui/market/online/b;)V

    .line 500
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 505
    iget-object v1, p0, Lcom/yingyonghui/market/online/l;->e:Ljava/util/Queue;

    monitor-enter v1

    .line 506
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/yingyonghui/market/online/l;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/online/b;

    if-eqz v0, :cond_0

    .line 509
    invoke-direct {p0, v0}, Lcom/yingyonghui/market/online/l;->a(Lcom/yingyonghui/market/online/b;)V

    goto :goto_0

    .line 512
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 511
    :cond_0
    const/4 v0, 0x2

    :try_start_1
    iput v0, p0, Lcom/yingyonghui/market/online/l;->f:I

    .line 512
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 514
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 515
    const/16 v1, 0x4d2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 516
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 517
    iget-object v1, p0, Lcom/yingyonghui/market/online/l;->i:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 531
    return-void
.end method
