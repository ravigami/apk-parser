.class final Lcom/yingyonghui/market/dc;
.super Ljava/lang/Object;
.source "ActivityListApp.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityListApp;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityListApp;)V
    .locals 0
    .parameter

    .prologue
    .line 936
    iput-object p1, p0, Lcom/yingyonghui/market/dc;->a:Lcom/yingyonghui/market/ActivityListApp;

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
    .line 943
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 947
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 949
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 950
    packed-switch p2, :pswitch_data_0

    .line 962
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yingyonghui/market/dc;->a:Lcom/yingyonghui/market/ActivityListApp;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityListApp;->e(Lcom/yingyonghui/market/ActivityListApp;)Lcom/yingyonghui/market/br;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yingyonghui/market/br;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    if-lt v0, v1, :cond_0

    .line 963
    iget-object v0, p0, Lcom/yingyonghui/market/dc;->a:Lcom/yingyonghui/market/ActivityListApp;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListApp;->j(Lcom/yingyonghui/market/ActivityListApp;)V

    .line 964
    :cond_0
    iget-object v0, p0, Lcom/yingyonghui/market/dc;->a:Lcom/yingyonghui/market/ActivityListApp;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yingyonghui/market/ActivityListApp;->a(Lcom/yingyonghui/market/ActivityListApp;Z)Z

    .line 968
    :goto_0
    return-void

    .line 953
    :pswitch_0
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yingyonghui/market/dc;->a:Lcom/yingyonghui/market/ActivityListApp;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityListApp;->e(Lcom/yingyonghui/market/ActivityListApp;)Lcom/yingyonghui/market/br;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yingyonghui/market/br;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    if-lt v0, v1, :cond_1

    .line 954
    iget-object v0, p0, Lcom/yingyonghui/market/dc;->a:Lcom/yingyonghui/market/ActivityListApp;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListApp;->j(Lcom/yingyonghui/market/ActivityListApp;)V

    .line 956
    :cond_1
    iget-object v0, p0, Lcom/yingyonghui/market/dc;->a:Lcom/yingyonghui/market/ActivityListApp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yingyonghui/market/ActivityListApp;->a(Lcom/yingyonghui/market/ActivityListApp;Z)Z

    .line 958
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 959
    iget-object v0, p0, Lcom/yingyonghui/market/dc;->a:Lcom/yingyonghui/market/ActivityListApp;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListApp;->o(Lcom/yingyonghui/market/ActivityListApp;)V

    goto :goto_0

    .line 950
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
