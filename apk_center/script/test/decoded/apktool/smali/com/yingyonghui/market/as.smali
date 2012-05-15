.class final Lcom/yingyonghui/market/as;
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
    .line 699
    iput-object p1, p0, Lcom/yingyonghui/market/as;->c:Lcom/yingyonghui/market/bo;

    iput-object p2, p0, Lcom/yingyonghui/market/as;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/yingyonghui/market/as;->b:Lcom/yingyonghui/market/model/q;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 699
    iget-object v0, p0, Lcom/yingyonghui/market/as;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yingyonghui/market/util/t;->a(Landroid/content/Context;)Lcom/yingyonghui/market/util/t;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/as;->b:Lcom/yingyonghui/market/model/q;

    iget-object v1, v1, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/util/t;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
