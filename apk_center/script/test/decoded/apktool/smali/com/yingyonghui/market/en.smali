.class final Lcom/yingyonghui/market/en;
.super Landroid/widget/BaseAdapter;
.source "ActivityDetailAppInner.java"


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:I

.field private c:F

.field private d:F

.field private synthetic e:Lcom/yingyonghui/market/ActivityDetailAppInner;


# direct methods
.method public constructor <init>(Lcom/yingyonghui/market/ActivityDetailAppInner;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 770
    iput-object p1, p0, Lcom/yingyonghui/market/en;->e:Lcom/yingyonghui/market/ActivityDetailAppInner;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 771
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/en;->a:Landroid/view/LayoutInflater;

    .line 772
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 785
    iget v0, p0, Lcom/yingyonghui/market/en;->b:I

    return v0
.end method

.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 775
    iput p1, p0, Lcom/yingyonghui/market/en;->b:I

    .line 776
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 781
    iget-object v0, p0, Lcom/yingyonghui/market/en;->e:Lcom/yingyonghui/market/ActivityDetailAppInner;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityDetailAppInner;->k(Lcom/yingyonghui/market/ActivityDetailAppInner;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 790
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 795
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x2

    .line 802
    if-eqz p2, :cond_0

    .line 803
    check-cast p2, Landroid/widget/ImageView;

    .line 808
    :goto_0
    iget-object v0, p0, Lcom/yingyonghui/market/en;->e:Lcom/yingyonghui/market/ActivityDetailAppInner;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityDetailAppInner;->k(Lcom/yingyonghui/market/ActivityDetailAppInner;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget v1, p0, Lcom/yingyonghui/market/en;->b:I

    rem-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 810
    if-eqz v0, :cond_3

    .line 812
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 814
    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/yingyonghui/market/util/q;->e(Landroid/content/Context;)F

    move-result v2

    .line 815
    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/yingyonghui/market/util/q;->d(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v1

    .line 816
    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 818
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    if-ge v1, v4, :cond_1

    const/4 v1, 0x1

    .line 820
    :goto_1
    if-eqz v1, :cond_2

    .line 821
    int-to-double v1, v3

    const-wide/high16 v3, 0x4008

    div-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, p0, Lcom/yingyonghui/market/en;->c:F

    .line 826
    :goto_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/yingyonghui/market/en;->c:F

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v2, v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/yingyonghui/market/en;->d:F

    .line 827
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    iget v1, p0, Lcom/yingyonghui/market/en;->c:F

    float-to-int v1, v1

    iget v2, p0, Lcom/yingyonghui/market/en;->d:F

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 832
    :goto_3
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 834
    return-object p2

    .line 805
    :cond_0
    iget-object v0, p0, Lcom/yingyonghui/market/en;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030010

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    move-object p2, v0

    goto :goto_0

    .line 818
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 823
    :cond_2
    int-to-float v1, v3

    const/high16 v3, 0x4234

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/yingyonghui/market/en;->c:F

    goto :goto_2

    .line 829
    :cond_3
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3
.end method
