.class public final Lcom/yingyonghui/downloads/y;
.super Ljava/lang/Object;
.source "DownloadInfo.java"


# instance fields
.field public A:I

.field public B:Z

.field public C:Ljava/lang/String;

.field public D:Ljava/lang/String;

.field public E:I

.field public volatile F:Z

.field private G:I

.field private H:Ljava/util/List;

.field private I:Lcom/yingyonghui/downloads/u;

.field private J:Landroid/content/Context;

.field public a:J

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:J

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:J

.field public u:J

.field public v:Ljava/lang/String;

.field public w:Z

.field public x:Z

.field public y:Ljava/lang/String;

.field public z:Z


# direct methods
.method synthetic constructor <init>(Landroid/content/Context;Lcom/yingyonghui/downloads/u;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yingyonghui/downloads/y;-><init>(Landroid/content/Context;Lcom/yingyonghui/downloads/u;B)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/yingyonghui/downloads/u;B)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yingyonghui/downloads/y;->H:Ljava/util/List;

    .line 252
    iput-object p1, p0, Lcom/yingyonghui/downloads/y;->J:Landroid/content/Context;

    .line 253
    iput-object p2, p0, Lcom/yingyonghui/downloads/y;->I:Lcom/yingyonghui/downloads/u;

    .line 254
    sget-object v0, Lcom/yingyonghui/downloads/e;->a:Ljava/util/Random;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/yingyonghui/downloads/y;->G:I

    .line 255
    return-void
.end method

.method static synthetic a(Lcom/yingyonghui/downloads/y;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/yingyonghui/downloads/y;->H:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a(J)J
    .locals 5
    .parameter

    .prologue
    .line 292
    iget v0, p0, Lcom/yingyonghui/downloads/y;->k:I

    if-nez v0, :cond_0

    .line 298
    :goto_0
    return-wide p1

    .line 295
    :cond_0
    iget v0, p0, Lcom/yingyonghui/downloads/y;->l:I

    if-lez v0, :cond_1

    .line 296
    iget-wide v0, p0, Lcom/yingyonghui/downloads/y;->m:J

    iget v2, p0, Lcom/yingyonghui/downloads/y;->l:I

    int-to-long v2, v2

    add-long p1, v0, v2

    goto :goto_0

    .line 298
    :cond_1
    iget-wide v0, p0, Lcom/yingyonghui/downloads/y;->m:J

    iget v2, p0, Lcom/yingyonghui/downloads/y;->G:I

    add-int/lit16 v2, v2, 0x3e8

    mul-int/lit8 v2, v2, 0x3

    const/4 v3, 0x1

    iget v4, p0, Lcom/yingyonghui/downloads/y;->k:I

    add-int/lit8 v4, v4, -0x1

    shl-int/2addr v3, v4

    mul-int/2addr v2, v3

    int-to-long v2, v2

    add-long p1, v0, v2

    goto :goto_0
.end method

.method public final a()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/yingyonghui/downloads/y;->H:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 262
    iget-object v0, p0, Lcom/yingyonghui/downloads/y;->n:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    iget-boolean v0, p0, Lcom/yingyonghui/downloads/y;->z:Z

    if-eqz v0, :cond_2

    .line 268
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 269
    iget-object v1, p0, Lcom/yingyonghui/downloads/y;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    const-string v1, "extra_download_id"

    iget-wide v2, p0, Lcom/yingyonghui/downloads/y;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 285
    :goto_1
    iget-object v1, p0, Lcom/yingyonghui/downloads/y;->I:Lcom/yingyonghui/downloads/u;

    invoke-interface {v1, v0}, Lcom/yingyonghui/downloads/u;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 272
    :cond_2
    iget-object v0, p0, Lcom/yingyonghui/downloads/y;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 275
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOWNLOAD_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 276
    iget-object v1, p0, Lcom/yingyonghui/downloads/y;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/yingyonghui/downloads/y;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    iget-object v1, p0, Lcom/yingyonghui/downloads/y;->p:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 278
    const-string v1, "notificationextras"

    iget-object v2, p0, Lcom/yingyonghui/downloads/y;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    :cond_3
    sget-object v1, Lcom/yingyonghui/downloads/a;->a:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/yingyonghui/downloads/y;->a:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1
.end method

.method final b(J)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0xc0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 456
    iget-boolean v2, p0, Lcom/yingyonghui/downloads/y;->F:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/yingyonghui/downloads/y;->i:I

    if-eq v2, v1, :cond_0

    iget v2, p0, Lcom/yingyonghui/downloads/y;->j:I

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 475
    :goto_1
    return-void

    :sswitch_0
    move v0, v1

    .line 456
    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/yingyonghui/downloads/y;->c()I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/yingyonghui/downloads/y;->a(J)J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 460
    :cond_1
    sget-boolean v0, Lcom/yingyonghui/downloads/w;->a:Z

    if-eqz v0, :cond_2

    .line 461
    const-string v0, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service spawning thread to handle download "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/yingyonghui/downloads/y;->a:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_2
    iget-boolean v0, p0, Lcom/yingyonghui/downloads/y;->F:Z

    if-eqz v0, :cond_3

    .line 464
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Multiple threads on same download"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 466
    :cond_3
    iget v0, p0, Lcom/yingyonghui/downloads/y;->j:I

    if-eq v0, v5, :cond_4

    .line 467
    iput v5, p0, Lcom/yingyonghui/downloads/y;->j:I

    .line 468
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 469
    const-string v2, "status"

    iget v3, p0, Lcom/yingyonghui/downloads/y;->j:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 470
    iget-object v2, p0, Lcom/yingyonghui/downloads/y;->J:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yingyonghui/downloads/y;->d()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 472
    :cond_4
    new-instance v0, Lcom/yingyonghui/downloads/s;

    iget-object v2, p0, Lcom/yingyonghui/downloads/y;->J:Landroid/content/Context;

    iget-object v3, p0, Lcom/yingyonghui/downloads/y;->I:Lcom/yingyonghui/downloads/u;

    invoke-direct {v0, v2, v3, p0}, Lcom/yingyonghui/downloads/s;-><init>(Landroid/content/Context;Lcom/yingyonghui/downloads/u;Lcom/yingyonghui/downloads/y;)V

    .line 473
    iput-boolean v1, p0, Lcom/yingyonghui/downloads/y;->F:Z

    .line 474
    iget-object v1, p0, Lcom/yingyonghui/downloads/y;->I:Lcom/yingyonghui/downloads/u;

    invoke-interface {v1, v0}, Lcom/yingyonghui/downloads/u;->a(Ljava/lang/Thread;)V

    goto :goto_1

    .line 456
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xbe -> :sswitch_0
        0xc0 -> :sswitch_0
        0xc1 -> :sswitch_0
        0xc2 -> :sswitch_2
        0xc3 -> :sswitch_1
        0xc4 -> :sswitch_1
    .end sparse-switch
.end method

.method public final c()I
    .locals 9

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 354
    iget-object v4, p0, Lcom/yingyonghui/downloads/y;->I:Lcom/yingyonghui/downloads/u;

    invoke-interface {v4}, Lcom/yingyonghui/downloads/u;->b()Ljava/lang/Integer;

    move-result-object v5

    .line 355
    if-nez v5, :cond_0

    .line 361
    :goto_0
    return v0

    .line 358
    :cond_0
    iget-boolean v4, p0, Lcom/yingyonghui/downloads/y;->z:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/yingyonghui/downloads/y;->B:Z

    :goto_1
    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/yingyonghui/downloads/y;->I:Lcom/yingyonghui/downloads/u;

    invoke-interface {v4}, Lcom/yingyonghui/downloads/u;->c()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 359
    const/4 v0, 0x5

    goto :goto_0

    .line 358
    :cond_1
    iget v4, p0, Lcom/yingyonghui/downloads/y;->g:I

    if-eq v4, v3, :cond_2

    move v4, v1

    goto :goto_1

    :cond_2
    move v4, v2

    goto :goto_1

    .line 361
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-boolean v5, p0, Lcom/yingyonghui/downloads/y;->z:Z

    if-eqz v5, :cond_4

    packed-switch v4, :pswitch_data_0

    move v0, v2

    :goto_2
    :pswitch_0
    iget v2, p0, Lcom/yingyonghui/downloads/y;->A:I

    and-int/2addr v0, v2

    if-nez v0, :cond_4

    const/4 v0, 0x6

    goto :goto_0

    :pswitch_1
    move v0, v1

    goto :goto_2

    :cond_4
    iget-wide v5, p0, Lcom/yingyonghui/downloads/y;->t:J

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-lez v0, :cond_6

    if-eq v4, v1, :cond_6

    iget-object v0, p0, Lcom/yingyonghui/downloads/y;->I:Lcom/yingyonghui/downloads/u;

    invoke-interface {v0}, Lcom/yingyonghui/downloads/u;->d()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-wide v4, p0, Lcom/yingyonghui/downloads/y;->t:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_5

    move v0, v3

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/yingyonghui/downloads/y;->E:I

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/yingyonghui/downloads/y;->I:Lcom/yingyonghui/downloads/u;

    invoke-interface {v0}, Lcom/yingyonghui/downloads/u;->e()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-wide v2, p0, Lcom/yingyonghui/downloads/y;->t:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_6

    const/4 v0, 0x4

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 488
    sget-object v0, Lcom/yingyonghui/downloads/a;->b:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/yingyonghui/downloads/y;->a:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
