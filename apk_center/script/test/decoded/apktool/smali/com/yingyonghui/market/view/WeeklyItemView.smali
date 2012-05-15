.class public final Lcom/yingyonghui/market/view/WeeklyItemView;
.super Landroid/widget/RelativeLayout;
.source "WeeklyItemView.java"


# instance fields
.field private a:Landroid/content/Context;

.field private final b:I

.field private c:Landroid/view/LayoutInflater;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;

.field private g:I

.field private h:I

.field private i:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yingyonghui/market/view/WeeklyItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
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

    iput v0, p0, Lcom/yingyonghui/market/view/WeeklyItemView;->b:I

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/yingyonghui/market/view/WeeklyItemView;->h:I

    .line 108
    new-instance v0, Lcom/yingyonghui/market/view/b;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/view/b;-><init>(Lcom/yingyonghui/market/view/WeeklyItemView;)V

    iput-object v0, p0, Lcom/yingyonghui/market/view/WeeklyItemView;->i:Landroid/os/Handler;

    .line 43
    iput-object p1, p0, Lcom/yingyonghui/market/view/WeeklyItemView;->a:Landroid/content/Context;

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/view/WeeklyItemView;->c:Landroid/view/LayoutInflater;

    .line 45
    iget-object v0, p0, Lcom/yingyonghui/market/view/WeeklyItemView;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f03006a

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yingyonghui/market/view/WeeklyItemView;->d:Landroid/widget/RelativeLayout;

    .line 46
    iget-object v0, p0, Lcom/yingyonghui/market/view/WeeklyItemView;->d:Landroid/widget/RelativeLayout;

    const v1, 0x7f0b015e

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yingyonghui/market/view/WeeklyItemView;->e:Landroid/widget/ImageView;

    .line 47
    iget-object v0, p0, Lcom/yingyonghui/market/view/WeeklyItemView;->d:Landroid/widget/RelativeLayout;

    const v1, 0x7f0b015f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yingyonghui/market/view/WeeklyItemView;->f:Landroid/widget/TextView;

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/yingyonghui/market/view/WeeklyItemView;)I
    .locals 1
    .parameter

    .prologue
    .line 25
    iget v0, p0, Lcom/yingyonghui/market/view/WeeklyItemView;->g:I

    return v0
.end method

.method static synthetic b(Lcom/yingyonghui/market/view/WeeklyItemView;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/yingyonghui/market/view/WeeklyItemView;->e:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/yingyonghui/market/view/WeeklyItemView;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    return-void
.end method

.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput p1, p0, Lcom/yingyonghui/market/view/WeeklyItemView;->h:I

    .line 84
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yingyonghui/market/view/WeeklyItemView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 92
    iput p2, p0, Lcom/yingyonghui/market/view/WeeklyItemView;->g:I

    .line 93
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-static {}, Lcom/yingyonghui/market/util/ab;->a()Lcom/yingyonghui/market/util/ab;

    invoke-static {p1}, Lcom/yingyonghui/market/util/ab;->a(Ljava/lang/String;)Lcom/yingyonghui/market/model/m;

    move-result-object v0

    .line 98
    iget-object v0, v0, Lcom/yingyonghui/market/model/m;->a:Landroid/graphics/drawable/Drawable;

    .line 99
    if-nez v0, :cond_1

    .line 100
    invoke-static {}, Lcom/yingyonghui/market/util/ab;->a()Lcom/yingyonghui/market/util/ab;

    iget-object v0, p0, Lcom/yingyonghui/market/view/WeeklyItemView;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/yingyonghui/market/util/ab;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 101
    iget-object v0, p0, Lcom/yingyonghui/market/view/WeeklyItemView;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/yingyonghui/market/online/e;->a(Landroid/content/Context;)Lcom/yingyonghui/market/online/e;

    move-result-object v0

    const/16 v1, 0x63

    iget-object v2, p0, Lcom/yingyonghui/market/view/WeeklyItemView;->i:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/yingyonghui/market/online/e;->b(Ljava/lang/String;IILandroid/os/Handler;)V

    goto :goto_0

    .line 103
    :cond_1
    iget-object v1, p0, Lcom/yingyonghui/market/view/WeeklyItemView;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/yingyonghui/market/view/WeeklyItemView;->h:I

    return v0
.end method
