.class public final Lcom/yingyonghui/downloads/s;
.super Ljava/lang/Thread;
.source "DownloadThread.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/yingyonghui/downloads/y;

.field private c:Lcom/yingyonghui/downloads/u;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yingyonghui/downloads/u;Lcom/yingyonghui/downloads/y;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/yingyonghui/downloads/s;->a:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/yingyonghui/downloads/s;->c:Lcom/yingyonghui/downloads/u;

    .line 54
    iput-object p3, p0, Lcom/yingyonghui/downloads/s;->b:Lcom/yingyonghui/downloads/y;

    .line 55
    return-void
.end method

.method private a(Lcom/yingyonghui/downloads/t;Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 522
    :try_start_0
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 523
    :catch_0
    move-exception v0

    .line 524
    new-instance v1, Lcom/yingyonghui/downloads/m;

    invoke-direct {p0, p1}, Lcom/yingyonghui/downloads/s;->b(Lcom/yingyonghui/downloads/t;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "while getting entity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/yingyonghui/downloads/m;-><init>(Lcom/yingyonghui/downloads/s;ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 45
    invoke-static {p0}, Lcom/yingyonghui/downloads/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/yingyonghui/downloads/t;Lcom/yingyonghui/downloads/c;Lorg/apache/http/client/methods/HttpGet;)Lorg/apache/http/HttpResponse;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 774
    :try_start_0
    invoke-virtual {p2, p3}, Lcom/yingyonghui/downloads/c;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 775
    :catch_0
    move-exception v0

    .line 776
    new-instance v1, Lcom/yingyonghui/downloads/m;

    const/16 v2, 0x1ef

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "while trying to execute request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/yingyonghui/downloads/m;-><init>(Lcom/yingyonghui/downloads/s;ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 778
    :catch_1
    move-exception v0

    .line 779
    new-instance v1, Lcom/yingyonghui/downloads/m;

    invoke-direct {p0, p1}, Lcom/yingyonghui/downloads/s;->b(Lcom/yingyonghui/downloads/t;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "while trying to execute request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/yingyonghui/downloads/m;-><init>(Lcom/yingyonghui/downloads/s;ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a()V
    .locals 3

    .prologue
    .line 246
    iget-object v0, p0, Lcom/yingyonghui/downloads/s;->b:Lcom/yingyonghui/downloads/y;

    invoke-virtual {v0}, Lcom/yingyonghui/downloads/y;->c()I

    move-result v0

    .line 247
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 248
    new-instance v1, Lcom/yingyonghui/downloads/m;

    const/16 v2, 0xc3

    packed-switch v0, :pswitch_data_0

    const-string v0, "unknown error with network connectivity"

    :goto_0
    invoke-direct {v1, p0, v2, v0}, Lcom/yingyonghui/downloads/m;-><init>(Lcom/yingyonghui/downloads/s;ILjava/lang/String;)V

    throw v1

    :pswitch_0
    const-string v0, "download size exceeds recommended limit for mobile network"

    goto :goto_0

    :pswitch_1
    const-string v0, "download size exceeds limit for mobile network"

    goto :goto_0

    :pswitch_2
    const-string v0, "no network connection available"

    goto :goto_0

    :pswitch_3
    const-string v0, "download cannot use the current network connection because it is roaming"

    goto :goto_0

    :pswitch_4
    const-string v0, "download was requested to not use the current network type"

    goto :goto_0

    .line 260
    :cond_0
    return-void

    .line 248
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private a(IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 868
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "status"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "_data"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p6, :cond_0

    const-string v1, "uri"

    invoke-virtual {v0, v1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "mimetype"

    invoke-virtual {v0, v1, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "lastmod"

    iget-object v2, p0, Lcom/yingyonghui/downloads/s;->c:Lcom/yingyonghui/downloads/u;

    invoke-interface {v2}, Lcom/yingyonghui/downloads/u;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "method"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-nez p2, :cond_2

    const-string v1, "numfailed"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_0
    iget-object v1, p0, Lcom/yingyonghui/downloads/s;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/yingyonghui/downloads/s;->b:Lcom/yingyonghui/downloads/y;

    invoke-virtual {v2}, Lcom/yingyonghui/downloads/y;->d()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 870
    invoke-static {p1}, Lcom/yingyonghui/downloads/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 871
    iget-object v0, p0, Lcom/yingyonghui/downloads/s;->b:Lcom/yingyonghui/downloads/y;

    invoke-virtual {v0}, Lcom/yingyonghui/downloads/y;->b()V

    .line 873
    :cond_1
    return-void

    .line 868
    :cond_2
    if-eqz p4, :cond_3

    const-string v1, "numfailed"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_3
    const-string v1, "numfailed"

    iget-object v2, p0, Lcom/yingyonghui/downloads/s;->b:Lcom/yingyonghui/downloads/y;

    iget v2, v2, Lcom/yingyonghui/downloads/y;->k:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method private a(Lcom/yingyonghui/downloads/l;Lorg/apache/http/client/methods/HttpGet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 850
    iget-object v0, p0, Lcom/yingyonghui/downloads/s;->b:Lcom/yingyonghui/downloads/y;

    invoke-virtual {v0}, Lcom/yingyonghui/downloads/y;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 851
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 854
    :cond_0
    iget-boolean v0, p1, Lcom/yingyonghui/downloads/l;->c:Z

    if-eqz v0, :cond_2

    .line 855
    iget-object v0, p1, Lcom/yingyonghui/downloads/l;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 856
    const-string v0, "If-Match"

    iget-object v1, p1, Lcom/yingyonghui/downloads/l;->b:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    :cond_1
    const-string v0, "Range"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/yingyonghui/downloads/l;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    :cond_2
    return-void
.end method

.method private static a(Lcom/yingyonghui/downloads/t;)V
    .locals 4
    .parameter

    .prologue
    .line 374
    :try_start_0
    iget-object v0, p0, Lcom/yingyonghui/downloads/t;->b:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/yingyonghui/downloads/t;->b:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 376
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yingyonghui/downloads/t;->b:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 378
    :catch_0
    move-exception v0

    .line 379
    sget-boolean v1, Lcom/yingyonghui/downloads/w;->a:Z

    if-eqz v1, :cond_0

    .line 380
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception when closing the file after download : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static a(Lcom/yingyonghui/downloads/t;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 308
    invoke-static {p0}, Lcom/yingyonghui/downloads/s;->a(Lcom/yingyonghui/downloads/t;)V

    .line 309
    iget-object v0, p0, Lcom/yingyonghui/downloads/t;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/yingyonghui/downloads/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/yingyonghui/downloads/t;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yingyonghui/downloads/t;->a:Ljava/lang/String;

    .line 313
    :cond_0
    return-void
.end method

.method private a(Lcom/yingyonghui/downloads/t;Lcom/yingyonghui/downloads/l;[BLjava/io/InputStream;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x1ea

    const/4 v0, 0x1

    const/4 v7, 0x0

    .line 270
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yingyonghui/downloads/s;->b(Lcom/yingyonghui/downloads/t;Lcom/yingyonghui/downloads/l;[BLjava/io/InputStream;)I

    move-result v1

    .line 271
    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    .line 272
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "current_bytes"

    iget v3, p2, Lcom/yingyonghui/downloads/l;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p2, Lcom/yingyonghui/downloads/l;->d:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v2, "total_bytes"

    iget v3, p2, Lcom/yingyonghui/downloads/l;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    iget-object v2, p0, Lcom/yingyonghui/downloads/s;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/yingyonghui/downloads/s;->b:Lcom/yingyonghui/downloads/y;

    invoke-virtual {v3}, Lcom/yingyonghui/downloads/y;->d()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v1, p2, Lcom/yingyonghui/downloads/l;->d:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget v1, p2, Lcom/yingyonghui/downloads/l;->a:I

    iget-object v2, p2, Lcom/yingyonghui/downloads/l;->d:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_2

    :goto_0
    if-eqz v0, :cond_8

    invoke-direct {p0, p2}, Lcom/yingyonghui/downloads/s;->a(Lcom/yingyonghui/downloads/l;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/yingyonghui/downloads/m;

    const/16 v1, 0x1e9

    const-string v2, "mismatched content length"

    invoke-direct {v0, p0, v1, v2}, Lcom/yingyonghui/downloads/m;-><init>(Lcom/yingyonghui/downloads/s;ILjava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/yingyonghui/downloads/m;

    invoke-direct {p0, p1}, Lcom/yingyonghui/downloads/s;->b(Lcom/yingyonghui/downloads/t;)I

    move-result v1

    const-string v2, "closed socket before end of file"

    invoke-direct {v0, p0, v1, v2}, Lcom/yingyonghui/downloads/m;-><init>(Lcom/yingyonghui/downloads/s;ILjava/lang/String;)V

    throw v0

    .line 276
    :cond_4
    iput-boolean v0, p1, Lcom/yingyonghui/downloads/t;->h:Z

    .line 277
    invoke-direct {p0, p1, p3, v1}, Lcom/yingyonghui/downloads/s;->a(Lcom/yingyonghui/downloads/t;[BI)V

    .line 278
    iget v2, p2, Lcom/yingyonghui/downloads/l;->a:I

    add-int/2addr v1, v2

    iput v1, p2, Lcom/yingyonghui/downloads/l;->a:I

    .line 279
    iget-object v1, p0, Lcom/yingyonghui/downloads/s;->c:Lcom/yingyonghui/downloads/u;

    invoke-interface {v1}, Lcom/yingyonghui/downloads/u;->a()J

    move-result-wide v1

    iget v3, p2, Lcom/yingyonghui/downloads/l;->a:I

    iget v4, p2, Lcom/yingyonghui/downloads/l;->g:I

    sub-int/2addr v3, v4

    const/16 v4, 0x1000

    if-le v3, v4, :cond_5

    iget-wide v3, p2, Lcom/yingyonghui/downloads/l;->h:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x5dc

    cmp-long v3, v3, v5

    if-lez v3, :cond_5

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "current_bytes"

    iget v5, p2, Lcom/yingyonghui/downloads/l;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v4, p0, Lcom/yingyonghui/downloads/s;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/yingyonghui/downloads/s;->b:Lcom/yingyonghui/downloads/y;

    invoke-virtual {v5}, Lcom/yingyonghui/downloads/y;->d()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v3, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget v3, p2, Lcom/yingyonghui/downloads/l;->a:I

    iput v3, p2, Lcom/yingyonghui/downloads/l;->g:I

    iput-wide v1, p2, Lcom/yingyonghui/downloads/l;->h:J

    .line 281
    :cond_5
    sget-boolean v1, Lcom/yingyonghui/downloads/w;->b:Z

    if-eqz v1, :cond_6

    .line 282
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloaded "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/yingyonghui/downloads/l;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yingyonghui/downloads/s;->b:Lcom/yingyonghui/downloads/y;

    iget-object v3, v3, Lcom/yingyonghui/downloads/y;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_6
    iget-object v1, p0, Lcom/yingyonghui/downloads/s;->b:Lcom/yingyonghui/downloads/y;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/yingyonghui/downloads/s;->b:Lcom/yingyonghui/downloads/y;

    iget v2, v2, Lcom/yingyonghui/downloads/y;->i:I

    if-ne v2, v0, :cond_7

    new-instance v0, Lcom/yingyonghui/downloads/m;

    const/16 v2, 0xc1

    const-string v3, "download paused by owner"

    invoke-direct {v0, p0, v2, v3}, Lcom/yingyonghui/downloads/m;-><init>(Lcom/yingyonghui/downloads/s;ILjava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_7
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/yingyonghui/downloads/s;->b:Lcom/yingyonghui/downloads/y;

    iget v1, v1, Lcom/yingyonghui/downloads/y;->j:I

    if-ne v1, v8, :cond_0

    new-instance v0, Lcom/yingyonghui/downloads/m;

    const-string v1, "download canceled"

    invoke-direct {v0, p0, v8, v1}, Lcom/yingyonghui/downloads/m;-><init>(Lcom/yingyonghui/downloads/s;ILjava/lang/String;)V

    throw v0

    .line 273
    :cond_8
    return-void
.end method

.method private a(Lcom/yingyonghui/downloads/t;[BI)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 428
    :cond_0
    :try_start_0
    iget-object v0, p1, Lcom/yingyonghui/downloads/t;->b:Ljava/io/FileOutputStream;

    if-nez v0, :cond_1

    .line 429
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p1, Lcom/yingyonghui/downloads/t;->a:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p1, Lcom/yingyonghui/downloads/t;->b:Ljava/io/FileOutputStream;

    .line 431
    :cond_1
    iget-object v0, p1, Lcom/yingyonghui/downloads/t;->b:Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, p3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 432
    iget-object v0, p0, Lcom/yingyonghui/downloads/s;->b:Lcom/yingyonghui/downloads/y;

    iget v0, v0, Lcom/yingyonghui/downloads/y;->g:I

    if-nez v0, :cond_2

    .line 434
    invoke-static {p1}, Lcom/yingyonghui/downloads/s;->a(Lcom/yingyonghui/downloads/t;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    :cond_2
    return-void

    .line 437
    :catch_0
    move-exception v0

    .line 438
    iget-object v1, p0, Lcom/yingyonghui/downloads/s;->b:Lcom/yingyonghui/downloads/y;

    iget v4, v1, Lcom/yingyonghui/downloads/y;->g:I

    if-eq v4, v3, :cond_3

    iget v4, v1, Lcom/yingyonghui/downloads/y;->g:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    iget v1, v1, Lcom/yingyonghui/downloads/y;->g:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_5

    :cond_3
    move v1, v3

    :goto_0
    if-eqz v1, :cond_6

    .line 439
    iget-object v1, p0, Lcom/yingyonghui/downloads/s;->a:Landroid/content/Context;

    const-wide/16 v4, 0x1000

    invoke-static {v1, v4, v5}, Lcom/yingyonghui/downloads/e;->a(Landroid/content/Context;J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 447
    :cond_4
    iget-object v1, p1, Lcom/yingyonghui/downloads/t;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/yingyonghui/downloads/e;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/yingyonghui/downloads/e;->a(Ljava/io/File;)J

    move-result-wide v1

    .line 449
    int-to-long v3, p3

    cmp-long v1, v1, v3

    if-gez v1, :cond_7

    .line 450
    new-instance v1, Lcom/yingyonghui/downloads/m;

    const/16 v2, 0x1f2

    const-string v3, "insufficient space while writing destination file"

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/yingyonghui/downloads/m;-><init>(Lcom/yingyonghui/downloads/s;ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    move v1, v2

    .line 438
    goto :goto_0

    .line 442
    :cond_6
    invoke-static {}, Lcom/yingyonghui/downloads/e;->a()Z

    move-result v1

    if-nez v1, :cond_4

    .line 443
    new-instance v0, Lcom/yingyonghui/downloads/m;

    const/16 v1, 0x1f3

    const-string v2, "external media not mounted while writing destination file"

    invoke-direct {v0, p0, v1, v2}, Lcom/yingyonghui/downloads/m;-><init>(Lcom/yingyonghui/downloads/s;ILjava/lang/String;)V

    throw v0

    .line 453
    :cond_7
    new-instance v1, Lcom/yingyonghui/downloads/m;

    const/16 v2, 0x1ec

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "while writing destination file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/yingyonghui/downloads/m;-><init>(Lcom/yingyonghui/downloads/s;ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Lcom/yingyonghui/downloads/l;)Z
    .locals 1
    .parameter

    .prologue
    .line 485
    iget v0, p1, Lcom/yingyonghui/downloads/l;->a:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/yingyonghui/downloads/s;->b:Lcom/yingyonghui/downloads/y;

    iget-boolean v0, v0, Lcom/yingyonghui/downloads/y;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/yingyonghui/downloads/l;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/yingyonghui/downloads/t;)I
    .locals 4
    .parameter

    .prologue
    .line 786
    iget-object v0, p0, Lcom/yingyonghui/downloads/s;->c:Lcom/yingyonghui/downloads/u;

    invoke-static {v0}, Lcom/yingyonghui/downloads/e;->a(Lcom/yingyonghui/downloads/u;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 787
    const/16 v0, 0xc3

    .line 793
    :goto_0
    return v0

    .line 788
    :cond_0
    iget-object v0, p0, Lcom/yingyonghui/downloads/s;->b:Lcom/yingyonghui/downloads/y;

    iget v0, v0, Lcom/yingyonghui/downloads/y;->k:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 789
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/yingyonghui/downloads/t;->d:Z

    .line 790
    const/16 v0, 0xc2

    goto :goto_0

    .line 792
    :cond_1
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reached max retries for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yingyonghui/downloads/s;->b:Lcom/yingyonghui/downloads/y;

    iget-wide v2, v2, Lcom/yingyonghui/downloads/y;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    const/16 v0, 0x1ef

    goto :goto_0
.end method

.method private b(Lcom/yingyonghui/downloads/t;Lcom/yingyonghui/downloads/l;[BLjava/io/InputStream;)I
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 497
    :try_start_0
    invoke-virtual {p4, p3}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 498
    :catch_0
    move-exception v0

    .line 499
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 501
    const-string v2, "current_bytes"

    iget v3, p2, Lcom/yingyonghui/downloads/l;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 502
    iget-object v2, p0, Lcom/yingyonghui/downloads/s;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/yingyonghui/downloads/s;->b:Lcom/yingyonghui/downloads/y;

    invoke-virtual {v3}, Lcom/yingyonghui/downloads/y;->d()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 503
    invoke-direct {p0, p2}, Lcom/yingyonghui/downloads/s;->a(Lcom/yingyonghui/downloads/l;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 504
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "while reading response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", can\'t resume interrupted download with no ETag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 506
    new-instance v2, Lcom/yingyonghui/downloads/m;

    const/16 v3, 0x1e9

    invoke-direct {v2, p0, v3, v1, v0}, Lcom/yingyonghui/downloads/m;-><init>(Lcom/yingyonghui/downloads/s;ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 509
    :cond_0
    new-instance v1, Lcom/yingyonghui/downloads/m;

    invoke-direct {p0, p1}, Lcom/yingyonghui/downloads/s;->b(Lcom/yingyonghui/downloads/t;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "while reading response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/yingyonghui/downloads/m;-><init>(Lcom/yingyonghui/downloads/s;ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 907
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 909
    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 910
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 911
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 915
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final run()V
    .locals 22

    .prologue
    .line 137
    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 139
    new-instance v17, Lcom/yingyonghui/downloads/t;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yingyonghui/downloads/s;->b:Lcom/yingyonghui/downloads/y;

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Lcom/yingyonghui/downloads/t;-><init>(Lcom/yingyonghui/downloads/y;)V

    .line 140
    const/4 v6, 0x0

    .line 141
    const/4 v5, 0x0

    .line 142
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yingyonghui/downloads/s;->a:Landroid/content/Context;

    const-string v7, "power"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 146
    const/4 v7, 0x1

    const-string v8, "DownloadManager"

    invoke-virtual {v4, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3
    .catch Lcom/yingyonghui/downloads/m; {:try_start_0 .. :try_end_0} :catch_1c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1a

    move-result-object v14

    .line 147
    :try_start_1
    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 150
    sget-boolean v4, Lcom/yingyonghui/downloads/w;->a:Z

    if-eqz v4, :cond_0

    .line 151
    const-string v4, "DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initiating download for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/yingyonghui/downloads/s;->b:Lcom/yingyonghui/downloads/y;

    iget-object v7, v7, Lcom/yingyonghui/downloads/y;->b:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yingyonghui/downloads/s;->b:Lcom/yingyonghui/downloads/y;

    iget-object v4, v4, Lcom/yingyonghui/downloads/y;->r:Ljava/lang/String;

    if-nez v4, :cond_1

    const-string v4, "AndroidDownloadManager"

    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yingyonghui/downloads/s;->a:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/yingyonghui/downloads/c;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/yingyonghui/downloads/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4
    .catch Lcom/yingyonghui/downloads/m; {:try_start_1 .. :try_end_1} :catch_1d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1b

    move-result-object v15

    .line 156
    const/4 v4, 0x0

    move/from16 v16, v4

    .line 157
    :goto_0
    if-nez v16, :cond_35

    .line 158
    :try_start_2
    const-string v4, "DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Initiating request for download "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yingyonghui/downloads/s;->b:Lcom/yingyonghui/downloads/y;

    iget-wide v6, v6, Lcom/yingyonghui/downloads/y;->a:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    new-instance v18, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/yingyonghui/downloads/t;->i:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lcom/yingyonghui/downloads/m; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    .line 161
    :try_start_3
    new-instance v19, Lcom/yingyonghui/downloads/l;

    invoke-direct/range {v19 .. v19}, Lcom/yingyonghui/downloads/l;-><init>()V

    const/16 v4, 0x1000

    new-array v0, v4, [B

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/yingyonghui/downloads/t;->a:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/yingyonghui/downloads/t;->a:Ljava/lang/String;

    invoke-static {v4}, Lcom/yingyonghui/downloads/e;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v4, Lcom/yingyonghui/downloads/m;

    const/16 v5, 0x1ec

    const-string v6, "found invalid internal destination filename"

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v6}, Lcom/yingyonghui/downloads/m;-><init>(Lcom/yingyonghui/downloads/s;ILjava/lang/String;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/yingyonghui/downloads/k; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/yingyonghui/downloads/m; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    .line 178
    :catch_0
    move-exception v4

    :try_start_4
    invoke-virtual/range {v18 .. v18}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Lcom/yingyonghui/downloads/m; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 188
    :catch_1
    move-exception v4

    move-object v6, v14

    move-object v7, v15

    .line 190
    :goto_1
    :try_start_5
    const-string v5, "DownloadManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Aborting request for download "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/yingyonghui/downloads/s;->b:Lcom/yingyonghui/downloads/y;

    iget-wide v9, v9, Lcom/yingyonghui/downloads/y;->a:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/yingyonghui/downloads/m;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget v5, v4, Lcom/yingyonghui/downloads/m;->a:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 199
    if-eqz v6, :cond_2

    .line 200
    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 201
    :cond_2
    if-eqz v7, :cond_3

    .line 204
    invoke-virtual {v7}, Lcom/yingyonghui/downloads/c;->a()V

    .line 205
    :cond_3
    move-object/from16 v0, v17

    invoke-static {v0, v5}, Lcom/yingyonghui/downloads/s;->a(Lcom/yingyonghui/downloads/t;I)V

    .line 208
    move-object/from16 v0, v17

    iget-boolean v6, v0, Lcom/yingyonghui/downloads/t;->d:Z

    move-object/from16 v0, v17

    iget v7, v0, Lcom/yingyonghui/downloads/t;->e:I

    move-object/from16 v0, v17

    iget-boolean v8, v0, Lcom/yingyonghui/downloads/t;->h:Z

    move-object/from16 v0, v17

    iget-object v9, v0, Lcom/yingyonghui/downloads/t;->a:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v10, v0, Lcom/yingyonghui/downloads/t;->g:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/yingyonghui/downloads/t;->c:Ljava/lang/String;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/yingyonghui/downloads/s;->a(IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yingyonghui/downloads/s;->b:Lcom/yingyonghui/downloads/y;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/yingyonghui/downloads/y;->F:Z

    .line 212
    :goto_2
    return-void

    .line 161
    :cond_4
    :try_start_6
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/yingyonghui/downloads/t;->a:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-nez v7, :cond_c

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    const/4 v4, 0x0

    move-object/from16 v0, v17

    iput-object v4, v0, Lcom/yingyonghui/downloads/t;->a:Ljava/lang/String;

    :cond_5
    :goto_3
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/yingyonghui/downloads/t;->b:Ljava/io/FileOutputStream;

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yingyonghui/downloads/s;->b:Lcom/yingyonghui/downloads/y;

    iget v4, v4, Lcom/yingyonghui/downloads/y;->g:I

    if-nez v4, :cond_6

    invoke-static/range {v17 .. v17}, Lcom/yingyonghui/downloads/s;->a(Lcom/yingyonghui/downloads/t;)V

    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/yingyonghui/downloads/s;->a(Lcom/yingyonghui/downloads/l;Lorg/apache/http/client/methods/HttpGet;)V

    invoke-direct/range {p0 .. p0}, Lcom/yingyonghui/downloads/s;->a()V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v15, v2}, Lcom/yingyonghui/downloads/s;->a(Lcom/yingyonghui/downloads/t;Lcom/yingyonghui/downloads/c;Lorg/apache/http/client/methods/HttpGet;)Lorg/apache/http/HttpResponse;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    const/16 v4, 0x1f7

    if-ne v5, v4, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yingyonghui/downloads/s;->b:Lcom/yingyonghui/downloads/y;

    iget v4, v4, Lcom/yingyonghui/downloads/y;->k:I

    const/4 v6, 0x5

    if-ge v4, v6, :cond_14

    sget-boolean v4, Lcom/yingyonghui/downloads/w;->b:Z

    if-eqz v4, :cond_7

    const-string v4, "DownloadManager"

    const-string v5, "got HTTP response code 503"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/4 v4, 0x1

    move-object/from16 v0, v17

    iput-boolean v4, v0, Lcom/yingyonghui/downloads/t;->d:Z

    const-string v4, "Retry-After"

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lcom/yingyonghui/downloads/k; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lcom/yingyonghui/downloads/m; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    move-result-object v4

    if-eqz v4, :cond_9

    :try_start_7
    sget-boolean v5, Lcom/yingyonghui/downloads/w;->b:Z

    if-eqz v5, :cond_8

    const-string v5, "DownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Retry-After :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v17

    iput v4, v0, Lcom/yingyonghui/downloads/t;->e:I

    move-object/from16 v0, v17

    iget v4, v0, Lcom/yingyonghui/downloads/t;->e:I

    if-gez v4, :cond_11

    const/4 v4, 0x0

    move-object/from16 v0, v17

    iput v4, v0, Lcom/yingyonghui/downloads/t;->e:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Lcom/yingyonghui/downloads/k; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lcom/yingyonghui/downloads/m; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    :cond_9
    :goto_4
    :try_start_8
    new-instance v4, Lcom/yingyonghui/downloads/m;

    const/16 v5, 0xc2

    const-string v6, "got 503 Service Unavailable, will retry later"

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v6}, Lcom/yingyonghui/downloads/m;-><init>(Lcom/yingyonghui/downloads/s;ILjava/lang/String;)V

    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Lcom/yingyonghui/downloads/k; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lcom/yingyonghui/downloads/m; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4

    .line 165
    :catch_2
    move-exception v4

    .line 166
    :try_start_9
    iget v5, v4, Lcom/yingyonghui/downloads/m;->a:I

    const/16 v6, 0xc1

    if-ne v5, v6, :cond_33

    .line 167
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 178
    :catchall_0
    move-exception v4

    :try_start_a
    invoke-virtual/range {v18 .. v18}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 179
    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Lcom/yingyonghui/downloads/m; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3

    .line 194
    :catch_3
    move-exception v4

    .line 195
    :goto_5
    :try_start_b
    const-string v5, "DownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception for id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/yingyonghui/downloads/s;->b:Lcom/yingyonghui/downloads/y;

    iget-wide v7, v7, Lcom/yingyonghui/downloads/y;->a:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 196
    if-eqz v14, :cond_a

    .line 200
    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 201
    :cond_a
    if-eqz v15, :cond_b

    .line 204
    invoke-virtual {v15}, Lcom/yingyonghui/downloads/c;->a()V

    .line 205
    :cond_b
    const/16 v4, 0x1eb

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Lcom/yingyonghui/downloads/s;->a(Lcom/yingyonghui/downloads/t;I)V

    .line 208
    const/16 v5, 0x1eb

    move-object/from16 v0, v17

    iget-boolean v6, v0, Lcom/yingyonghui/downloads/t;->d:Z

    move-object/from16 v0, v17

    iget v7, v0, Lcom/yingyonghui/downloads/t;->e:I

    move-object/from16 v0, v17

    iget-boolean v8, v0, Lcom/yingyonghui/downloads/t;->h:Z

    move-object/from16 v0, v17

    iget-object v9, v0, Lcom/yingyonghui/downloads/t;->a:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v10, v0, Lcom/yingyonghui/downloads/t;->g:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/yingyonghui/downloads/t;->c:Ljava/lang/String;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/yingyonghui/downloads/s;->a(IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yingyonghui/downloads/s;->b:Lcom/yingyonghui/downloads/y;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/yingyonghui/downloads/y;->F:Z

    goto/16 :goto_2

    .line 161
    :cond_c
    :try_start_c
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/yingyonghui/downloads/s;->b:Lcom/yingyonghui/downloads/y;

    iget-object v7, v7, Lcom/yingyonghui/downloads/y;->v:Ljava/lang/String;

    if-nez v7, :cond_f

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/yingyonghui/downloads/s;->b:Lcom/yingyonghui/downloads/y;

    iget-boolean v7, v7, Lcom/yingyonghui/downloads/y;->c:Z

    if-nez v7, :cond_f

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    new-instance v4, Lcom/yingyonghui/downloads/m;

    const/16 v5, 0x1e9

    const-string v6, "Trying to resume a download that can\'t be resumed"

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v6}, Lcom/yingyonghui/downloads/m;-><init>(Lcom/yingyonghui/downloads/s;ILjava/lang/String;)V

    throw v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Lcom/yingyonghui/downloads/k; {:try_start_c .. :try_end_c} :catch_0
    .catch Lcom/yingyonghui/downloads/m; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4

    .line 176
    :catch_4
    move-exception v4

    const-wide/16 v4, 0x1388

    :try_start_d
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 178
    :try_start_e
    invoke-virtual/range {v18 .. v18}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Lcom/yingyonghui/downloads/m; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_3

    goto/16 :goto_0

    .line 199
    :catchall_1
    move-exception v4

    move-object v12, v4

    :goto_6
    if-eqz v14, :cond_d

    .line 200
    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 201
    :cond_d
    if-eqz v15, :cond_e

    .line 204
    invoke-virtual {v15}, Lcom/yingyonghui/downloads/c;->a()V

    .line 205
    :cond_e
    const/16 v4, 0x1eb

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Lcom/yingyonghui/downloads/s;->a(Lcom/yingyonghui/downloads/t;I)V

    .line 208
    const/16 v5, 0x1eb

    move-object/from16 v0, v17

    iget-boolean v6, v0, Lcom/yingyonghui/downloads/t;->d:Z

    move-object/from16 v0, v17

    iget v7, v0, Lcom/yingyonghui/downloads/t;->e:I

    move-object/from16 v0, v17

    iget-boolean v8, v0, Lcom/yingyonghui/downloads/t;->h:Z

    move-object/from16 v0, v17

    iget-object v9, v0, Lcom/yingyonghui/downloads/t;->a:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v10, v0, Lcom/yingyonghui/downloads/t;->g:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/yingyonghui/downloads/t;->c:Ljava/lang/String;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/yingyonghui/downloads/s;->a(IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yingyonghui/downloads/s;->b:Lcom/yingyonghui/downloads/y;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/yingyonghui/downloads/y;->F:Z

    throw v12

    .line 161
    :cond_f
    :try_start_f
    new-instance v4, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/yingyonghui/downloads/t;->a:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-direct {v4, v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    move-object/from16 v0, v17

    iput-object v4, v0, Lcom/yingyonghui/downloads/t;->b:Ljava/io/FileOutputStream;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_5
    .catch Lcom/yingyonghui/downloads/k; {:try_start_f .. :try_end_f} :catch_0
    .catch Lcom/yingyonghui/downloads/m; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_4

    long-to-int v4, v5

    :try_start_10
    move-object/from16 v0, v19

    iput v4, v0, Lcom/yingyonghui/downloads/l;->a:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yingyonghui/downloads/s;->b:Lcom/yingyonghui/downloads/y;

    iget-wide v4, v4, Lcom/yingyonghui/downloads/y;->t:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yingyonghui/downloads/s;->b:Lcom/yingyonghui/downloads/y;

    iget-wide v4, v4, Lcom/yingyonghui/downloads/y;->t:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/yingyonghui/downloads/l;->d:Ljava/lang/String;

    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yingyonghui/downloads/s;->b:Lcom/yingyonghui/downloads/y;

    iget-object v4, v4, Lcom/yingyonghui/downloads/y;->v:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/yingyonghui/downloads/l;->b:Ljava/lang/String;

    const/4 v4, 0x1

    move-object/from16 v0, v19

    iput-boolean v4, v0, Lcom/yingyonghui/downloads/l;->c:Z

    goto/16 :goto_3

    :catch_5
    move-exception v4

    new-instance v5, Lcom/yingyonghui/downloads/m;

    const/16 v6, 0x1ec

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "while opening destination for resuming: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6, v7, v4}, Lcom/yingyonghui/downloads/m;-><init>(Lcom/yingyonghui/downloads/s;ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Lcom/yingyonghui/downloads/k; {:try_start_10 .. :try_end_10} :catch_0
    .catch Lcom/yingyonghui/downloads/m; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_4

    :cond_11
    :try_start_11
    move-object/from16 v0, v17

    iget v4, v0, Lcom/yingyonghui/downloads/t;->e:I

    const/16 v5, 0x1e

    if-ge v4, v5, :cond_13

    const/16 v4, 0x1e

    move-object/from16 v0, v17

    iput v4, v0, Lcom/yingyonghui/downloads/t;->e:I

    :cond_12
    :goto_7
    move-object/from16 v0, v17

    iget v4, v0, Lcom/yingyonghui/downloads/t;->e:I

    sget-object v5, Lcom/yingyonghui/downloads/e;->a:Ljava/util/Random;

    const/16 v6, 0x1f

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/2addr v4, v5

    move-object/from16 v0, v17

    iput v4, v0, Lcom/yingyonghui/downloads/t;->e:I

    move-object/from16 v0, v17

    iget v4, v0, Lcom/yingyonghui/downloads/t;->e:I

    mul-int/lit16 v4, v4, 0x3e8

    move-object/from16 v0, v17

    iput v4, v0, Lcom/yingyonghui/downloads/t;->e:I

    goto/16 :goto_4

    :catch_6
    move-exception v4

    goto/16 :goto_4

    :cond_13
    move-object/from16 v0, v17

    iget v4, v0, Lcom/yingyonghui/downloads/t;->e:I

    const v5, 0x15180

    if-le v4, v5, :cond_12

    const v4, 0x15180

    move-object/from16 v0, v17

    iput v4, v0, Lcom/yingyonghui/downloads/t;->e:I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_6
    .catch Lcom/yingyonghui/downloads/k; {:try_start_11 .. :try_end_11} :catch_0
    .catch Lcom/yingyonghui/downloads/m; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_4

    goto :goto_7

    :cond_14
    const/16 v4, 0x12d

    if-eq v5, v4, :cond_15

    const/16 v4, 0x12e

    if-eq v5, v4, :cond_15

    const/16 v4, 0x12f

    if-eq v5, v4, :cond_15

    const/16 v4, 0x133

    if-ne v5, v4, :cond_1c

    :cond_15
    :try_start_12
    sget-boolean v4, Lcom/yingyonghui/downloads/w;->b:Z

    if-eqz v4, :cond_16

    const-string v4, "DownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "got HTTP redirect "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    move-object/from16 v0, v17

    iget v4, v0, Lcom/yingyonghui/downloads/t;->f:I

    const/4 v6, 0x5

    if-lt v4, v6, :cond_17

    new-instance v4, Lcom/yingyonghui/downloads/m;

    const/16 v5, 0x1f1

    const-string v6, "too many redirects"

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v6}, Lcom/yingyonghui/downloads/m;-><init>(Lcom/yingyonghui/downloads/s;ILjava/lang/String;)V

    throw v4

    :cond_17
    const-string v4, "Location"

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    if-eqz v4, :cond_1c

    sget-boolean v6, Lcom/yingyonghui/downloads/w;->b:Z

    if-eqz v6, :cond_18

    const-string v6, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Location :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Lcom/yingyonghui/downloads/k; {:try_start_12 .. :try_end_12} :catch_0
    .catch Lcom/yingyonghui/downloads/m; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_4

    :cond_18
    :try_start_13
    new-instance v6, Ljava/net/URI;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/yingyonghui/downloads/s;->b:Lcom/yingyonghui/downloads/y;

    iget-object v7, v7, Lcom/yingyonghui/downloads/y;->b:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/net/URI;

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_13 .. :try_end_13} :catch_7
    .catch Lcom/yingyonghui/downloads/k; {:try_start_13 .. :try_end_13} :catch_0
    .catch Lcom/yingyonghui/downloads/m; {:try_start_13 .. :try_end_13} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_4

    move-result-object v4

    :try_start_14
    move-object/from16 v0, v17

    iget v6, v0, Lcom/yingyonghui/downloads/t;->f:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v17

    iput v6, v0, Lcom/yingyonghui/downloads/t;->f:I

    move-object/from16 v0, v17

    iput-object v4, v0, Lcom/yingyonghui/downloads/t;->i:Ljava/lang/String;

    const/16 v6, 0x12d

    if-eq v5, v6, :cond_19

    const/16 v6, 0x12f

    if-ne v5, v6, :cond_1a

    :cond_19
    move-object/from16 v0, v17

    iput-object v4, v0, Lcom/yingyonghui/downloads/t;->g:Ljava/lang/String;

    :cond_1a
    new-instance v4, Lcom/yingyonghui/downloads/k;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/yingyonghui/downloads/k;-><init>(Lcom/yingyonghui/downloads/s;)V

    throw v4

    :catch_7
    move-exception v5

    sget-boolean v5, Lcom/yingyonghui/downloads/w;->a:Z

    if-eqz v5, :cond_1b

    const-string v5, "DownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t resolve redirect URI "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yingyonghui/downloads/s;->b:Lcom/yingyonghui/downloads/y;

    iget-object v6, v6, Lcom/yingyonghui/downloads/y;->b:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    new-instance v4, Lcom/yingyonghui/downloads/m;

    const/16 v5, 0x1ef

    const-string v6, "Couldn\'t resolve redirect URI"

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v6}, Lcom/yingyonghui/downloads/m;-><init>(Lcom/yingyonghui/downloads/s;ILjava/lang/String;)V

    throw v4

    :cond_1c
    move-object/from16 v0, v19

    iget-boolean v4, v0, Lcom/yingyonghui/downloads/l;->c:Z

    if-eqz v4, :cond_1d

    const/16 v4, 0xce

    :goto_8
    if-eq v5, v4, :cond_21

    invoke-static {v5}, Lcom/yingyonghui/downloads/a;->b(I)Z

    move-result v4

    if-eqz v4, :cond_1e

    move v4, v5

    :goto_9
    new-instance v6, Lcom/yingyonghui/downloads/m;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "http error "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v4, v5}, Lcom/yingyonghui/downloads/m;-><init>(Lcom/yingyonghui/downloads/s;ILjava/lang/String;)V

    throw v6

    :cond_1d
    const/16 v4, 0xc8

    goto :goto_8

    :cond_1e
    const/16 v4, 0x12c

    if-lt v5, v4, :cond_1f

    const/16 v4, 0x190

    if-ge v5, v4, :cond_1f

    const/16 v4, 0x1ed

    goto :goto_9

    :cond_1f
    move-object/from16 v0, v19

    iget-boolean v4, v0, Lcom/yingyonghui/downloads/l;->c:Z

    if-eqz v4, :cond_20

    const/16 v4, 0xc8

    if-ne v5, v4, :cond_20

    const/16 v4, 0x1e9

    goto :goto_9

    :cond_20
    const/16 v4, 0x1ee

    goto :goto_9

    :cond_21
    sget-boolean v4, Lcom/yingyonghui/downloads/w;->a:Z

    if-eqz v4, :cond_22

    const-string v4, "DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "received response for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yingyonghui/downloads/s;->b:Lcom/yingyonghui/downloads/y;

    iget-object v6, v6, Lcom/yingyonghui/downloads/y;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    move-object/from16 v0, v19

    iget-boolean v4, v0, Lcom/yingyonghui/downloads/l;->c:Z

    if-nez v4, :cond_31

    const-string v4, "Content-Disposition"

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    if-eqz v4, :cond_23

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/yingyonghui/downloads/l;->e:Ljava/lang/String;

    :cond_23
    const-string v4, "Content-Location"

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    if-eqz v4, :cond_24

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/yingyonghui/downloads/l;->f:Ljava/lang/String;

    :cond_24
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/yingyonghui/downloads/t;->c:Ljava/lang/String;

    if-nez v4, :cond_25

    const-string v4, "Content-Type"

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    if-eqz v4, :cond_25

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/yingyonghui/downloads/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    iput-object v4, v0, Lcom/yingyonghui/downloads/t;->c:Ljava/lang/String;

    :cond_25
    const-string v4, "ETag"

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    if-eqz v4, :cond_26

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/yingyonghui/downloads/l;->b:Ljava/lang/String;

    :cond_26
    const/4 v4, 0x0

    const-string v5, "Transfer-Encoding"

    move-object/from16 v0, v21

    invoke-interface {v0, v5}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v5

    if-eqz v5, :cond_27

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    :cond_27
    if-nez v4, :cond_2b

    const-string v5, "Content-Length"

    move-object/from16 v0, v21

    invoke-interface {v0, v5}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v5

    if-eqz v5, :cond_28

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    iput-object v5, v0, Lcom/yingyonghui/downloads/l;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yingyonghui/downloads/s;->b:Lcom/yingyonghui/downloads/y;

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/yingyonghui/downloads/l;->d:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/yingyonghui/downloads/y;->t:J

    :cond_28
    :goto_a
    sget-boolean v5, Lcom/yingyonghui/downloads/w;->b:Z

    if-eqz v5, :cond_29

    const-string v5, "DownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Content-Disposition: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/yingyonghui/downloads/l;->e:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "DownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Content-Length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/yingyonghui/downloads/l;->d:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "DownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Content-Location: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/yingyonghui/downloads/l;->f:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "DownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Content-Type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/yingyonghui/downloads/t;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "DownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ETag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/yingyonghui/downloads/l;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "DownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Transfer-Encoding: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/yingyonghui/downloads/l;->d:Ljava/lang/String;

    if-nez v5, :cond_2c

    if-eqz v4, :cond_2a

    const-string v5, "chunked"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2c

    :cond_2a
    const/4 v4, 0x1

    :goto_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yingyonghui/downloads/s;->b:Lcom/yingyonghui/downloads/y;

    iget-boolean v5, v5, Lcom/yingyonghui/downloads/y;->c:Z

    if-nez v5, :cond_2d

    if-eqz v4, :cond_2d

    new-instance v4, Lcom/yingyonghui/downloads/m;

    const/16 v5, 0x1ef

    const-string v6, "can\'t know size of download, giving up"

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v6}, Lcom/yingyonghui/downloads/m;-><init>(Lcom/yingyonghui/downloads/s;ILjava/lang/String;)V

    throw v4

    :cond_2b
    sget-boolean v5, Lcom/yingyonghui/downloads/w;->b:Z

    if-eqz v5, :cond_28

    const-string v5, "DownloadManager"

    const-string v6, "ignoring content-length because of xfer-encoding"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0
    .catch Lcom/yingyonghui/downloads/k; {:try_start_14 .. :try_end_14} :catch_0
    .catch Lcom/yingyonghui/downloads/m; {:try_start_14 .. :try_end_14} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_4

    goto/16 :goto_a

    :cond_2c
    const/4 v4, 0x0

    goto :goto_b

    :cond_2d
    :try_start_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yingyonghui/downloads/s;->a:Landroid/content/Context;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/yingyonghui/downloads/t;->i:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yingyonghui/downloads/s;->b:Lcom/yingyonghui/downloads/y;

    iget-object v6, v6, Lcom/yingyonghui/downloads/y;->d:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/yingyonghui/downloads/l;->e:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v8, v0, Lcom/yingyonghui/downloads/l;->f:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v9, v0, Lcom/yingyonghui/downloads/t;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/yingyonghui/downloads/s;->b:Lcom/yingyonghui/downloads/y;

    iget v10, v10, Lcom/yingyonghui/downloads/y;->g:I

    move-object/from16 v0, v19

    iget-object v11, v0, Lcom/yingyonghui/downloads/l;->d:Ljava/lang/String;

    if-eqz v11, :cond_32

    move-object/from16 v0, v19

    iget-object v11, v0, Lcom/yingyonghui/downloads/l;->d:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    :goto_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/yingyonghui/downloads/s;->b:Lcom/yingyonghui/downloads/y;

    iget-boolean v13, v13, Lcom/yingyonghui/downloads/y;->z:Z

    invoke-static/range {v4 .. v13}, Lcom/yingyonghui/downloads/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZ)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    iput-object v4, v0, Lcom/yingyonghui/downloads/t;->a:Ljava/lang/String;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
    .catch Lcom/yingyonghui/downloads/v; {:try_start_15 .. :try_end_15} :catch_8
    .catch Lcom/yingyonghui/downloads/k; {:try_start_15 .. :try_end_15} :catch_0
    .catch Lcom/yingyonghui/downloads/m; {:try_start_15 .. :try_end_15} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_4

    :try_start_16
    new-instance v4, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/yingyonghui/downloads/t;->a:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    iput-object v4, v0, Lcom/yingyonghui/downloads/t;->b:Ljava/io/FileOutputStream;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_16} :catch_9
    .catch Lcom/yingyonghui/downloads/k; {:try_start_16 .. :try_end_16} :catch_0
    .catch Lcom/yingyonghui/downloads/m; {:try_start_16 .. :try_end_16} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_4

    :try_start_17
    sget-boolean v4, Lcom/yingyonghui/downloads/w;->a:Z

    if-eqz v4, :cond_2e

    const-string v4, "DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "writing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yingyonghui/downloads/s;->b:Lcom/yingyonghui/downloads/y;

    iget-object v6, v6, Lcom/yingyonghui/downloads/y;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/yingyonghui/downloads/t;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "_data"

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/yingyonghui/downloads/t;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/yingyonghui/downloads/l;->b:Ljava/lang/String;

    if-eqz v5, :cond_2f

    const-string v5, "etag"

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/yingyonghui/downloads/l;->b:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/yingyonghui/downloads/t;->c:Ljava/lang/String;

    if-eqz v5, :cond_30

    const-string v5, "mimetype"

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/yingyonghui/downloads/t;->c:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_30
    const-string v5, "total_bytes"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yingyonghui/downloads/s;->b:Lcom/yingyonghui/downloads/y;

    iget-wide v6, v6, Lcom/yingyonghui/downloads/y;->t:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yingyonghui/downloads/s;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yingyonghui/downloads/s;->b:Lcom/yingyonghui/downloads/y;

    invoke-virtual {v6}, Lcom/yingyonghui/downloads/y;->d()Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v4, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/yingyonghui/downloads/s;->a()V

    :cond_31
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/yingyonghui/downloads/s;->a(Lcom/yingyonghui/downloads/t;Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yingyonghui/downloads/s;->a(Lcom/yingyonghui/downloads/t;Lcom/yingyonghui/downloads/l;[BLjava/io/InputStream;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0
    .catch Lcom/yingyonghui/downloads/k; {:try_start_17 .. :try_end_17} :catch_0
    .catch Lcom/yingyonghui/downloads/m; {:try_start_17 .. :try_end_17} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_4

    .line 162
    const/4 v4, 0x1

    .line 178
    :try_start_18
    invoke-virtual/range {v18 .. v18}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1
    .catch Lcom/yingyonghui/downloads/m; {:try_start_18 .. :try_end_18} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_3

    move/from16 v16, v4

    .line 179
    goto/16 :goto_0

    .line 161
    :cond_32
    const-wide/16 v11, 0x0

    goto/16 :goto_c

    :catch_8
    move-exception v4

    :try_start_19
    new-instance v5, Lcom/yingyonghui/downloads/m;

    iget v6, v4, Lcom/yingyonghui/downloads/v;->a:I

    iget-object v4, v4, Lcom/yingyonghui/downloads/v;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6, v4}, Lcom/yingyonghui/downloads/m;-><init>(Lcom/yingyonghui/downloads/s;ILjava/lang/String;)V

    throw v5

    :catch_9
    move-exception v4

    new-instance v5, Lcom/yingyonghui/downloads/m;

    const/16 v6, 0x1ec

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "while opening destination file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6, v7, v4}, Lcom/yingyonghui/downloads/m;-><init>(Lcom/yingyonghui/downloads/s;ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0
    .catch Lcom/yingyonghui/downloads/k; {:try_start_19 .. :try_end_19} :catch_0
    .catch Lcom/yingyonghui/downloads/m; {:try_start_19 .. :try_end_19} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_4

    .line 168
    :cond_33
    :try_start_1a
    iget v5, v4, Lcom/yingyonghui/downloads/m;->a:I

    const/16 v6, 0x19d

    if-ne v5, v6, :cond_34

    .line 170
    throw v4

    .line 173
    :cond_34
    const-wide/16 v4, 0x1388

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 178
    :try_start_1b
    invoke-virtual/range {v18 .. v18}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    goto/16 :goto_0

    .line 181
    :cond_35
    sget-boolean v4, Lcom/yingyonghui/downloads/w;->a:Z

    if-eqz v4, :cond_36

    .line 184
    const-string v4, "DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "download completed for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yingyonghui/downloads/s;->b:Lcom/yingyonghui/downloads/y;

    iget-object v6, v6, Lcom/yingyonghui/downloads/y;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_36
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/yingyonghui/downloads/t;->a:Ljava/lang/String;

    const/16 v5, 0x1a4

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-static {v4, v5, v6, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1
    .catch Lcom/yingyonghui/downloads/m; {:try_start_1b .. :try_end_1b} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_3

    const/4 v6, 0x0

    :try_start_1c
    new-instance v5, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/yingyonghui/downloads/t;->a:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-direct {v5, v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_1c} :catch_c
    .catch Ljava/io/SyncFailedException; {:try_start_1c .. :try_end_1c} :catch_f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_12
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_15

    :try_start_1d
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_1d} :catch_21
    .catch Ljava/io/SyncFailedException; {:try_start_1d .. :try_end_1d} :catch_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_1f
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_1d} :catch_1e

    :try_start_1e
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_1e} :catch_b
    .catch Lcom/yingyonghui/downloads/m; {:try_start_1e .. :try_end_1e} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_3

    .line 187
    :cond_37
    :goto_d
    if-eqz v14, :cond_38

    .line 200
    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 201
    :cond_38
    if-eqz v15, :cond_39

    .line 204
    invoke-virtual {v15}, Lcom/yingyonghui/downloads/c;->a()V

    .line 205
    :cond_39
    const/16 v4, 0xc8

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Lcom/yingyonghui/downloads/s;->a(Lcom/yingyonghui/downloads/t;I)V

    .line 208
    const/16 v5, 0xc8

    move-object/from16 v0, v17

    iget-boolean v6, v0, Lcom/yingyonghui/downloads/t;->d:Z

    move-object/from16 v0, v17

    iget v7, v0, Lcom/yingyonghui/downloads/t;->e:I

    move-object/from16 v0, v17

    iget-boolean v8, v0, Lcom/yingyonghui/downloads/t;->h:Z

    move-object/from16 v0, v17

    iget-object v9, v0, Lcom/yingyonghui/downloads/t;->a:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v10, v0, Lcom/yingyonghui/downloads/t;->g:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/yingyonghui/downloads/t;->c:Ljava/lang/String;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/yingyonghui/downloads/s;->a(IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yingyonghui/downloads/s;->b:Lcom/yingyonghui/downloads/y;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/yingyonghui/downloads/y;->F:Z

    goto/16 :goto_2

    .line 186
    :catch_a
    move-exception v4

    :try_start_1f
    const-string v5, "DownloadManager"

    const-string v6, "IOException while closing synced file: "

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    :catch_b
    move-exception v4

    const-string v5, "DownloadManager"

    const-string v6, "exception while closing file: "

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1
    .catch Lcom/yingyonghui/downloads/m; {:try_start_1f .. :try_end_1f} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_3

    goto :goto_d

    :catch_c
    move-exception v4

    move-object v5, v6

    :goto_e
    :try_start_20
    const-string v6, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v17

    iget-object v8, v0, Lcom/yingyonghui/downloads/t;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_6

    if-eqz v5, :cond_37

    :try_start_21
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_1
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_21} :catch_e
    .catch Lcom/yingyonghui/downloads/m; {:try_start_21 .. :try_end_21} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_3

    goto :goto_d

    :catch_d
    move-exception v4

    :try_start_22
    const-string v5, "DownloadManager"

    const-string v6, "IOException while closing synced file: "

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d

    :catch_e
    move-exception v4

    const-string v5, "DownloadManager"

    const-string v6, "exception while closing file: "

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_1
    .catch Lcom/yingyonghui/downloads/m; {:try_start_22 .. :try_end_22} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_3

    goto/16 :goto_d

    :catch_f
    move-exception v4

    :goto_f
    :try_start_23
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v17

    iget-object v8, v0, Lcom/yingyonghui/downloads/t;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " sync failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_2

    if-eqz v6, :cond_37

    :try_start_24
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_1
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_10
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_24} :catch_11
    .catch Lcom/yingyonghui/downloads/m; {:try_start_24 .. :try_end_24} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_3

    goto/16 :goto_d

    :catch_10
    move-exception v4

    :try_start_25
    const-string v5, "DownloadManager"

    const-string v6, "IOException while closing synced file: "

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d

    :catch_11
    move-exception v4

    const-string v5, "DownloadManager"

    const-string v6, "exception while closing file: "

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_1
    .catch Lcom/yingyonghui/downloads/m; {:try_start_25 .. :try_end_25} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_3

    goto/16 :goto_d

    :catch_12
    move-exception v4

    :goto_10
    :try_start_26
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException trying to sync "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v17

    iget-object v8, v0, Lcom/yingyonghui/downloads/t;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_2

    if-eqz v6, :cond_37

    :try_start_27
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_1
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_27} :catch_14
    .catch Lcom/yingyonghui/downloads/m; {:try_start_27 .. :try_end_27} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_3

    goto/16 :goto_d

    :catch_13
    move-exception v4

    :try_start_28
    const-string v5, "DownloadManager"

    const-string v6, "IOException while closing synced file: "

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d

    :catch_14
    move-exception v4

    const-string v5, "DownloadManager"

    const-string v6, "exception while closing file: "

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_1
    .catch Lcom/yingyonghui/downloads/m; {:try_start_28 .. :try_end_28} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_3

    goto/16 :goto_d

    :catch_15
    move-exception v4

    :goto_11
    :try_start_29
    const-string v5, "DownloadManager"

    const-string v7, "exception while syncing file: "

    invoke-static {v5, v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_2

    if-eqz v6, :cond_37

    :try_start_2a
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_16
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_2a} :catch_17
    .catch Lcom/yingyonghui/downloads/m; {:try_start_2a .. :try_end_2a} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_3

    goto/16 :goto_d

    :catch_16
    move-exception v4

    :try_start_2b
    const-string v5, "DownloadManager"

    const-string v6, "IOException while closing synced file: "

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d

    :catch_17
    move-exception v4

    const-string v5, "DownloadManager"

    const-string v6, "exception while closing file: "

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_1
    .catch Lcom/yingyonghui/downloads/m; {:try_start_2b .. :try_end_2b} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_3

    goto/16 :goto_d

    :catchall_2
    move-exception v4

    :goto_12
    if-eqz v6, :cond_3a

    :try_start_2c
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_18
    .catch Ljava/lang/RuntimeException; {:try_start_2c .. :try_end_2c} :catch_19
    .catch Lcom/yingyonghui/downloads/m; {:try_start_2c .. :try_end_2c} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_3

    :cond_3a
    :goto_13
    :try_start_2d
    throw v4

    :catch_18
    move-exception v5

    const-string v6, "DownloadManager"

    const-string v7, "IOException while closing synced file: "

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13

    :catch_19
    move-exception v5

    const-string v6, "DownloadManager"

    const-string v7, "exception while closing file: "

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_1
    .catch Lcom/yingyonghui/downloads/m; {:try_start_2d .. :try_end_2d} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_3

    goto :goto_13

    .line 199
    :catchall_3
    move-exception v4

    move-object v12, v4

    move-object v14, v5

    move-object v15, v6

    goto/16 :goto_6

    :catchall_4
    move-exception v4

    move-object v12, v4

    move-object v15, v6

    goto/16 :goto_6

    :catchall_5
    move-exception v4

    move-object v12, v4

    move-object v14, v6

    move-object v15, v7

    goto/16 :goto_6

    .line 194
    :catch_1a
    move-exception v4

    move-object v14, v5

    move-object v15, v6

    goto/16 :goto_5

    :catch_1b
    move-exception v4

    move-object v15, v6

    goto/16 :goto_5

    .line 188
    :catch_1c
    move-exception v4

    move-object v7, v6

    move-object v6, v5

    goto/16 :goto_1

    :catch_1d
    move-exception v4

    move-object v7, v6

    move-object v6, v14

    goto/16 :goto_1

    .line 186
    :catchall_6
    move-exception v4

    move-object v6, v5

    goto :goto_12

    :catch_1e
    move-exception v4

    move-object v6, v5

    goto :goto_11

    :catch_1f
    move-exception v4

    move-object v6, v5

    goto/16 :goto_10

    :catch_20
    move-exception v4

    move-object v6, v5

    goto/16 :goto_f

    :catch_21
    move-exception v4

    goto/16 :goto_e
.end method
