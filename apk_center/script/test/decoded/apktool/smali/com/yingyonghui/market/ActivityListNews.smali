.class public Lcom/yingyonghui/market/ActivityListNews;
.super Lcom/yingyonghui/market/HttpServiceSupportForListActivity;
.source "ActivityListNews.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static c:Ljava/util/ArrayList;

.field private static p:Z


# instance fields
.field private d:Landroid/widget/ListView;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Lcom/yingyonghui/market/ag;

.field private h:I

.field private i:Ljava/util/concurrent/ConcurrentHashMap;

.field private j:Ljava/util/HashSet;

.field private k:Z

.field private l:Lcom/yingyonghui/market/log/m;

.field private m:Landroid/content/BroadcastReceiver;

.field private n:Landroid/widget/AbsListView$OnScrollListener;

.field private o:I

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/yingyonghui/market/ActivityListNews;->c:Ljava/util/ArrayList;

    .line 332
    const/4 v0, 0x0

    sput-boolean v0, Lcom/yingyonghui/market/ActivityListNews;->p:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Lcom/yingyonghui/market/HttpServiceSupportForListActivity;-><init>()V

    .line 54
    iput v1, p0, Lcom/yingyonghui/market/ActivityListNews;->h:I

    .line 55
    iput-object v2, p0, Lcom/yingyonghui/market/ActivityListNews;->i:Ljava/util/concurrent/ConcurrentHashMap;

    .line 56
    iput-object v2, p0, Lcom/yingyonghui/market/ActivityListNews;->j:Ljava/util/HashSet;

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yingyonghui/market/ActivityListNews;->k:Z

    .line 59
    iput-object v2, p0, Lcom/yingyonghui/market/ActivityListNews;->l:Lcom/yingyonghui/market/log/m;

    .line 104
    new-instance v0, Lcom/yingyonghui/market/bi;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/bi;-><init>(Lcom/yingyonghui/market/ActivityListNews;)V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListNews;->m:Landroid/content/BroadcastReceiver;

    .line 169
    new-instance v0, Lcom/yingyonghui/market/bh;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/bh;-><init>(Lcom/yingyonghui/market/ActivityListNews;)V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListNews;->n:Landroid/widget/AbsListView$OnScrollListener;

    .line 331
    iput v1, p0, Lcom/yingyonghui/market/ActivityListNews;->o:I

    .line 334
    iput-boolean v1, p0, Lcom/yingyonghui/market/ActivityListNews;->q:Z

    .line 380
    return-void
.end method

.method static synthetic a()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/yingyonghui/market/ActivityListNews;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 278
    sget-object v0, Lcom/yingyonghui/market/ActivityListNews;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 279
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 281
    :goto_0
    if-ge v2, v3, :cond_1

    .line 282
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/g;

    .line 283
    if-eqz v0, :cond_0

    .line 284
    sget-object v4, Lcom/yingyonghui/market/ActivityListNews;->c:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/yingyonghui/market/model/g;->a:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListNews;->g:Lcom/yingyonghui/market/ag;

    if-nez v0, :cond_7

    .line 290
    new-instance v0, Lcom/yingyonghui/market/ag;

    invoke-direct {v0, p0, p0, p1}, Lcom/yingyonghui/market/ag;-><init>(Lcom/yingyonghui/market/ActivityListNews;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListNews;->g:Lcom/yingyonghui/market/ag;

    .line 291
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListNews;->d:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityListNews;->g:Lcom/yingyonghui/market/ag;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 301
    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 302
    iget v0, p0, Lcom/yingyonghui/market/ActivityListNews;->o:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/yingyonghui/market/ActivityListNews;->o:I

    .line 305
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0xa

    if-ge v0, v2, :cond_5

    .line 306
    :cond_4
    const/4 v0, 0x1

    sput-boolean v0, Lcom/yingyonghui/market/ActivityListNews;->p:Z

    .line 307
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListNews;->d:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 308
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListNews;->d:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityListNews;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 312
    :cond_5
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListNews;->f:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListNews;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 314
    iput-boolean v1, p0, Lcom/yingyonghui/market/ActivityListNews;->q:Z

    .line 316
    invoke-static {}, Lcom/yingyonghui/market/ActivityDetailNews;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 317
    invoke-static {v1}, Lcom/yingyonghui/market/ActivityDetailNews;->a(Z)V

    .line 318
    new-instance v0, Landroid/content/Intent;

    const-string v1, "request_news_list_complete"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListNews;->sendBroadcast(Landroid/content/Intent;)V

    .line 322
    :cond_6
    return-void

    .line 292
    :cond_7
    if-eqz p1, :cond_2

    .line 293
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v0, v1

    .line 294
    :goto_2
    if-ge v0, v2, :cond_8

    .line 295
    iget-object v3, p0, Lcom/yingyonghui/market/ActivityListNews;->g:Lcom/yingyonghui/market/ag;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yingyonghui/market/ag;->add(Ljava/lang/Object;)V

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 298
    :cond_8
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListNews;->g:Lcom/yingyonghui/market/ag;

    invoke-virtual {v0}, Lcom/yingyonghui/market/ag;->notifyDataSetChanged()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/yingyonghui/market/ActivityListNews;)Z
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/yingyonghui/market/ActivityListNews;->k:Z

    return v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 214
    sget-object v1, Lcom/yingyonghui/market/ActivityListNews;->c:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-object v0

    .line 217
    :cond_1
    sget-object v1, Lcom/yingyonghui/market/ActivityListNews;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 218
    sget-object v2, Lcom/yingyonghui/market/ActivityListNews;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_0

    if-lez v1, :cond_0

    .line 221
    sget-object v0, Lcom/yingyonghui/market/ActivityListNews;->c:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic b(Lcom/yingyonghui/market/ActivityListNews;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListNews;->i:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    .line 150
    invoke-static {}, Lcom/yingyonghui/market/online/e;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 151
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListNews;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListNews;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 153
    const/4 v0, 0x0

    iput v0, p0, Lcom/yingyonghui/market/ActivityListNews;->h:I

    .line 156
    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 157
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/g;

    .line 158
    iget-object v3, p0, Lcom/yingyonghui/market/ActivityListNews;->i:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, v0, Lcom/yingyonghui/market/model/g;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v3, p0, Lcom/yingyonghui/market/ActivityListNews;->j:Ljava/util/HashSet;

    iget-object v0, v0, Lcom/yingyonghui/market/model/g;->h:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListNews;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    iput v0, p0, Lcom/yingyonghui/market/ActivityListNews;->h:I

    .line 163
    invoke-direct {p0, v1}, Lcom/yingyonghui/market/ActivityListNews;->a(Ljava/util/ArrayList;)V

    .line 167
    :goto_1
    return-void

    .line 165
    :cond_2
    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityListNews;->c()V

    goto :goto_1
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 227
    sget-object v1, Lcom/yingyonghui/market/ActivityListNews;->c:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-object v0

    .line 231
    :cond_1
    sget-object v1, Lcom/yingyonghui/market/ActivityListNews;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 232
    sget-object v2, Lcom/yingyonghui/market/ActivityListNews;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    if-gez v1, :cond_3

    .line 233
    :cond_2
    sget-boolean v1, Lcom/yingyonghui/market/ActivityListNews;->p:Z

    if-nez v1, :cond_0

    .line 234
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityDetailNews;->a(Z)V

    goto :goto_0

    .line 239
    :cond_3
    sget-object v0, Lcom/yingyonghui/market/ActivityListNews;->c:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private c()V
    .locals 5

    .prologue
    .line 337
    sget-boolean v0, Lcom/yingyonghui/market/ActivityListNews;->p:Z

    if-eqz v0, :cond_1

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    iget-boolean v0, p0, Lcom/yingyonghui/market/ActivityListNews;->q:Z

    if-nez v0, :cond_0

    .line 341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yingyonghui/market/ActivityListNews;->q:Z

    .line 344
    iget-boolean v0, p0, Lcom/yingyonghui/market/ActivityListNews;->k:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListNews;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 345
    const/16 v0, 0x1e

    .line 346
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/yingyonghui/market/ActivityListNews;->k:Z

    .line 351
    :goto_1
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListNews;->a:Lcom/yingyonghui/market/online/e;

    iget v2, p0, Lcom/yingyonghui/market/ActivityListNews;->o:I

    iget v3, p0, Lcom/yingyonghui/market/ActivityListNews;->h:I

    sub-int/2addr v2, v3

    const/16 v3, 0x384

    iget-object v4, p0, Lcom/yingyonghui/market/ActivityListNews;->b:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/yingyonghui/market/online/e;->c(IIILandroid/os/Handler;)V

    goto :goto_0

    .line 348
    :cond_2
    const/16 v0, 0xa

    goto :goto_1
.end method

.method static synthetic c(Lcom/yingyonghui/market/ActivityListNews;)Z
    .locals 1
    .parameter

    .prologue
    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yingyonghui/market/ActivityListNews;->k:Z

    return v0
.end method

.method static synthetic d(Lcom/yingyonghui/market/ActivityListNews;)I
    .locals 1
    .parameter

    .prologue
    .line 42
    iget v0, p0, Lcom/yingyonghui/market/ActivityListNews;->h:I

    return v0
.end method

.method static synthetic e(Lcom/yingyonghui/market/ActivityListNews;)Lcom/yingyonghui/market/ag;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListNews;->g:Lcom/yingyonghui/market/ag;

    return-object v0
.end method

.method static synthetic f(Lcom/yingyonghui/market/ActivityListNews;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityListNews;->c()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x385

    .line 195
    invoke-static {}, Lcom/yingyonghui/market/util/ab;->a()Lcom/yingyonghui/market/util/ab;

    invoke-static {p1}, Lcom/yingyonghui/market/util/ab;->a(Ljava/lang/String;)Lcom/yingyonghui/market/model/m;

    move-result-object v0

    .line 196
    iget-object v0, v0, Lcom/yingyonghui/market/model/m;->a:Landroid/graphics/drawable/Drawable;

    .line 197
    if-nez v0, :cond_0

    .line 198
    invoke-static {}, Lcom/yingyonghui/market/util/ab;->a()Lcom/yingyonghui/market/util/ab;

    invoke-static {p0}, Lcom/yingyonghui/market/util/ab;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListNews;->j:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListNews;->a:Lcom/yingyonghui/market/online/e;

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityListNews;->b:Landroid/os/Handler;

    invoke-virtual {v1, p1, v3, v2}, Lcom/yingyonghui/market/online/e;->d(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 202
    :cond_0
    :goto_0
    return-object v0

    .line 199
    :cond_1
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListNews;->a:Lcom/yingyonghui/market/online/e;

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityListNews;->b:Landroid/os/Handler;

    invoke-virtual {v1, p1, v3, v2}, Lcom/yingyonghui/market/online/e;->e(Ljava/lang/String;ILandroid/os/Handler;)V

    goto :goto_0
.end method

.method protected final a(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 247
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/yingyonghui/market/online/b;

    .line 248
    iget v1, v0, Lcom/yingyonghui/market/online/b;->c:I

    .line 249
    const/16 v2, 0x384

    if-ne v1, v2, :cond_3

    .line 250
    iget-object v0, v0, Lcom/yingyonghui/market/online/b;->h:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/yingyonghui/market/online/e;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 252
    if-eqz v1, :cond_1

    .line 253
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/g;

    .line 255
    iget-object v3, p0, Lcom/yingyonghui/market/ActivityListNews;->i:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, v0, Lcom/yingyonghui/market/model/g;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 257
    iget v0, p0, Lcom/yingyonghui/market/ActivityListNews;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/yingyonghui/market/ActivityListNews;->h:I

    .line 258
    iget v0, p0, Lcom/yingyonghui/market/ActivityListNews;->h:I

    if-gez v0, :cond_0

    .line 259
    iput v4, p0, Lcom/yingyonghui/market/ActivityListNews;->h:I

    goto :goto_0

    .line 265
    :cond_1
    invoke-direct {p0, v1}, Lcom/yingyonghui/market/ActivityListNews;->a(Ljava/util/ArrayList;)V

    .line 275
    :cond_2
    :goto_1
    return-void

    .line 266
    :cond_3
    const/16 v2, 0x385

    if-ne v1, v2, :cond_2

    .line 267
    iget-object v1, v0, Lcom/yingyonghui/market/online/b;->h:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 268
    array-length v2, v1

    invoke-static {v1, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 269
    if-eqz v1, :cond_2

    .line 270
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 271
    invoke-static {}, Lcom/yingyonghui/market/util/ab;->a()Lcom/yingyonghui/market/util/ab;

    iget-object v0, v0, Lcom/yingyonghui/market/online/b;->e:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/yingyonghui/market/util/ab;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 272
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListNews;->g:Lcom/yingyonghui/market/ag;

    invoke-virtual {v0}, Lcom/yingyonghui/market/ag;->notifyDataSetChanged()V

    goto :goto_1
.end method

.method protected final b(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 326
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yingyonghui/market/ActivityListNews;->q:Z

    .line 327
    invoke-super {p0, p1}, Lcom/yingyonghui/market/HttpServiceSupportForListActivity;->b(Landroid/os/Message;)V

    .line 328
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/yingyonghui/market/HttpServiceSupportForListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f030011

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListNews;->setContentView(I)V

    .line 66
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListNews;->i:Ljava/util/concurrent/ConcurrentHashMap;

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListNews;->j:Ljava/util/HashSet;

    .line 69
    const v0, 0x7f0b0069

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListNews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListNews;->f:Landroid/view/View;

    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityListNews;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListNews;->d:Landroid/widget/ListView;

    invoke-static {}, Lcom/yingyonghui/market/util/q;->a()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListNews;->d:Landroid/widget/ListView;

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

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListNews;->d:Landroid/widget/ListView;

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

    const v1, 0x7f030012

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListNews;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListNews;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListNews;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListNews;->d:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListNews;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListNews;->n:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityListNews;->b()V

    .line 70
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "request_more_news_list"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListNews;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/yingyonghui/market/ActivityListNews;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 72
    new-instance v0, Lcom/yingyonghui/market/log/m;

    const-string v1, "NewsList"

    invoke-direct {v0, v1}, Lcom/yingyonghui/market/log/m;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListNews;->l:Lcom/yingyonghui/market/log/m;

    .line 73
    return-void

    .line 69
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Lcom/yingyonghui/market/HttpServiceSupportForListActivity;->onDestroy()V

    .line 78
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListNews;->g:Lcom/yingyonghui/market/ag;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListNews;->g:Lcom/yingyonghui/market/ag;

    invoke-virtual {v0}, Lcom/yingyonghui/market/ag;->clear()V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListNews;->d:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListNews;->d:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListNews;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListNews;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 86
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 358
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/g;

    .line 359
    if-eqz v0, :cond_0

    .line 360
    iget-object v0, v0, Lcom/yingyonghui/market/model/g;->a:Ljava/lang/String;

    .line 361
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 362
    const-class v2, Lcom/yingyonghui/market/ActivityDetailNews;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    const-string v2, "url"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    invoke-virtual {p0, v1}, Lcom/yingyonghui/market/ActivityListNews;->startActivity(Landroid/content/Intent;)V

    .line 367
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityListNews;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityListNews;->l:Lcom/yingyonghui/market/log/m;

    const-string v3, ""

    invoke-static {v1, v2, v3, p3, v0}, Lcom/yingyonghui/market/log/l;->a(Landroid/content/Context;Lcom/yingyonghui/market/log/m;Ljava/lang/String;ILjava/lang/String;)V

    .line 369
    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method
