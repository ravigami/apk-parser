.class public final Lcom/yingyonghui/market/cw;
.super Landroid/widget/ArrayAdapter;
.source "ActivityDetailNews.java"


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:I

.field private synthetic c:Lcom/yingyonghui/market/ActivityDetailNews;


# direct methods
.method public constructor <init>(Lcom/yingyonghui/market/ActivityDetailNews;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 692
    iput-object p1, p0, Lcom/yingyonghui/market/cw;->c:Lcom/yingyonghui/market/ActivityDetailNews;

    .line 693
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 694
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/yingyonghui/market/cw;->a:Landroid/view/LayoutInflater;

    .line 696
    invoke-static {p1}, Lcom/yingyonghui/market/util/q;->d(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    .line 697
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/yingyonghui/market/cw;->b:I

    .line 698
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x1

    .line 704
    invoke-virtual {p0, p1}, Lcom/yingyonghui/market/cw;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/j;

    .line 706
    if-nez p2, :cond_1

    .line 707
    iget-object v1, p0, Lcom/yingyonghui/market/cw;->a:Landroid/view/LayoutInflater;

    const v2, 0x7f03003a

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 708
    new-instance v2, Lcom/yingyonghui/market/fg;

    invoke-direct {v2}, Lcom/yingyonghui/market/fg;-><init>()V

    .line 709
    const v1, 0x7f0b00dc

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v2, Lcom/yingyonghui/market/fg;->a:Landroid/view/View;

    .line 710
    const v1, 0x7f0b00dd

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/yingyonghui/market/fg;->b:Landroid/widget/TextView;

    .line 711
    const v1, 0x7f0b00de

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/yingyonghui/market/fg;->c:Landroid/widget/TextView;

    .line 712
    const v1, 0x7f0b00df

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v2, Lcom/yingyonghui/market/fg;->d:Landroid/widget/LinearLayout;

    .line 713
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 718
    :goto_0
    iget-object v1, v0, Lcom/yingyonghui/market/model/j;->b:Ljava/lang/String;

    const-string v4, "null"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 719
    iget-object v1, v2, Lcom/yingyonghui/market/fg;->a:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 726
    :goto_1
    iget-object v1, v2, Lcom/yingyonghui/market/fg;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 728
    iget-object v4, v0, Lcom/yingyonghui/market/model/j;->c:Ljava/util/List;

    .line 729
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_8

    .line 731
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/f;

    .line 732
    if-eqz v0, :cond_0

    .line 733
    iget v1, v0, Lcom/yingyonghui/market/model/f;->b:I

    packed-switch v1, :pswitch_data_0

    .line 730
    :cond_0
    :goto_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 715
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yingyonghui/market/fg;

    move-object v2, v1

    goto :goto_0

    .line 721
    :cond_2
    iget-object v1, v2, Lcom/yingyonghui/market/fg;->a:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 722
    iget-object v1, v2, Lcom/yingyonghui/market/fg;->b:Landroid/widget/TextView;

    iget v4, v0, Lcom/yingyonghui/market/model/j;->a:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 723
    iget-object v1, v2, Lcom/yingyonghui/market/fg;->c:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/yingyonghui/market/model/j;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 735
    :pswitch_0
    iget-object v1, v2, Lcom/yingyonghui/market/fg;->d:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/yingyonghui/market/cw;->c:Lcom/yingyonghui/market/ActivityDetailNews;

    check-cast v0, Lcom/yingyonghui/market/model/r;

    invoke-static {v5, v0}, Lcom/yingyonghui/market/ActivityDetailNews;->a(Lcom/yingyonghui/market/ActivityDetailNews;Lcom/yingyonghui/market/model/r;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    :pswitch_1
    move-object v1, v0

    .line 738
    check-cast v1, Lcom/yingyonghui/market/model/n;

    iget-object v1, v1, Lcom/yingyonghui/market/model/n;->a:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 739
    invoke-static {}, Lcom/yingyonghui/market/util/ab;->a()Lcom/yingyonghui/market/util/ab;

    move-object v1, v0

    check-cast v1, Lcom/yingyonghui/market/model/n;

    iget-object v1, v1, Lcom/yingyonghui/market/model/n;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/yingyonghui/market/util/ab;->a(Ljava/lang/String;)Lcom/yingyonghui/market/model/m;

    move-result-object v1

    .line 740
    iget-object v5, v1, Lcom/yingyonghui/market/model/m;->a:Landroid/graphics/drawable/Drawable;

    .line 741
    if-eqz v5, :cond_3

    .line 742
    iget-object v0, p0, Lcom/yingyonghui/market/cw;->c:Lcom/yingyonghui/market/ActivityDetailNews;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityDetailNews;->d(Lcom/yingyonghui/market/ActivityDetailNews;)Landroid/widget/ImageView;

    move-result-object v0

    .line 744
    iget v1, p0, Lcom/yingyonghui/market/cw;->b:I

    add-int/lit8 v1, v1, -0x50

    int-to-float v1, v1

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v1, v6

    .line 746
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    iget v7, p0, Lcom/yingyonghui/market/cw;->b:I

    add-int/lit8 v7, v7, -0x50

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v1, v8

    float-to-int v1, v1

    invoke-direct {v6, v7, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 749
    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 751
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 753
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 754
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 755
    iget-object v1, v2, Lcom/yingyonghui/market/fg;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_3

    .line 757
    :cond_3
    iget-boolean v5, v1, Lcom/yingyonghui/market/model/m;->b:Z

    if-nez v5, :cond_0

    .line 758
    iget-object v5, p0, Lcom/yingyonghui/market/cw;->c:Lcom/yingyonghui/market/ActivityDetailNews;

    check-cast v0, Lcom/yingyonghui/market/model/n;

    invoke-static {v5, v0}, Lcom/yingyonghui/market/ActivityDetailNews;->a(Lcom/yingyonghui/market/ActivityDetailNews;Lcom/yingyonghui/market/model/n;)V

    .line 759
    iput-boolean v9, v1, Lcom/yingyonghui/market/model/m;->b:Z

    goto/16 :goto_3

    .line 765
    :pswitch_2
    iget-object v5, p0, Lcom/yingyonghui/market/cw;->c:Lcom/yingyonghui/market/ActivityDetailNews;

    move-object v1, v0

    check-cast v1, Lcom/yingyonghui/market/model/e;

    invoke-static {v5, v1}, Lcom/yingyonghui/market/ActivityDetailNews;->a(Lcom/yingyonghui/market/ActivityDetailNews;Lcom/yingyonghui/market/model/e;)Landroid/view/View;

    move-result-object v5

    .line 766
    iget-object v1, v2, Lcom/yingyonghui/market/fg;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v1, v0

    .line 767
    check-cast v1, Lcom/yingyonghui/market/model/e;

    iget v6, v1, Lcom/yingyonghui/market/model/e;->a:I

    .line 769
    iget-object v1, p0, Lcom/yingyonghui/market/cw;->c:Lcom/yingyonghui/market/ActivityDetailNews;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityDetailNews;->e(Lcom/yingyonghui/market/ActivityDetailNews;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yingyonghui/market/o;

    .line 770
    if-eqz v1, :cond_7

    .line 771
    iget-object v7, v1, Lcom/yingyonghui/market/o;->a:Lcom/yingyonghui/market/model/o;

    if-eqz v7, :cond_5

    .line 772
    iget-object v0, p0, Lcom/yingyonghui/market/cw;->c:Lcom/yingyonghui/market/ActivityDetailNews;

    iget-object v1, v1, Lcom/yingyonghui/market/o;->a:Lcom/yingyonghui/market/model/o;

    invoke-static {v0, v5, v1}, Lcom/yingyonghui/market/ActivityDetailNews;->a(Lcom/yingyonghui/market/ActivityDetailNews;Landroid/view/View;Lcom/yingyonghui/market/model/o;)V

    .line 786
    :goto_4
    iget-object v0, p0, Lcom/yingyonghui/market/cw;->c:Lcom/yingyonghui/market/ActivityDetailNews;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityDetailNews;->f(Lcom/yingyonghui/market/ActivityDetailNews;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 787
    iget-object v0, p0, Lcom/yingyonghui/market/cw;->c:Lcom/yingyonghui/market/ActivityDetailNews;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityDetailNews;->f(Lcom/yingyonghui/market/ActivityDetailNews;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v7, p0, Lcom/yingyonghui/market/cw;->c:Lcom/yingyonghui/market/ActivityDetailNews;

    invoke-static {v7}, Lcom/yingyonghui/market/ActivityDetailNews;->g(Lcom/yingyonghui/market/ActivityDetailNews;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    iget-object v0, p0, Lcom/yingyonghui/market/cw;->c:Lcom/yingyonghui/market/ActivityDetailNews;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityDetailNews;->h(Lcom/yingyonghui/market/ActivityDetailNews;)I

    .line 791
    :cond_4
    iget-object v0, p0, Lcom/yingyonghui/market/cw;->c:Lcom/yingyonghui/market/ActivityDetailNews;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityDetailNews;->i(Lcom/yingyonghui/market/ActivityDetailNews;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    invoke-static {}, Lcom/yingyonghui/market/util/ab;->a()Lcom/yingyonghui/market/util/ab;

    invoke-static {v6}, Lcom/yingyonghui/market/util/ab;->a(I)Lcom/yingyonghui/market/model/m;

    move-result-object v0

    .line 794
    iget-object v1, v0, Lcom/yingyonghui/market/model/m;->a:Landroid/graphics/drawable/Drawable;

    .line 795
    if-eqz v1, :cond_0

    .line 796
    const v0, 0x7f0b0040

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 797
    if-eqz v0, :cond_0

    .line 798
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 799
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto/16 :goto_3

    .line 774
    :cond_5
    iget-boolean v7, v1, Lcom/yingyonghui/market/o;->b:Z

    if-nez v7, :cond_6

    .line 775
    iget-object v7, p0, Lcom/yingyonghui/market/cw;->c:Lcom/yingyonghui/market/ActivityDetailNews;

    check-cast v0, Lcom/yingyonghui/market/model/e;

    invoke-static {v7, v0}, Lcom/yingyonghui/market/ActivityDetailNews;->b(Lcom/yingyonghui/market/ActivityDetailNews;Lcom/yingyonghui/market/model/e;)V

    .line 777
    :cond_6
    iput-boolean v9, v1, Lcom/yingyonghui/market/o;->b:Z

    goto :goto_4

    .line 780
    :cond_7
    new-instance v1, Lcom/yingyonghui/market/o;

    invoke-direct {v1}, Lcom/yingyonghui/market/o;-><init>()V

    .line 781
    iput-boolean v9, v1, Lcom/yingyonghui/market/o;->b:Z

    .line 782
    iget-object v7, p0, Lcom/yingyonghui/market/cw;->c:Lcom/yingyonghui/market/ActivityDetailNews;

    invoke-static {v7}, Lcom/yingyonghui/market/ActivityDetailNews;->e(Lcom/yingyonghui/market/ActivityDetailNews;)Ljava/util/HashMap;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    iget-object v1, p0, Lcom/yingyonghui/market/cw;->c:Lcom/yingyonghui/market/ActivityDetailNews;

    check-cast v0, Lcom/yingyonghui/market/model/e;

    invoke-static {v1, v0}, Lcom/yingyonghui/market/ActivityDetailNews;->b(Lcom/yingyonghui/market/ActivityDetailNews;Lcom/yingyonghui/market/model/e;)V

    goto/16 :goto_4

    .line 808
    :cond_8
    return-object p2

    .line 733
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
