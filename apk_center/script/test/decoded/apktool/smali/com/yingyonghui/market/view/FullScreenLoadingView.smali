.class public Lcom/yingyonghui/market/view/FullScreenLoadingView;
.super Landroid/widget/LinearLayout;
.source "FullScreenLoadingView.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/TextView;

.field private f:Z

.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput-boolean v2, p0, Lcom/yingyonghui/market/view/FullScreenLoadingView;->f:Z

    .line 55
    new-instance v0, Lcom/yingyonghui/market/view/a;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/view/a;-><init>(Lcom/yingyonghui/market/view/FullScreenLoadingView;)V

    iput-object v0, p0, Lcom/yingyonghui/market/view/FullScreenLoadingView;->g:Landroid/os/Handler;

    .line 32
    iput-object p1, p0, Lcom/yingyonghui/market/view/FullScreenLoadingView;->a:Landroid/content/Context;

    .line 33
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/view/FullScreenLoadingView;->b:Landroid/view/LayoutInflater;

    .line 34
    iget-object v0, p0, Lcom/yingyonghui/market/view/FullScreenLoadingView;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030030

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yingyonghui/market/view/FullScreenLoadingView;->c:Landroid/widget/LinearLayout;

    .line 35
    iget-object v0, p0, Lcom/yingyonghui/market/view/FullScreenLoadingView;->c:Landroid/widget/LinearLayout;

    const v1, 0x7f0b00cb

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yingyonghui/market/view/FullScreenLoadingView;->d:Landroid/widget/LinearLayout;

    .line 36
    iget-object v0, p0, Lcom/yingyonghui/market/view/FullScreenLoadingView;->c:Landroid/widget/LinearLayout;

    const v1, 0x7f0b00cc

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yingyonghui/market/view/FullScreenLoadingView;->e:Landroid/widget/TextView;

    .line 38
    iget-object v0, p0, Lcom/yingyonghui/market/view/FullScreenLoadingView;->g:Landroid/os/Handler;

    const/16 v1, 0x3e9

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/yingyonghui/market/view/FullScreenLoadingView;)Z
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/yingyonghui/market/view/FullScreenLoadingView;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/yingyonghui/market/view/FullScreenLoadingView;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/yingyonghui/market/view/FullScreenLoadingView;->c:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic c(Lcom/yingyonghui/market/view/FullScreenLoadingView;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/yingyonghui/market/view/FullScreenLoadingView;->d:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic d(Lcom/yingyonghui/market/view/FullScreenLoadingView;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/yingyonghui/market/view/FullScreenLoadingView;->e:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public setVisibility(I)V
    .locals 1
    .parameter

    .prologue
    .line 47
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yingyonghui/market/view/FullScreenLoadingView;->f:Z

    .line 52
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 53
    return-void

    .line 49
    :cond_1
    if-nez p1, :cond_0

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yingyonghui/market/view/FullScreenLoadingView;->f:Z

    goto :goto_0
.end method
