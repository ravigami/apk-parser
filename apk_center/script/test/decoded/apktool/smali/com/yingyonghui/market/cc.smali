.class final Lcom/yingyonghui/market/cc;
.super Landroid/os/AsyncTask;
.source "ActivityListAppDownload.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/c;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/c;)V
    .locals 0
    .parameter

    .prologue
    .line 790
    iput-object p1, p0, Lcom/yingyonghui/market/cc;->a:Lcom/yingyonghui/market/c;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/lang/Boolean;
    .locals 6

    .prologue
    .line 793
    const/4 v0, 0x0

    .line 795
    iget-object v1, p0, Lcom/yingyonghui/market/cc;->a:Lcom/yingyonghui/market/c;

    iget-object v1, v1, Lcom/yingyonghui/market/c;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityListAppDownload;->c(Lcom/yingyonghui/market/ActivityListAppDownload;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 796
    :try_start_0
    iget-object v1, p0, Lcom/yingyonghui/market/cc;->a:Lcom/yingyonghui/market/c;

    iget-object v1, v1, Lcom/yingyonghui/market/c;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityListAppDownload;->c(Lcom/yingyonghui/market/ActivityListAppDownload;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 797
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/yingyonghui/market/cc;->a:Lcom/yingyonghui/market/c;

    iget-object v1, v1, Lcom/yingyonghui/market/c;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityListAppDownload;->c(Lcom/yingyonghui/market/ActivityListAppDownload;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 798
    iget-object v1, p0, Lcom/yingyonghui/market/cc;->a:Lcom/yingyonghui/market/c;

    iget-object v1, v1, Lcom/yingyonghui/market/c;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityListAppDownload;->c(Lcom/yingyonghui/market/ActivityListAppDownload;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->copy(Ljava/util/List;Ljava/util/List;)V

    move-object v1, v0

    .line 800
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 802
    const/4 v0, 0x0

    .line 803
    if-eqz v1, :cond_2

    .line 804
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 805
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move v2, v0

    .line 807
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 808
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/q;

    .line 809
    iget-object v1, v0, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 810
    iget-object v1, v0, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 811
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v5, v0, Lcom/yingyonghui/market/model/q;->s:I

    if-ne v1, v5, :cond_0

    .line 812
    new-instance v1, Ljava/io/File;

    iget-object v0, v0, Lcom/yingyonghui/market/model/q;->R:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 813
    const/4 v0, 0x1

    move v2, v0

    goto :goto_1

    .line 800
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 815
    :cond_0
    iget-object v1, v0, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    iget v0, v0, Lcom/yingyonghui/market/model/q;->s:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 818
    :cond_1
    iget-object v1, v0, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    iget v0, v0, Lcom/yingyonghui/market/model/q;->s:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    move v2, v0

    .line 823
    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_4
    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 790
    invoke-direct {p0}, Lcom/yingyonghui/market/cc;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 790
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yingyonghui/market/cc;->a:Lcom/yingyonghui/market/c;

    iget-object v0, v0, Lcom/yingyonghui/market/c;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    const v1, 0x7f090153

    invoke-static {v0, v1}, Lcom/yingyonghui/market/util/GlobalUtil;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/yingyonghui/market/cc;->a:Lcom/yingyonghui/market/c;

    iget-object v0, v0, Lcom/yingyonghui/market/c;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppDownload;->h(Lcom/yingyonghui/market/ActivityListAppDownload;)Lcom/yingyonghui/market/be;

    iget-object v0, p0, Lcom/yingyonghui/market/cc;->a:Lcom/yingyonghui/market/c;

    iget-object v0, v0, Lcom/yingyonghui/market/c;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/yingyonghui/market/ActivityListAppDownload;->a(ZZ)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/yingyonghui/market/cc;->a:Lcom/yingyonghui/market/c;

    iget-object v0, v0, Lcom/yingyonghui/market/c;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    const v1, 0x7f090154

    invoke-static {v0, v1}, Lcom/yingyonghui/market/util/GlobalUtil;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method
