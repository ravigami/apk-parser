.class public final Lcom/yingyonghui/market/do;
.super Landroid/widget/BaseAdapter;
.source "ActivityListApp.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private synthetic c:Lcom/yingyonghui/market/ActivityListApp;


# direct methods
.method public constructor <init>(Lcom/yingyonghui/market/ActivityListApp;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1030
    iput-object p1, p0, Lcom/yingyonghui/market/do;->c:Lcom/yingyonghui/market/ActivityListApp;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1031
    iput-object p2, p0, Lcom/yingyonghui/market/do;->a:Landroid/content/Context;

    .line 1033
    iget-object v0, p0, Lcom/yingyonghui/market/do;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/yingyonghui/market/util/q;->e(Landroid/content/Context;)F

    move-result v0

    .line 1034
    iget-object v1, p0, Lcom/yingyonghui/market/do;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/yingyonghui/market/util/q;->d(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v1

    .line 1035
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1036
    div-int/lit8 v1, v1, 0x2

    const/high16 v2, 0x4080

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sub-int v0, v1, v0

    iput v0, p0, Lcom/yingyonghui/market/do;->b:I

    .line 1037
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 1040
    const v0, 0x7fffffff

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1044
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 1048
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/yingyonghui/market/do;->c:Lcom/yingyonghui/market/ActivityListApp;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListApp;->r(Lcom/yingyonghui/market/ActivityListApp;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/do;->c:Lcom/yingyonghui/market/ActivityListApp;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityListApp;->r(Lcom/yingyonghui/market/ActivityListApp;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/q;

    .line 1055
    if-eqz p2, :cond_0

    .line 1056
    check-cast p2, Landroid/widget/ImageView;

    .line 1061
    :goto_0
    iget-object v1, p0, Lcom/yingyonghui/market/do;->c:Lcom/yingyonghui/market/ActivityListApp;

    iget-object v0, v0, Lcom/yingyonghui/market/model/q;->f:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/yingyonghui/market/ActivityListApp;->c(Lcom/yingyonghui/market/ActivityListApp;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1062
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1064
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1071
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/yingyonghui/market/do;->b:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v2, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1072
    new-instance v1, Landroid/widget/Gallery$LayoutParams;

    iget v2, p0, Lcom/yingyonghui/market/do;->b:I

    invoke-direct {v1, v2, v0}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    .line 1073
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1075
    return-object p2

    .line 1058
    :cond_0
    new-instance p2, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/yingyonghui/market/do;->a:Landroid/content/Context;

    invoke-direct {p2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method
