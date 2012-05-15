.class public Lcom/yingyonghui/market/ActivityGridWeekly;
.super Lcom/yingyonghui/market/HttpServiceSupportForActivity;
.source "ActivityGridWeekly.java"


# instance fields
.field private c:Landroid/widget/ImageButton;

.field private d:Landroid/widget/GridView;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/yingyonghui/market/el;

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Lcom/yingyonghui/market/log/m;

.field private m:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;-><init>()V

    .line 66
    iput v0, p0, Lcom/yingyonghui/market/ActivityGridWeekly;->h:I

    .line 68
    iput-boolean v0, p0, Lcom/yingyonghui/market/ActivityGridWeekly;->i:Z

    .line 70
    iput-boolean v0, p0, Lcom/yingyonghui/market/ActivityGridWeekly;->j:Z

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yingyonghui/market/ActivityGridWeekly;->k:Z

    .line 335
    new-instance v0, Lcom/yingyonghui/market/af;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/af;-><init>(Lcom/yingyonghui/market/ActivityGridWeekly;)V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityGridWeekly;->m:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method static synthetic a(Lcom/yingyonghui/market/ActivityGridWeekly;)Lcom/yingyonghui/market/log/m;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityGridWeekly;->l:Lcom/yingyonghui/market/log/m;

    return-object v0
.end method

.method static synthetic a(Lcom/yingyonghui/market/ActivityGridWeekly;I)Lcom/yingyonghui/market/log/m;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityGridWeekly;->l:Lcom/yingyonghui/market/log/m;

    const-string v1, "index"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yingyonghui/market/log/m;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/yingyonghui/market/log/m;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/yingyonghui/market/ActivityGridWeekly;->j:Z

    if-eqz v0, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-boolean v0, p0, Lcom/yingyonghui/market/ActivityGridWeekly;->i:Z

    if-nez v0, :cond_0

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yingyonghui/market/ActivityGridWeekly;->i:Z

    .line 148
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityGridWeekly;->a:Lcom/yingyonghui/market/online/e;

    iget v1, p0, Lcom/yingyonghui/market/ActivityGridWeekly;->h:I

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityGridWeekly;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/yingyonghui/market/online/e;->d(ILandroid/os/Handler;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/yingyonghui/market/ActivityGridWeekly;)Lcom/yingyonghui/market/el;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityGridWeekly;->g:Lcom/yingyonghui/market/el;

    return-object v0
.end method

.method static synthetic c(Lcom/yingyonghui/market/ActivityGridWeekly;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityGridWeekly;->a()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter

    .prologue
    .line 374
    invoke-static {}, Lcom/yingyonghui/market/util/ab;->a()Lcom/yingyonghui/market/util/ab;

    invoke-static {p1}, Lcom/yingyonghui/market/util/ab;->a(Ljava/lang/String;)Lcom/yingyonghui/market/model/m;

    move-result-object v0

    .line 375
    iget-object v0, v0, Lcom/yingyonghui/market/model/m;->a:Landroid/graphics/drawable/Drawable;

    .line 376
    if-nez v0, :cond_0

    .line 377
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityGridWeekly;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 379
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityGridWeekly;->a:Lcom/yingyonghui/market/online/e;

    const/16 v2, 0x38f

    iget-object v3, p0, Lcom/yingyonghui/market/ActivityGridWeekly;->b:Landroid/os/Handler;

    invoke-virtual {v1, p1, v2, v3}, Lcom/yingyonghui/market/online/e;->e(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 382
    :cond_0
    return-object v0
.end method

.method protected final a(Landroid/os/Message;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v2, 0x0

    .line 156
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/yingyonghui/market/online/b;

    .line 158
    iget v1, v0, Lcom/yingyonghui/market/online/b;->c:I

    .line 159
    const/16 v3, 0x38e

    if-ne v1, v3, :cond_9

    .line 162
    iget-object v0, v0, Lcom/yingyonghui/market/online/b;->h:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/yingyonghui/market/online/e;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 163
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityGridWeekly;->g:Lcom/yingyonghui/market/el;

    if-nez v0, :cond_6

    new-instance v0, Lcom/yingyonghui/market/el;

    invoke-direct {v0, p0, p0, v4}, Lcom/yingyonghui/market/el;-><init>(Lcom/yingyonghui/market/ActivityGridWeekly;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityGridWeekly;->g:Lcom/yingyonghui/market/el;

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityGridWeekly;->d:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityGridWeekly;->g:Lcom/yingyonghui/market/el;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    move v1, v2

    move v3, v2

    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/l;

    iget v0, v0, Lcom/yingyonghui/market/model/l;->a:I

    if-le v0, v3, :cond_0

    move v3, v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const-string v0, "weekly_id"

    invoke-static {p0, v0, v3}, Lcom/yingyonghui/market/util/u;->a(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_1
    iget v0, p0, Lcom/yingyonghui/market/ActivityGridWeekly;->h:I

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/yingyonghui/market/ActivityGridWeekly;->h:I

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_2

    iput-boolean v6, p0, Lcom/yingyonghui/market/ActivityGridWeekly;->j:Z

    :cond_2
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityGridWeekly;->e:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityGridWeekly;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityGridWeekly;->d:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    :cond_3
    :goto_2
    iget-boolean v0, p0, Lcom/yingyonghui/market/ActivityGridWeekly;->k:Z

    if-eqz v0, :cond_4

    iput-boolean v2, p0, Lcom/yingyonghui/market/ActivityGridWeekly;->k:Z

    :cond_4
    iput-boolean v2, p0, Lcom/yingyonghui/market/ActivityGridWeekly;->i:Z

    .line 174
    :cond_5
    :goto_3
    return-void

    .line 163
    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/l;

    iget-object v3, p0, Lcom/yingyonghui/market/ActivityGridWeekly;->g:Lcom/yingyonghui/market/el;

    invoke-virtual {v3, v0}, Lcom/yingyonghui/market/el;->add(Ljava/lang/Object;)V

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityGridWeekly;->g:Lcom/yingyonghui/market/el;

    invoke-virtual {v0}, Lcom/yingyonghui/market/el;->notifyDataSetChanged()V

    goto :goto_1

    :cond_8
    iput-boolean v6, p0, Lcom/yingyonghui/market/ActivityGridWeekly;->j:Z

    iget-boolean v0, p0, Lcom/yingyonghui/market/ActivityGridWeekly;->k:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityGridWeekly;->e:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityGridWeekly;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 165
    :cond_9
    const/16 v3, 0x38f

    if-ne v1, v3, :cond_5

    .line 166
    iget-object v1, v0, Lcom/yingyonghui/market/online/b;->h:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 167
    array-length v3, v1

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 168
    if-eqz v1, :cond_5

    .line 169
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 170
    invoke-static {}, Lcom/yingyonghui/market/util/ab;->a()Lcom/yingyonghui/market/util/ab;

    iget-object v0, v0, Lcom/yingyonghui/market/online/b;->e:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/yingyonghui/market/util/ab;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 171
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityGridWeekly;->g:Lcom/yingyonghui/market/el;

    invoke-virtual {v0}, Lcom/yingyonghui/market/el;->notifyDataSetChanged()V

    goto :goto_3
.end method

.method protected final b(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yingyonghui/market/ActivityGridWeekly;->i:Z

    .line 179
    invoke-super {p0, p1}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->b(Landroid/os/Message;)V

    .line 180
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityGridWeekly;->requestWindowFeature(I)Z

    .line 81
    const v0, 0x7f03006c

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityGridWeekly;->setContentView(I)V

    .line 83
    new-instance v0, Lcom/yingyonghui/market/log/m;

    const-string v1, "WeeklyList"

    invoke-direct {v0, v1}, Lcom/yingyonghui/market/log/m;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityGridWeekly;->l:Lcom/yingyonghui/market/log/m;

    .line 85
    const v0, 0x7f0b0168

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityGridWeekly;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityGridWeekly;->c:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityGridWeekly;->c:Landroid/widget/ImageButton;

    new-instance v1, Lcom/yingyonghui/market/ae;

    invoke-direct {v1, p0}, Lcom/yingyonghui/market/ae;-><init>(Lcom/yingyonghui/market/ActivityGridWeekly;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0164

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityGridWeekly;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityGridWeekly;->e:Landroid/view/View;

    const v0, 0x7f0b0163

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityGridWeekly;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityGridWeekly;->d:Landroid/widget/GridView;

    const v0, 0x7f0b0165

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityGridWeekly;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityGridWeekly;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityGridWeekly;->d:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityGridWeekly;->m:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 86
    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityGridWeekly;->a()V

    .line 87
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->onPause()V

    .line 98
    invoke-static {p0}, Lcom/a/a/c;->a(Landroid/content/Context;)V

    .line 99
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 91
    invoke-super {p0}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->onResume()V

    .line 92
    invoke-static {p0}, Lcom/a/a/c;->b(Landroid/content/Context;)V

    .line 93
    return-void
.end method
