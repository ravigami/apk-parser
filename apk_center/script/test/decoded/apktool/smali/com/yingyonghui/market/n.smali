.class public final Lcom/yingyonghui/market/n;
.super Landroid/widget/ArrayAdapter;
.source "ActivityListAppRecommend.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Landroid/content/Context;

.field private synthetic c:Lcom/yingyonghui/market/ActivityListAppRecommend;


# direct methods
.method public constructor <init>(Lcom/yingyonghui/market/ActivityListAppRecommend;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 589
    iput-object p1, p0, Lcom/yingyonghui/market/n;->c:Lcom/yingyonghui/market/ActivityListAppRecommend;

    .line 590
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 591
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/yingyonghui/market/n;->a:Landroid/view/LayoutInflater;

    .line 593
    iput-object p2, p0, Lcom/yingyonghui/market/n;->b:Landroid/content/Context;

    .line 594
    return-void
.end method


# virtual methods
.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 598
    invoke-virtual {p0, p1}, Lcom/yingyonghui/market/n;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/q;

    iget v0, v0, Lcom/yingyonghui/market/model/q;->e:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 604
    if-nez p2, :cond_2

    .line 605
    iget-object v0, p0, Lcom/yingyonghui/market/n;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030016

    invoke-virtual {v0, v1, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 607
    new-instance v1, Lcom/yingyonghui/market/bx;

    invoke-direct {v1}, Lcom/yingyonghui/market/bx;-><init>()V

    .line 608
    const v0, 0x7f0b007b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/yingyonghui/market/bx;->a:Landroid/widget/LinearLayout;

    .line 609
    const v0, 0x7f0b0040

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/yingyonghui/market/bx;->b:Landroid/widget/ImageView;

    .line 610
    const v0, 0x7f0b0072

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/yingyonghui/market/bx;->c:Landroid/widget/TextView;

    .line 611
    const v0, 0x7f0b007d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/yingyonghui/market/bx;->f:Landroid/widget/TextView;

    .line 612
    const v0, 0x7f0b005c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/yingyonghui/market/bx;->d:Landroid/widget/TextView;

    .line 613
    const v0, 0x7f0b007c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/yingyonghui/market/bx;->e:Landroid/widget/CheckBox;

    .line 614
    iget-object v0, v1, Lcom/yingyonghui/market/bx;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 616
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 621
    :goto_0
    rem-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_3

    .line 622
    iget-object v0, v1, Lcom/yingyonghui/market/bx;->a:Landroid/widget/LinearLayout;

    const v2, 0x7f02005c

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 627
    :goto_1
    invoke-virtual {p0, p1}, Lcom/yingyonghui/market/n;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/q;

    .line 629
    iget-object v2, p0, Lcom/yingyonghui/market/n;->b:Landroid/content/Context;

    iget-object v3, v0, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    iget v4, v0, Lcom/yingyonghui/market/model/q;->s:I

    iget v5, v0, Lcom/yingyonghui/market/model/q;->e:I

    invoke-static {v2, v3, v4, v5}, Lcom/yingyonghui/market/util/v;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v2

    iput v2, v0, Lcom/yingyonghui/market/model/q;->n:I

    .line 632
    iget v2, v0, Lcom/yingyonghui/market/model/q;->n:I

    if-ne v2, v7, :cond_4

    .line 633
    iget-object v2, v1, Lcom/yingyonghui/market/bx;->f:Landroid/widget/TextView;

    const v3, 0x7f090069

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 634
    iget-object v2, v1, Lcom/yingyonghui/market/bx;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 636
    iget-object v2, p0, Lcom/yingyonghui/market/n;->c:Lcom/yingyonghui/market/ActivityListAppRecommend;

    invoke-static {v2}, Lcom/yingyonghui/market/ActivityListAppRecommend;->c(Lcom/yingyonghui/market/ActivityListAppRecommend;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 637
    iget-object v2, p0, Lcom/yingyonghui/market/n;->c:Lcom/yingyonghui/market/ActivityListAppRecommend;

    invoke-static {v2}, Lcom/yingyonghui/market/ActivityListAppRecommend;->c(Lcom/yingyonghui/market/ActivityListAppRecommend;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    :cond_0
    :goto_2
    iget-object v2, v1, Lcom/yingyonghui/market/bx;->b:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/yingyonghui/market/n;->c:Lcom/yingyonghui/market/ActivityListAppRecommend;

    iget-object v4, v0, Lcom/yingyonghui/market/model/q;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/yingyonghui/market/ActivityListAppRecommend;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 650
    iget-object v2, v1, Lcom/yingyonghui/market/bx;->c:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/yingyonghui/market/model/q;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 652
    iget-object v2, v0, Lcom/yingyonghui/market/model/q;->u:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 653
    iget-object v2, v1, Lcom/yingyonghui/market/bx;->d:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/yingyonghui/market/model/q;->u:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 656
    :cond_1
    iget-object v0, v1, Lcom/yingyonghui/market/bx;->e:Landroid/widget/CheckBox;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 658
    iget-object v0, p0, Lcom/yingyonghui/market/n;->c:Lcom/yingyonghui/market/ActivityListAppRecommend;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppRecommend;->c(Lcom/yingyonghui/market/ActivityListAppRecommend;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 659
    iget-object v0, v1, Lcom/yingyonghui/market/bx;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 664
    :goto_3
    return-object p2

    .line 618
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/bx;

    move-object v1, v0

    goto/16 :goto_0

    .line 624
    :cond_3
    iget-object v0, v1, Lcom/yingyonghui/market/bx;->a:Landroid/widget/LinearLayout;

    const v2, 0x7f02005d

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 639
    :cond_4
    iget v2, v0, Lcom/yingyonghui/market/model/q;->n:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 640
    iget-object v2, v1, Lcom/yingyonghui/market/bx;->f:Landroid/widget/TextView;

    const v3, 0x7f09006f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 641
    iget-object v2, v1, Lcom/yingyonghui/market/bx;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 644
    :cond_5
    iget-object v2, v1, Lcom/yingyonghui/market/bx;->f:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 645
    iget-object v2, v1, Lcom/yingyonghui/market/bx;->f:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 661
    :cond_6
    iget-object v0, v1, Lcom/yingyonghui/market/bx;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_3
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 670
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 672
    invoke-virtual {p0, v2}, Lcom/yingyonghui/market/n;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/q;

    .line 673
    if-eqz p2, :cond_1

    .line 674
    iget-object v1, p0, Lcom/yingyonghui/market/n;->c:Lcom/yingyonghui/market/ActivityListAppRecommend;

    invoke-virtual {v1}, Lcom/yingyonghui/market/ActivityListAppRecommend;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, v0, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/yingyonghui/market/provider/k;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/yingyonghui/market/provider/k;

    move-result-object v1

    .line 675
    if-eqz v1, :cond_1

    .line 676
    invoke-virtual {v1}, Lcom/yingyonghui/market/provider/k;->d()Lcom/yingyonghui/market/provider/m;

    move-result-object v1

    .line 677
    sget-object v3, Lcom/yingyonghui/market/provider/m;->b:Lcom/yingyonghui/market/provider/m;

    if-eq v1, v3, :cond_0

    sget-object v3, Lcom/yingyonghui/market/provider/m;->h:Lcom/yingyonghui/market/provider/m;

    if-ne v1, v3, :cond_1

    .line 679
    :cond_0
    iget-object v0, p0, Lcom/yingyonghui/market/n;->b:Landroid/content/Context;

    const v1, 0x7f090062

    invoke-static {v0, v1}, Lcom/yingyonghui/market/util/GlobalUtil;->b(Landroid/content/Context;I)V

    .line 680
    invoke-virtual {p1, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 702
    :goto_0
    return-void

    .line 686
    :cond_1
    if-eqz p2, :cond_4

    .line 687
    invoke-virtual {p0, v2}, Lcom/yingyonghui/market/n;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yingyonghui/market/model/q;

    .line 688
    iget v1, v1, Lcom/yingyonghui/market/model/q;->n:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 689
    invoke-virtual {p1, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 690
    iget-object v0, p0, Lcom/yingyonghui/market/n;->b:Landroid/content/Context;

    const v1, 0x7f090096

    invoke-static {v0, v1}, Lcom/yingyonghui/market/util/GlobalUtil;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 694
    :cond_2
    iget-object v3, p0, Lcom/yingyonghui/market/n;->c:Lcom/yingyonghui/market/ActivityListAppRecommend;

    invoke-virtual {p0, v2}, Lcom/yingyonghui/market/n;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yingyonghui/market/model/q;

    iget v1, v1, Lcom/yingyonghui/market/model/q;->o:I

    invoke-static {v3, v1}, Lcom/yingyonghui/market/ActivityListAppRecommend;->a(Lcom/yingyonghui/market/ActivityListAppRecommend;I)I

    .line 695
    iget-object v1, p0, Lcom/yingyonghui/market/n;->c:Lcom/yingyonghui/market/ActivityListAppRecommend;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityListAppRecommend;->c(Lcom/yingyonghui/market/ActivityListAppRecommend;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, v0, Lcom/yingyonghui/market/model/q;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/yingyonghui/market/n;->c:Lcom/yingyonghui/market/ActivityListAppRecommend;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppRecommend;->d(Lcom/yingyonghui/market/ActivityListAppRecommend;)V

    goto :goto_0

    .line 696
    :cond_4
    iget-object v0, p0, Lcom/yingyonghui/market/n;->c:Lcom/yingyonghui/market/ActivityListAppRecommend;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppRecommend;->c(Lcom/yingyonghui/market/ActivityListAppRecommend;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 697
    iget-object v1, p0, Lcom/yingyonghui/market/n;->c:Lcom/yingyonghui/market/ActivityListAppRecommend;

    invoke-virtual {p0, v2}, Lcom/yingyonghui/market/n;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/q;

    iget v0, v0, Lcom/yingyonghui/market/model/q;->o:I

    invoke-static {v1, v0}, Lcom/yingyonghui/market/ActivityListAppRecommend;->b(Lcom/yingyonghui/market/ActivityListAppRecommend;I)I

    .line 698
    iget-object v0, p0, Lcom/yingyonghui/market/n;->c:Lcom/yingyonghui/market/ActivityListAppRecommend;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppRecommend;->c(Lcom/yingyonghui/market/ActivityListAppRecommend;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
