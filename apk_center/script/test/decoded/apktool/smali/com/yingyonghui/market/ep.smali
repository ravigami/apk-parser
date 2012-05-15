.class final Lcom/yingyonghui/market/ep;
.super Ljava/lang/Object;
.source "ActivityNewEvents.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityNewEvents;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityNewEvents;)V
    .locals 0
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/yingyonghui/market/ep;->a:Lcom/yingyonghui/market/ActivityNewEvents;

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
    .line 251
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 255
    packed-switch p2, :pswitch_data_0

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 257
    :pswitch_0
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 258
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 260
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yingyonghui/market/ep;->a:Lcom/yingyonghui/market/ActivityNewEvents;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityNewEvents;->a(Lcom/yingyonghui/market/ActivityNewEvents;)Lcom/yingyonghui/market/fa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yingyonghui/market/fa;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-lt v0, v1, :cond_0

    .line 261
    iget-object v0, p0, Lcom/yingyonghui/market/ep;->a:Lcom/yingyonghui/market/ActivityNewEvents;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityNewEvents;->b(Lcom/yingyonghui/market/ActivityNewEvents;)V

    goto :goto_0

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
