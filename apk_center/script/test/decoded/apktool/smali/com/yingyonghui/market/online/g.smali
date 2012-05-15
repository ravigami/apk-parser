.class final Lcom/yingyonghui/market/online/g;
.super Landroid/os/HandlerThread;
.source "HttpManager.java"


# instance fields
.field final synthetic a:Lcom/yingyonghui/market/online/l;


# direct methods
.method public constructor <init>(Lcom/yingyonghui/market/online/l;)V
    .locals 1
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/yingyonghui/market/online/g;->a:Lcom/yingyonghui/market/online/l;

    .line 297
    const-string v0, "dispatcher"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 298
    return-void
.end method
