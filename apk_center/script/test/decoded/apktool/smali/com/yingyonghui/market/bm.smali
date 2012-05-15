.class final Lcom/yingyonghui/market/bm;
.super Ljava/lang/Object;
.source "ActivityTab4Search.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityTab4Search;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityTab4Search;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/yingyonghui/market/bm;->a:Lcom/yingyonghui/market/ActivityTab4Search;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b00f7

    if-ne v0, v1, :cond_1

    .line 165
    iget-object v0, p0, Lcom/yingyonghui/market/bm;->a:Lcom/yingyonghui/market/ActivityTab4Search;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityTab4Search;->e(Lcom/yingyonghui/market/ActivityTab4Search;)V

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b00f9

    if-ne v0, v1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/yingyonghui/market/bm;->a:Lcom/yingyonghui/market/ActivityTab4Search;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityTab4Search;->d(Lcom/yingyonghui/market/ActivityTab4Search;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
