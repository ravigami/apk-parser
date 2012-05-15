.class final Lcom/yingyonghui/market/bp;
.super Ljava/lang/Object;
.source "ActivityTab4Search.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/yingyonghui/market/ActivityTab4Search;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityTab4Search;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/yingyonghui/market/bp;->a:Lcom/yingyonghui/market/ActivityTab4Search;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lcom/yingyonghui/market/bp;->a:Lcom/yingyonghui/market/ActivityTab4Search;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityTab4Search;->a(Lcom/yingyonghui/market/ActivityTab4Search;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/yingyonghui/market/bp;->a:Lcom/yingyonghui/market/ActivityTab4Search;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityTab4Search;->b(Lcom/yingyonghui/market/ActivityTab4Search;)Z

    .line 140
    iget-object v0, p0, Lcom/yingyonghui/market/bp;->a:Lcom/yingyonghui/market/ActivityTab4Search;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityTab4Search;->c(Lcom/yingyonghui/market/ActivityTab4Search;)Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_0

    .line 142
    iget-object v1, p0, Lcom/yingyonghui/market/bp;->a:Lcom/yingyonghui/market/ActivityTab4Search;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityTab4Search;->c(Lcom/yingyonghui/market/ActivityTab4Search;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 143
    new-instance v1, Lcom/yingyonghui/market/ea;

    invoke-direct {v1, p0}, Lcom/yingyonghui/market/ea;-><init>(Lcom/yingyonghui/market/bp;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 151
    :cond_0
    return-void
.end method
