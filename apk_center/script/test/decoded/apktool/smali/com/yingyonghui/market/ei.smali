.class final Lcom/yingyonghui/market/ei;
.super Landroid/os/AsyncTask;
.source "ActivityDetailAppInner.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityDetailAppInner;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityDetailAppInner;)V
    .locals 0
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Lcom/yingyonghui/market/ei;->a:Lcom/yingyonghui/market/ActivityDetailAppInner;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 347
    :cond_0
    iget-object v0, p0, Lcom/yingyonghui/market/ei;->a:Lcom/yingyonghui/market/ActivityDetailAppInner;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityDetailAppInner;->h(Lcom/yingyonghui/market/ActivityDetailAppInner;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 347
    iget-object v0, p0, Lcom/yingyonghui/market/ei;->a:Lcom/yingyonghui/market/ActivityDetailAppInner;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityDetailAppInner;->h(Lcom/yingyonghui/market/ActivityDetailAppInner;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/yingyonghui/market/ei;->a:Lcom/yingyonghui/market/ActivityDetailAppInner;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityDetailAppInner;->i(Lcom/yingyonghui/market/ActivityDetailAppInner;)Landroid/widget/ImageButton;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    return-void
.end method
