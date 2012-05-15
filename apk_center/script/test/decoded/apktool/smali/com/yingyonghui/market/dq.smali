.class final Lcom/yingyonghui/market/dq;
.super Ljava/lang/Object;
.source "ActivityDetailApp.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/fm;

.field private synthetic b:Lcom/yingyonghui/market/ActivityDetailApp;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityDetailApp;Lcom/yingyonghui/market/fm;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1222
    iput-object p1, p0, Lcom/yingyonghui/market/dq;->b:Lcom/yingyonghui/market/ActivityDetailApp;

    iput-object p2, p0, Lcom/yingyonghui/market/dq;->a:Lcom/yingyonghui/market/fm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1225
    if-eqz p2, :cond_1

    .line 1236
    :cond_0
    :goto_0
    return-void

    .line 1228
    :cond_1
    iget-object v0, p0, Lcom/yingyonghui/market/dq;->a:Lcom/yingyonghui/market/fm;

    invoke-virtual {v0}, Lcom/yingyonghui/market/fm;->d()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1230
    invoke-static {v0}, Lcom/yingyonghui/market/util/b;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1231
    iget-object v0, p0, Lcom/yingyonghui/market/dq;->b:Lcom/yingyonghui/market/ActivityDetailApp;

    const v1, 0x7f090143

    invoke-static {v0, v1}, Lcom/yingyonghui/market/util/GlobalUtil;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method
