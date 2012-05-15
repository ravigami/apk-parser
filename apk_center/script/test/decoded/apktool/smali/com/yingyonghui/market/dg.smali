.class final Lcom/yingyonghui/market/dg;
.super Landroid/os/AsyncTask;
.source "ActivityListAppManage.java"


# instance fields
.field private a:Lcom/yingyonghui/market/es;

.field private synthetic b:Lcom/yingyonghui/market/ActivityListAppManage;


# direct methods
.method protected constructor <init>(Lcom/yingyonghui/market/ActivityListAppManage;Lcom/yingyonghui/market/es;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 452
    iput-object p1, p0, Lcom/yingyonghui/market/dg;->b:Lcom/yingyonghui/market/ActivityListAppManage;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 453
    iput-object p2, p0, Lcom/yingyonghui/market/dg;->a:Lcom/yingyonghui/market/es;

    .line 454
    return-void
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 448
    check-cast p1, [Ljava/util/ArrayList;

    aget-object v0, p1, v5

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/q;

    iget-boolean v1, v0, Lcom/yingyonghui/market/model/q;->x:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/yingyonghui/market/dg;->b:Lcom/yingyonghui/market/ActivityListAppManage;

    iget-object v1, v1, Lcom/yingyonghui/market/ActivityListAppManage;->e:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, v0, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yingyonghui/market/model/q;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/yingyonghui/market/dg;->b:Lcom/yingyonghui/market/ActivityListAppManage;

    iget-object v3, v0, Lcom/yingyonghui/market/model/q;->S:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1, v3}, Lcom/yingyonghui/market/util/GlobalUtil;->a(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Lcom/yingyonghui/market/model/q;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/yingyonghui/market/dg;->b:Lcom/yingyonghui/market/ActivityListAppManage;

    iget-object v3, v3, Lcom/yingyonghui/market/ActivityListAppManage;->e:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, v0, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/model/q;->a(Lcom/yingyonghui/market/model/q;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/yingyonghui/market/model/q;->P:Z

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {p0, v1}, Lcom/yingyonghui/market/dg;->publishProgress([Ljava/lang/Object;)V

    :cond_2
    iput-object v6, v0, Lcom/yingyonghui/market/model/q;->S:Landroid/content/pm/ApplicationInfo;

    goto :goto_0

    :cond_3
    return-object v6
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 448
    iget-object v0, p0, Lcom/yingyonghui/market/dg;->a:Lcom/yingyonghui/market/es;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yingyonghui/market/dg;->b:Lcom/yingyonghui/market/ActivityListAppManage;

    iget-object v1, p0, Lcom/yingyonghui/market/dg;->a:Lcom/yingyonghui/market/es;

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/ActivityListAppManage;->a(Landroid/widget/ArrayAdapter;)V

    iget-object v0, p0, Lcom/yingyonghui/market/dg;->a:Lcom/yingyonghui/market/es;

    invoke-virtual {v0}, Lcom/yingyonghui/market/es;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected final bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 448
    iget-object v0, p0, Lcom/yingyonghui/market/dg;->a:Lcom/yingyonghui/market/es;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yingyonghui/market/dg;->a:Lcom/yingyonghui/market/es;

    invoke-virtual {v0}, Lcom/yingyonghui/market/es;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
