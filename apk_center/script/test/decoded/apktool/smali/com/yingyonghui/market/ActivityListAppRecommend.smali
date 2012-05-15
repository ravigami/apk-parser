.class public Lcom/yingyonghui/market/ActivityListAppRecommend;
.super Lcom/yingyonghui/market/HttpServiceSupportForActivity;
.source "ActivityListAppRecommend.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private c:Landroid/view/View;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/ListView;

.field private i:Lcom/yingyonghui/market/n;

.field private j:Ljava/util/HashMap;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/TextView;

.field private m:I

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Lcom/yingyonghui/market/log/m;

.field private final q:I

.field private final r:I

.field private final s:Landroid/content/BroadcastReceiver;

.field private t:Landroid/widget/AbsListView$OnScrollListener;

.field private u:I

.field private v:I

.field private w:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;-><init>()V

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->j:Ljava/util/HashMap;

    .line 73
    iput v1, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->m:I

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->p:Lcom/yingyonghui/market/log/m;

    .line 79
    const/16 v0, 0x64

    iput v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->q:I

    .line 80
    const/16 v0, 0x65

    iput v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->r:I

    .line 199
    new-instance v0, Lcom/yingyonghui/market/dy;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/dy;-><init>(Lcom/yingyonghui/market/ActivityListAppRecommend;)V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->s:Landroid/content/BroadcastReceiver;

    .line 322
    new-instance v0, Lcom/yingyonghui/market/ef;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/ef;-><init>(Lcom/yingyonghui/market/ActivityListAppRecommend;)V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->t:Landroid/widget/AbsListView$OnScrollListener;

    .line 415
    iput v1, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->u:I

    .line 416
    const/4 v0, -0x1

    iput v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->v:I

    .line 417
    iput-boolean v1, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->w:Z

    .line 585
    return-void
.end method

.method static synthetic a(Lcom/yingyonghui/market/ActivityListAppRecommend;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 59
    iget v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->m:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->m:I

    return v0
.end method

.method static synthetic a(Lcom/yingyonghui/market/ActivityListAppRecommend;)Lcom/yingyonghui/market/n;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->i:Lcom/yingyonghui/market/n;

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 420
    iget-boolean v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->w:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->v:I

    iget v1, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->u:I

    if-ne v0, v1, :cond_1

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->a:Lcom/yingyonghui/market/online/e;

    iget v1, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->n:I

    iget v2, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->u:I

    iget-object v3, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/yingyonghui/market/online/e;->a(IILandroid/os/Handler;)V

    .line 425
    iget v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->u:I

    iput v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->v:I

    goto :goto_0
.end method

.method static synthetic b(Lcom/yingyonghui/market/ActivityListAppRecommend;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 59
    iget v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->m:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->m:I

    return v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 558
    const-string v0, ""

    .line 559
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->j:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 560
    if-lez v1, :cond_0

    .line 562
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f09001b

    invoke-virtual {p0, v2}, Lcom/yingyonghui/market/ActivityListAppRecommend;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 563
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 564
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f09001c

    invoke-virtual {p0, v1}, Lcom/yingyonghui/market/ActivityListAppRecommend;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 567
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->l:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 573
    :goto_0
    return-void

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->l:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 571
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->l:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/yingyonghui/market/ActivityListAppRecommend;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityListAppRecommend;->a()V

    return-void
.end method

.method static synthetic c(Lcom/yingyonghui/market/ActivityListAppRecommend;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->j:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic d(Lcom/yingyonghui/market/ActivityListAppRecommend;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityListAppRecommend;->b()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter

    .prologue
    .line 347
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    invoke-static {}, Lcom/yingyonghui/market/util/ab;->a()Lcom/yingyonghui/market/util/ab;

    invoke-static {p0}, Lcom/yingyonghui/market/util/ab;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 358
    :cond_0
    :goto_0
    return-object v0

    .line 351
    :cond_1
    invoke-static {}, Lcom/yingyonghui/market/util/ab;->a()Lcom/yingyonghui/market/util/ab;

    invoke-static {p1}, Lcom/yingyonghui/market/util/ab;->a(Ljava/lang/String;)Lcom/yingyonghui/market/model/m;

    move-result-object v0

    .line 352
    iget-object v0, v0, Lcom/yingyonghui/market/model/m;->a:Landroid/graphics/drawable/Drawable;

    .line 353
    if-nez v0, :cond_0

    .line 354
    invoke-static {}, Lcom/yingyonghui/market/util/ab;->a()Lcom/yingyonghui/market/util/ab;

    invoke-static {p0}, Lcom/yingyonghui/market/util/ab;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 355
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->a:Lcom/yingyonghui/market/online/e;

    const/16 v2, 0x65

    iget-object v3, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->b:Landroid/os/Handler;

    invoke-virtual {v1, p1, v2, v3}, Lcom/yingyonghui/market/online/e;->e(Ljava/lang/String;ILandroid/os/Handler;)V

    goto :goto_0
.end method

.method protected final a(Landroid/os/Message;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 367
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/yingyonghui/market/online/b;

    .line 368
    iget v1, v0, Lcom/yingyonghui/market/online/b;->c:I

    .line 369
    const/16 v3, 0x64

    if-ne v1, v3, :cond_7

    .line 370
    iget-object v0, v0, Lcom/yingyonghui/market/online/b;->h:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/yingyonghui/market/online/e;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 372
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->i:Lcom/yingyonghui/market/n;

    if-nez v0, :cond_5

    .line 373
    new-instance v0, Lcom/yingyonghui/market/n;

    invoke-direct {v0, p0, p0, v1}, Lcom/yingyonghui/market/n;-><init>(Lcom/yingyonghui/market/ActivityListAppRecommend;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->i:Lcom/yingyonghui/market/n;

    .line 374
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->h:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->i:Lcom/yingyonghui/market/n;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 384
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 385
    iget v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->u:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v0, v3

    iput v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->u:I

    .line 388
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v3, 0xa

    if-ge v0, v3, :cond_3

    .line 390
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->w:Z

    .line 391
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->h:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->k:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 394
    :cond_3
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->c:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 395
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->h:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 397
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 398
    iget v2, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->u:I

    sub-int/2addr v2, v0

    .line 399
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityListAppRecommend;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->p:Lcom/yingyonghui/market/log/m;

    invoke-static {v3, v4, v2, v0, v1}, Lcom/yingyonghui/market/log/l;->a(Landroid/content/Context;Lcom/yingyonghui/market/log/m;IILjava/util/List;)V

    .line 412
    :cond_4
    :goto_1
    return-void

    .line 375
    :cond_5
    if-eqz v1, :cond_0

    .line 376
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v0, v2

    .line 377
    :goto_2
    if-ge v0, v3, :cond_6

    .line 378
    iget-object v4, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->i:Lcom/yingyonghui/market/n;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/yingyonghui/market/n;->add(Ljava/lang/Object;)V

    .line 377
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 381
    :cond_6
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->i:Lcom/yingyonghui/market/n;

    invoke-virtual {v0}, Lcom/yingyonghui/market/n;->notifyDataSetChanged()V

    goto :goto_0

    .line 400
    :cond_7
    const/16 v3, 0x65

    if-ne v1, v3, :cond_4

    .line 402
    iget-object v1, v0, Lcom/yingyonghui/market/online/b;->h:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 403
    array-length v3, v1

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 404
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 405
    invoke-static {}, Lcom/yingyonghui/market/util/ab;->a()Lcom/yingyonghui/market/util/ab;

    iget-object v0, v0, Lcom/yingyonghui/market/online/b;->e:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/yingyonghui/market/util/ab;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 407
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->i:Lcom/yingyonghui/market/n;

    if-eqz v0, :cond_4

    .line 408
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->i:Lcom/yingyonghui/market/n;

    invoke-virtual {v0}, Lcom/yingyonghui/market/n;->notifyDataSetChanged()V

    goto :goto_1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 166
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 167
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 176
    :cond_0
    invoke-super {p0, p1}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 169
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 170
    const-class v1, Lcom/yingyonghui/market/ActivityTab4Search;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 171
    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListAppRecommend;->startActivity(Landroid/content/Intent;)V

    .line 172
    const/4 v0, 0x1

    goto :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x54
        :pswitch_0
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 430
    invoke-super {p0, p1, p2, p3}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 432
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 433
    if-ne p2, v3, :cond_0

    .line 434
    if-nez p3, :cond_1

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 438
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 439
    const-string v0, "position"

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 441
    if-eq v5, v3, :cond_0

    .line 445
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->i:Lcom/yingyonghui/market/n;

    invoke-virtual {v0, v5}, Lcom/yingyonghui/market/n;->getItemId(I)J

    move-result-wide v6

    long-to-int v6, v6

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->i:Lcom/yingyonghui/market/n;

    invoke-virtual {v0}, Lcom/yingyonghui/market/n;->getCount()I

    move-result v7

    move v3, v2

    :goto_1
    if-ge v3, v7, :cond_5

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->i:Lcom/yingyonghui/market/n;

    invoke-virtual {v0, v3}, Lcom/yingyonghui/market/n;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/q;

    iget v8, v0, Lcom/yingyonghui/market/model/q;->e:I

    if-ne v8, v6, :cond_4

    iget v0, v0, Lcom/yingyonghui/market/model/q;->n:I

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_2
    if-nez v0, :cond_0

    .line 449
    const-string v0, "select"

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 450
    if-ltz v5, :cond_0

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->i:Lcom/yingyonghui/market/n;

    invoke-virtual {v1}, Lcom/yingyonghui/market/n;->getCount()I

    move-result v1

    if-ge v5, v1, :cond_0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->j:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->i:Lcom/yingyonghui/market/n;

    invoke-virtual {v2, v5}, Lcom/yingyonghui/market/n;->getItemId(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->i:Lcom/yingyonghui/market/n;

    invoke-virtual {v0}, Lcom/yingyonghui/market/n;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityListAppRecommend;->b()V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 445
    goto :goto_2

    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2

    .line 450
    :cond_6
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->j:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->j:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method

.method public onClick(Landroid/view/View;)V
    .locals 13
    .parameter

    .prologue
    .line 265
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->d:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 266
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->i:Lcom/yingyonghui/market/n;

    invoke-virtual {v0}, Lcom/yingyonghui/market/n;->getCount()I

    move-result v2

    .line 267
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 268
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->i:Lcom/yingyonghui/market/n;

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/n;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/q;

    iget v0, v0, Lcom/yingyonghui/market/model/q;->n:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    .line 269
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->j:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->i:Lcom/yingyonghui/market/n;

    invoke-virtual {v4, v1}, Lcom/yingyonghui/market/n;->getItemId(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->i:Lcom/yingyonghui/market/n;

    invoke-virtual {v0}, Lcom/yingyonghui/market/n;->notifyDataSetChanged()V

    .line 267
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 274
    :cond_1
    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityListAppRecommend;->b()V

    .line 276
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->d:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->e:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 292
    :cond_2
    :goto_1
    return-void

    .line 278
    :cond_3
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->e:Landroid/widget/Button;

    if-ne p1, v0, :cond_5

    .line 279
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->j:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 280
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->j:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 281
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->i:Lcom/yingyonghui/market/n;

    invoke-virtual {v0}, Lcom/yingyonghui/market/n;->notifyDataSetChanged()V

    .line 284
    :cond_4
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->e:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->d:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->l:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->l:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 289
    :cond_5
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->f:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 290
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->j:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_7

    const v0, 0x7f090097

    invoke-static {p0, v0}, Lcom/yingyonghui/market/util/GlobalUtil;->b(Landroid/content/Context;I)V

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->j:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/16 v1, 0x1e

    if-le v0, v1, :cond_8

    const v0, 0x7f09001d

    invoke-static {p0, v0}, Lcom/yingyonghui/market/util/GlobalUtil;->b(Landroid/content/Context;I)V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->j:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_9
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->i:Lcom/yingyonghui/market/n;

    invoke-virtual {v0, v12}, Lcom/yingyonghui/market/n;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/yingyonghui/market/model/q;

    iget-object v0, v10, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    iget-object v1, v10, Lcom/yingyonghui/market/model/q;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityListAppRecommend;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/yingyonghui/market/provider/k;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/yingyonghui/market/provider/k;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/yingyonghui/market/provider/k;->d()Lcom/yingyonghui/market/provider/m;

    move-result-object v2

    sget-object v3, Lcom/yingyonghui/market/provider/m;->b:Lcom/yingyonghui/market/provider/m;

    if-eq v2, v3, :cond_a

    sget-object v3, Lcom/yingyonghui/market/provider/m;->h:Lcom/yingyonghui/market/provider/m;

    if-ne v2, v3, :cond_b

    :cond_a
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityListAppRecommend;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090063

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yingyonghui/market/util/GlobalUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    sget-object v1, Lcom/yingyonghui/market/provider/m;->d:Lcom/yingyonghui/market/provider/m;

    if-eq v2, v1, :cond_c

    sget-object v1, Lcom/yingyonghui/market/provider/m;->j:Lcom/yingyonghui/market/provider/m;

    if-ne v2, v1, :cond_12

    :cond_c
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityListAppRecommend;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/provider/k;->a(Landroid/content/ContentResolver;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v0, v10, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/yingyonghui/market/util/GlobalUtil;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    :cond_d
    sget-object v1, Lcom/yingyonghui/market/provider/m;->j:Lcom/yingyonghui/market/provider/m;

    if-eq v2, v1, :cond_e

    sget-object v1, Lcom/yingyonghui/market/provider/m;->k:Lcom/yingyonghui/market/provider/m;

    if-ne v2, v1, :cond_11

    :cond_e
    sget-object v1, Lcom/yingyonghui/market/provider/m;->l:Lcom/yingyonghui/market/provider/m;

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/provider/k;->a(Lcom/yingyonghui/market/provider/m;)V

    :goto_4
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityListAppRecommend;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/provider/k;->b(Landroid/content/ContentResolver;)V

    :cond_f
    :goto_5
    if-eqz v10, :cond_10

    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityListAppRecommend;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yingyonghui/market/util/GlobalUtil;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iget v0, v10, Lcom/yingyonghui/market/model/q;->n:I

    invoke-static {v0}, Lcom/yingyonghui/market/util/GlobalUtil;->a(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {p0}, Lcom/yingyonghui/market/util/t;->a(Landroid/content/Context;)Lcom/yingyonghui/market/util/t;

    move-result-object v0

    iget-object v1, v10, Lcom/yingyonghui/market/model/q;->g:Ljava/lang/String;

    iget v2, v10, Lcom/yingyonghui/market/model/q;->e:I

    iget-object v3, v10, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    iget-object v4, v10, Lcom/yingyonghui/market/model/q;->i:Ljava/lang/String;

    iget v5, v10, Lcom/yingyonghui/market/model/q;->o:I

    iget-object v6, v10, Lcom/yingyonghui/market/model/q;->G:Ljava/lang/String;

    iget-object v9, v10, Lcom/yingyonghui/market/model/q;->f:Ljava/lang/String;

    invoke-virtual/range {v0 .. v9}, Lcom/yingyonghui/market/util/t;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    iget v0, v10, Lcom/yingyonghui/market/model/q;->n:I

    invoke-static {v0}, Lcom/yingyonghui/market/util/GlobalUtil;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityListAppRecommend;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->p:Lcom/yingyonghui/market/log/m;

    const-string v2, ""

    iget v4, v10, Lcom/yingyonghui/market/model/q;->e:I

    move v3, v12

    invoke-static/range {v0 .. v5}, Lcom/yingyonghui/market/log/l;->a(Landroid/content/Context;Lcom/yingyonghui/market/log/m;Ljava/lang/String;IILjava/lang/String;)V

    goto/16 :goto_3

    :cond_11
    sget-object v1, Lcom/yingyonghui/market/provider/m;->g:Lcom/yingyonghui/market/provider/m;

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/provider/k;->a(Lcom/yingyonghui/market/provider/m;)V

    goto :goto_4

    :cond_12
    sget-object v0, Lcom/yingyonghui/market/provider/m;->m:Lcom/yingyonghui/market/provider/m;

    if-eq v2, v0, :cond_9

    sget-object v0, Lcom/yingyonghui/market/provider/m;->e:Lcom/yingyonghui/market/provider/m;

    if-eq v2, v0, :cond_9

    sget-object v0, Lcom/yingyonghui/market/provider/m;->k:Lcom/yingyonghui/market/provider/m;

    if-eq v2, v0, :cond_9

    goto :goto_5
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 84
    invoke-super {p0, p1}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "checkbox_screen_lock"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {p0, v2}, Lcom/yingyonghui/market/ActivityListAppRecommend;->setRequestedOrientation(I)V

    .line 92
    :goto_0
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityListAppRecommend;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setFormat(I)V

    .line 94
    if-nez p1, :cond_4

    .line 95
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityListAppRecommend;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 96
    if-eqz v1, :cond_2

    const-string v0, "_id"

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->n:I

    .line 97
    if-eqz v1, :cond_3

    const-string v0, "label"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->o:Ljava/lang/String;

    .line 103
    :goto_3
    invoke-virtual {p0, v2}, Lcom/yingyonghui/market/ActivityListAppRecommend;->requestWindowFeature(I)Z

    .line 104
    const v0, 0x103000a

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListAppRecommend;->setTheme(I)V

    .line 106
    const v0, 0x7f03003e

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListAppRecommend;->setContentView(I)V

    .line 107
    const v0, 0x7f0b0059

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListAppRecommend;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yingyonghui/market/ee;

    invoke-direct {v1, p0}, Lcom/yingyonghui/market/ee;-><init>(Lcom/yingyonghui/market/ActivityListAppRecommend;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b005b

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListAppRecommend;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b005c

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListAppRecommend;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->l:Landroid/widget/TextView;

    const v0, 0x7f0b002b

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListAppRecommend;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->g:Landroid/view/View;

    const v1, 0x7f0b00e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->d:Landroid/widget/Button;

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->d:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->g:Landroid/view/View;

    const v1, 0x7f0b00e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->e:Landroid/widget/Button;

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->g:Landroid/view/View;

    const v1, 0x7f0b0031

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0069

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListAppRecommend;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->c:Landroid/view/View;

    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListAppRecommend;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->h:Landroid/widget/ListView;

    invoke-static {}, Lcom/yingyonghui/market/util/q;->a()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->h:Landroid/widget/ListView;

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

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->h:Landroid/widget/ListView;

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
    :goto_4
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->t:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030012

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->k:Landroid/view/View;

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->h:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->h:Landroid/widget/ListView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(I)V

    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityListAppRecommend;->a()V

    .line 108
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/yingyonghui/market/ActivityListAppRecommend;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    new-instance v0, Lcom/yingyonghui/market/log/m;

    const-string v1, "Recommend"

    invoke-direct {v0, v1}, Lcom/yingyonghui/market/log/m;-><init>(Ljava/lang/String;)V

    const-string v1, "categoryId"

    iget v2, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->n:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yingyonghui/market/log/m;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/yingyonghui/market/log/m;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->p:Lcom/yingyonghui/market/log/m;

    .line 111
    return-void

    .line 89
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListAppRecommend;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 96
    :cond_2
    const/4 v0, -0x1

    goto/16 :goto_1

    .line 97
    :cond_3
    const-string v0, ""

    goto/16 :goto_2

    .line 99
    :cond_4
    const-string v0, "_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->n:I

    .line 100
    const-string v0, "label"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->o:Ljava/lang/String;

    goto/16 :goto_3

    .line 107
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter

    .prologue
    .line 142
    invoke-static {p1}, Lcom/yingyonghui/market/util/p;->a(Landroid/view/Menu;)Z

    .line 143
    invoke-super {p0, p1}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->onDestroy()V

    .line 137
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListAppRecommend;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 138
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 297
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 298
    const-class v0, Lcom/yingyonghui/market/ActivityDetailApp;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    const-string v0, "preinstall"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 302
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/q;

    .line 303
    if-eqz v0, :cond_0

    .line 304
    const-string v2, "_id"

    iget v3, v0, Lcom/yingyonghui/market/model/q;->e:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 305
    const-string v2, "position"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 306
    const-string v2, "title"

    iget-object v3, v0, Lcom/yingyonghui/market/model/q;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    const-string v2, "author"

    iget-object v3, v0, Lcom/yingyonghui/market/model/q;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    const-string v2, "rating"

    iget v3, v0, Lcom/yingyonghui/market/model/q;->l:F

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 309
    const-string v2, "price"

    iget v3, v0, Lcom/yingyonghui/market/model/q;->k:F

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 310
    const-string v2, "installed"

    iget v3, v0, Lcom/yingyonghui/market/model/q;->n:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 311
    const-string v2, "pkgName"

    iget-object v3, v0, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    const-string v2, "size"

    iget v3, v0, Lcom/yingyonghui/market/model/q;->o:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 313
    const-string v2, "versionCode"

    iget v3, v0, Lcom/yingyonghui/market/model/q;->s:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 314
    const-string v2, "from"

    iget-object v3, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->p:Lcom/yingyonghui/market/log/m;

    const-string v4, "index"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/yingyonghui/market/log/m;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/yingyonghui/market/log/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yingyonghui/market/log/m;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2}, Lcom/yingyonghui/market/ActivityListAppRecommend;->startActivityForResult(Landroid/content/Intent;I)V

    .line 318
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityListAppRecommend;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->p:Lcom/yingyonghui/market/log/m;

    const-string v3, ""

    iget v0, v0, Lcom/yingyonghui/market/model/q;->e:I

    invoke-static {v1, v2, v3, p3, v0}, Lcom/yingyonghui/market/log/l;->a(Landroid/content/Context;Lcom/yingyonghui/market/log/m;Ljava/lang/String;II)V

    .line 320
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 148
    invoke-static {p0, p1}, Lcom/yingyonghui/market/util/p;->a(Landroid/app/Activity;Landroid/view/MenuItem;)Z

    .line 149
    invoke-super {p0, p1}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 130
    invoke-super {p0}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->onPause()V

    .line 131
    invoke-static {p0}, Lcom/a/a/c;->a(Landroid/content/Context;)V

    .line 132
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 115
    invoke-super {p0}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->onResume()V

    .line 116
    invoke-static {p0}, Lcom/a/a/c;->b(Landroid/content/Context;)V

    .line 118
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "checkbox_screen_lock"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListAppRecommend;->setRequestedOrientation(I)V

    .line 123
    :goto_0
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->i:Lcom/yingyonghui/market/n;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->i:Lcom/yingyonghui/market/n;

    invoke-virtual {v0}, Lcom/yingyonghui/market/n;->notifyDataSetChanged()V

    .line 126
    :cond_0
    return-void

    .line 121
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListAppRecommend;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 159
    const-string v0, "_id"

    iget v1, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->n:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 160
    const-string v0, "label"

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListAppRecommend;->o:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-super {p0, p1}, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 162
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method
