.class final Lcom/yingyonghui/market/h;
.super Landroid/os/Handler;
.source "ActivityNewEventDetail.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityNewEventDetail;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityNewEventDetail;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/yingyonghui/market/h;->a:Lcom/yingyonghui/market/ActivityNewEventDetail;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 44
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 52
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 53
    return-void

    .line 46
    :pswitch_0
    iget-object v0, p0, Lcom/yingyonghui/market/h;->a:Lcom/yingyonghui/market/ActivityNewEventDetail;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityNewEventDetail;->a(Lcom/yingyonghui/market/ActivityNewEventDetail;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 49
    :pswitch_1
    iget-object v0, p0, Lcom/yingyonghui/market/h;->a:Lcom/yingyonghui/market/ActivityNewEventDetail;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityNewEventDetail;->a(Lcom/yingyonghui/market/ActivityNewEventDetail;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
