.class final Lcom/yingyonghui/market/bw;
.super Landroid/widget/BaseAdapter;
.source "ActivityDetailScreenshot.java"


# instance fields
.field private a:Landroid/content/Context;

.field private synthetic b:Lcom/yingyonghui/market/ActivityDetailScreenshot;


# direct methods
.method public constructor <init>(Lcom/yingyonghui/market/ActivityDetailScreenshot;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/yingyonghui/market/bw;->b:Lcom/yingyonghui/market/ActivityDetailScreenshot;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 196
    iput-object p2, p0, Lcom/yingyonghui/market/bw;->a:Landroid/content/Context;

    .line 197
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/yingyonghui/market/bw;->b:Lcom/yingyonghui/market/ActivityDetailScreenshot;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityDetailScreenshot;->f(Lcom/yingyonghui/market/ActivityDetailScreenshot;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/yingyonghui/market/bw;->b:Lcom/yingyonghui/market/ActivityDetailScreenshot;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityDetailScreenshot;->f(Lcom/yingyonghui/market/ActivityDetailScreenshot;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    array-length v0, v0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 206
    iget-object v0, p0, Lcom/yingyonghui/market/bw;->b:Lcom/yingyonghui/market/ActivityDetailScreenshot;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityDetailScreenshot;->f(Lcom/yingyonghui/market/ActivityDetailScreenshot;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 211
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 218
    if-eqz p2, :cond_1

    .line 219
    check-cast p2, Landroid/widget/ImageView;

    .line 224
    :goto_0
    invoke-virtual {p0, p1}, Lcom/yingyonghui/market/bw;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 225
    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 229
    :cond_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 230
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    return-object p2

    .line 221
    :cond_1
    new-instance p2, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/yingyonghui/market/bw;->a:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method
