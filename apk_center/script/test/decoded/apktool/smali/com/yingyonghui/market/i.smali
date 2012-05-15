.class final Lcom/yingyonghui/market/i;
.super Ljava/lang/Object;
.source "ActivityNewEventDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityNewEventDetail;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityNewEventDetail;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/yingyonghui/market/i;->a:Lcom/yingyonghui/market/ActivityNewEventDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/yingyonghui/market/i;->a:Lcom/yingyonghui/market/ActivityNewEventDetail;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityNewEventDetail;->b(Lcom/yingyonghui/market/ActivityNewEventDetail;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/yingyonghui/market/i;->a:Lcom/yingyonghui/market/ActivityNewEventDetail;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityNewEventDetail;->b(Lcom/yingyonghui/market/ActivityNewEventDetail;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/yingyonghui/market/i;->a:Lcom/yingyonghui/market/ActivityNewEventDetail;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityNewEventDetail;->c(Lcom/yingyonghui/market/ActivityNewEventDetail;)V

    goto :goto_0
.end method
