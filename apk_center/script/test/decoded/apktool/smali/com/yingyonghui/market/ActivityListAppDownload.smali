.class public Lcom/yingyonghui/market/ActivityListAppDownload;
.super Lcom/yingyonghui/market/AbsActivityAppListManager;
.source "ActivityListAppDownload.java"


# static fields
.field private static final r:[Ljava/lang/String;


# instance fields
.field protected c:I

.field private f:Lcom/yingyonghui/market/ex;

.field private g:Landroid/content/pm/PackageManager;

.field private h:Lcom/yingyonghui/market/be;

.field private i:Lcom/yingyonghui/market/bd;

.field private j:Lcom/yingyonghui/market/de;

.field private k:Landroid/view/View;

.field private l:Ljava/util/ArrayList;

.field private m:Ljava/util/ArrayList;

.field private n:Ljava/util/ArrayList;

.field private o:Z

.field private p:Z

.field private q:Landroid/os/Handler;

.field private final s:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 155
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "current_bytes"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "total_bytes"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "uri"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "notificationextras"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "description"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "control"

    aput-object v2, v0, v1

    sput-object v0, Lcom/yingyonghui/market/ActivityListAppDownload;->r:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/yingyonghui/market/AbsActivityAppListManager;-><init>()V

    .line 82
    new-instance v0, Lcom/yingyonghui/market/m;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/m;-><init>(Lcom/yingyonghui/market/ActivityListAppDownload;)V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->q:Landroid/os/Handler;

    .line 322
    new-instance v0, Lcom/yingyonghui/market/d;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/d;-><init>(Lcom/yingyonghui/market/ActivityListAppDownload;)V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->s:Landroid/content/BroadcastReceiver;

    .line 893
    return-void
.end method

.method private a()Ljava/util/ArrayList;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 356
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 358
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityListAppDownload;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/yingyonghui/downloads/g;->a:Landroid/net/Uri;

    sget-object v2, Lcom/yingyonghui/market/ActivityListAppDownload;->r:[Ljava/lang/String;

    const-string v3, "(status >= \'100\') AND (status <= \'199\')"

    const/4 v4, 0x0

    const-string v5, "title"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 361
    if-eqz v0, :cond_3

    .line 362
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 364
    new-instance v1, Lcom/yingyonghui/market/model/q;

    invoke-direct {v1}, Lcom/yingyonghui/market/model/q;-><init>()V

    .line 365
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yingyonghui/market/model/q;->i:Ljava/lang/String;

    .line 366
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/yingyonghui/market/model/q;->M:I

    .line 367
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/yingyonghui/market/model/q;->L:I

    .line 368
    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/yingyonghui/market/model/q;->o:I

    .line 369
    const/4 v2, 0x4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 370
    const-string v3, "/e/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 371
    if-lez v3, :cond_0

    .line 372
    const-string v4, "/e/"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    .line 373
    const-string v4, "/"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 374
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yingyonghui/market/util/m;->a(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/yingyonghui/market/model/q;->e:I

    .line 376
    :cond_0
    const/4 v2, 0x5

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    .line 377
    const/4 v2, 0x6

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yingyonghui/market/model/q;->f:Ljava/lang/String;

    .line 378
    iput-boolean v7, v1, Lcom/yingyonghui/market/model/q;->x:Z

    .line 379
    iget v2, v1, Lcom/yingyonghui/market/model/q;->o:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 380
    const-string v2, ""

    iput-object v2, v1, Lcom/yingyonghui/market/model/q;->p:Ljava/lang/String;

    .line 384
    :goto_1
    const/4 v2, 0x7

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/yingyonghui/market/model/q;->N:I

    .line 385
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    iget-object v2, v1, Lcom/yingyonghui/market/model/q;->f:Ljava/lang/String;

    iget-object v1, v1, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/yingyonghui/market/ActivityListAppDownload;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 382
    :cond_1
    iget v2, v1, Lcom/yingyonghui/market/model/q;->o:I

    int-to-long v2, v2

    invoke-static {p0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yingyonghui/market/model/q;->p:Ljava/lang/String;

    goto :goto_1

    .line 388
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 391
    :cond_3
    return-object v6
.end method

.method static synthetic a(Lcom/yingyonghui/market/ActivityListAppDownload;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->n:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/yingyonghui/market/ActivityListAppDownload;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->l:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic b(Lcom/yingyonghui/market/ActivityListAppDownload;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->m:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lcom/yingyonghui/market/ActivityListAppDownload;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->l:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/yingyonghui/market/ActivityListAppDownload;)Lcom/yingyonghui/market/ex;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->f:Lcom/yingyonghui/market/ex;

    return-object v0
.end method

.method static synthetic e(Lcom/yingyonghui/market/ActivityListAppDownload;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->k:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/yingyonghui/market/ActivityListAppDownload;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityListAppDownload;->a()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/yingyonghui/market/ActivityListAppDownload;)V
    .locals 4
    .parameter

    .prologue
    .line 60
    new-instance v0, Lcom/yingyonghui/market/fm;

    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityListAppDownload;->getParent()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yingyonghui/market/fm;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09014d

    invoke-virtual {p0, v1}, Lcom/yingyonghui/market/ActivityListAppDownload;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/fm;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x7f09014e

    invoke-virtual {p0, v1}, Lcom/yingyonghui/market/ActivityListAppDownload;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/fm;->a(Ljava/lang/CharSequence;)V

    const v1, 0x7f090150

    new-instance v2, Lcom/yingyonghui/market/c;

    invoke-direct {v2, p0}, Lcom/yingyonghui/market/c;-><init>(Lcom/yingyonghui/market/ActivityListAppDownload;)V

    invoke-virtual {v0, v1, v2}, Lcom/yingyonghui/market/fm;->a(ILcom/yingyonghui/market/cf;)Lcom/yingyonghui/market/fm;

    const v1, 0x7f090151

    new-instance v2, Lcom/yingyonghui/market/a;

    invoke-direct {v2, p0}, Lcom/yingyonghui/market/a;-><init>(Lcom/yingyonghui/market/ActivityListAppDownload;)V

    invoke-virtual {v0, v1, v2}, Lcom/yingyonghui/market/fm;->a(ILcom/yingyonghui/market/l;)Lcom/yingyonghui/market/fm;

    invoke-virtual {v0}, Lcom/yingyonghui/market/fm;->show()V

    invoke-virtual {v0}, Lcom/yingyonghui/market/fm;->b()Landroid/widget/TextView;

    move-result-object v1

    const/high16 v2, 0x41a0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0}, Lcom/yingyonghui/market/fm;->a()Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic h(Lcom/yingyonghui/market/ActivityListAppDownload;)Lcom/yingyonghui/market/be;
    .locals 1
    .parameter

    .prologue
    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->h:Lcom/yingyonghui/market/be;

    return-object v0
.end method

.method static synthetic i(Lcom/yingyonghui/market/ActivityListAppDownload;)Z
    .locals 1
    .parameter

    .prologue
    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->p:Z

    return v0
.end method

.method static synthetic j(Lcom/yingyonghui/market/ActivityListAppDownload;)Z
    .locals 1
    .parameter

    .prologue
    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->o:Z

    return v0
.end method

.method static synthetic k(Lcom/yingyonghui/market/ActivityListAppDownload;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->q:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic l(Lcom/yingyonghui/market/ActivityListAppDownload;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->g:Landroid/content/pm/PackageManager;

    return-object v0
.end method


# virtual methods
.method protected final a(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 340
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/yingyonghui/market/online/b;

    .line 341
    iget v1, v0, Lcom/yingyonghui/market/online/b;->c:I

    .line 342
    const/16 v2, 0x63

    if-ne v1, v2, :cond_0

    .line 343
    iget-object v1, v0, Lcom/yingyonghui/market/online/b;->h:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 344
    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 345
    if-eqz v1, :cond_0

    .line 346
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 347
    invoke-static {}, Lcom/yingyonghui/market/util/ab;->a()Lcom/yingyonghui/market/util/ab;

    iget-object v0, v0, Lcom/yingyonghui/market/online/b;->e:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/yingyonghui/market/util/ab;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 348
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->f:Lcom/yingyonghui/market/ex;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->f:Lcom/yingyonghui/market/ex;

    invoke-virtual {v0}, Lcom/yingyonghui/market/ex;->notifyDataSetChanged()V

    .line 353
    :cond_0
    return-void
.end method

.method protected final a(ZZ)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x64

    const/4 v3, 0x0

    .line 218
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListAppDownload;->a(Z)V

    .line 220
    if-eqz p1, :cond_0

    .line 221
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->m:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 222
    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityListAppDownload;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->m:Ljava/util/ArrayList;

    .line 228
    :goto_0
    if-nez p2, :cond_0

    .line 229
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->q:Landroid/os/Handler;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 233
    :cond_0
    if-eqz p2, :cond_1

    .line 234
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->h:Lcom/yingyonghui/market/be;

    if-nez v0, :cond_3

    .line 236
    :try_start_0
    new-instance v0, Lcom/yingyonghui/market/be;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/be;-><init>(Lcom/yingyonghui/market/ActivityListAppDownload;)V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->h:Lcom/yingyonghui/market/be;

    .line 237
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->h:Lcom/yingyonghui/market/be;

    invoke-virtual {v0}, Lcom/yingyonghui/market/be;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :cond_1
    :goto_1
    return-void

    .line 224
    :cond_2
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 225
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->m:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityListAppDownload;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 241
    :cond_3
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->h:Lcom/yingyonghui/market/be;

    invoke-virtual {v0}, Lcom/yingyonghui/market/be;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->q:Landroid/os/Handler;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method protected final b()Lcom/yingyonghui/market/log/m;
    .locals 2

    .prologue
    .line 289
    new-instance v0, Lcom/yingyonghui/market/log/m;

    const-string v1, "DownloadManage"

    invoke-direct {v0, v1}, Lcom/yingyonghui/market/log/m;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected final c()V
    .locals 2

    .prologue
    .line 195
    invoke-super {p0}, Lcom/yingyonghui/market/AbsActivityAppListManager;->c()V

    .line 197
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->j:Lcom/yingyonghui/market/de;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 199
    const v0, 0x7f0b000f

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListAppDownload;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->k:Landroid/view/View;

    .line 200
    const v0, 0x7f0b00d2

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListAppDownload;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 202
    const v0, 0x7f0b00d3

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListAppDownload;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 203
    const v1, 0x7f09017f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 204
    new-instance v1, Lcom/yingyonghui/market/e;

    invoke-direct {v1, p0}, Lcom/yingyonghui/market/e;-><init>(Lcom/yingyonghui/market/ActivityListAppDownload;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 172
    invoke-super {p0, p1}, Lcom/yingyonghui/market/AbsActivityAppListManager;->onCreate(Landroid/os/Bundle;)V

    .line 173
    const v0, 0x7f030035

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListAppDownload;->setContentView(I)V

    .line 175
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityListAppDownload;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->g:Landroid/content/pm/PackageManager;

    .line 177
    new-instance v0, Lcom/yingyonghui/market/bd;

    invoke-direct {v0, p0, p0}, Lcom/yingyonghui/market/bd;-><init>(Lcom/yingyonghui/market/ActivityListAppDownload;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->i:Lcom/yingyonghui/market/bd;

    .line 178
    new-instance v0, Lcom/yingyonghui/market/de;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/de;-><init>(Lcom/yingyonghui/market/ActivityListAppDownload;)V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->j:Lcom/yingyonghui/market/de;

    .line 180
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityListAppDownload;->c()V

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->n:Ljava/util/ArrayList;

    .line 183
    new-instance v0, Lcom/yingyonghui/market/ex;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->n:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p0, v1}, Lcom/yingyonghui/market/ex;-><init>(Lcom/yingyonghui/market/ActivityListAppDownload;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->f:Lcom/yingyonghui/market/ex;

    .line 184
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->f:Lcom/yingyonghui/market/ex;

    invoke-virtual {v0, v2}, Lcom/yingyonghui/market/ex;->setNotifyOnChange(Z)V

    .line 185
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->f:Lcom/yingyonghui/market/ex;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 187
    invoke-virtual {p0, v3, v3}, Lcom/yingyonghui/market/ActivityListAppDownload;->a(ZZ)V

    .line 188
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.yingyonghui.market.DOWNLOAD_COMPLETED_2"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/yingyonghui/market/ActivityListAppDownload;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/yingyonghui/market/ActivityListAppDownload;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 190
    iput-boolean v2, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->o:Z

    .line 191
    iput-boolean v2, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->p:Z

    .line 192
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 283
    invoke-super {p0}, Lcom/yingyonghui/market/AbsActivityAppListManager;->onDestroy()V

    .line 284
    :try_start_0
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityListAppDownload;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :goto_0
    return-void

    .line 284
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 769
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/q;

    .line 770
    if-nez v0, :cond_1

    .line 781
    :cond_0
    :goto_0
    return-void

    .line 773
    :cond_1
    iget-boolean v1, v0, Lcom/yingyonghui/market/model/q;->x:Z

    if-eqz v1, :cond_2

    .line 774
    invoke-super/range {p0 .. p5}, Lcom/yingyonghui/market/AbsActivityAppListManager;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 776
    :cond_2
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->f:Lcom/yingyonghui/market/ex;

    invoke-virtual {v1, v0, p2}, Lcom/yingyonghui/market/ex;->a(Lcom/yingyonghui/market/model/q;Landroid/view/View;)V

    .line 777
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->f:Lcom/yingyonghui/market/ex;

    invoke-virtual {v0}, Lcom/yingyonghui/market/ex;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->d:Landroid/widget/ListView;

    invoke-virtual {v0, p3}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 275
    invoke-super {p0}, Lcom/yingyonghui/market/AbsActivityAppListManager;->onPause()V

    .line 276
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->i:Lcom/yingyonghui/market/bd;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->i:Lcom/yingyonghui/market/bd;

    invoke-static {v0}, Lcom/yingyonghui/market/bd;->a(Lcom/yingyonghui/market/bd;)V

    .line 279
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 249
    invoke-super {p0}, Lcom/yingyonghui/market/AbsActivityAppListManager;->onResume()V

    .line 251
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityListAppDownload;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/yingyonghui/downloads/g;->a:Landroid/net/Uri;

    iget-object v2, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->i:Lcom/yingyonghui/market/bd;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 252
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->i:Lcom/yingyonghui/market/bd;

    invoke-virtual {v0, v3}, Lcom/yingyonghui/market/bd;->onChange(Z)V

    .line 254
    iget-boolean v0, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->p:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->o:Z

    if-eqz v0, :cond_1

    .line 255
    :cond_0
    iget-boolean v0, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->p:Z

    iget-boolean v1, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->o:Z

    invoke-virtual {p0, v0, v1}, Lcom/yingyonghui/market/ActivityListAppDownload;->a(ZZ)V

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->f:Lcom/yingyonghui/market/ex;

    if-eqz v0, :cond_2

    .line 259
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->d:Landroid/widget/ListView;

    iget v1, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 260
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->f:Lcom/yingyonghui/market/ex;

    invoke-virtual {v0}, Lcom/yingyonghui/market/ex;->notifyDataSetChanged()V

    .line 262
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->f:Lcom/yingyonghui/market/ex;

    invoke-virtual {v0}, Lcom/yingyonghui/market/ex;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 263
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->k:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 269
    :cond_2
    :goto_0
    iput-boolean v3, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->p:Z

    .line 270
    iput-boolean v4, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->o:Z

    .line 271
    return-void

    .line 265
    :cond_3
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityListAppDownload;->k:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
