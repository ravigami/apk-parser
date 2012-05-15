.class final Lcom/yingyonghui/market/k;
.super Landroid/webkit/WebChromeClient;
.source "ActivityNewEventDetail.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityNewEventDetail;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityNewEventDetail;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/yingyonghui/market/k;->a:Lcom/yingyonghui/market/ActivityNewEventDetail;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 143
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/yingyonghui/market/k;->a:Lcom/yingyonghui/market/ActivityNewEventDetail;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityNewEventDetail;->d(Lcom/yingyonghui/market/ActivityNewEventDetail;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 146
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 147
    return-void
.end method
