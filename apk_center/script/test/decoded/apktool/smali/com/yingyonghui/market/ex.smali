.class final Lcom/yingyonghui/market/ex;
.super Landroid/widget/ArrayAdapter;
.source "ActivityListAppDownload.java"


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Lcom/yingyonghui/market/bo;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/util/concurrent/ConcurrentHashMap;

.field private synthetic j:Lcom/yingyonghui/market/ActivityListAppDownload;


# direct methods
.method public constructor <init>(Lcom/yingyonghui/market/ActivityListAppDownload;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 497
    iput-object p1, p0, Lcom/yingyonghui/market/ex;->j:Lcom/yingyonghui/market/ActivityListAppDownload;

    .line 498
    invoke-direct {p0, p2, v1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 500
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/yingyonghui/market/ex;->i:Ljava/util/concurrent/ConcurrentHashMap;

    .line 502
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/yingyonghui/market/ex;->a:Landroid/view/LayoutInflater;

    .line 503
    new-instance v0, Lcom/yingyonghui/market/bo;

    invoke-direct {v0, p1}, Lcom/yingyonghui/market/bo;-><init>(Lcom/yingyonghui/market/ActivityListAppDownload;)V

    iput-object v0, p0, Lcom/yingyonghui/market/ex;->b:Lcom/yingyonghui/market/bo;

    .line 504
    const v0, 0x7f090133

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ex;->c:Ljava/lang/String;

    .line 505
    const v0, 0x7f090134

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ex;->d:Ljava/lang/String;

    .line 506
    const v0, 0x7f090010

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ex;->e:Ljava/lang/String;

    .line 507
    const v0, 0x7f090132

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ex;->h:Ljava/lang/String;

    .line 508
    const v0, 0x7f09017b

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ex;->g:Ljava/lang/String;

    .line 510
    invoke-static {}, Lcom/yingyonghui/market/util/GlobalUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yingyonghui/market/ex;->f:Z

    .line 515
    :goto_0
    return-void

    .line 513
    :cond_0
    iput-boolean v1, p0, Lcom/yingyonghui/market/ex;->f:Z

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/yingyonghui/market/model/q;Landroid/view/View;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const v3, 0x7f0b0077

    .line 645
    iget-object v0, p0, Lcom/yingyonghui/market/ex;->i:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/yingyonghui/market/model/q;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/yingyonghui/market/ex;->i:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/yingyonghui/market/model/q;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 656
    :goto_0
    invoke-virtual {p0}, Lcom/yingyonghui/market/ex;->notifyDataSetChanged()V

    .line 657
    return-void

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/yingyonghui/market/ex;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 652
    iget-object v0, p0, Lcom/yingyonghui/market/ex;->i:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/yingyonghui/market/model/q;->R:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 519
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/16 v7, 0x8

    const/4 v2, 0x0

    .line 525
    if-nez p2, :cond_0

    .line 526
    iget-object v0, p0, Lcom/yingyonghui/market/ex;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f03002d

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 527
    new-instance v1, Lcom/yingyonghui/market/bl;

    invoke-direct {v1}, Lcom/yingyonghui/market/bl;-><init>()V

    .line 528
    const v0, 0x7f0b0077

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/yingyonghui/market/bl;->k:Landroid/view/View;

    .line 529
    const v0, 0x7f0b0099

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/yingyonghui/market/bl;->l:Landroid/view/View;

    .line 530
    const v0, 0x7f0b0040

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/yingyonghui/market/bl;->a:Landroid/widget/ImageView;

    .line 531
    const v0, 0x7f0b0072

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/yingyonghui/market/bl;->b:Landroid/widget/TextView;

    .line 532
    const v0, 0x7f0b0042

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/yingyonghui/market/bl;->c:Landroid/widget/TextView;

    .line 533
    const v0, 0x7f0b0043

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/yingyonghui/market/bl;->d:Landroid/widget/TextView;

    .line 534
    const v0, 0x7f0b0028

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v1, Lcom/yingyonghui/market/bl;->e:Landroid/widget/ProgressBar;

    .line 535
    const v0, 0x7f0b0029

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/yingyonghui/market/bl;->f:Landroid/widget/TextView;

    .line 536
    const v0, 0x7f0b00c3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/yingyonghui/market/bl;->g:Landroid/widget/TextView;

    .line 537
    iget-object v0, v1, Lcom/yingyonghui/market/bl;->g:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/yingyonghui/market/ex;->b:Lcom/yingyonghui/market/bo;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 538
    const v0, 0x7f0b00c4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/yingyonghui/market/bl;->h:Landroid/widget/TextView;

    .line 539
    iget-object v0, v1, Lcom/yingyonghui/market/bl;->h:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/yingyonghui/market/ex;->b:Lcom/yingyonghui/market/bo;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 541
    const v0, 0x7f0b00c5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/yingyonghui/market/bl;->i:Landroid/widget/TextView;

    .line 542
    iget-object v0, v1, Lcom/yingyonghui/market/bl;->i:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/yingyonghui/market/ex;->b:Lcom/yingyonghui/market/bo;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 543
    const v0, 0x7f0b00c6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/yingyonghui/market/bl;->j:Landroid/widget/TextView;

    .line 544
    iget-object v0, v1, Lcom/yingyonghui/market/bl;->j:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/yingyonghui/market/ex;->b:Lcom/yingyonghui/market/bo;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 545
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 550
    :goto_0
    rem-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 551
    const v0, 0x7f02005c

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 556
    :goto_1
    invoke-virtual {p0, p1}, Lcom/yingyonghui/market/ex;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/q;

    .line 560
    iget-boolean v3, v0, Lcom/yingyonghui/market/model/q;->x:Z

    if-nez v3, :cond_2

    .line 561
    iget-object v3, p0, Lcom/yingyonghui/market/ex;->i:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, v0, Lcom/yingyonghui/market/model/q;->R:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 564
    iget-object v3, v1, Lcom/yingyonghui/market/bl;->k:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 570
    :goto_2
    iget-object v3, v1, Lcom/yingyonghui/market/bl;->l:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 571
    iget-boolean v3, v0, Lcom/yingyonghui/market/model/q;->x:Z

    if-eqz v3, :cond_6

    .line 572
    iget-object v3, v1, Lcom/yingyonghui/market/bl;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 573
    iget-object v3, v1, Lcom/yingyonghui/market/bl;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 574
    iget-object v3, v1, Lcom/yingyonghui/market/bl;->h:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 575
    iget-object v3, v1, Lcom/yingyonghui/market/bl;->g:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 576
    iget-object v3, v1, Lcom/yingyonghui/market/bl;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 578
    iget-object v3, v1, Lcom/yingyonghui/market/bl;->a:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/yingyonghui/market/ex;->j:Lcom/yingyonghui/market/ActivityListAppDownload;

    iget-object v5, v0, Lcom/yingyonghui/market/model/q;->f:Ljava/lang/String;

    iget-object v6, v0, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/yingyonghui/market/ActivityListAppDownload;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 579
    iget-object v3, v1, Lcom/yingyonghui/market/bl;->h:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 581
    iget-boolean v3, p0, Lcom/yingyonghui/market/ex;->f:Z

    if-eqz v3, :cond_4

    .line 582
    iget-object v3, v1, Lcom/yingyonghui/market/bl;->g:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 583
    iget v3, v0, Lcom/yingyonghui/market/model/q;->N:I

    if-nez v3, :cond_3

    .line 584
    iget-object v3, v1, Lcom/yingyonghui/market/bl;->g:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/yingyonghui/market/ex;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 592
    :goto_3
    iget-object v3, v1, Lcom/yingyonghui/market/bl;->b:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/yingyonghui/market/model/q;->i:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 593
    iget-object v3, v1, Lcom/yingyonghui/market/bl;->c:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/yingyonghui/market/model/q;->p:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    iget v3, v0, Lcom/yingyonghui/market/model/q;->o:I

    if-gtz v3, :cond_5

    move v0, v2

    .line 600
    :goto_4
    iget-object v2, v1, Lcom/yingyonghui/market/bl;->f:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 601
    iget-object v1, v1, Lcom/yingyonghui/market/bl;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 641
    :goto_5
    return-object p2

    .line 547
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/bl;

    move-object v1, v0

    goto/16 :goto_0

    .line 553
    :cond_1
    const v0, 0x7f02005d

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 566
    :cond_2
    iget-object v3, v1, Lcom/yingyonghui/market/bl;->k:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 586
    :cond_3
    iget-object v3, v1, Lcom/yingyonghui/market/bl;->g:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/yingyonghui/market/ex;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 589
    :cond_4
    iget-object v3, v1, Lcom/yingyonghui/market/bl;->g:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 598
    :cond_5
    const-wide/16 v2, 0x64

    iget v4, v0, Lcom/yingyonghui/market/model/q;->L:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    iget v0, v0, Lcom/yingyonghui/market/model/q;->o:I

    int-to-long v4, v0

    div-long/2addr v2, v4

    long-to-int v0, v2

    goto :goto_4

    .line 603
    :cond_6
    iget-object v3, v1, Lcom/yingyonghui/market/bl;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 604
    iget-object v3, v1, Lcom/yingyonghui/market/bl;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 605
    iget-object v3, v1, Lcom/yingyonghui/market/bl;->h:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 606
    iget-object v3, v1, Lcom/yingyonghui/market/bl;->g:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 607
    iget-object v3, v1, Lcom/yingyonghui/market/bl;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 610
    iget-object v3, v0, Lcom/yingyonghui/market/model/q;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_7

    .line 611
    iget-object v3, v0, Lcom/yingyonghui/market/model/q;->h:Landroid/graphics/drawable/Drawable;

    .line 615
    :goto_6
    iget-object v4, v1, Lcom/yingyonghui/market/bl;->a:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 617
    iget v3, v0, Lcom/yingyonghui/market/model/q;->n:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    .line 618
    iget-object v2, v1, Lcom/yingyonghui/market/bl;->l:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 625
    :goto_7
    iget-boolean v2, v0, Lcom/yingyonghui/market/model/q;->P:Z

    if-eqz v2, :cond_9

    .line 626
    iget-object v2, v1, Lcom/yingyonghui/market/bl;->b:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/yingyonghui/market/model/q;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 627
    iget-object v2, v1, Lcom/yingyonghui/market/bl;->c:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/yingyonghui/market/ex;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/yingyonghui/market/model/q;->p:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 628
    iget-object v2, v1, Lcom/yingyonghui/market/bl;->d:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/yingyonghui/market/ex;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/yingyonghui/market/model/q;->q:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 637
    :goto_8
    iget-object v0, v1, Lcom/yingyonghui/market/bl;->i:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 638
    iget-object v0, v1, Lcom/yingyonghui/market/bl;->j:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 613
    :cond_7
    invoke-static {}, Lcom/yingyonghui/market/util/ab;->a()Lcom/yingyonghui/market/util/ab;

    iget-object v3, p0, Lcom/yingyonghui/market/ex;->j:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v3}, Lcom/yingyonghui/market/util/ab;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_6

    .line 621
    :cond_8
    iget-object v3, v1, Lcom/yingyonghui/market/bl;->l:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    .line 632
    :cond_9
    iget-object v0, v1, Lcom/yingyonghui/market/bl;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yingyonghui/market/ex;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 633
    iget-object v0, v1, Lcom/yingyonghui/market/bl;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 634
    iget-object v0, v1, Lcom/yingyonghui/market/bl;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8
.end method
