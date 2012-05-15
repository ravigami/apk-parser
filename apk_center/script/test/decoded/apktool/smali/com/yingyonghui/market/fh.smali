.class final Lcom/yingyonghui/market/fh;
.super Ljava/lang/Object;
.source "ActivityDetailScreenshot.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityDetailScreenshot;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityDetailScreenshot;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/yingyonghui/market/fh;->a:Lcom/yingyonghui/market/ActivityDetailScreenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/yingyonghui/market/fh;->a:Lcom/yingyonghui/market/ActivityDetailScreenshot;

    invoke-static {v0, p3}, Lcom/yingyonghui/market/ActivityDetailScreenshot;->a(Lcom/yingyonghui/market/ActivityDetailScreenshot;I)I

    .line 104
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/yingyonghui/market/fh;->a:Lcom/yingyonghui/market/ActivityDetailScreenshot;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityDetailScreenshot;->a(Lcom/yingyonghui/market/ActivityDetailScreenshot;)I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/yingyonghui/market/fh;->a:Lcom/yingyonghui/market/ActivityDetailScreenshot;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityDetailScreenshot;->b(Lcom/yingyonghui/market/ActivityDetailScreenshot;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 106
    iget-object v2, p0, Lcom/yingyonghui/market/fh;->a:Lcom/yingyonghui/market/ActivityDetailScreenshot;

    invoke-static {v2}, Lcom/yingyonghui/market/ActivityDetailScreenshot;->c(Lcom/yingyonghui/market/ActivityDetailScreenshot;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 107
    iget-object v2, p0, Lcom/yingyonghui/market/fh;->a:Lcom/yingyonghui/market/ActivityDetailScreenshot;

    invoke-static {v2}, Lcom/yingyonghui/market/ActivityDetailScreenshot;->d(Lcom/yingyonghui/market/ActivityDetailScreenshot;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 109
    :cond_0
    iget-object v2, p0, Lcom/yingyonghui/market/fh;->a:Lcom/yingyonghui/market/ActivityDetailScreenshot;

    invoke-static {v2}, Lcom/yingyonghui/market/ActivityDetailScreenshot;->e(Lcom/yingyonghui/market/ActivityDetailScreenshot;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 112
    :cond_1
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    return-void
.end method
