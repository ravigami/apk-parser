.class final Lcom/yingyonghui/market/ca;
.super Landroid/os/AsyncTask;
.source "ActivityListAppDownload.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/b;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/b;)V
    .locals 0
    .parameter

    .prologue
    .line 850
    iput-object p1, p0, Lcom/yingyonghui/market/ca;->a:Lcom/yingyonghui/market/b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 853
    .line 855
    iget-object v0, p0, Lcom/yingyonghui/market/ca;->a:Lcom/yingyonghui/market/b;

    iget-object v0, v0, Lcom/yingyonghui/market/b;->a:Lcom/yingyonghui/market/a;

    iget-object v0, v0, Lcom/yingyonghui/market/a;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppDownload;->c(Lcom/yingyonghui/market/ActivityListAppDownload;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 856
    :try_start_0
    iget-object v0, p0, Lcom/yingyonghui/market/ca;->a:Lcom/yingyonghui/market/b;

    iget-object v0, v0, Lcom/yingyonghui/market/b;->a:Lcom/yingyonghui/market/a;

    iget-object v0, v0, Lcom/yingyonghui/market/a;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppDownload;->c(Lcom/yingyonghui/market/ActivityListAppDownload;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 857
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/yingyonghui/market/ca;->a:Lcom/yingyonghui/market/b;

    iget-object v3, v3, Lcom/yingyonghui/market/b;->a:Lcom/yingyonghui/market/a;

    iget-object v3, v3, Lcom/yingyonghui/market/a;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v3}, Lcom/yingyonghui/market/ActivityListAppDownload;->c(Lcom/yingyonghui/market/ActivityListAppDownload;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 858
    iget-object v3, p0, Lcom/yingyonghui/market/ca;->a:Lcom/yingyonghui/market/b;

    iget-object v3, v3, Lcom/yingyonghui/market/b;->a:Lcom/yingyonghui/market/a;

    iget-object v3, v3, Lcom/yingyonghui/market/a;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v3}, Lcom/yingyonghui/market/ActivityListAppDownload;->c(Lcom/yingyonghui/market/ActivityListAppDownload;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/Collections;->copy(Ljava/util/List;Ljava/util/List;)V

    .line 860
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 862
    if-eqz v0, :cond_0

    .line 863
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 864
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 865
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/q;

    .line 866
    new-instance v3, Ljava/io/File;

    iget-object v0, v0, Lcom/yingyonghui/market/model/q;->R:Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 860
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 869
    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 850
    invoke-direct {p0}, Lcom/yingyonghui/market/ca;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 850
    iget-object v0, p0, Lcom/yingyonghui/market/ca;->a:Lcom/yingyonghui/market/b;

    iget-object v0, v0, Lcom/yingyonghui/market/b;->a:Lcom/yingyonghui/market/a;

    iget-object v0, v0, Lcom/yingyonghui/market/a;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    const v1, 0x7f090152

    invoke-static {v0, v1}, Lcom/yingyonghui/market/util/GlobalUtil;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/yingyonghui/market/ca;->a:Lcom/yingyonghui/market/b;

    iget-object v0, v0, Lcom/yingyonghui/market/b;->a:Lcom/yingyonghui/market/a;

    iget-object v0, v0, Lcom/yingyonghui/market/a;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppDownload;->h(Lcom/yingyonghui/market/ActivityListAppDownload;)Lcom/yingyonghui/market/be;

    iget-object v0, p0, Lcom/yingyonghui/market/ca;->a:Lcom/yingyonghui/market/b;

    iget-object v0, v0, Lcom/yingyonghui/market/b;->a:Lcom/yingyonghui/market/a;

    iget-object v0, v0, Lcom/yingyonghui/market/a;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/yingyonghui/market/ActivityListAppDownload;->a(ZZ)V

    return-void
.end method
