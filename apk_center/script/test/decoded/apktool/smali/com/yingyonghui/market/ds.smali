.class final Lcom/yingyonghui/market/ds;
.super Landroid/os/Handler;
.source "ActivityDetailApp.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityDetailApp;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityDetailApp;)V
    .locals 0
    .parameter

    .prologue
    .line 957
    iput-object p1, p0, Lcom/yingyonghui/market/ds;->a:Lcom/yingyonghui/market/ActivityDetailApp;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 960
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 965
    :goto_0
    return-void

    .line 962
    :pswitch_0
    iget-object v0, p0, Lcom/yingyonghui/market/ds;->a:Lcom/yingyonghui/market/ActivityDetailApp;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityDetailApp;->f(Lcom/yingyonghui/market/ActivityDetailApp;)V

    goto :goto_0

    .line 960
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
