.class final Lcom/yingyonghui/market/aq;
.super Landroid/os/AsyncTask;
.source "ActivityListAppDownload.java"


# instance fields
.field private synthetic a:Landroid/view/View;

.field private synthetic b:Lcom/yingyonghui/market/model/q;

.field private synthetic c:Lcom/yingyonghui/market/bo;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/bo;Landroid/view/View;Lcom/yingyonghui/market/model/q;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 712
    iput-object p1, p0, Lcom/yingyonghui/market/aq;->c:Lcom/yingyonghui/market/bo;

    iput-object p2, p0, Lcom/yingyonghui/market/aq;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/yingyonghui/market/aq;->b:Lcom/yingyonghui/market/model/q;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter

    .prologue
    .line 712
    iget-object v0, p0, Lcom/yingyonghui/market/aq;->c:Lcom/yingyonghui/market/bo;

    iget-object v0, v0, Lcom/yingyonghui/market/bo;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v0}, Lcom/yingyonghui/market/util/GlobalUtil;->d(Landroid/content/Context;)Ljava/lang/String;

    const-string v5, "download"

    iget-object v0, p0, Lcom/yingyonghui/market/aq;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/aq;->b:Lcom/yingyonghui/market/model/q;

    iget-object v1, v1, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/yingyonghui/market/provider/k;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/yingyonghui/market/provider/m;

    move-result-object v0

    sget-object v1, Lcom/yingyonghui/market/provider/m;->f:Lcom/yingyonghui/market/provider/m;

    if-ne v0, v1, :cond_0

    const-string v5, "update"

    :cond_0
    iget-object v0, p0, Lcom/yingyonghui/market/aq;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yingyonghui/market/util/t;->a(Landroid/content/Context;)Lcom/yingyonghui/market/util/t;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/aq;->b:Lcom/yingyonghui/market/model/q;

    iget-object v1, v1, Lcom/yingyonghui/market/model/q;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/yingyonghui/market/aq;->b:Lcom/yingyonghui/market/model/q;

    iget-object v2, v2, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/yingyonghui/market/aq;->b:Lcom/yingyonghui/market/model/q;

    iget-object v3, v3, Lcom/yingyonghui/market/model/q;->i:Ljava/lang/String;

    iget-object v4, p0, Lcom/yingyonghui/market/aq;->b:Lcom/yingyonghui/market/model/q;

    iget-object v4, v4, Lcom/yingyonghui/market/model/q;->G:Ljava/lang/String;

    iget-object v6, p0, Lcom/yingyonghui/market/aq;->b:Lcom/yingyonghui/market/model/q;

    iget-object v6, v6, Lcom/yingyonghui/market/model/q;->f:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/yingyonghui/market/util/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
