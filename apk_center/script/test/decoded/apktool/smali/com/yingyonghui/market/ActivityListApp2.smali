.class public Lcom/yingyonghui/market/ActivityListApp2;
.super Lcom/yingyonghui/market/HttpServiceSupportForActivity;
.source "ActivityListApp2.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/ListView;

.field private f:Lcom/yingyonghui/market/br;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Lcom/yingyonghui/market/log/m;

.field private l:I

.field private m:Landroid/os/Handler;

.field private final n:Landroid/content/BroadcastReceiver;

.field private o:Landroid/widget/AbsListView$OnScrollListener;

.field private p:I

.field private q:I

.field private r:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;-><init>()V

    .line 48
    const/4 v0, 0x3

    iput v0, p0, Lcom/yingyonghui/market/ActivityListApp2;->i:I

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListApp2;->k:Lcom/yingyonghui/market/log/m;

    .line 57
    new-instance v0, Lcom/yingyonghui/market/ba;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/ba;-><init>(Lcom/yingyonghui/market/ActivityListApp2;)V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListApp2;->m:Landroid/os/Handler;

    .line 179
    new-instance v0, Lcom/yingyonghui/market/az;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/az;-><init>(Lcom/yingyonghui/market/ActivityListApp2;)V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListApp2;->n:Landroid/content/BroadcastReceiver;

    .line 257
    new-instance v0, Lcom/yingyonghui/market/aw;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/aw;-><init>(Lcom/yingyonghui/market/ActivityListApp2;)V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListApp2;->o:Landroid/widget/AbsListView$OnScrollListener;

    .line 358
    iput v1, p0, Lcom/yingyonghui/market/ActivityListApp2;->p:I

    .line 359
    const/4 v0, -0x1

    iput v0, p0, Lcom/yingyonghui/market/ActivityListApp2;->q:I

    .line 360
    iput-boolean v1, p0, Lcom/yingyonghui/market/ActivityListApp2;->r:Z

    return-void
.end method

.method static synthetic a(Lcom/yingyonghui/market/ActivityListApp2;)Lcom/yingyonghui/market/br;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp2;->f:Lcom/yingyonghui/market/br;

    return-object v0
.end method

.method static synthetic b(Lcom/yingyonghui/market/ActivityListApp2;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityListApp2;->c()V

    return-void
.end method

.method private c()V
    .locals 5

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/yingyonghui/market/ActivityListApp2;->r:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/yingyonghui/market/ActivityListApp2;->q:I

    iget v1, p0, Lcom/yingyonghui/market/ActivityListApp2;->p:I

    if-ne v0, v1, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp2;->a:Lcom/yingyonghui/market/online/e;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp2;->c:Ljava/lang/String;

    iget v2, p0, Lcom/yingyonghui/market/ActivityListApp2;->p:I

    const/16 v3, 0x384

    iget-object v4, p0, Lcom/yingyonghui/market/ActivityListApp2;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/yingyonghui/market/online/e;->a(Ljava/lang/String;IILandroid/os/Handler;)V

    .line 253
    iget v0, p0, Lcom/yingyonghui/market/ActivityListApp2;->p:I

    iput v0, p0, Lcom/yingyonghui/market/ActivityListApp2;->q:I

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter

    .prologue
    .line 286
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    invoke-static {}, Lcom/yingyonghui/market/util/ab;->a()Lcom/yingyonghui/market/util/ab;

    invoke-static {p0}, Lcom/yingyonghui/market/util/ab;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 296
    :cond_0
    :goto_0
    return-object v0

    .line 289
    :cond_1
    invoke-static {}, Lcom/yingyonghui/market/util/ab;->a()Lcom/yingyonghui/market/util/ab;

    invoke-static {p1}, Lcom/yingyonghui/market/util/ab;->a(Ljava/lang/String;)Lcom/yingyonghui/market/model/m;

    move-result-object v0

    .line 290
    iget-object v0, v0, Lcom/yingyonghui/market/model/m;->a:Landroid/graphics/drawable/Drawable;

    .line 291
    if-nez v0, :cond_0

    .line 292
    invoke-static {}, Lcom/yingyonghui/market/util/ab;->a()Lcom/yingyonghui/market/util/ab;

    invoke-static {p0}, Lcom/yingyonghui/market/util/ab;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 293
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp2;->a:Lcom/yingyonghui/market/online/e;

    const/16 v2, 0x3e3

    iget-object v3, p0, Lcom/yingyonghui/market/ActivityListApp2;->b:Landroid/os/Handler;

    invoke-virtual {v1, p1, v2, v3}, Lcom/yingyonghui/market/online/e;->e(Ljava/lang/String;ILandroid/os/Handler;)V

    goto :goto_0
.end method

.method public final a()Lcom/yingyonghui/market/log/m;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp2;->k:Lcom/yingyonghui/market/log/m;

    return-object v0
.end method

.method protected final a(Landroid/os/Message;)V
    .locals 7
    .parameter

    .prologue
    const/16 v5, 0x384

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 305
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/yingyonghui/market/online/b;

    .line 306
    iget v1, v0, Lcom/yingyonghui/market/online/b;->c:I

    .line 307
    if-ne v1, v5, :cond_8

    .line 308
    iget-object v0, v0, Lcom/yingyonghui/market/online/b;->h:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/yingyonghui/market/online/e;->d(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    .line 309
    const/4 v0, 0x0

    .line 310
    if-eqz v1, :cond_0

    array-length v3, v1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 311
    aget-object v0, v1, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/yingyonghui/market/ActivityListApp2;->l:I

    .line 312
    aget-object v0, v1, v6

    check-cast v0, Ljava/util/ArrayList;

    .line 315
    :cond_0
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp2;->f:Lcom/yingyonghui/market/br;

    if-nez v1, :cond_6

    .line 316
    new-instance v1, Lcom/yingyonghui/market/br;

    invoke-direct {v1, p0, v0, v5}, Lcom/yingyonghui/market/br;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    iput-object v1, p0, Lcom/yingyonghui/market/ActivityListApp2;->f:Lcom/yingyonghui/market/br;

    .line 318
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp2;->e:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/yingyonghui/market/ActivityListApp2;->f:Lcom/yingyonghui/market/br;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 328
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 329
    iget v1, p0, Lcom/yingyonghui/market/ActivityListApp2;->p:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Lcom/yingyonghui/market/ActivityListApp2;->p:I

    .line 332
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v3, 0xa

    if-ge v1, v3, :cond_4

    .line 334
    :cond_3
    iput-boolean v6, p0, Lcom/yingyonghui/market/ActivityListApp2;->r:Z

    .line 335
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp2;->e:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/yingyonghui/market/ActivityListApp2;->h:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 338
    :cond_4
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp2;->d:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 339
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp2;->e:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 341
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 342
    iget v2, p0, Lcom/yingyonghui/market/ActivityListApp2;->p:I

    sub-int/2addr v2, v1

    .line 343
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityListApp2;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/yingyonghui/market/ActivityListApp2;->k:Lcom/yingyonghui/market/log/m;

    invoke-static {v3, v4, v2, v1, v0}, Lcom/yingyonghui/market/log/l;->b(Landroid/content/Context;Lcom/yingyonghui/market/log/m;IILjava/util/List;)V

    .line 355
    :cond_5
    :goto_1
    return-void

    .line 319
    :cond_6
    if-eqz v0, :cond_1

    .line 320
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 321
    :goto_2
    if-ge v1, v3, :cond_7

    .line 322
    iget-object v4, p0, Lcom/yingyonghui/market/ActivityListApp2;->f:Lcom/yingyonghui/market/br;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/yingyonghui/market/br;->add(Ljava/lang/Object;)V

    .line 321
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 325
    :cond_7
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp2;->f:Lcom/yingyonghui/market/br;

    invoke-virtual {v1}, Lcom/yingyonghui/market/br;->notifyDataSetChanged()V

    goto :goto_0

    .line 344
    :cond_8
    const/16 v3, 0x3e3

    if-ne v1, v3, :cond_5

    .line 345
    iget-object v1, v0, Lcom/yingyonghui/market/online/b;->h:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 346
    array-length v3, v1

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 347
    if-eqz v1, :cond_5

    .line 348
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 349
    invoke-static {}, Lcom/yingyonghui/market/util/ab;->a()Lcom/yingyonghui/market/util/ab;

    iget-object v0, v0, Lcom/yingyonghui/market/online/b;->e:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/yingyonghui/market/util/ab;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 350
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp2;->f:Lcom/yingyonghui/market/br;

    if-eqz v0, :cond_5

    .line 351
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp2;->f:Lcom/yingyonghui/market/br;

    invoke-virtual {v0}, Lcom/yingyonghui/market/br;->notifyDataSetChanged()V

    goto :goto_1
.end method

.method public final b()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp2;->m:Landroid/os/Handler;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x1

    .line 72
    invoke-super {p0, p1}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListApp2;->requestWindowFeature(I)Z

    .line 75
    const v0, 0x103000a

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListApp2;->setTheme(I)V

    .line 77
    const v0, 0x7f030046

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListApp2;->setContentView(I)V

    .line 80
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityListApp2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 83
    const-string v2, "android.intent.action.SEARCH"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    const-string v1, "query"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yingyonghui/market/ActivityListApp2;->c:Ljava/lang/String;

    .line 90
    :goto_0
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp2;->c:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 91
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListApp2;->c:Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp2;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp2;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp2;->c:Ljava/lang/String;

    const-string v1, "q="

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 135
    :cond_0
    :goto_1
    return-void

    .line 86
    :cond_1
    const-string v1, "keyword"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yingyonghui/market/ActivityListApp2;->c:Ljava/lang/String;

    goto :goto_0

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp2;->c:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListApp2;->c:Ljava/lang/String;

    .line 100
    :cond_3
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp2;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp2;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListApp2;->c:Ljava/lang/String;

    .line 130
    const v0, 0x7f0b005b

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListApp2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityListApp2;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yingyonghui/market/ActivityListApp2;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp2;->j:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp2;->j:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_8

    :cond_4
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp2;->c:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp2;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_7

    :cond_5
    const v1, 0x7f090066

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_2
    const v0, 0x7f0b0059

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListApp2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lcom/yingyonghui/market/ax;

    invoke-direct {v1, p0}, Lcom/yingyonghui/market/ax;-><init>(Lcom/yingyonghui/market/ActivityListApp2;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0069

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListApp2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListApp2;->d:Landroid/view/View;

    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListApp2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListApp2;->e:Landroid/widget/ListView;

    invoke-static {}, Lcom/yingyonghui/market/util/q;->a()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_6

    :try_start_0
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp2;->e:Landroid/widget/ListView;

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

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp2;->e:Landroid/widget/ListView;

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

    :cond_6
    :goto_3
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030045

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListApp2;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp2;->g:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030012

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListApp2;->h:Landroid/view/View;

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp2;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp2;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp2;->e:Landroid/widget/ListView;

    const v1, 0x7f0b006a

    invoke-virtual {p0, v1}, Lcom/yingyonghui/market/ActivityListApp2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp2;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp2;->o:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp2;->e:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityListApp2;->c()V

    .line 132
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp2;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/yingyonghui/market/ActivityListApp2;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.yingyonghui.market.DOWNLOAD_COMPLETED_2"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp2;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/yingyonghui/market/ActivityListApp2;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 134
    new-instance v0, Lcom/yingyonghui/market/log/m;

    const-string v1, "SearchResult"

    invoke-direct {v0, v1}, Lcom/yingyonghui/market/log/m;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListApp2;->k:Lcom/yingyonghui/market/log/m;

    goto/16 :goto_1

    .line 130
    :cond_7
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp2;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_8
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListApp2;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->onDestroy()V

    .line 148
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp2;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListApp2;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 149
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 365
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 366
    const-class v0, Lcom/yingyonghui/market/ActivityDetailApp;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/q;

    .line 370
    if-nez v0, :cond_0

    .line 388
    :goto_0
    return-void

    .line 374
    :cond_0
    const-string v2, "_id"

    iget v3, v0, Lcom/yingyonghui/market/model/q;->e:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 375
    const-string v2, "title"

    iget-object v3, v0, Lcom/yingyonghui/market/model/q;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    const-string v2, "author"

    iget-object v3, v0, Lcom/yingyonghui/market/model/q;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    const-string v2, "rating"

    iget v3, v0, Lcom/yingyonghui/market/model/q;->l:F

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 378
    const-string v2, "price"

    iget v3, v0, Lcom/yingyonghui/market/model/q;->k:F

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 379
    const-string v2, "installed"

    iget v3, v0, Lcom/yingyonghui/market/model/q;->n:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 380
    const-string v2, "pkgName"

    iget-object v3, v0, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    const-string v2, "size"

    iget v3, v0, Lcom/yingyonghui/market/model/q;->o:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 382
    const-string v2, "versionCode"

    iget v3, v0, Lcom/yingyonghui/market/model/q;->s:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 383
    const-string v2, "from"

    iget-object v3, p0, Lcom/yingyonghui/market/ActivityListApp2;->k:Lcom/yingyonghui/market/log/m;

    const-string v4, "index"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/yingyonghui/market/log/m;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/yingyonghui/market/log/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yingyonghui/market/log/m;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    invoke-virtual {p0, v1}, Lcom/yingyonghui/market/ActivityListApp2;->startActivity(Landroid/content/Intent;)V

    .line 387
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityListApp2;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityListApp2;->k:Lcom/yingyonghui/market/log/m;

    const-string v3, ""

    iget v0, v0, Lcom/yingyonghui/market/model/q;->e:I

    invoke-static {v1, v2, v3, p3, v0}, Lcom/yingyonghui/market/log/l;->a(Landroid/content/Context;Lcom/yingyonghui/market/log/m;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->onResume()V

    .line 140
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp2;->f:Lcom/yingyonghui/market/br;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListApp2;->f:Lcom/yingyonghui/market/br;

    invoke-virtual {v0}, Lcom/yingyonghui/market/br;->notifyDataSetChanged()V

    .line 143
    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method
