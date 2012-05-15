.class final Lcom/yingyonghui/market/bc;
.super Landroid/os/Handler;
.source "ActivityHubListen.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityHubListen;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityHubListen;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/yingyonghui/market/bc;->a:Lcom/yingyonghui/market/ActivityHubListen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 46
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 53
    :goto_0
    return-void

    .line 48
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 49
    iget-object v1, p0, Lcom/yingyonghui/market/bc;->a:Lcom/yingyonghui/market/ActivityHubListen;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityHubListen;->a(Lcom/yingyonghui/market/ActivityHubListen;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, p0, Lcom/yingyonghui/market/bc;->a:Lcom/yingyonghui/market/ActivityHubListen;

    const v1, 0x7f090147

    invoke-static {v0, v1}, Lcom/yingyonghui/market/util/GlobalUtil;->b(Landroid/content/Context;I)V

    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
