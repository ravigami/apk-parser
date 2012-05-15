.class public final Lcom/yingyonghui/market/log/j;
.super Landroid/os/AsyncTask;
.source "CompressAsyncTask.java"


# instance fields
.field private a:Lcom/yingyonghui/market/log/r;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 12
    new-instance v0, Lcom/yingyonghui/market/log/d;

    invoke-direct {v0}, Lcom/yingyonghui/market/log/d;-><init>()V

    iput-object v0, p0, Lcom/yingyonghui/market/log/j;->a:Lcom/yingyonghui/market/log/r;

    return-void
.end method

.method private varargs a([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 18
    .line 22
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/yingyonghui/market/log/j;->b:Landroid/content/Context;

    .line 23
    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/yingyonghui/market/log/j;->c:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 29
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/yingyonghui/market/log/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 30
    iget-object v3, p0, Lcom/yingyonghui/market/log/j;->a:Lcom/yingyonghui/market/log/r;

    iget-object v4, p0, Lcom/yingyonghui/market/log/j;->b:Landroid/content/Context;

    invoke-interface {v3, v4, v0}, Lcom/yingyonghui/market/log/r;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v3

    .line 31
    invoke-static {v3}, Lcom/yingyonghui/market/util/c;->a([B)[B

    move-result-object v3

    .line 32
    iget-object v4, p0, Lcom/yingyonghui/market/log/j;->a:Lcom/yingyonghui/market/log/r;

    iget-object v5, p0, Lcom/yingyonghui/market/log/j;->b:Landroid/content/Context;

    invoke-interface {v4, v5, v3, v0}, Lcom/yingyonghui/market/log/r;->a(Landroid/content/Context;[BLjava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    :try_start_2
    iget-object v3, p0, Lcom/yingyonghui/market/log/j;->a:Lcom/yingyonghui/market/log/r;

    iget-object v4, p0, Lcom/yingyonghui/market/log/j;->b:Landroid/content/Context;

    invoke-interface {v3, v4, v0}, Lcom/yingyonghui/market/log/r;->c(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 38
    :catch_0
    move-exception v0

    move-object v6, v0

    move v0, v1

    move-object v1, v6

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 42
    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 24
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 40
    goto :goto_3

    .line 38
    :catch_2
    move-exception v0

    move-object v6, v0

    move v0, v1

    move-object v1, v6

    goto :goto_2
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/yingyonghui/market/log/j;->a([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 11
    iget-object v0, p0, Lcom/yingyonghui/market/log/j;->a:Lcom/yingyonghui/market/log/r;

    iget-object v1, p0, Lcom/yingyonghui/market/log/j;->b:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/yingyonghui/market/log/r;->b(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    iget-object v2, p0, Lcom/yingyonghui/market/log/j;->b:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/yingyonghui/market/log/LogService;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    goto :goto_0

    :cond_0
    return-void
.end method
