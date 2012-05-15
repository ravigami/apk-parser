.class final Lcom/yingyonghui/market/x;
.super Landroid/os/Handler;
.source "ActivityListApp.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityListApp;


# direct methods
.method synthetic constructor <init>(Lcom/yingyonghui/market/ActivityListApp;)V
    .locals 1
    .parameter

    .prologue
    .line 971
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yingyonghui/market/x;-><init>(Lcom/yingyonghui/market/ActivityListApp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/yingyonghui/market/ActivityListApp;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 971
    iput-object p1, p0, Lcom/yingyonghui/market/x;->a:Lcom/yingyonghui/market/ActivityListApp;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispatchMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 974
    iget-object v0, p0, Lcom/yingyonghui/market/x;->a:Lcom/yingyonghui/market/ActivityListApp;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListApp;->p(Lcom/yingyonghui/market/ActivityListApp;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 975
    iget-object v0, p0, Lcom/yingyonghui/market/x;->a:Lcom/yingyonghui/market/ActivityListApp;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListApp;->q(Lcom/yingyonghui/market/ActivityListApp;)Lcom/yingyonghui/market/widget/SlowSpeedGallery;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/x;->a:Lcom/yingyonghui/market/ActivityListApp;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityListApp;->q(Lcom/yingyonghui/market/ActivityListApp;)Lcom/yingyonghui/market/widget/SlowSpeedGallery;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yingyonghui/market/widget/SlowSpeedGallery;->getSelectedItemPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/yingyonghui/market/widget/SlowSpeedGallery;->setSelection(IZ)V

    .line 976
    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 978
    :cond_0
    return-void
.end method
