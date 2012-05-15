.class public Lcom/yingyonghui/market/ActivityListComments;
.super Lcom/yingyonghui/market/HttpServiceSupportForActivity;
.source "ActivityListComments.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private d:I

.field private e:Lcom/yingyonghui/market/model/o;

.field private f:Landroid/widget/ListView;

.field private g:Lcom/yingyonghui/market/fb;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/widget/Button;

.field private n:Landroid/widget/Button;

.field private o:I

.field private p:Z

.field private q:Lcom/yingyonghui/market/model/t;

.field private r:Z

.field private final s:Landroid/content/BroadcastReceiver;

.field private t:Z

.field private u:Landroid/widget/AbsListView$OnScrollListener;

.field private v:I

.field private w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/yingyonghui/market/ActivityListComments;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yingyonghui/market/ActivityListComments;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;-><init>()V

    .line 66
    iput v1, p0, Lcom/yingyonghui/market/ActivityListComments;->o:I

    .line 67
    iput-boolean v1, p0, Lcom/yingyonghui/market/ActivityListComments;->p:Z

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yingyonghui/market/ActivityListComments;->r:Z

    .line 136
    new-instance v0, Lcom/yingyonghui/market/bq;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/bq;-><init>(Lcom/yingyonghui/market/ActivityListComments;)V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListComments;->s:Landroid/content/BroadcastReceiver;

    .line 240
    new-instance v0, Lcom/yingyonghui/market/bk;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/bk;-><init>(Lcom/yingyonghui/market/ActivityListComments;)V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListComments;->u:Landroid/widget/AbsListView$OnScrollListener;

    .line 274
    iput v1, p0, Lcom/yingyonghui/market/ActivityListComments;->v:I

    .line 374
    iput-boolean v1, p0, Lcom/yingyonghui/market/ActivityListComments;->w:Z

    .line 423
    return-void
.end method

.method static synthetic a(Lcom/yingyonghui/market/ActivityListComments;)Lcom/yingyonghui/market/model/o;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListComments;->e:Lcom/yingyonghui/market/model/o;

    return-object v0
.end method

.method static synthetic a(Lcom/yingyonghui/market/ActivityListComments;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 50
    packed-switch p1, :pswitch_data_0

    const v0, 0x7f09002a

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListComments;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const v0, 0x7f090025

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListComments;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const v0, 0x7f090026

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListComments;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const v0, 0x7f090027

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListComments;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const v0, 0x7f090028

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListComments;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    const v0, 0x7f090029

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListComments;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 50
    invoke-static {p0}, Lcom/yingyonghui/market/ActivityListComments;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListComments;->e:Lcom/yingyonghui/market/model/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListComments;->f:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 164
    const v0, 0x7f0b0099

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListComments;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListComments;->k:Landroid/widget/TextView;

    .line 166
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListComments;->e:Lcom/yingyonghui/market/model/o;

    iget v0, v0, Lcom/yingyonghui/market/model/o;->n:I

    if-nez v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListComments;->k:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListComments;->k:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/yingyonghui/market/ActivityListComments;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/yingyonghui/market/ActivityListComments;->t:Z

    return p1
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 627
    if-nez p0, :cond_0

    :try_start_0
    const-string v0, ""

    .line 629
    :goto_0
    return-object v0

    .line 627
    :cond_0
    invoke-static {p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 629
    :catch_0
    move-exception v0

    invoke-static {p0}, Lcom/yingyonghui/market/util/b;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 376
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityListComments;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/ActivityDetailApp;

    .line 377
    invoke-virtual {v0}, Lcom/yingyonghui/market/ActivityDetailApp;->c()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 378
    iget-boolean v0, p0, Lcom/yingyonghui/market/ActivityListComments;->w:Z

    if-nez v0, :cond_0

    .line 379
    iput-boolean v1, p0, Lcom/yingyonghui/market/ActivityListComments;->w:Z

    .line 380
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 381
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 382
    const v2, 0x7f0200a0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 383
    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 384
    const/16 v1, 0x51

    const/high16 v2, 0x4248

    invoke-static {p0}, Lcom/yingyonghui/market/util/q;->e(Landroid/content/Context;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v4, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 385
    invoke-virtual {v0, v4}, Landroid/widget/Toast;->setDuration(I)V

    .line 386
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 389
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/yingyonghui/market/ActivityListComments;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityListComments;->a()V

    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    .line 392
    iget-boolean v0, p0, Lcom/yingyonghui/market/ActivityListComments;->p:Z

    if-eqz v0, :cond_0

    .line 396
    :goto_0
    return-void

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListComments;->a:Lcom/yingyonghui/market/online/e;

    iget v1, p0, Lcom/yingyonghui/market/ActivityListComments;->d:I

    iget v2, p0, Lcom/yingyonghui/market/ActivityListComments;->o:I

    iget-object v3, p0, Lcom/yingyonghui/market/ActivityListComments;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/yingyonghui/market/online/e;->b(IILandroid/os/Handler;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/yingyonghui/market/ActivityListComments;)Z
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/yingyonghui/market/ActivityListComments;->p:Z

    return v0
.end method

.method static synthetic d(Lcom/yingyonghui/market/ActivityListComments;)Z
    .locals 1
    .parameter

    .prologue
    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yingyonghui/market/ActivityListComments;->p:Z

    return v0
.end method

.method static synthetic e(Lcom/yingyonghui/market/ActivityListComments;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListComments;->j:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/yingyonghui/market/ActivityListComments;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListComments;->f:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic g(Lcom/yingyonghui/market/ActivityListComments;)Lcom/yingyonghui/market/fb;
    .locals 1
    .parameter

    .prologue
    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListComments;->g:Lcom/yingyonghui/market/fb;

    return-object v0
.end method

.method static synthetic h(Lcom/yingyonghui/market/ActivityListComments;)I
    .locals 1
    .parameter

    .prologue
    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/yingyonghui/market/ActivityListComments;->o:I

    return v0
.end method

.method static synthetic i(Lcom/yingyonghui/market/ActivityListComments;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityListComments;->c()V

    return-void
.end method

.method static synthetic j(Lcom/yingyonghui/market/ActivityListComments;)Lcom/yingyonghui/market/fb;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListComments;->g:Lcom/yingyonghui/market/fb;

    return-object v0
.end method

.method static synthetic k(Lcom/yingyonghui/market/ActivityListComments;)Z
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/yingyonghui/market/ActivityListComments;->r:Z

    return v0
.end method

.method static synthetic l(Lcom/yingyonghui/market/ActivityListComments;)Z
    .locals 1
    .parameter

    .prologue
    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yingyonghui/market/ActivityListComments;->r:Z

    return v0
.end method

.method static synthetic m(Lcom/yingyonghui/market/ActivityListComments;)Z
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/yingyonghui/market/ActivityListComments;->t:Z

    return v0
.end method

.method static synthetic n(Lcom/yingyonghui/market/ActivityListComments;)I
    .locals 1
    .parameter

    .prologue
    .line 50
    iget v0, p0, Lcom/yingyonghui/market/ActivityListComments;->d:I

    return v0
.end method


# virtual methods
.method protected final a(Landroid/os/Message;)V
    .locals 8
    .parameter

    .prologue
    const v6, 0x7f0b0098

    const/16 v5, 0xc8

    const/4 v3, 0x1

    const/16 v7, 0x8

    const/4 v2, 0x0

    .line 276
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/yingyonghui/market/online/b;

    .line 277
    iget v1, v0, Lcom/yingyonghui/market/online/b;->c:I

    .line 278
    const/16 v4, 0x384

    if-ne v1, v4, :cond_f

    .line 279
    iget-object v0, v0, Lcom/yingyonghui/market/online/b;->h:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/yingyonghui/market/online/e;->e(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v4

    .line 280
    aget-object v0, v4, v2

    check-cast v0, Ljava/lang/Integer;

    .line 281
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityListComments;->getParent()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/yingyonghui/market/ActivityDetailApp;

    if-nez v0, :cond_8

    move v0, v2

    :goto_0
    invoke-virtual {v1, v0}, Lcom/yingyonghui/market/ActivityDetailApp;->a(I)V

    .line 283
    aget-object v0, v4, v3

    check-cast v0, Ljava/util/ArrayList;

    .line 284
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListComments;->g:Lcom/yingyonghui/market/fb;

    if-nez v1, :cond_d

    .line 285
    new-instance v1, Lcom/yingyonghui/market/fb;

    invoke-direct {v1, p0, p0, v0}, Lcom/yingyonghui/market/fb;-><init>(Lcom/yingyonghui/market/ActivityListComments;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/yingyonghui/market/ActivityListComments;->g:Lcom/yingyonghui/market/fb;

    .line 286
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListComments;->f:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/yingyonghui/market/ActivityListComments;->g:Lcom/yingyonghui/market/fb;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 288
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_9

    .line 289
    :cond_0
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListComments;->e:Lcom/yingyonghui/market/model/o;

    iget v1, v1, Lcom/yingyonghui/market/model/o;->n:I

    if-eqz v1, :cond_1

    .line 290
    invoke-virtual {p0, v6}, Lcom/yingyonghui/market/ActivityListComments;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 296
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListComments;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 297
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListComments;->n:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 298
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListComments;->m:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 299
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_a

    .line 300
    :cond_2
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListComments;->e:Lcom/yingyonghui/market/model/o;

    iget v1, v1, Lcom/yingyonghui/market/model/o;->n:I

    if-eqz v1, :cond_3

    .line 301
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListComments;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 302
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListComments;->m:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 303
    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityListComments;->b()V

    .line 328
    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    .line 329
    iget v1, p0, Lcom/yingyonghui/market/ActivityListComments;->o:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v1, v4

    iput v1, p0, Lcom/yingyonghui/market/ActivityListComments;->o:I

    .line 332
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_6

    .line 334
    :cond_5
    iput-boolean v3, p0, Lcom/yingyonghui/market/ActivityListComments;->p:Z

    .line 335
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListComments;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListComments;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 338
    :cond_6
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListComments;->h:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 339
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListComments;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 362
    :cond_7
    :goto_3
    iput-boolean v3, p0, Lcom/yingyonghui/market/ActivityListComments;->r:Z

    .line 363
    return-void

    .line 281
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_0

    .line 293
    :cond_9
    invoke-virtual {p0, v6}, Lcom/yingyonghui/market/ActivityListComments;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 306
    :cond_a
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yingyonghui/market/model/t;

    .line 307
    iget-boolean v4, v1, Lcom/yingyonghui/market/model/t;->c:Z

    if-nez v4, :cond_b

    iget-boolean v4, v1, Lcom/yingyonghui/market/model/t;->k:Z

    if-eqz v4, :cond_b

    iget-object v4, v1, Lcom/yingyonghui/market/model/t;->i:Ljava/lang/String;

    const-string v5, "comment"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 308
    iget-object v4, p0, Lcom/yingyonghui/market/ActivityListComments;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 309
    iget-object v4, p0, Lcom/yingyonghui/market/ActivityListComments;->n:Landroid/widget/Button;

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 310
    iput-object v1, p0, Lcom/yingyonghui/market/ActivityListComments;->q:Lcom/yingyonghui/market/model/t;

    goto :goto_2

    .line 311
    :cond_b
    iget-object v4, p0, Lcom/yingyonghui/market/ActivityListComments;->e:Lcom/yingyonghui/market/model/o;

    iget v4, v4, Lcom/yingyonghui/market/model/o;->n:I

    if-eqz v4, :cond_3

    .line 312
    iget-boolean v4, v1, Lcom/yingyonghui/market/model/t;->k:Z

    if-eqz v4, :cond_c

    iget-object v4, v1, Lcom/yingyonghui/market/model/t;->i:Ljava/lang/String;

    const-string v5, "comment"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-boolean v4, v1, Lcom/yingyonghui/market/model/t;->k:Z

    if-eqz v4, :cond_3

    iget-boolean v4, v1, Lcom/yingyonghui/market/model/t;->c:Z

    if-eqz v4, :cond_3

    iget-object v1, v1, Lcom/yingyonghui/market/model/t;->i:Ljava/lang/String;

    const-string v4, "comment"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 314
    :cond_c
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListComments;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 315
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListComments;->m:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 316
    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityListComments;->b()V

    goto/16 :goto_2

    .line 320
    :cond_d
    if-eqz v0, :cond_3

    .line 321
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v2

    .line 322
    :goto_4
    if-ge v1, v4, :cond_e

    .line 323
    iget-object v5, p0, Lcom/yingyonghui/market/ActivityListComments;->g:Lcom/yingyonghui/market/fb;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/yingyonghui/market/fb;->add(Ljava/lang/Object;)V

    .line 322
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 325
    :cond_e
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListComments;->g:Lcom/yingyonghui/market/fb;

    invoke-virtual {v1}, Lcom/yingyonghui/market/fb;->notifyDataSetChanged()V

    goto/16 :goto_2

    .line 340
    :cond_f
    const/16 v4, 0x385

    if-ne v1, v4, :cond_7

    .line 341
    invoke-virtual {p0, v5}, Lcom/yingyonghui/market/ActivityListComments;->removeDialog(I)V

    .line 343
    iget v0, v0, Lcom/yingyonghui/market/online/b;->a:I

    if-ne v0, v5, :cond_11

    move v0, v3

    .line 349
    :goto_5
    if-eqz v0, :cond_12

    .line 350
    const v0, 0x7f090102

    invoke-static {p0, v0}, Lcom/yingyonghui/market/util/GlobalUtil;->b(Landroid/content/Context;I)V

    .line 351
    iget-boolean v0, p0, Lcom/yingyonghui/market/ActivityListComments;->p:Z

    if-eqz v0, :cond_10

    .line 352
    iput-boolean v2, p0, Lcom/yingyonghui/market/ActivityListComments;->p:Z

    .line 353
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListComments;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListComments;->j:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 355
    :cond_10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListComments;->g:Lcom/yingyonghui/market/fb;

    .line 356
    iput v2, p0, Lcom/yingyonghui/market/ActivityListComments;->o:I

    .line 357
    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityListComments;->c()V

    goto/16 :goto_3

    :cond_11
    move v0, v2

    .line 346
    goto :goto_5

    .line 359
    :cond_12
    const v0, 0x7f090103

    invoke-static {p0, v0}, Lcom/yingyonghui/market/util/GlobalUtil;->b(Landroid/content/Context;I)V

    goto/16 :goto_3
.end method

.method protected final b(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 368
    const/16 v0, 0xc8

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListComments;->removeDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    :goto_0
    invoke-super {p0, p1}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->b(Landroid/os/Message;)V

    .line 372
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 216
    invoke-super {p0, p1, p2, p3}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 217
    sparse-switch p1, :sswitch_data_0

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 219
    :sswitch_0
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListComments;->e:Lcom/yingyonghui/market/model/o;

    if-eqz v0, :cond_0

    if-ne p2, v1, :cond_0

    .line 220
    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityListComments;->a()V

    goto :goto_0

    .line 226
    :sswitch_1
    if-ne p2, v1, :cond_0

    .line 227
    iget-boolean v0, p0, Lcom/yingyonghui/market/ActivityListComments;->p:Z

    if-eqz v0, :cond_1

    .line 228
    iput-boolean v2, p0, Lcom/yingyonghui/market/ActivityListComments;->p:Z

    .line 229
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListComments;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListComments;->j:Landroid/view/View;

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 231
    :cond_1
    iput-object v3, p0, Lcom/yingyonghui/market/ActivityListComments;->g:Lcom/yingyonghui/market/fb;

    .line 232
    iput v2, p0, Lcom/yingyonghui/market/ActivityListComments;->o:I

    .line 233
    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityListComments;->c()V

    goto :goto_0

    .line 217
    nop

    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_0
        0x190 -> :sswitch_1
        0x191 -> :sswitch_1
        0x192 -> :sswitch_1
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 605
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 623
    :cond_0
    :goto_0
    return-void

    .line 607
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yingyonghui/market/ActivityCommentsAdd;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 608
    const-string v1, "_id"

    iget v2, p0, Lcom/yingyonghui/market/ActivityListComments;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 609
    const-string v1, "pkgName"

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityListComments;->e:Lcom/yingyonghui/market/model/o;

    iget-object v2, v2, Lcom/yingyonghui/market/model/o;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 610
    const/16 v1, 0x191

    invoke-virtual {p0, v0, v1}, Lcom/yingyonghui/market/ActivityListComments;->startActivityForResult(Landroid/content/Intent;I)V

    .line 611
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityListComments;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/yingyonghui/market/ActivityListComments;->d:I

    invoke-static {v1}, Lcom/yingyonghui/market/log/h;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yingyonghui/market/log/LogService;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 614
    :pswitch_1
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListComments;->q:Lcom/yingyonghui/market/model/t;

    if-eqz v0, :cond_0

    .line 617
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityListComments;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yingyonghui/market/util/q;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 618
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListComments;->a:Lcom/yingyonghui/market/online/e;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListComments;->q:Lcom/yingyonghui/market/model/t;

    iget v1, v1, Lcom/yingyonghui/market/model/t;->a:I

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityListComments;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/yingyonghui/market/online/e;->b(ILandroid/os/Handler;)V

    .line 619
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityListComments;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListComments;->q:Lcom/yingyonghui/market/model/t;

    iget v1, v1, Lcom/yingyonghui/market/model/t;->a:I

    iget v2, p0, Lcom/yingyonghui/market/ActivityListComments;->d:I

    invoke-static {v1, v2}, Lcom/yingyonghui/market/log/h;->c(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yingyonghui/market/log/LogService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 620
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListComments;->showDialog(I)V

    goto :goto_0

    .line 605
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b009a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 76
    invoke-super {p0, p1}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0, v5}, Lcom/yingyonghui/market/ActivityListComments;->requestWindowFeature(I)Z

    .line 78
    const v0, 0x103000a

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListComments;->setTheme(I)V

    .line 80
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityListComments;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yingyonghui/market/ActivityListComments;->d:I

    .line 82
    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListComments;->setContentView(I)V

    .line 84
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListComments;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListComments;->f:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListComments;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListComments;->f:Landroid/widget/ListView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(I)V

    const v0, 0x7f0b002b

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListComments;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListComments;->l:Landroid/widget/LinearLayout;

    const v0, 0x7f0b009a

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListComments;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListComments;->m:Landroid/widget/Button;

    const v0, 0x7f0b009b

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListComments;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListComments;->n:Landroid/widget/Button;

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListComments;->m:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListComments;->n:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/yingyonghui/market/util/q;->a()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListComments;->f:Landroid/widget/ListView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setScrollbarFadingEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListComments;->f:Landroid/widget/ListView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030020

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListComments;->i:Landroid/view/View;

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListComments;->i:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListComments;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListComments;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    const v0, 0x7f0b009c

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListComments;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListComments;->h:Landroid/view/View;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030013

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListComments;->j:Landroid/view/View;

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListComments;->j:Landroid/view/View;

    const v1, 0x7f0b006f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/yingyonghui/market/bn;

    invoke-direct {v1, p0}, Lcom/yingyonghui/market/bn;-><init>(Lcom/yingyonghui/market/ActivityListComments;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListComments;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListComments;->j:Landroid/view/View;

    invoke-virtual {v0, v1, v7, v6}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListComments;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListComments;->u:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 86
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityListComments;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/ActivityDetailApp;

    iget-object v0, v0, Lcom/yingyonghui/market/ActivityDetailApp;->c:Lcom/yingyonghui/market/model/q;

    new-instance v1, Lcom/yingyonghui/market/model/o;

    invoke-direct {v1}, Lcom/yingyonghui/market/model/o;-><init>()V

    iput-object v1, p0, Lcom/yingyonghui/market/ActivityListComments;->e:Lcom/yingyonghui/market/model/o;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListComments;->e:Lcom/yingyonghui/market/model/o;

    iget v2, v0, Lcom/yingyonghui/market/model/q;->e:I

    iput v2, v1, Lcom/yingyonghui/market/model/o;->e:I

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListComments;->e:Lcom/yingyonghui/market/model/o;

    iget-object v2, v0, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    iput-object v2, v1, Lcom/yingyonghui/market/model/o;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListComments;->e:Lcom/yingyonghui/market/model/o;

    iget v0, v0, Lcom/yingyonghui/market/model/q;->s:I

    iput v0, v1, Lcom/yingyonghui/market/model/o;->s:I

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListComments;->e:Lcom/yingyonghui/market/model/o;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListComments;->e:Lcom/yingyonghui/market/model/o;

    iget-object v1, v1, Lcom/yingyonghui/market/model/o;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityListComments;->e:Lcom/yingyonghui/market/model/o;

    iget v2, v2, Lcom/yingyonghui/market/model/o;->s:I

    iget-object v3, p0, Lcom/yingyonghui/market/ActivityListComments;->e:Lcom/yingyonghui/market/model/o;

    iget v3, v3, Lcom/yingyonghui/market/model/o;->e:I

    invoke-static {p0, v1, v2, v3}, Lcom/yingyonghui/market/util/v;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    iput v1, v0, Lcom/yingyonghui/market/model/o;->n:I

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListComments;->e:Lcom/yingyonghui/market/model/o;

    iget v0, v0, Lcom/yingyonghui/market/model/o;->e:I

    iput v0, p0, Lcom/yingyonghui/market/ActivityListComments;->d:I

    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityListComments;->a()V

    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityListComments;->c()V

    .line 88
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListComments;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/yingyonghui/market/ActivityListComments;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 89
    return-void

    .line 84
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 400
    packed-switch p1, :pswitch_data_0

    .line 410
    invoke-super {p0, p1}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 402
    :pswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 403
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 404
    const v1, 0x7f09001f

    invoke-virtual {p0, v1}, Lcom/yingyonghui/market/ActivityListComments;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 405
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 406
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 407
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    .line 400
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListComments;->s:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListComments;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListComments;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 114
    :cond_0
    invoke-super {p0}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->onDestroy()V

    .line 115
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method
