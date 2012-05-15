.class public final Lcom/yingyonghui/market/br;
.super Landroid/widget/ArrayAdapter;
.source "AdapterListApp.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/view/LayoutInflater;

.field private c:I

.field private d:Landroid/content/Context;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Lcom/yingyonghui/market/model/q;

.field private g:Landroid/os/Handler;

.field private h:Ljava/util/ArrayList;

.field private i:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/yingyonghui/market/br;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yingyonghui/market/br;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 51
    iput-object v1, p0, Lcom/yingyonghui/market/br;->e:Landroid/graphics/drawable/Drawable;

    .line 53
    iput-object v1, p0, Lcom/yingyonghui/market/br;->f:Lcom/yingyonghui/market/model/q;

    .line 354
    new-instance v0, Lcom/yingyonghui/market/fi;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/fi;-><init>(Lcom/yingyonghui/market/br;)V

    iput-object v0, p0, Lcom/yingyonghui/market/br;->i:Landroid/view/View$OnClickListener;

    .line 60
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/yingyonghui/market/br;->b:Landroid/view/LayoutInflater;

    .line 61
    iput-object p1, p0, Lcom/yingyonghui/market/br;->d:Landroid/content/Context;

    .line 62
    iput p3, p0, Lcom/yingyonghui/market/br;->c:I

    .line 63
    iput-object p2, p0, Lcom/yingyonghui/market/br;->h:Ljava/util/ArrayList;

    .line 65
    iget-object v0, p0, Lcom/yingyonghui/market/br;->d:Landroid/content/Context;

    instance-of v0, v0, Lcom/yingyonghui/market/ActivityListApp;

    if-eqz v0, :cond_1

    .line 66
    check-cast p1, Lcom/yingyonghui/market/ActivityListApp;

    invoke-virtual {p1}, Lcom/yingyonghui/market/ActivityListApp;->b()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/br;->g:Landroid/os/Handler;

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/yingyonghui/market/br;->d:Landroid/content/Context;

    instance-of v0, v0, Lcom/yingyonghui/market/ActivityListApp2;

    if-eqz v0, :cond_2

    .line 68
    check-cast p1, Lcom/yingyonghui/market/ActivityListApp2;

    invoke-virtual {p1}, Lcom/yingyonghui/market/ActivityListApp2;->b()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/br;->g:Landroid/os/Handler;

    goto :goto_0

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/yingyonghui/market/br;->d:Landroid/content/Context;

    instance-of v0, v0, Lcom/yingyonghui/market/ActivityListAppManage;

    if-eqz v0, :cond_0

    .line 70
    check-cast p1, Lcom/yingyonghui/market/ActivityListAppManage;

    invoke-virtual {p1}, Lcom/yingyonghui/market/ActivityListAppManage;->a()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/br;->g:Landroid/os/Handler;

    goto :goto_0
.end method

.method static synthetic a(Lcom/yingyonghui/market/br;)Lcom/yingyonghui/market/model/q;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/yingyonghui/market/br;->f:Lcom/yingyonghui/market/model/q;

    return-object v0
.end method

.method static synthetic a(Lcom/yingyonghui/market/br;Lcom/yingyonghui/market/model/q;)Lcom/yingyonghui/market/model/q;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/yingyonghui/market/br;->f:Lcom/yingyonghui/market/model/q;

    return-object p1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const-wide/32 v6, 0x5265c00

    .line 304
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 310
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 311
    const-wide/32 v4, 0x5265c00

    rem-long v4, v2, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-long/2addr v2, v4

    sub-long/2addr v2, v0

    .line 316
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 317
    iget-object v0, p0, Lcom/yingyonghui/market/br;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 324
    :goto_0
    return-object v0

    .line 313
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/yingyonghui/market/br;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 318
    :cond_0
    cmp-long v2, v2, v6

    if-gez v2, :cond_1

    .line 319
    iget-object v0, p0, Lcom/yingyonghui/market/br;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 321
    :cond_1
    const-string v2, "yyyy-MM-dd"

    invoke-static {v0, v1, v2}, Lcom/yingyonghui/market/util/s;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Landroid/widget/TextView;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 294
    if-eqz p1, :cond_0

    .line 295
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 298
    :cond_0
    if-eqz p2, :cond_1

    .line 299
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 301
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/yingyonghui/market/br;Ljava/lang/String;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 42
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "pkgname"

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/yingyonghui/market/br;->d:Landroid/content/Context;

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

    iget-object v4, p0, Lcom/yingyonghui/market/br;->d:Landroid/content/Context;

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

.method static synthetic b(Lcom/yingyonghui/market/br;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/yingyonghui/market/br;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/yingyonghui/market/br;)Lcom/yingyonghui/market/log/m;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/yingyonghui/market/br;->d:Landroid/content/Context;

    instance-of v0, v0, Lcom/yingyonghui/market/ActivityListApp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yingyonghui/market/br;->d:Landroid/content/Context;

    check-cast v0, Lcom/yingyonghui/market/ActivityListApp;

    invoke-virtual {v0}, Lcom/yingyonghui/market/ActivityListApp;->a()Lcom/yingyonghui/market/log/m;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yingyonghui/market/br;->d:Landroid/content/Context;

    instance-of v0, v0, Lcom/yingyonghui/market/ActivityListApp2;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yingyonghui/market/br;->d:Landroid/content/Context;

    check-cast v0, Lcom/yingyonghui/market/ActivityListApp2;

    invoke-virtual {v0}, Lcom/yingyonghui/market/ActivityListApp2;->a()Lcom/yingyonghui/market/log/m;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/yingyonghui/market/br;->d:Landroid/content/Context;

    instance-of v0, v0, Lcom/yingyonghui/market/ActivityListAppManage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yingyonghui/market/br;->d:Landroid/content/Context;

    check-cast v0, Lcom/yingyonghui/market/ActivityListAppManage;

    invoke-virtual {v0}, Lcom/yingyonghui/market/ActivityListAppManage;->f()Lcom/yingyonghui/market/log/m;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/yingyonghui/market/log/m;

    invoke-direct {v0}, Lcom/yingyonghui/market/log/m;-><init>()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/yingyonghui/market/br;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/yingyonghui/market/br;->g:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/yingyonghui/market/model/q;)V
    .locals 12
    .parameter

    .prologue
    .line 328
    iget-object v0, p0, Lcom/yingyonghui/market/br;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yingyonghui/market/util/GlobalUtil;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 329
    iget v0, p1, Lcom/yingyonghui/market/model/q;->n:I

    invoke-static {v0}, Lcom/yingyonghui/market/util/GlobalUtil;->a(I)Ljava/lang/String;

    move-result-object v10

    .line 334
    iget-object v0, p0, Lcom/yingyonghui/market/br;->d:Landroid/content/Context;

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

    .line 335
    iget-object v0, p0, Lcom/yingyonghui/market/br;->g:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mHandler: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/br;->g:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    iget-object v0, p0, Lcom/yingyonghui/market/br;->g:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 340
    :cond_0
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yingyonghui/market/br;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/yingyonghui/market/br;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/yingyonghui/market/br;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/q;

    iget v0, v0, Lcom/yingyonghui/market/model/q;->e:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/yingyonghui/market/br;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/q;

    .line 100
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/yingyonghui/market/br;->e:Landroid/graphics/drawable/Drawable;

    .line 102
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/yingyonghui/market/t;

    if-nez v1, :cond_b

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/yingyonghui/market/br;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f030014

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 104
    new-instance v2, Lcom/yingyonghui/market/t;

    invoke-direct {v2}, Lcom/yingyonghui/market/t;-><init>()V

    .line 105
    const v1, 0x7f0b0040

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/yingyonghui/market/t;->a:Landroid/widget/ImageView;

    .line 106
    const v1, 0x7f0b0072

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/yingyonghui/market/t;->b:Landroid/widget/TextView;

    .line 107
    const v1, 0x7f0b0042

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/yingyonghui/market/t;->c:Landroid/widget/TextView;

    .line 108
    const v1, 0x7f0b0076

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/yingyonghui/market/t;->d:Landroid/widget/TextView;

    .line 109
    const v1, 0x7f0b0044

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RatingBar;

    iput-object v1, v2, Lcom/yingyonghui/market/t;->e:Landroid/widget/RatingBar;

    .line 110
    const v1, 0x7f0b0073

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/yingyonghui/market/t;->f:Landroid/widget/TextView;

    .line 111
    const v1, 0x7f0b0043

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/yingyonghui/market/t;->g:Landroid/widget/TextView;

    .line 113
    const v1, 0x7f0b0074

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/yingyonghui/market/t;->h:Landroid/widget/TextView;

    .line 114
    const v1, 0x7f0b0075

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/yingyonghui/market/t;->i:Landroid/widget/TextView;

    .line 115
    iget-object v1, v2, Lcom/yingyonghui/market/t;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/yingyonghui/market/br;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v1, v2, Lcom/yingyonghui/market/t;->h:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/yingyonghui/market/br;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v1, v2, Lcom/yingyonghui/market/t;->i:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/yingyonghui/market/br;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 126
    :goto_0
    rem-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_c

    .line 127
    const v1, 0x7f02005c

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 132
    :goto_1
    iget-object v1, p0, Lcom/yingyonghui/market/br;->d:Landroid/content/Context;

    instance-of v1, v1, Lcom/yingyonghui/market/ActivityListApp2;

    if-eqz v1, :cond_d

    .line 133
    iget-object v1, p0, Lcom/yingyonghui/market/br;->d:Landroid/content/Context;

    check-cast v1, Lcom/yingyonghui/market/ActivityListApp2;

    iget-object v3, v0, Lcom/yingyonghui/market/model/q;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/yingyonghui/market/ActivityListApp2;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/yingyonghui/market/br;->e:Landroid/graphics/drawable/Drawable;

    .line 152
    :cond_1
    :goto_2
    iget-object v3, v2, Lcom/yingyonghui/market/t;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/yingyonghui/market/br;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_2
    instance-of v4, v1, Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    :cond_3
    iget-object v1, v2, Lcom/yingyonghui/market/t;->b:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/yingyonghui/market/model/q;->i:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v1, v2, Lcom/yingyonghui/market/t;->c:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/yingyonghui/market/model/q;->p:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v1, v2, Lcom/yingyonghui/market/t;->e:Landroid/widget/RatingBar;

    iget v3, v0, Lcom/yingyonghui/market/model/q;->l:F

    invoke-virtual {v1, v3}, Landroid/widget/RatingBar;->setRating(F)V

    .line 158
    iget v1, p0, Lcom/yingyonghui/market/br;->c:I

    const/16 v3, 0x385

    if-ne v1, v3, :cond_4

    .line 159
    iget-object v1, v2, Lcom/yingyonghui/market/t;->f:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/yingyonghui/market/model/q;->r:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/yingyonghui/market/br;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    :cond_4
    iget-object v1, p0, Lcom/yingyonghui/market/br;->d:Landroid/content/Context;

    iget-object v3, v0, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/yingyonghui/market/provider/k;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/yingyonghui/market/provider/m;

    move-result-object v1

    .line 163
    if-nez v1, :cond_5

    .line 164
    sget-object v1, Lcom/yingyonghui/market/provider/m;->a:Lcom/yingyonghui/market/provider/m;

    .line 167
    :cond_5
    const/4 v5, 0x0

    .line 168
    const/4 v3, 0x0

    .line 170
    :try_start_0
    iget-object v4, p0, Lcom/yingyonghui/market/br;->d:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v6, v0, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 171
    iget v4, v0, Lcom/yingyonghui/market/model/q;->s:I

    iget v3, v6, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-le v4, v3, :cond_11

    const/4 v4, 0x1

    .line 172
    :goto_3
    :try_start_1
    iget v3, v6, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-lez v3, :cond_12

    const/4 v3, 0x1

    :goto_4
    move v8, v4

    move v4, v3

    move v3, v8

    .line 176
    :goto_5
    iget-object v5, v2, Lcom/yingyonghui/market/t;->d:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    iget-object v5, v2, Lcom/yingyonghui/market/t;->h:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    iget-object v5, v2, Lcom/yingyonghui/market/t;->i:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    const/4 v5, 0x0

    .line 183
    iget-object v6, p0, Lcom/yingyonghui/market/br;->d:Landroid/content/Context;

    instance-of v6, v6, Lcom/yingyonghui/market/ActivityListAppManage;

    if-eqz v6, :cond_15

    iget-boolean v6, v0, Lcom/yingyonghui/market/model/q;->x:Z

    if-eqz v6, :cond_15

    .line 185
    iget-object v6, v0, Lcom/yingyonghui/market/model/q;->Q:Ljava/lang/String;

    const-string v7, "0"

    invoke-static {v6, v7}, Lcom/yingyonghui/market/util/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 186
    sget-object v6, Lcom/yingyonghui/market/provider/m;->b:Lcom/yingyonghui/market/provider/m;

    if-eq v1, v6, :cond_6

    sget-object v6, Lcom/yingyonghui/market/provider/m;->h:Lcom/yingyonghui/market/provider/m;

    if-ne v1, v6, :cond_13

    .line 188
    :cond_6
    iget-object v2, v2, Lcom/yingyonghui/market/t;->d:Landroid/widget/TextView;

    move-object v8, v5

    move-object v5, v2

    move-object v2, v8

    .line 203
    :goto_6
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    if-eqz v2, :cond_7

    .line 205
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    :cond_7
    iget-object v6, p0, Lcom/yingyonghui/market/br;->d:Landroid/content/Context;

    instance-of v6, v6, Lcom/yingyonghui/market/ActivityListAppManage;

    if-eqz v6, :cond_16

    iget-boolean v6, v0, Lcom/yingyonghui/market/model/q;->x:Z

    if-eqz v6, :cond_16

    iget-object v6, v0, Lcom/yingyonghui/market/model/q;->Q:Ljava/lang/String;

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_16

    .line 211
    const v0, 0x7f020052

    const v3, 0x7f090162

    invoke-static {v5, v0, v3}, Lcom/yingyonghui/market/br;->a(Landroid/widget/TextView;II)V

    .line 212
    const-string v0, "unignore"

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 214
    sget-object v0, Lcom/yingyonghui/market/provider/m;->b:Lcom/yingyonghui/market/provider/m;

    if-eq v1, v0, :cond_8

    sget-object v0, Lcom/yingyonghui/market/provider/m;->h:Lcom/yingyonghui/market/provider/m;

    if-ne v1, v0, :cond_9

    .line 216
    :cond_8
    const v0, 0x7f020056

    const v1, 0x7f0900a1

    invoke-static {v5, v0, v1}, Lcom/yingyonghui/market/br;->a(Landroid/widget/TextView;II)V

    .line 265
    :cond_9
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_24

    const-string v0, "empty"

    :goto_8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 266
    if-eqz v2, :cond_a

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_25

    const-string v0, "empty"

    :goto_9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 270
    :cond_a
    return-object p2

    .line 122
    :cond_b
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yingyonghui/market/t;

    move-object v2, v1

    goto/16 :goto_0

    .line 129
    :cond_c
    const v1, 0x7f02005d

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 134
    :cond_d
    iget-object v1, p0, Lcom/yingyonghui/market/br;->d:Landroid/content/Context;

    instance-of v1, v1, Lcom/yingyonghui/market/ActivityListApp;

    if-eqz v1, :cond_e

    .line 135
    iget-object v1, p0, Lcom/yingyonghui/market/br;->d:Landroid/content/Context;

    check-cast v1, Lcom/yingyonghui/market/ActivityListApp;

    iget-object v3, v0, Lcom/yingyonghui/market/model/q;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/yingyonghui/market/ActivityListApp;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/yingyonghui/market/br;->e:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_2

    .line 136
    :cond_e
    iget-object v1, p0, Lcom/yingyonghui/market/br;->d:Landroid/content/Context;

    instance-of v1, v1, Lcom/yingyonghui/market/ActivityListAppManage;

    if-eqz v1, :cond_1

    .line 137
    iget-object v1, v0, Lcom/yingyonghui/market/model/q;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_10

    .line 138
    iget-object v1, v0, Lcom/yingyonghui/market/model/q;->h:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/yingyonghui/market/br;->e:Landroid/graphics/drawable/Drawable;

    .line 147
    :cond_f
    :goto_a
    iget-object v1, v2, Lcom/yingyonghui/market/t;->g:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/yingyonghui/market/br;->d:Landroid/content/Context;

    const v5, 0x7f090132

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/yingyonghui/market/model/q;->q:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v1, v2, Lcom/yingyonghui/market/t;->e:Landroid/widget/RatingBar;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 149
    iget-object v1, v2, Lcom/yingyonghui/market/t;->g:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 141
    :cond_10
    iget-object v1, p0, Lcom/yingyonghui/market/br;->d:Landroid/content/Context;

    check-cast v1, Lcom/yingyonghui/market/ActivityListAppManage;

    iget-object v3, v0, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/yingyonghui/market/util/GlobalUtil;->k(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 142
    if-eqz v1, :cond_f

    .line 143
    iput-object v1, p0, Lcom/yingyonghui/market/br;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_a

    .line 171
    :cond_11
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 172
    :cond_12
    const/4 v3, 0x0

    goto/16 :goto_4

    :catch_0
    move-exception v4

    :goto_b
    move v4, v5

    goto/16 :goto_5

    .line 190
    :cond_13
    iget-object v5, v2, Lcom/yingyonghui/market/t;->h:Landroid/widget/TextView;

    .line 191
    iget-object v2, v2, Lcom/yingyonghui/market/t;->i:Landroid/widget/TextView;

    .line 193
    const v6, 0x7f020052

    const v7, 0x7f090161

    invoke-static {v2, v6, v7}, Lcom/yingyonghui/market/br;->a(Landroid/widget/TextView;II)V

    .line 194
    const-string v6, "ignore"

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 197
    :cond_14
    iget-object v2, v2, Lcom/yingyonghui/market/t;->d:Landroid/widget/TextView;

    move-object v8, v5

    move-object v5, v2

    move-object v2, v8

    goto/16 :goto_6

    .line 200
    :cond_15
    iget-object v2, v2, Lcom/yingyonghui/market/t;->d:Landroid/widget/TextView;

    move-object v8, v5

    move-object v5, v2

    move-object v2, v8

    goto/16 :goto_6

    .line 218
    :cond_16
    sget-object v6, Lcom/yingyonghui/market/provider/m;->b:Lcom/yingyonghui/market/provider/m;

    if-eq v1, v6, :cond_17

    sget-object v6, Lcom/yingyonghui/market/provider/m;->h:Lcom/yingyonghui/market/provider/m;

    if-ne v1, v6, :cond_18

    .line 220
    :cond_17
    const v0, 0x7f020056

    const v1, 0x7f0900a1

    invoke-static {v5, v0, v1}, Lcom/yingyonghui/market/br;->a(Landroid/widget/TextView;II)V

    goto/16 :goto_7

    .line 221
    :cond_18
    sget-object v6, Lcom/yingyonghui/market/provider/m;->f:Lcom/yingyonghui/market/provider/m;

    if-eq v1, v6, :cond_19

    sget-object v6, Lcom/yingyonghui/market/provider/m;->m:Lcom/yingyonghui/market/provider/m;

    if-ne v1, v6, :cond_1b

    .line 223
    :cond_19
    if-eqz v3, :cond_1a

    .line 224
    const v0, 0x7f02005e

    const v1, 0x7f09006e

    invoke-static {v5, v0, v1}, Lcom/yingyonghui/market/br;->a(Landroid/widget/TextView;II)V

    .line 225
    const-string v0, "update"

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 227
    :cond_1a
    const v0, 0x7f020056

    const v1, 0x7f090069

    invoke-static {v5, v0, v1}, Lcom/yingyonghui/market/br;->a(Landroid/widget/TextView;II)V

    goto/16 :goto_7

    .line 229
    :cond_1b
    sget-object v6, Lcom/yingyonghui/market/provider/m;->j:Lcom/yingyonghui/market/provider/m;

    if-eq v1, v6, :cond_1c

    sget-object v6, Lcom/yingyonghui/market/provider/m;->d:Lcom/yingyonghui/market/provider/m;

    if-ne v1, v6, :cond_21

    .line 231
    :cond_1c
    iget-object v4, p0, Lcom/yingyonghui/market/br;->d:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v0, v0, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/yingyonghui/market/provider/k;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/yingyonghui/market/provider/k;

    move-result-object v0

    .line 232
    iget-object v4, p0, Lcom/yingyonghui/market/br;->d:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/yingyonghui/market/provider/k;->a(Landroid/content/ContentResolver;)Ljava/io/File;

    move-result-object v4

    .line 233
    if-eqz v4, :cond_1d

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 234
    const v0, 0x7f02005e

    const v1, 0x7f09006d

    invoke-static {v5, v0, v1}, Lcom/yingyonghui/market/br;->a(Landroid/widget/TextView;II)V

    .line 235
    const-string v0, "install"

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 237
    :cond_1d
    sget-object v4, Lcom/yingyonghui/market/provider/m;->j:Lcom/yingyonghui/market/provider/m;

    if-eq v1, v4, :cond_1e

    sget-object v4, Lcom/yingyonghui/market/provider/m;->k:Lcom/yingyonghui/market/provider/m;

    if-ne v1, v4, :cond_1f

    .line 238
    :cond_1e
    sget-object v1, Lcom/yingyonghui/market/provider/m;->l:Lcom/yingyonghui/market/provider/m;

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/provider/k;->a(Lcom/yingyonghui/market/provider/m;)V

    .line 242
    :goto_c
    iget-object v1, p0, Lcom/yingyonghui/market/br;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/provider/k;->b(Landroid/content/ContentResolver;)V

    .line 244
    if-eqz v3, :cond_20

    .line 245
    const v0, 0x7f02005e

    const v1, 0x7f09006e

    invoke-static {v5, v0, v1}, Lcom/yingyonghui/market/br;->a(Landroid/widget/TextView;II)V

    .line 246
    const-string v0, "update"

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 240
    :cond_1f
    sget-object v1, Lcom/yingyonghui/market/provider/m;->g:Lcom/yingyonghui/market/provider/m;

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/provider/k;->a(Lcom/yingyonghui/market/provider/m;)V

    goto :goto_c

    .line 248
    :cond_20
    const v0, 0x7f020052

    const v1, 0x7f09006c

    invoke-static {v5, v0, v1}, Lcom/yingyonghui/market/br;->a(Landroid/widget/TextView;II)V

    .line 249
    const-string v0, "down"

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 253
    :cond_21
    if-eqz v3, :cond_22

    .line 254
    const v0, 0x7f02005e

    const v1, 0x7f09006e

    invoke-static {v5, v0, v1}, Lcom/yingyonghui/market/br;->a(Landroid/widget/TextView;II)V

    .line 255
    const-string v0, "update"

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 256
    :cond_22
    if-eqz v4, :cond_23

    .line 257
    const v0, 0x7f020056

    const v1, 0x7f090069

    invoke-static {v5, v0, v1}, Lcom/yingyonghui/market/br;->a(Landroid/widget/TextView;II)V

    goto/16 :goto_7

    .line 259
    :cond_23
    const v0, 0x7f020052

    const v1, 0x7f09006c

    invoke-static {v5, v0, v1}, Lcom/yingyonghui/market/br;->a(Landroid/widget/TextView;II)V

    .line 260
    const-string v0, "down"

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 265
    :cond_24
    invoke-virtual {v5}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_8

    .line 267
    :cond_25
    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_9

    :catch_1
    move-exception v3

    move v3, v4

    goto/16 :goto_b
.end method
