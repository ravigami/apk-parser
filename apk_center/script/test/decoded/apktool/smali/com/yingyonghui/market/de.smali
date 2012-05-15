.class final Lcom/yingyonghui/market/de;
.super Ljava/lang/Object;
.source "ActivityListAppDownload.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityListAppDownload;


# direct methods
.method synthetic constructor <init>(Lcom/yingyonghui/market/ActivityListAppDownload;)V
    .locals 1
    .parameter

    .prologue
    .line 748
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yingyonghui/market/de;-><init>(Lcom/yingyonghui/market/ActivityListAppDownload;B)V

    return-void
.end method

.method private constructor <init>(Lcom/yingyonghui/market/ActivityListAppDownload;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 748
    iput-object p1, p0, Lcom/yingyonghui/market/de;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

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
    .line 752
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x66

    .line 756
    if-eqz p2, :cond_1

    .line 757
    iget-object v0, p0, Lcom/yingyonghui/market/de;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppDownload;->k(Lcom/yingyonghui/market/ActivityListAppDownload;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/yingyonghui/market/de;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppDownload;->k(Lcom/yingyonghui/market/ActivityListAppDownload;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 763
    :cond_0
    :goto_0
    return-void

    .line 761
    :cond_1
    iget-object v0, p0, Lcom/yingyonghui/market/de;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    iput v1, v0, Lcom/yingyonghui/market/ActivityListAppDownload;->c:I

    goto :goto_0
.end method
