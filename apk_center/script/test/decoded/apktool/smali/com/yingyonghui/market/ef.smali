.class final Lcom/yingyonghui/market/ef;
.super Ljava/lang/Object;
.source "ActivityListAppRecommend.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityListAppRecommend;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityListAppRecommend;)V
    .locals 0
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lcom/yingyonghui/market/ef;->a:Lcom/yingyonghui/market/ActivityListAppRecommend;

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
    .line 326
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 330
    packed-switch p2, :pswitch_data_0

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 332
    :pswitch_0
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 333
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 335
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yingyonghui/market/ef;->a:Lcom/yingyonghui/market/ActivityListAppRecommend;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityListAppRecommend;->a(Lcom/yingyonghui/market/ActivityListAppRecommend;)Lcom/yingyonghui/market/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yingyonghui/market/n;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-lt v0, v1, :cond_0

    .line 336
    iget-object v0, p0, Lcom/yingyonghui/market/ef;->a:Lcom/yingyonghui/market/ActivityListAppRecommend;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppRecommend;->b(Lcom/yingyonghui/market/ActivityListAppRecommend;)V

    goto :goto_0

    .line 330
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
