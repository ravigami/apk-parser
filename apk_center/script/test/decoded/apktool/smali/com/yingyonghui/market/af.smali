.class final Lcom/yingyonghui/market/af;
.super Ljava/lang/Object;
.source "ActivityGridWeekly.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityGridWeekly;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityGridWeekly;)V
    .locals 0
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lcom/yingyonghui/market/af;->a:Lcom/yingyonghui/market/ActivityGridWeekly;

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
    .line 340
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 345
    packed-switch p2, :pswitch_data_0

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 348
    :pswitch_0
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 349
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 351
    iget-object v2, p0, Lcom/yingyonghui/market/af;->a:Lcom/yingyonghui/market/ActivityGridWeekly;

    invoke-static {v2}, Lcom/yingyonghui/market/ActivityGridWeekly;->b(Lcom/yingyonghui/market/ActivityGridWeekly;)Lcom/yingyonghui/market/el;

    move-result-object v2

    if-eqz v2, :cond_0

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yingyonghui/market/af;->a:Lcom/yingyonghui/market/ActivityGridWeekly;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityGridWeekly;->b(Lcom/yingyonghui/market/ActivityGridWeekly;)Lcom/yingyonghui/market/el;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yingyonghui/market/el;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-lt v0, v1, :cond_0

    .line 352
    iget-object v0, p0, Lcom/yingyonghui/market/af;->a:Lcom/yingyonghui/market/ActivityGridWeekly;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityGridWeekly;->c(Lcom/yingyonghui/market/ActivityGridWeekly;)V

    goto :goto_0

    .line 345
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
