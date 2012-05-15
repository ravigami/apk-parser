.class final Lcom/yingyonghui/market/install/a;
.super Landroid/os/Handler;
.source "InstallAppProgress.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/install/InstallAppProgress;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/install/InstallAppProgress;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/yingyonghui/market/install/a;->a:Lcom/yingyonghui/market/install/InstallAppProgress;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 40
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 50
    :goto_0
    return-void

    .line 42
    :pswitch_0
    iget-object v0, p0, Lcom/yingyonghui/market/install/a;->a:Lcom/yingyonghui/market/install/InstallAppProgress;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/yingyonghui/market/install/InstallAppProgress;->a(Lcom/yingyonghui/market/install/InstallAppProgress;I)I

    .line 43
    iget-object v0, p0, Lcom/yingyonghui/market/install/a;->a:Lcom/yingyonghui/market/install/InstallAppProgress;

    invoke-static {v0}, Lcom/yingyonghui/market/install/InstallAppProgress;->a(Lcom/yingyonghui/market/install/InstallAppProgress;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 44
    iget-object v0, p0, Lcom/yingyonghui/market/install/a;->a:Lcom/yingyonghui/market/install/InstallAppProgress;

    invoke-static {v0}, Lcom/yingyonghui/market/install/InstallAppProgress;->b(Lcom/yingyonghui/market/install/InstallAppProgress;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0900b9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 48
    :goto_1
    iget-object v0, p0, Lcom/yingyonghui/market/install/a;->a:Lcom/yingyonghui/market/install/InstallAppProgress;

    invoke-static {v0}, Lcom/yingyonghui/market/install/InstallAppProgress;->c(Lcom/yingyonghui/market/install/InstallAppProgress;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 49
    iget-object v0, p0, Lcom/yingyonghui/market/install/a;->a:Lcom/yingyonghui/market/install/InstallAppProgress;

    invoke-static {v0}, Lcom/yingyonghui/market/install/InstallAppProgress;->d(Lcom/yingyonghui/market/install/InstallAppProgress;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/yingyonghui/market/install/a;->a:Lcom/yingyonghui/market/install/InstallAppProgress;

    invoke-static {v0}, Lcom/yingyonghui/market/install/InstallAppProgress;->b(Lcom/yingyonghui/market/install/InstallAppProgress;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0900ba

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 40
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
