.class public final Lcom/yingyonghui/market/widget/CategoryListHeader;
.super Landroid/widget/RelativeLayout;
.source "CategoryListHeader.java"


# instance fields
.field private a:Landroid/content/Context;

.field private final b:I

.field private c:Landroid/view/LayoutInflater;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/ImageView;

.field private i:I

.field private j:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yingyonghui/market/widget/CategoryListHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const/16 v0, 0x63

    iput v0, p0, Lcom/yingyonghui/market/widget/CategoryListHeader;->b:I

    .line 87
    new-instance v0, Lcom/yingyonghui/market/widget/c;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/widget/c;-><init>(Lcom/yingyonghui/market/widget/CategoryListHeader;)V

    iput-object v0, p0, Lcom/yingyonghui/market/widget/CategoryListHeader;->j:Landroid/os/Handler;

    .line 42
    iput-object p1, p0, Lcom/yingyonghui/market/widget/CategoryListHeader;->a:Landroid/content/Context;

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/widget/CategoryListHeader;->c:Landroid/view/LayoutInflater;

    .line 44
    iget-object v0, p0, Lcom/yingyonghui/market/widget/CategoryListHeader;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f030066

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yingyonghui/market/widget/CategoryListHeader;->d:Landroid/widget/RelativeLayout;

    .line 45
    iget-object v0, p0, Lcom/yingyonghui/market/widget/CategoryListHeader;->d:Landroid/widget/RelativeLayout;

    const v1, 0x7f0b0147

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yingyonghui/market/widget/CategoryListHeader;->e:Landroid/widget/ImageView;

    .line 46
    iget-object v0, p0, Lcom/yingyonghui/market/widget/CategoryListHeader;->d:Landroid/widget/RelativeLayout;

    const v1, 0x7f0b0148

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yingyonghui/market/widget/CategoryListHeader;->f:Landroid/widget/TextView;

    .line 47
    iget-object v0, p0, Lcom/yingyonghui/market/widget/CategoryListHeader;->d:Landroid/widget/RelativeLayout;

    const v1, 0x7f0b0149

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yingyonghui/market/widget/CategoryListHeader;->g:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f0b014a

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/widget/CategoryListHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yingyonghui/market/widget/CategoryListHeader;->h:Landroid/widget/ImageView;

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/yingyonghui/market/widget/CategoryListHeader;)I
    .locals 1
    .parameter

    .prologue
    .line 25
    iget v0, p0, Lcom/yingyonghui/market/widget/CategoryListHeader;->i:I

    return v0
.end method

.method static synthetic b(Lcom/yingyonghui/market/widget/CategoryListHeader;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/yingyonghui/market/widget/CategoryListHeader;->e:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/yingyonghui/market/widget/CategoryListHeader;->h:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yingyonghui/market/widget/CategoryListHeader;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 72
    iput p2, p0, Lcom/yingyonghui/market/widget/CategoryListHeader;->i:I

    .line 73
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-static {}, Lcom/yingyonghui/market/util/ab;->a()Lcom/yingyonghui/market/util/ab;

    invoke-static {p1}, Lcom/yingyonghui/market/util/ab;->a(Ljava/lang/String;)Lcom/yingyonghui/market/model/m;

    move-result-object v0

    .line 77
    iget-object v0, v0, Lcom/yingyonghui/market/model/m;->a:Landroid/graphics/drawable/Drawable;

    .line 78
    if-nez v0, :cond_1

    .line 79
    invoke-static {}, Lcom/yingyonghui/market/util/ab;->a()Lcom/yingyonghui/market/util/ab;

    iget-object v0, p0, Lcom/yingyonghui/market/widget/CategoryListHeader;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/yingyonghui/market/util/ab;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 80
    iget-object v0, p0, Lcom/yingyonghui/market/widget/CategoryListHeader;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/yingyonghui/market/online/e;->a(Landroid/content/Context;)Lcom/yingyonghui/market/online/e;

    move-result-object v0

    const/16 v1, 0x63

    iget-object v2, p0, Lcom/yingyonghui/market/widget/CategoryListHeader;->j:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/yingyonghui/market/online/e;->b(Ljava/lang/String;IILandroid/os/Handler;)V

    goto :goto_0

    .line 82
    :cond_1
    iget-object v1, p0, Lcom/yingyonghui/market/widget/CategoryListHeader;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yingyonghui/market/widget/CategoryListHeader;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    return-void
.end method
