.class final Lcom/yingyonghui/market/bk;
.super Ljava/lang/Object;
.source "ActivityListComments.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityListComments;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityListComments;)V
    .locals 0
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/yingyonghui/market/bk;->a:Lcom/yingyonghui/market/ActivityListComments;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 244
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 248
    packed-switch p2, :pswitch_data_0

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 250
    :pswitch_0
    iget-object v0, p0, Lcom/yingyonghui/market/bk;->a:Lcom/yingyonghui/market/ActivityListComments;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yingyonghui/market/ActivityListComments;->a(Lcom/yingyonghui/market/ActivityListComments;Z)Z

    .line 252
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 253
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 255
    iget-object v2, p0, Lcom/yingyonghui/market/bk;->a:Lcom/yingyonghui/market/ActivityListComments;

    invoke-static {v2}, Lcom/yingyonghui/market/ActivityListComments;->j(Lcom/yingyonghui/market/ActivityListComments;)Lcom/yingyonghui/market/fb;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 256
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yingyonghui/market/bk;->a:Lcom/yingyonghui/market/ActivityListComments;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityListComments;->j(Lcom/yingyonghui/market/ActivityListComments;)Lcom/yingyonghui/market/fb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yingyonghui/market/fb;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-lt v0, v1, :cond_0

    .line 257
    iget-object v0, p0, Lcom/yingyonghui/market/bk;->a:Lcom/yingyonghui/market/ActivityListComments;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListComments;->k(Lcom/yingyonghui/market/ActivityListComments;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/yingyonghui/market/bk;->a:Lcom/yingyonghui/market/ActivityListComments;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListComments;->i(Lcom/yingyonghui/market/ActivityListComments;)V

    .line 259
    iget-object v0, p0, Lcom/yingyonghui/market/bk;->a:Lcom/yingyonghui/market/ActivityListComments;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListComments;->l(Lcom/yingyonghui/market/ActivityListComments;)Z

    goto :goto_0

    .line 266
    :pswitch_1
    iget-object v0, p0, Lcom/yingyonghui/market/bk;->a:Lcom/yingyonghui/market/ActivityListComments;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListComments;->m(Lcom/yingyonghui/market/ActivityListComments;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/yingyonghui/market/bk;->a:Lcom/yingyonghui/market/ActivityListComments;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yingyonghui/market/ActivityListComments;->a(Lcom/yingyonghui/market/ActivityListComments;Z)Z

    goto :goto_0

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
