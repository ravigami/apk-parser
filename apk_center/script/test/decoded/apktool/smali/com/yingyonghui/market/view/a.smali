.class final Lcom/yingyonghui/market/view/a;
.super Landroid/os/Handler;
.source "FullScreenLoadingView.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/view/FullScreenLoadingView;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/view/FullScreenLoadingView;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/yingyonghui/market/view/a;->a:Lcom/yingyonghui/market/view/FullScreenLoadingView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 57
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 60
    :pswitch_0
    iget-object v0, p0, Lcom/yingyonghui/market/view/a;->a:Lcom/yingyonghui/market/view/FullScreenLoadingView;

    invoke-static {v0}, Lcom/yingyonghui/market/view/FullScreenLoadingView;->a(Lcom/yingyonghui/market/view/FullScreenLoadingView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yingyonghui/market/view/a;->a:Lcom/yingyonghui/market/view/FullScreenLoadingView;

    invoke-static {v0}, Lcom/yingyonghui/market/view/FullScreenLoadingView;->b(Lcom/yingyonghui/market/view/FullScreenLoadingView;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/yingyonghui/market/view/a;->a:Lcom/yingyonghui/market/view/FullScreenLoadingView;

    invoke-static {v0}, Lcom/yingyonghui/market/view/FullScreenLoadingView;->c(Lcom/yingyonghui/market/view/FullScreenLoadingView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcom/yingyonghui/market/view/a;->a:Lcom/yingyonghui/market/view/FullScreenLoadingView;

    invoke-static {v0}, Lcom/yingyonghui/market/view/FullScreenLoadingView;->d(Lcom/yingyonghui/market/view/FullScreenLoadingView;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    rem-int/lit8 v2, v2, 0xa

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 63
    iget-object v0, p0, Lcom/yingyonghui/market/view/a;->a:Lcom/yingyonghui/market/view/FullScreenLoadingView;

    invoke-static {v0}, Lcom/yingyonghui/market/view/FullScreenLoadingView;->c(Lcom/yingyonghui/market/view/FullScreenLoadingView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch

    .line 62
    :array_0
    .array-data 0x4
        0x82t 0x1t 0x9t 0x7ft
        0x83t 0x1t 0x9t 0x7ft
        0x84t 0x1t 0x9t 0x7ft
        0x85t 0x1t 0x9t 0x7ft
        0x86t 0x1t 0x9t 0x7ft
        0x87t 0x1t 0x9t 0x7ft
        0x88t 0x1t 0x9t 0x7ft
        0x8at 0x1t 0x9t 0x7ft
        0x8at 0x1t 0x9t 0x7ft
        0x8bt 0x1t 0x9t 0x7ft
    .end array-data
.end method
