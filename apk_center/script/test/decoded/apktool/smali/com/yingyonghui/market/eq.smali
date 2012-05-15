.class final Lcom/yingyonghui/market/eq;
.super Landroid/os/AsyncTask;
.source "ActivityListAppManage.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ab;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ab;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/yingyonghui/market/eq;->a:Lcom/yingyonghui/market/ab;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lcom/yingyonghui/market/eq;->a:Lcom/yingyonghui/market/ab;

    iget-object v0, v0, Lcom/yingyonghui/market/ab;->a:Lcom/yingyonghui/market/ActivityListAppManage;

    invoke-static {v0}, Lcom/yingyonghui/market/util/GlobalUtil;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/yingyonghui/market/eq;->a:Lcom/yingyonghui/market/ab;

    iget-object v1, v1, Lcom/yingyonghui/market/ab;->a:Lcom/yingyonghui/market/ActivityListAppManage;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityListAppManage;->a(Lcom/yingyonghui/market/ActivityListAppManage;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v14

    move v13, v0

    :goto_0
    if-ge v13, v14, :cond_2

    iget-object v0, p0, Lcom/yingyonghui/market/eq;->a:Lcom/yingyonghui/market/ab;

    iget-object v0, v0, Lcom/yingyonghui/market/ab;->a:Lcom/yingyonghui/market/ActivityListAppManage;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppManage;->a(Lcom/yingyonghui/market/ActivityListAppManage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/yingyonghui/market/model/q;

    iget-boolean v0, v12, Lcom/yingyonghui/market/model/q;->x:Z

    if-eqz v0, :cond_1

    iget-object v0, v12, Lcom/yingyonghui/market/model/q;->Q:Ljava/lang/String;

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/yingyonghui/market/util/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, v12, Lcom/yingyonghui/market/model/q;->n:I

    invoke-static {v0}, Lcom/yingyonghui/market/util/GlobalUtil;->a(I)Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, Lcom/yingyonghui/market/eq;->a:Lcom/yingyonghui/market/ab;

    iget-object v0, v0, Lcom/yingyonghui/market/ab;->a:Lcom/yingyonghui/market/ActivityListAppManage;

    invoke-static {v0}, Lcom/yingyonghui/market/util/t;->a(Landroid/content/Context;)Lcom/yingyonghui/market/util/t;

    move-result-object v0

    iget-object v1, v12, Lcom/yingyonghui/market/model/q;->g:Ljava/lang/String;

    iget v2, v12, Lcom/yingyonghui/market/model/q;->e:I

    iget-object v3, v12, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    iget-object v4, v12, Lcom/yingyonghui/market/model/q;->i:Ljava/lang/String;

    iget v5, v12, Lcom/yingyonghui/market/model/q;->o:I

    iget v6, v12, Lcom/yingyonghui/market/model/q;->E:I

    iget-object v7, v12, Lcom/yingyonghui/market/model/q;->F:Ljava/lang/String;

    iget-object v8, v12, Lcom/yingyonghui/market/model/q;->G:Ljava/lang/String;

    iget-object v11, v12, Lcom/yingyonghui/market/model/q;->f:Ljava/lang/String;

    invoke-virtual/range {v0 .. v11}, Lcom/yingyonghui/market/util/t;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    rem-int/lit8 v0, v13, 0x3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/eq;->publishProgress([Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/yingyonghui/market/eq;->a:Lcom/yingyonghui/market/ab;

    iget-object v0, v0, Lcom/yingyonghui/market/ab;->a:Lcom/yingyonghui/market/ActivityListAppManage;

    iget-object v1, p0, Lcom/yingyonghui/market/eq;->a:Lcom/yingyonghui/market/ab;

    iget-object v1, v1, Lcom/yingyonghui/market/ab;->a:Lcom/yingyonghui/market/ActivityListAppManage;

    invoke-virtual {v1}, Lcom/yingyonghui/market/ActivityListAppManage;->f()Lcom/yingyonghui/market/log/m;

    move-result-object v1

    const-string v2, ""

    iget v4, v12, Lcom/yingyonghui/market/model/q;->e:I

    const-string v5, "update"

    move v3, v13

    invoke-static/range {v0 .. v5}, Lcom/yingyonghui/market/log/l;->a(Landroid/content/Context;Lcom/yingyonghui/market/log/m;Ljava/lang/String;IILjava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v13, 0x1

    move v13, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lcom/yingyonghui/market/eq;->a:Lcom/yingyonghui/market/ab;

    iget-object v0, v0, Lcom/yingyonghui/market/ab;->a:Lcom/yingyonghui/market/ActivityListAppManage;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppManage;->b(Lcom/yingyonghui/market/ActivityListAppManage;)Lcom/yingyonghui/market/es;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yingyonghui/market/eq;->a:Lcom/yingyonghui/market/ab;

    iget-object v0, v0, Lcom/yingyonghui/market/ab;->a:Lcom/yingyonghui/market/ActivityListAppManage;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppManage;->b(Lcom/yingyonghui/market/ActivityListAppManage;)Lcom/yingyonghui/market/es;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yingyonghui/market/es;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected final bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lcom/yingyonghui/market/eq;->a:Lcom/yingyonghui/market/ab;

    iget-object v0, v0, Lcom/yingyonghui/market/ab;->a:Lcom/yingyonghui/market/ActivityListAppManage;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppManage;->b(Lcom/yingyonghui/market/ActivityListAppManage;)Lcom/yingyonghui/market/es;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yingyonghui/market/eq;->a:Lcom/yingyonghui/market/ab;

    iget-object v0, v0, Lcom/yingyonghui/market/ab;->a:Lcom/yingyonghui/market/ActivityListAppManage;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppManage;->b(Lcom/yingyonghui/market/ActivityListAppManage;)Lcom/yingyonghui/market/es;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yingyonghui/market/es;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
