.class public final Lcom/yingyonghui/market/es;
.super Landroid/widget/ArrayAdapter;
.source "AdapterManagerListApp.java"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field public a:Lcom/yingyonghui/market/model/q;

.field private c:Landroid/view/LayoutInflater;

.field private d:I

.field private e:Landroid/content/Context;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Lcom/yingyonghui/market/model/q;

.field private h:Landroid/os/Handler;

.field private i:Ljava/lang/String;

.field private j:Landroid/content/pm/PackageManager;

.field private k:Ljava/util/concurrent/ConcurrentHashMap;

.field private l:Z

.field private m:Landroid/view/View$OnClickListener;

.field private n:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/yingyonghui/market/es;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yingyonghui/market/es;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p1, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 53
    iput-object v0, p0, Lcom/yingyonghui/market/es;->f:Landroid/graphics/drawable/Drawable;

    .line 55
    iput-object v0, p0, Lcom/yingyonghui/market/es;->g:Lcom/yingyonghui/market/model/q;

    .line 300
    new-instance v0, Lcom/yingyonghui/market/g;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/g;-><init>(Lcom/yingyonghui/market/es;)V

    iput-object v0, p0, Lcom/yingyonghui/market/es;->m:Landroid/view/View$OnClickListener;

    .line 368
    new-instance v0, Lcom/yingyonghui/market/f;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/f;-><init>(Lcom/yingyonghui/market/es;)V

    iput-object v0, p0, Lcom/yingyonghui/market/es;->n:Landroid/view/View$OnClickListener;

    .line 67
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/yingyonghui/market/es;->c:Landroid/view/LayoutInflater;

    .line 68
    iput-object p1, p0, Lcom/yingyonghui/market/es;->e:Landroid/content/Context;

    .line 69
    const/16 v0, 0x384

    iput v0, p0, Lcom/yingyonghui/market/es;->d:I

    .line 70
    const v0, 0x7f09017b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/es;->i:Ljava/lang/String;

    move-object v0, p1

    .line 72
    check-cast v0, Lcom/yingyonghui/market/ActivityListAppManage;

    invoke-virtual {v0}, Lcom/yingyonghui/market/ActivityListAppManage;->a()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/es;->h:Landroid/os/Handler;

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/es;->j:Landroid/content/pm/PackageManager;

    .line 75
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/yingyonghui/market/es;->k:Ljava/util/concurrent/ConcurrentHashMap;

    .line 76
    invoke-static {}, Lcom/yingyonghui/market/util/q;->a()I

    move-result v0

    const/16 v2, 0x8

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/yingyonghui/market/es;->l:Z

    .line 77
    return-void

    :cond_0
    move v0, v1

    .line 76
    goto :goto_0
.end method

.method static synthetic a(Lcom/yingyonghui/market/es;)Lcom/yingyonghui/market/model/q;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/yingyonghui/market/es;->g:Lcom/yingyonghui/market/model/q;

    return-object v0
.end method

.method static synthetic a(Lcom/yingyonghui/market/es;Lcom/yingyonghui/market/model/q;)Lcom/yingyonghui/market/model/q;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/yingyonghui/market/es;->g:Lcom/yingyonghui/market/model/q;

    return-object p1
.end method

.method private static a(Landroid/widget/TextView;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 255
    if-eqz p1, :cond_0

    .line 256
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 259
    :cond_0
    if-eqz p2, :cond_1

    .line 260
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 262
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/yingyonghui/market/es;Ljava/lang/String;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 44
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "pkgname"

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/yingyonghui/market/es;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/yingyonghui/market/provider/f;->a:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "pkgname"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    :cond_0
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "flg"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    sget-object v2, Lcom/yingyonghui/market/provider/f;->a:Landroid/net/Uri;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/yingyonghui/market/es;->e:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v2, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void

    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0
.end method

.method static synthetic b(Lcom/yingyonghui/market/es;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/yingyonghui/market/es;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/yingyonghui/market/es;)Lcom/yingyonghui/market/log/m;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/yingyonghui/market/es;->e:Landroid/content/Context;

    instance-of v0, v0, Lcom/yingyonghui/market/ActivityListApp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yingyonghui/market/es;->e:Landroid/content/Context;

    check-cast v0, Lcom/yingyonghui/market/ActivityListApp;

    invoke-virtual {v0}, Lcom/yingyonghui/market/ActivityListApp;->a()Lcom/yingyonghui/market/log/m;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yingyonghui/market/es;->e:Landroid/content/Context;

    instance-of v0, v0, Lcom/yingyonghui/market/ActivityListApp2;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yingyonghui/market/es;->e:Landroid/content/Context;

    check-cast v0, Lcom/yingyonghui/market/ActivityListApp2;

    invoke-virtual {v0}, Lcom/yingyonghui/market/ActivityListApp2;->a()Lcom/yingyonghui/market/log/m;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/yingyonghui/market/es;->e:Landroid/content/Context;

    instance-of v0, v0, Lcom/yingyonghui/market/ActivityListAppManage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yingyonghui/market/es;->e:Landroid/content/Context;

    check-cast v0, Lcom/yingyonghui/market/ActivityListAppManage;

    invoke-virtual {v0}, Lcom/yingyonghui/market/ActivityListAppManage;->f()Lcom/yingyonghui/market/log/m;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/yingyonghui/market/log/m;

    invoke-direct {v0}, Lcom/yingyonghui/market/log/m;-><init>()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/yingyonghui/market/es;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/yingyonghui/market/es;->h:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/yingyonghui/market/es;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/yingyonghui/market/es;->j:Landroid/content/pm/PackageManager;

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/yingyonghui/market/model/q;)V
    .locals 12
    .parameter

    .prologue
    .line 280
    iget-object v0, p0, Lcom/yingyonghui/market/es;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yingyonghui/market/util/GlobalUtil;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 281
    iget v0, p1, Lcom/yingyonghui/market/model/q;->n:I

    invoke-static {v0}, Lcom/yingyonghui/market/util/GlobalUtil;->a(I)Ljava/lang/String;

    move-result-object v10

    .line 283
    iget-object v0, p0, Lcom/yingyonghui/market/es;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/yingyonghui/market/util/t;->a(Landroid/content/Context;)Lcom/yingyonghui/market/util/t;

    move-result-object v0

    iget-object v1, p1, Lcom/yingyonghui/market/model/q;->g:Ljava/lang/String;

    iget v2, p1, Lcom/yingyonghui/market/model/q;->e:I

    iget-object v3, p1, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    iget-object v4, p1, Lcom/yingyonghui/market/model/q;->i:Ljava/lang/String;

    iget v5, p1, Lcom/yingyonghui/market/model/q;->o:I

    iget v6, p1, Lcom/yingyonghui/market/model/q;->E:I

    iget-object v7, p1, Lcom/yingyonghui/market/model/q;->F:Ljava/lang/String;

    iget-object v8, p1, Lcom/yingyonghui/market/model/q;->G:Ljava/lang/String;

    iget-object v11, p1, Lcom/yingyonghui/market/model/q;->f:Ljava/lang/String;

    invoke-virtual/range {v0 .. v11}, Lcom/yingyonghui/market/util/t;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/yingyonghui/market/es;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/yingyonghui/market/es;->e:Landroid/content/Context;

    const v2, 0x7f09017c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/yingyonghui/market/model/q;->i:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yingyonghui/market/util/GlobalUtil;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0}, Lcom/yingyonghui/market/es;->notifyDataSetChanged()V

    .line 286
    return-void
.end method

.method public final a(Lcom/yingyonghui/market/model/q;Landroid/view/View;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const v3, 0x7f0b0077

    .line 265
    iget-object v0, p0, Lcom/yingyonghui/market/es;->k:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/yingyonghui/market/es;->k:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 276
    :goto_0
    invoke-virtual {p0}, Lcom/yingyonghui/market/es;->notifyDataSetChanged()V

    .line 277
    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/yingyonghui/market/es;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 272
    iget-object v0, p0, Lcom/yingyonghui/market/es;->k:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
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
    .line 81
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const v9, 0x7f020052

    const/16 v8, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 101
    invoke-virtual {p0, p1}, Lcom/yingyonghui/market/es;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/q;

    .line 102
    iput-object v5, p0, Lcom/yingyonghui/market/es;->f:Landroid/graphics/drawable/Drawable;

    .line 104
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/yingyonghui/market/eb;

    if-nez v1, :cond_a

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/yingyonghui/market/es;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f030015

    invoke-virtual {v1, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 106
    new-instance v2, Lcom/yingyonghui/market/eb;

    invoke-direct {v2}, Lcom/yingyonghui/market/eb;-><init>()V

    .line 107
    const v1, 0x7f0b0077

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v2, Lcom/yingyonghui/market/eb;->l:Landroid/view/View;

    .line 108
    const v1, 0x7f0b0040

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/yingyonghui/market/eb;->a:Landroid/widget/ImageView;

    .line 109
    const v1, 0x7f0b0072

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/yingyonghui/market/eb;->b:Landroid/widget/TextView;

    .line 110
    const v1, 0x7f0b0042

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/yingyonghui/market/eb;->c:Landroid/widget/TextView;

    .line 111
    const v1, 0x7f0b0043

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/yingyonghui/market/eb;->d:Landroid/widget/TextView;

    .line 113
    const v1, 0x7f0b0076

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/yingyonghui/market/eb;->e:Landroid/widget/TextView;

    .line 115
    const v1, 0x7f0b0074

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/yingyonghui/market/eb;->f:Landroid/widget/TextView;

    .line 117
    const v1, 0x7f0b0075

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/yingyonghui/market/eb;->g:Landroid/widget/TextView;

    .line 120
    iget-object v1, v2, Lcom/yingyonghui/market/eb;->e:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/yingyonghui/market/es;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v1, v2, Lcom/yingyonghui/market/eb;->f:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/yingyonghui/market/es;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v1, v2, Lcom/yingyonghui/market/eb;->g:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/yingyonghui/market/es;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const v1, 0x7f0b0078

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v2, Lcom/yingyonghui/market/eb;->h:Landroid/view/View;

    .line 125
    const v1, 0x7f0b0041

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v2, Lcom/yingyonghui/market/eb;->i:Landroid/view/View;

    .line 126
    const v1, 0x7f0b007a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v2, Lcom/yingyonghui/market/eb;->j:Landroid/view/View;

    .line 127
    const v1, 0x7f0b0079

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v2, Lcom/yingyonghui/market/eb;->k:Landroid/view/View;

    .line 129
    iget-object v1, v2, Lcom/yingyonghui/market/eb;->h:Landroid/view/View;

    iget-object v3, p0, Lcom/yingyonghui/market/es;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v1, v2, Lcom/yingyonghui/market/eb;->i:Landroid/view/View;

    iget-object v3, p0, Lcom/yingyonghui/market/es;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v1, v2, Lcom/yingyonghui/market/eb;->j:Landroid/view/View;

    iget-object v3, p0, Lcom/yingyonghui/market/es;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v1, v2, Lcom/yingyonghui/market/eb;->k:Landroid/view/View;

    iget-object v3, p0, Lcom/yingyonghui/market/es;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 140
    :goto_0
    rem-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_b

    .line 141
    const v1, 0x7f02005c

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 146
    :goto_1
    iget-object v1, v0, Lcom/yingyonghui/market/model/q;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_c

    .line 147
    iget-object v1, v0, Lcom/yingyonghui/market/model/q;->h:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/yingyonghui/market/es;->f:Landroid/graphics/drawable/Drawable;

    .line 155
    :cond_1
    :goto_2
    iget-object v3, v2, Lcom/yingyonghui/market/eb;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/yingyonghui/market/es;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_2
    instance-of v6, v1, Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_3

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    :cond_3
    iget-boolean v1, v0, Lcom/yingyonghui/market/model/q;->P:Z

    if-eqz v1, :cond_d

    .line 158
    iget-object v1, v2, Lcom/yingyonghui/market/eb;->b:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/yingyonghui/market/model/q;->i:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v1, v2, Lcom/yingyonghui/market/eb;->c:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/yingyonghui/market/model/q;->p:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v1, v2, Lcom/yingyonghui/market/eb;->d:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/yingyonghui/market/es;->e:Landroid/content/Context;

    const v7, 0x7f090132

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v0, Lcom/yingyonghui/market/model/q;->q:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    :goto_3
    iget-object v1, p0, Lcom/yingyonghui/market/es;->k:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, v0, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 168
    iget-object v1, v2, Lcom/yingyonghui/market/eb;->l:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 173
    :goto_4
    iget-object v1, p0, Lcom/yingyonghui/market/es;->e:Landroid/content/Context;

    iget-object v3, v0, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/yingyonghui/market/provider/k;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/yingyonghui/market/provider/m;

    move-result-object v1

    .line 174
    if-nez v1, :cond_4

    .line 175
    sget-object v1, Lcom/yingyonghui/market/provider/m;->a:Lcom/yingyonghui/market/provider/m;

    .line 178
    :cond_4
    iget-object v3, v2, Lcom/yingyonghui/market/eb;->e:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    iget-object v3, v2, Lcom/yingyonghui/market/eb;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    iget-object v3, v2, Lcom/yingyonghui/market/eb;->g:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    :try_start_0
    iget-object v3, p0, Lcom/yingyonghui/market/es;->e:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v6, v0, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 188
    iget v6, v0, Lcom/yingyonghui/market/model/q;->s:I

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-le v6, v3, :cond_f

    const/4 v3, 0x1

    .line 192
    :goto_5
    iget-boolean v6, v0, Lcom/yingyonghui/market/model/q;->x:Z

    if-nez v6, :cond_5

    if-eqz v3, :cond_15

    .line 193
    :cond_5
    iget-object v3, v0, Lcom/yingyonghui/market/model/q;->Q:Ljava/lang/String;

    const-string v6, "0"

    invoke-static {v3, v6}, Lcom/yingyonghui/market/util/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 194
    sget-object v3, Lcom/yingyonghui/market/provider/m;->b:Lcom/yingyonghui/market/provider/m;

    if-eq v1, v3, :cond_6

    sget-object v3, Lcom/yingyonghui/market/provider/m;->h:Lcom/yingyonghui/market/provider/m;

    if-ne v1, v3, :cond_10

    .line 197
    :cond_6
    iget-object v1, v2, Lcom/yingyonghui/market/eb;->e:Landroid/widget/TextView;

    .line 198
    const v3, 0x7f020056

    const v6, 0x7f0900a1

    invoke-static {v1, v3, v6}, Lcom/yingyonghui/market/es;->a(Landroid/widget/TextView;II)V

    .line 199
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    move-object v3, v5

    move-object v5, v1

    .line 220
    :goto_6
    if-eqz v5, :cond_7

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "-"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_12

    const-string v1, "empty"

    :goto_7
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 223
    :cond_7
    if-eqz v3, :cond_8

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "-"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_13

    const-string v1, "empty"

    :goto_8
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 227
    :cond_8
    iget-boolean v1, p0, Lcom/yingyonghui/market/es;->l:Z

    if-eqz v1, :cond_14

    iget v1, v0, Lcom/yingyonghui/market/model/q;->J:I

    if-eqz v1, :cond_9

    iget v1, v0, Lcom/yingyonghui/market/model/q;->J:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_14

    :cond_9
    iget v0, v0, Lcom/yingyonghui/market/model/q;->I:I

    if-nez v0, :cond_14

    .line 230
    iget-object v0, v2, Lcom/yingyonghui/market/eb;->k:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 235
    :goto_9
    iget-object v0, v2, Lcom/yingyonghui/market/eb;->h:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 236
    iget-object v0, v2, Lcom/yingyonghui/market/eb;->i:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 237
    iget-object v0, v2, Lcom/yingyonghui/market/eb;->j:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 238
    iget-object v0, v2, Lcom/yingyonghui/market/eb;->k:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 240
    return-object p2

    .line 136
    :cond_a
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yingyonghui/market/eb;

    move-object v2, v1

    goto/16 :goto_0

    .line 143
    :cond_b
    const v1, 0x7f02005d

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 149
    :cond_c
    iget-object v1, p0, Lcom/yingyonghui/market/es;->e:Landroid/content/Context;

    iget-object v3, v0, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/yingyonghui/market/util/GlobalUtil;->k(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 150
    if-eqz v1, :cond_1

    .line 151
    iput-object v1, p0, Lcom/yingyonghui/market/es;->f:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_2

    .line 162
    :cond_d
    iget-object v1, v2, Lcom/yingyonghui/market/eb;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/yingyonghui/market/es;->i:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v1, v2, Lcom/yingyonghui/market/eb;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v1, v2, Lcom/yingyonghui/market/eb;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 170
    :cond_e
    iget-object v1, v2, Lcom/yingyonghui/market/eb;->l:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    :cond_f
    move v3, v4

    .line 188
    goto/16 :goto_5

    :catch_0
    move-exception v3

    move v3, v4

    goto/16 :goto_5

    .line 201
    :cond_10
    iget-object v5, v2, Lcom/yingyonghui/market/eb;->f:Landroid/widget/TextView;

    .line 202
    iget-object v1, v2, Lcom/yingyonghui/market/eb;->g:Landroid/widget/TextView;

    .line 204
    const v3, 0x7f02005e

    const v6, 0x7f09006e

    invoke-static {v5, v3, v6}, Lcom/yingyonghui/market/es;->a(Landroid/widget/TextView;II)V

    .line 205
    const-string v3, "update"

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 206
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    const v3, 0x7f090161

    invoke-static {v1, v9, v3}, Lcom/yingyonghui/market/es;->a(Landroid/widget/TextView;II)V

    .line 209
    const-string v3, "ignore"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 210
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    move-object v3, v1

    goto/16 :goto_6

    .line 213
    :cond_11
    iget-object v1, v2, Lcom/yingyonghui/market/eb;->e:Landroid/widget/TextView;

    .line 214
    const v3, 0x7f090162

    invoke-static {v1, v9, v3}, Lcom/yingyonghui/market/es;->a(Landroid/widget/TextView;II)V

    .line 215
    const-string v3, "unignore"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 216
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    move-object v3, v5

    move-object v5, v1

    goto/16 :goto_6

    .line 221
    :cond_12
    invoke-virtual {v5}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_7

    .line 224
    :cond_13
    invoke-virtual {v3}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_8

    .line 232
    :cond_14
    iget-object v0, v2, Lcom/yingyonghui/market/eb;->k:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    :cond_15
    move-object v3, v5

    goto/16 :goto_6
.end method
