.class final Lcom/yingyonghui/market/ag;
.super Landroid/widget/ArrayAdapter;
.source "ActivityListNews.java"


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field private synthetic b:Lcom/yingyonghui/market/ActivityListNews;


# direct methods
.method public constructor <init>(Lcom/yingyonghui/market/ActivityListNews;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 383
    iput-object p1, p0, Lcom/yingyonghui/market/ag;->b:Lcom/yingyonghui/market/ActivityListNews;

    .line 384
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 385
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ag;->a:Landroid/view/LayoutInflater;

    .line 386
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 390
    invoke-virtual {p0, p1}, Lcom/yingyonghui/market/ag;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/g;

    .line 391
    if-nez p2, :cond_0

    .line 394
    iget-object v1, p0, Lcom/yingyonghui/market/ag;->a:Landroid/view/LayoutInflater;

    const v2, 0x7f03003b

    invoke-virtual {v1, v2, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 395
    new-instance v2, Lcom/yingyonghui/market/bu;

    invoke-direct {v2}, Lcom/yingyonghui/market/bu;-><init>()V

    .line 396
    const v1, 0x7f0b00e0

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v2, Lcom/yingyonghui/market/bu;->a:Landroid/widget/LinearLayout;

    .line 397
    const v1, 0x7f0b0040

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/yingyonghui/market/bu;->b:Landroid/widget/ImageView;

    .line 398
    const v1, 0x7f0b00de

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/yingyonghui/market/bu;->c:Landroid/widget/TextView;

    .line 399
    const v1, 0x7f0b00e2

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/yingyonghui/market/bu;->d:Landroid/widget/TextView;

    .line 400
    const v1, 0x7f0b00e3

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/yingyonghui/market/bu;->e:Landroid/widget/TextView;

    .line 401
    const v1, 0x7f0b00e1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/yingyonghui/market/bu;->f:Landroid/widget/ImageView;

    .line 403
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    .line 408
    :goto_0
    rem-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_1

    .line 409
    iget-object v2, v1, Lcom/yingyonghui/market/bu;->a:Landroid/widget/LinearLayout;

    const v3, 0x7f02005c

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 414
    :goto_1
    iget-object v2, v1, Lcom/yingyonghui/market/bu;->c:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/yingyonghui/market/model/g;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    iget-object v2, v1, Lcom/yingyonghui/market/bu;->d:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/yingyonghui/market/model/g;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    iget-object v2, v1, Lcom/yingyonghui/market/bu;->e:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/yingyonghui/market/ag;->b:Lcom/yingyonghui/market/ActivityListNews;

    const v4, 0x7f090110

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, v0, Lcom/yingyonghui/market/model/g;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/yingyonghui/market/ActivityListNews;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    iget-boolean v2, v0, Lcom/yingyonghui/market/model/g;->g:Z

    if-eqz v2, :cond_2

    .line 418
    iget-object v2, v1, Lcom/yingyonghui/market/bu;->f:Landroid/widget/ImageView;

    const v3, 0x7f020034

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 419
    iget-object v2, v1, Lcom/yingyonghui/market/bu;->f:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 429
    :goto_2
    iget-object v2, p0, Lcom/yingyonghui/market/ag;->b:Lcom/yingyonghui/market/ActivityListNews;

    iget-object v0, v0, Lcom/yingyonghui/market/model/g;->h:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/yingyonghui/market/ActivityListNews;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 430
    iget-object v1, v1, Lcom/yingyonghui/market/bu;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 431
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 432
    return-object p2

    .line 405
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yingyonghui/market/bu;

    goto :goto_0

    .line 411
    :cond_1
    iget-object v2, v1, Lcom/yingyonghui/market/bu;->a:Landroid/widget/LinearLayout;

    const v3, 0x7f02005d

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1

    .line 420
    :cond_2
    iget-boolean v2, v0, Lcom/yingyonghui/market/model/g;->f:Z

    if-eqz v2, :cond_3

    .line 421
    iget-object v2, v1, Lcom/yingyonghui/market/bu;->f:Landroid/widget/ImageView;

    const v3, 0x7f02002b

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 422
    iget-object v2, v1, Lcom/yingyonghui/market/bu;->f:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 423
    :cond_3
    iget-boolean v2, v0, Lcom/yingyonghui/market/model/g;->e:Z

    if-eqz v2, :cond_4

    .line 424
    iget-object v2, v1, Lcom/yingyonghui/market/bu;->f:Landroid/widget/ImageView;

    const v3, 0x7f02002c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 425
    iget-object v2, v1, Lcom/yingyonghui/market/bu;->f:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 427
    :cond_4
    iget-object v2, v1, Lcom/yingyonghui/market/bu;->f:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method
