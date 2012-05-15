.class final Lcom/yingyonghui/market/install/d;
.super Landroid/os/Handler;
.source "UninstallAppProgress.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/install/UninstallAppProgress;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/install/UninstallAppProgress;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/yingyonghui/market/install/d;->a:Lcom/yingyonghui/market/install/UninstallAppProgress;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 33
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 43
    :goto_0
    return-void

    .line 35
    :pswitch_0
    iget-object v0, p0, Lcom/yingyonghui/market/install/d;->a:Lcom/yingyonghui/market/install/UninstallAppProgress;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/yingyonghui/market/install/UninstallAppProgress;->a(Lcom/yingyonghui/market/install/UninstallAppProgress;I)I

    .line 36
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 37
    iget-object v0, p0, Lcom/yingyonghui/market/install/d;->a:Lcom/yingyonghui/market/install/UninstallAppProgress;

    invoke-static {v0}, Lcom/yingyonghui/market/install/UninstallAppProgress;->a(Lcom/yingyonghui/market/install/UninstallAppProgress;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0900b6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 41
    :goto_1
    iget-object v0, p0, Lcom/yingyonghui/market/install/d;->a:Lcom/yingyonghui/market/install/UninstallAppProgress;

    invoke-static {v0}, Lcom/yingyonghui/market/install/UninstallAppProgress;->b(Lcom/yingyonghui/market/install/UninstallAppProgress;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 42
    iget-object v0, p0, Lcom/yingyonghui/market/install/d;->a:Lcom/yingyonghui/market/install/UninstallAppProgress;

    invoke-static {v0}, Lcom/yingyonghui/market/install/UninstallAppProgress;->c(Lcom/yingyonghui/market/install/UninstallAppProgress;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/yingyonghui/market/install/d;->a:Lcom/yingyonghui/market/install/UninstallAppProgress;

    invoke-static {v0}, Lcom/yingyonghui/market/install/UninstallAppProgress;->a(Lcom/yingyonghui/market/install/UninstallAppProgress;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0900b7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 33
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
