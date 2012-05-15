.class final Lcom/yingyonghui/market/online/c;
.super Landroid/os/HandlerThread;
.source "HttpManager.java"


# instance fields
.field final synthetic a:Lcom/yingyonghui/market/online/l;

.field private b:I

.field private c:Lorg/apache/http/client/HttpClient;


# direct methods
.method public constructor <init>(Lcom/yingyonghui/market/online/l;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/yingyonghui/market/online/c;->a:Lcom/yingyonghui/market/online/l;

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "worker"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 90
    iput p2, p0, Lcom/yingyonghui/market/online/c;->b:I

    .line 91
    return-void
.end method

.method static synthetic a(Lcom/yingyonghui/market/online/c;)I
    .locals 1
    .parameter

    .prologue
    .line 83
    iget v0, p0, Lcom/yingyonghui/market/online/c;->b:I

    return v0
.end method

.method static synthetic a(Lcom/yingyonghui/market/online/c;Lcom/yingyonghui/market/online/b;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 83
    iget v2, p1, Lcom/yingyonghui/market/online/b;->b:I

    if-ne v2, v1, :cond_4

    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    iget-object v3, p1, Lcom/yingyonghui/market/online/b;->e:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const-string v3, "Accept-Encoding"

    const-string v4, "gzip"

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v3, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    iget-object v4, p1, Lcom/yingyonghui/market/online/b;->f:Ljava/util/List;

    const-string v5, "utf-8"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    move-object v7, v2

    move v2, v0

    move-object v0, v7

    :goto_1
    iget-object v3, p0, Lcom/yingyonghui/market/online/c;->a:Lcom/yingyonghui/market/online/l;

    invoke-static {v3}, Lcom/yingyonghui/market/online/l;->a(Lcom/yingyonghui/market/online/l;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/yingyonghui/market/online/c;->c:Lorg/apache/http/client/HttpClient;

    invoke-static {v3, v4}, Lcom/yingyonghui/market/util/g;->a(Landroid/content/Context;Lorg/apache/http/client/HttpClient;)V

    if-nez v2, :cond_8

    iget v3, p1, Lcom/yingyonghui/market/online/b;->b:I

    if-ne v3, v1, :cond_8

    :try_start_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Lcom/yingyonghui/market/online/c;->c:Lorg/apache/http/client/HttpClient;

    invoke-interface {v4, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    iput v0, p1, Lcom/yingyonghui/market/online/b;->a:I

    :cond_0
    const-string v0, ""

    const-string v5, "Content-Encoding"

    invoke-interface {v4, v5}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v5, "gzip"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/util/zip/GZIPInputStream;

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    :goto_2
    const/16 v4, 0x400

    new-array v4, v4, [C

    :goto_3
    const/4 v5, 0x0

    array-length v6, v4

    invoke-virtual {v0, v4, v5, v6}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_7

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_3

    :catch_0
    move-exception v0

    move v2, v1

    :cond_2
    :goto_4
    if-nez v2, :cond_c

    iget-object v0, p1, Lcom/yingyonghui/market/online/b;->g:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/yingyonghui/market/online/b;->g:Landroid/os/Handler;

    iget-object v2, p1, Lcom/yingyonghui/market/online/b;->g:Landroid/os/Handler;

    invoke-virtual {v2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    :goto_5
    return-void

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_4
    iget v2, p1, Lcom/yingyonghui/market/online/b;->b:I

    if-ne v2, v6, :cond_5

    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    iget-object v3, p1, Lcom/yingyonghui/market/online/b;->e:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    :try_start_2
    new-instance v3, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    iget-object v4, p1, Lcom/yingyonghui/market/online/b;->f:Ljava/util/List;

    const-string v5, "utf-8"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_6
    move-object v7, v2

    move v2, v0

    move-object v0, v7

    goto/16 :goto_1

    :catch_2
    move-exception v0

    move v0, v1

    goto :goto_6

    :cond_5
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    iget-object v3, p1, Lcom/yingyonghui/market/online/b;->e:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object v7, v2

    move v2, v0

    move-object v0, v7

    goto/16 :goto_1

    :cond_6
    :try_start_3
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    const-string v5, "utf-8"

    invoke-direct {v0, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_2

    :catch_3
    move-exception v0

    move v2, v1

    goto :goto_4

    :cond_7
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/yingyonghui/market/online/b;->h:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    move v2, v1

    goto :goto_4

    :cond_8
    if-nez v2, :cond_a

    iget v3, p1, Lcom/yingyonghui/market/online/b;->b:I

    if-ne v3, v6, :cond_a

    :try_start_4
    iget-object v3, p0, Lcom/yingyonghui/market/online/c;->c:Lorg/apache/http/client/HttpClient;

    invoke-interface {v3, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p1, Lcom/yingyonghui/market/online/b;->h:Ljava/lang/Object;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_9

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p1, Lcom/yingyonghui/market/online/b;->h:Ljava/lang/Object;

    :cond_9
    iput v0, p1, Lcom/yingyonghui/market/online/b;->a:I
    :try_end_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_7

    goto/16 :goto_4

    :catch_5
    move-exception v0

    move v2, v1

    goto/16 :goto_4

    :catch_6
    move-exception v0

    move v2, v1

    goto/16 :goto_4

    :catch_7
    move-exception v0

    move v2, v1

    goto/16 :goto_4

    :cond_a
    if-nez v2, :cond_b

    iget v3, p1, Lcom/yingyonghui/market/online/b;->b:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_b

    :try_start_5
    iget-object v3, p0, Lcom/yingyonghui/market/online/c;->a:Lcom/yingyonghui/market/online/l;

    invoke-static {v3}, Lcom/yingyonghui/market/online/l;->c(Lcom/yingyonghui/market/online/l;)Lcom/yingyonghui/market/online/n;

    move-result-object v3

    iget-object v4, p1, Lcom/yingyonghui/market/online/b;->e:Ljava/lang/String;

    iget-boolean v5, p1, Lcom/yingyonghui/market/online/b;->j:Z

    iget-object v6, p0, Lcom/yingyonghui/market/online/c;->c:Lorg/apache/http/client/HttpClient;

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/yingyonghui/market/online/n;->a(Ljava/lang/String;ZLorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p1, Lcom/yingyonghui/market/online/b;->h:Ljava/lang/Object;
    :try_end_5
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_9

    goto/16 :goto_4

    :catch_8
    move-exception v0

    :cond_b
    :goto_7
    move v2, v1

    goto/16 :goto_4

    :cond_c
    iget v0, p1, Lcom/yingyonghui/market/online/b;->i:I

    if-lez v0, :cond_d

    iget v0, p1, Lcom/yingyonghui/market/online/b;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/yingyonghui/market/online/b;->i:I

    iget-object v0, p0, Lcom/yingyonghui/market/online/c;->a:Lcom/yingyonghui/market/online/l;

    const/16 v1, 0x3e8

    invoke-static {v0, p1, v1}, Lcom/yingyonghui/market/online/l;->a(Lcom/yingyonghui/market/online/l;Lcom/yingyonghui/market/online/b;I)V

    goto/16 :goto_5

    :cond_d
    iget-object v0, p1, Lcom/yingyonghui/market/online/b;->g:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yingyonghui/market/online/c;->a:Lcom/yingyonghui/market/online/l;

    invoke-static {v0}, Lcom/yingyonghui/market/online/l;->d(Lcom/yingyonghui/market/online/l;)Ljava/util/Queue;

    move-result-object v2

    monitor-enter v2

    :try_start_6
    iget-object v0, p0, Lcom/yingyonghui/market/online/c;->a:Lcom/yingyonghui/market/online/l;

    invoke-static {v0}, Lcom/yingyonghui/market/online/l;->e(Lcom/yingyonghui/market/online/l;)I

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/yingyonghui/market/online/c;->a:Lcom/yingyonghui/market/online/l;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yingyonghui/market/online/l;->b(Lcom/yingyonghui/market/online/l;I)I

    iget-object v0, p0, Lcom/yingyonghui/market/online/c;->a:Lcom/yingyonghui/market/online/l;

    invoke-static {v0}, Lcom/yingyonghui/market/online/l;->d(Lcom/yingyonghui/market/online/l;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/yingyonghui/market/online/b;->g:Landroid/os/Handler;

    iget-object v1, p1, Lcom/yingyonghui/market/online/b;->g:Landroid/os/Handler;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_8
    monitor-exit v2

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    :cond_e
    :try_start_7
    iget-object v0, p0, Lcom/yingyonghui/market/online/c;->a:Lcom/yingyonghui/market/online/l;

    invoke-static {v0}, Lcom/yingyonghui/market/online/l;->e(Lcom/yingyonghui/market/online/l;)I

    move-result v0

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/yingyonghui/market/online/c;->a:Lcom/yingyonghui/market/online/l;

    invoke-static {v0}, Lcom/yingyonghui/market/online/l;->d(Lcom/yingyonghui/market/online/l;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_f
    iget-object v0, p0, Lcom/yingyonghui/market/online/c;->a:Lcom/yingyonghui/market/online/l;

    const/16 v1, 0xbb8

    invoke-static {v0, p1, v1}, Lcom/yingyonghui/market/online/l;->a(Lcom/yingyonghui/market/online/l;Lcom/yingyonghui/market/online/b;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_8

    :catch_9
    move-exception v0

    goto :goto_7

    :catch_a
    move-exception v0

    goto :goto_7
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 94
    new-instance v0, Lcom/yingyonghui/market/online/h;

    iget-object v1, p0, Lcom/yingyonghui/market/online/c;->a:Lcom/yingyonghui/market/online/l;

    invoke-static {v1}, Lcom/yingyonghui/market/online/l;->a(Lcom/yingyonghui/market/online/l;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yingyonghui/market/online/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yingyonghui/market/online/c;->c:Lorg/apache/http/client/HttpClient;

    .line 95
    iget-object v0, p0, Lcom/yingyonghui/market/online/c;->a:Lcom/yingyonghui/market/online/l;

    invoke-static {v0}, Lcom/yingyonghui/market/online/l;->b(Lcom/yingyonghui/market/online/l;)[Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/yingyonghui/market/online/c;->b:I

    new-instance v2, Lcom/yingyonghui/market/online/j;

    invoke-virtual {p0}, Lcom/yingyonghui/market/online/c;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/yingyonghui/market/online/j;-><init>(Lcom/yingyonghui/market/online/c;Landroid/os/Looper;)V

    aput-object v2, v0, v1

    .line 113
    return-void
.end method
