.class final Lcom/yingyonghui/market/ba;
.super Landroid/os/Handler;
.source "ActivityListApp2.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityListApp2;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityListApp2;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/yingyonghui/market/ba;->a:Lcom/yingyonghui/market/ActivityListApp2;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 60
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 62
    :pswitch_0
    iget-object v0, p0, Lcom/yingyonghui/market/ba;->a:Lcom/yingyonghui/market/ActivityListApp2;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListApp2;->a(Lcom/yingyonghui/market/ActivityListApp2;)Lcom/yingyonghui/market/br;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/yingyonghui/market/ba;->a:Lcom/yingyonghui/market/ActivityListApp2;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListApp2;->a(Lcom/yingyonghui/market/ActivityListApp2;)Lcom/yingyonghui/market/br;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yingyonghui/market/br;->notifyDataSetChanged()V

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
