.class final Lcom/yingyonghui/market/eg;
.super Landroid/widget/ArrayAdapter;
.source "ActivityGridCategory.java"


# instance fields
.field final synthetic a:Lcom/yingyonghui/market/ActivityGridCategory;

.field private b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/yingyonghui/market/ActivityGridCategory;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/yingyonghui/market/eg;->a:Lcom/yingyonghui/market/ActivityGridCategory;

    .line 317
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 319
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 320
    new-instance v0, Lcom/yingyonghui/market/model/p;

    invoke-direct {v0}, Lcom/yingyonghui/market/model/p;-><init>()V

    .line 321
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/yingyonghui/market/model/p;->e:Z

    .line 322
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/yingyonghui/market/eg;->insert(Ljava/lang/Object;I)V

    .line 324
    :cond_0
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/eg;->b:Landroid/view/LayoutInflater;

    .line 325
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x4

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 334
    invoke-virtual {p0, p1}, Lcom/yingyonghui/market/eg;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/p;

    .line 336
    if-nez p2, :cond_1

    .line 338
    iget-object v1, p0, Lcom/yingyonghui/market/eg;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f03001b

    invoke-virtual {v1, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 339
    new-instance v2, Lcom/yingyonghui/market/di;

    invoke-direct {v2}, Lcom/yingyonghui/market/di;-><init>()V

    .line 340
    const v1, 0x7f0b0080

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v2, Lcom/yingyonghui/market/di;->a:Landroid/widget/RelativeLayout;

    .line 341
    const v1, 0x7f0b0081

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/yingyonghui/market/di;->b:Landroid/widget/ImageView;

    .line 342
    const v1, 0x7f0b0082

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/yingyonghui/market/di;->c:Landroid/widget/TextView;

    .line 343
    const v1, 0x7f0b0083

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/yingyonghui/market/di;->d:Landroid/widget/TextView;

    .line 344
    const v1, 0x7f0b0085

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/yingyonghui/market/di;->e:Landroid/widget/ImageView;

    .line 345
    const v1, 0x7f0b0084

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/yingyonghui/market/di;->f:Landroid/widget/ImageView;

    .line 346
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    .line 352
    :goto_0
    rem-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_0

    rem-int/lit8 v2, p1, 0x4

    if-ne v2, v7, :cond_2

    .line 353
    :cond_0
    iget-object v2, v1, Lcom/yingyonghui/market/di;->a:Landroid/widget/RelativeLayout;

    const v3, 0x7f02005d

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 358
    :goto_1
    iget-object v2, v1, Lcom/yingyonghui/market/di;->a:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/yingyonghui/market/bv;

    invoke-direct {v3, p0, v0, p1}, Lcom/yingyonghui/market/bv;-><init>(Lcom/yingyonghui/market/eg;Lcom/yingyonghui/market/model/p;I)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    rem-int/lit8 v2, p1, 0x2

    if-nez v2, :cond_3

    .line 397
    iget-object v2, v1, Lcom/yingyonghui/market/di;->e:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 398
    iget-object v2, v1, Lcom/yingyonghui/market/di;->f:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 404
    :goto_2
    iget-boolean v2, v0, Lcom/yingyonghui/market/model/p;->e:Z

    if-eqz v2, :cond_4

    .line 405
    iget-object v0, v1, Lcom/yingyonghui/market/di;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 406
    iget-object v0, v1, Lcom/yingyonghui/market/di;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 407
    iget-object v0, v1, Lcom/yingyonghui/market/di;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 408
    iget-object v0, v1, Lcom/yingyonghui/market/di;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 427
    :goto_3
    return-object p2

    .line 348
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yingyonghui/market/di;

    goto :goto_0

    .line 355
    :cond_2
    iget-object v2, v1, Lcom/yingyonghui/market/di;->a:Landroid/widget/RelativeLayout;

    const v3, 0x7f02005c

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_1

    .line 400
    :cond_3
    iget-object v2, v1, Lcom/yingyonghui/market/di;->e:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 401
    iget-object v2, v1, Lcom/yingyonghui/market/di;->f:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 410
    :cond_4
    iget-object v2, v1, Lcom/yingyonghui/market/di;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 411
    iget-object v2, v1, Lcom/yingyonghui/market/di;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 412
    iget-object v2, v1, Lcom/yingyonghui/market/di;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 413
    iget-object v2, v1, Lcom/yingyonghui/market/di;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 415
    iget-object v2, p0, Lcom/yingyonghui/market/eg;->a:Lcom/yingyonghui/market/ActivityGridCategory;

    invoke-static {v2}, Lcom/yingyonghui/market/ActivityGridCategory;->b(Lcom/yingyonghui/market/ActivityGridCategory;)I

    move-result v2

    if-ne v2, v5, :cond_5

    iget v2, v0, Lcom/yingyonghui/market/model/p;->a:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    .line 416
    iget-object v2, v1, Lcom/yingyonghui/market/di;->b:Landroid/widget/ImageView;

    const v3, 0x7f020076

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 423
    :goto_4
    iget-object v2, v1, Lcom/yingyonghui/market/di;->c:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/yingyonghui/market/model/p;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    iget-object v1, v1, Lcom/yingyonghui/market/di;->d:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/yingyonghui/market/model/p;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 417
    :cond_5
    iget-object v2, p0, Lcom/yingyonghui/market/eg;->a:Lcom/yingyonghui/market/ActivityGridCategory;

    invoke-static {v2}, Lcom/yingyonghui/market/ActivityGridCategory;->b(Lcom/yingyonghui/market/ActivityGridCategory;)I

    move-result v2

    if-ne v2, v5, :cond_6

    iget v2, v0, Lcom/yingyonghui/market/model/p;->a:I

    const/4 v3, -0x3

    if-ne v2, v3, :cond_6

    .line 419
    iget-object v2, v1, Lcom/yingyonghui/market/di;->b:Landroid/widget/ImageView;

    const v3, 0x7f020013

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 421
    :cond_6
    iget-object v2, v1, Lcom/yingyonghui/market/di;->b:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/yingyonghui/market/eg;->a:Lcom/yingyonghui/market/ActivityGridCategory;

    iget-object v4, v0, Lcom/yingyonghui/market/model/p;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/yingyonghui/market/ActivityGridCategory;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4
.end method

.method public final isEnabled(I)Z
    .locals 1
    .parameter

    .prologue
    .line 329
    const/4 v0, 0x0

    return v0
.end method
