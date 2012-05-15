.class final Lcom/yingyonghui/market/cr;
.super Landroid/os/Handler;
.source "ActivityDetailNews.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityDetailNews;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityDetailNews;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/yingyonghui/market/cr;->a:Lcom/yingyonghui/market/ActivityDetailNews;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 92
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 94
    :pswitch_0
    iget-object v0, p0, Lcom/yingyonghui/market/cr;->a:Lcom/yingyonghui/market/ActivityDetailNews;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityDetailNews;->a(Lcom/yingyonghui/market/ActivityDetailNews;)Lcom/yingyonghui/market/cw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/yingyonghui/market/cr;->a:Lcom/yingyonghui/market/ActivityDetailNews;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityDetailNews;->a(Lcom/yingyonghui/market/ActivityDetailNews;)Lcom/yingyonghui/market/cw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yingyonghui/market/cw;->notifyDataSetChanged()V

    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
