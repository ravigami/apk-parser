.class final Lcom/yingyonghui/market/v;
.super Ljava/lang/Object;
.source "ActivityListAppManage.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityListAppManage;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityListAppManage;)V
    .locals 0
    .parameter

    .prologue
    .line 392
    iput-object p1, p0, Lcom/yingyonghui/market/v;->a:Lcom/yingyonghui/market/ActivityListAppManage;

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
    .line 396
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 400
    packed-switch p2, :pswitch_data_0

    .line 405
    :goto_0
    return-void

    .line 402
    :pswitch_0
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppManage;->a(I)I

    goto :goto_0

    .line 400
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
