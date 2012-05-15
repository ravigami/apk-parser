.class final Lcom/yingyonghui/market/df;
.super Landroid/os/AsyncTask;
.source "ActivityListAppDownload.java"


# instance fields
.field private a:Landroid/widget/ArrayAdapter;

.field private synthetic b:Lcom/yingyonghui/market/ActivityListAppDownload;


# direct methods
.method protected constructor <init>(Lcom/yingyonghui/market/ActivityListAppDownload;Landroid/widget/ArrayAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 897
    iput-object p1, p0, Lcom/yingyonghui/market/df;->b:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 898
    iput-object p2, p0, Lcom/yingyonghui/market/df;->a:Landroid/widget/ArrayAdapter;

    .line 899
    return-void
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 893
    check-cast p1, [Ljava/util/ArrayList;

    aget-object v4, p1, v3

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v3

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/q;

    iget-boolean v5, v0, Lcom/yingyonghui/market/model/q;->x:Z

    if-nez v5, :cond_3

    iget-object v1, p0, Lcom/yingyonghui/market/df;->b:Lcom/yingyonghui/market/ActivityListAppDownload;

    iget-object v1, v1, Lcom/yingyonghui/market/ActivityListAppDownload;->e:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v5, v0, Lcom/yingyonghui/market/model/q;->R:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yingyonghui/market/model/q;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/yingyonghui/market/df;->b:Lcom/yingyonghui/market/ActivityListAppDownload;

    new-instance v5, Ljava/io/File;

    iget-object v6, v0, Lcom/yingyonghui/market/model/q;->R:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v5}, Lcom/yingyonghui/market/util/GlobalUtil;->a(Landroid/content/Context;Ljava/io/File;)Lcom/yingyonghui/market/model/q;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/model/q;->a(Lcom/yingyonghui/market/model/q;)V

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/yingyonghui/market/model/q;->P:Z

    new-array v5, v3, [Ljava/lang/Void;

    invoke-virtual {p0, v5}, Lcom/yingyonghui/market/df;->publishProgress([Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/yingyonghui/market/df;->b:Lcom/yingyonghui/market/ActivityListAppDownload;

    iget-object v5, v5, Lcom/yingyonghui/market/ActivityListAppDownload;->e:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, v0, Lcom/yingyonghui/market/model/q;->R:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 893
    iget-object v0, p0, Lcom/yingyonghui/market/df;->a:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yingyonghui/market/df;->a:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected final bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 893
    iget-object v0, p0, Lcom/yingyonghui/market/df;->a:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yingyonghui/market/df;->a:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
