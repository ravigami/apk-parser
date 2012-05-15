.class public final Lcom/yingyonghui/market/online/e;
.super Ljava/lang/Object;
.source "HttpService.java"


# static fields
.field public static a:Ljava/lang/String;

.field private static b:Lcom/yingyonghui/market/online/e;


# instance fields
.field private c:Lcom/yingyonghui/market/online/l;

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "market.MarketAPI"

    sput-object v0, Lcom/yingyonghui/market/online/e;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 550
    iput-object p1, p0, Lcom/yingyonghui/market/online/e;->d:Landroid/content/Context;

    .line 551
    invoke-static {p1}, Lcom/yingyonghui/market/online/l;->a(Landroid/content/Context;)Lcom/yingyonghui/market/online/l;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/online/e;->c:Lcom/yingyonghui/market/online/l;

    .line 552
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/yingyonghui/market/online/e;
    .locals 1
    .parameter

    .prologue
    .line 47
    sget-object v0, Lcom/yingyonghui/market/online/e;->b:Lcom/yingyonghui/market/online/e;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/yingyonghui/market/online/e;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/online/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/yingyonghui/market/online/e;->b:Lcom/yingyonghui/market/online/e;

    .line 50
    :cond_0
    sget-object v0, Lcom/yingyonghui/market/online/e;->b:Lcom/yingyonghui/market/online/e;

    return-object v0
.end method

.method public static a()Ljava/util/ArrayList;
    .locals 5

    .prologue
    .line 96
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/yingyonghui/market/by;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    const-wide/32 v3, 0x7b98a00

    add-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 100
    invoke-static {v0}, Lcom/yingyonghui/market/util/d;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_0

    .line 102
    invoke-static {v0}, Lcom/yingyonghui/market/a/b;->f(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 106
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 82
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    const-wide/32 v3, 0x7b98a00

    add-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 86
    invoke-static {v0}, Lcom/yingyonghui/market/util/d;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_0

    .line 88
    invoke-static {p0, v0}, Lcom/yingyonghui/market/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 241
    invoke-static {p0}, Lcom/yingyonghui/market/a/b;->e(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 124
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    const-wide/32 v3, 0x7b98a00

    add-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 127
    invoke-static {v0}, Lcom/yingyonghui/market/util/d;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_0

    .line 129
    invoke-static {v0, p1}, Lcom/yingyonghui/market/a/b;->a(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 132
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/util/List;)V
    .locals 3
    .parameter

    .prologue
    .line 680
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "key"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 681
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "referer"

    iget-object v2, p0, Lcom/yingyonghui/market/online/e;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/yingyonghui/market/util/GlobalUtil;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 683
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "api"

    sget-object v2, Lcom/yingyonghui/market/online/e;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 684
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "deviceId"

    iget-object v2, p0, Lcom/yingyonghui/market/online/e;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/yingyonghui/market/util/q;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 686
    return-void
.end method

.method public static b()Ljava/util/ArrayList;
    .locals 5

    .prologue
    .line 110
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/yingyonghui/market/by;->m:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    const-wide/32 v3, 0x7b98a00

    add-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 114
    invoke-static {v0}, Lcom/yingyonghui/market/util/d;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_0

    .line 116
    invoke-static {v0}, Lcom/yingyonghui/market/a/b;->e(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 120
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 274
    invoke-static {p0, p1}, Lcom/yingyonghui/market/a/b;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 245
    invoke-static {p0}, Lcom/yingyonghui/market/a/b;->f(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 161
    invoke-static {p0, p1}, Lcom/yingyonghui/market/a/b;->a(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Lcom/yingyonghui/market/model/s;
    .locals 1
    .parameter

    .prologue
    .line 254
    invoke-static {p0}, Lcom/yingyonghui/market/a/b;->g(Ljava/lang/String;)Lcom/yingyonghui/market/model/s;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 278
    invoke-static {p0, p1}, Lcom/yingyonghui/market/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 265
    invoke-static {p0}, Lcom/yingyonghui/market/a/b;->h(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 413
    invoke-static {p0, p1}, Lcom/yingyonghui/market/a/b;->c(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)Lcom/yingyonghui/market/model/o;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 427
    invoke-static {p0, p1}, Lcom/yingyonghui/market/a/b;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/yingyonghui/market/model/o;

    move-result-object v0

    return-object v0
.end method

.method public static e(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 294
    invoke-static {p0}, Lcom/yingyonghui/market/a/b;->b(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 542
    invoke-static {p0, p1}, Lcom/yingyonghui/market/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static f(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 326
    invoke-static {p0}, Lcom/yingyonghui/market/a/b;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static g(Ljava/lang/String;)Lcom/yingyonghui/market/model/k;
    .locals 1
    .parameter

    .prologue
    .line 330
    invoke-static {p0}, Lcom/yingyonghui/market/a/b;->d(Ljava/lang/String;)Lcom/yingyonghui/market/model/k;

    move-result-object v0

    return-object v0
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;)Lcom/yingyonghui/market/model/q;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 546
    invoke-static {p0, p1}, Lcom/yingyonghui/market/a/b;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/yingyonghui/market/model/o;

    move-result-object v0

    return-object v0
.end method

.method public static h(Ljava/lang/String;)Lcom/yingyonghui/market/model/a;
    .locals 1
    .parameter

    .prologue
    .line 555
    invoke-static {p0}, Lcom/yingyonghui/market/a/b;->a(Ljava/lang/String;)Lcom/yingyonghui/market/model/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(IIJLjava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Landroid/os/Handler;)Ljava/lang/String;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 362
    new-instance v9, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 363
    invoke-direct {p0, v9}, Lcom/yingyonghui/market/online/e;->a(Ljava/util/List;)V

    .line 365
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 366
    iget-object v2, p0, Lcom/yingyonghui/market/online/e;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/yingyonghui/market/util/q;->d(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 367
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v3}, Lcom/yingyonghui/market/util/b;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 368
    iget-object v4, p0, Lcom/yingyonghui/market/online/e;->d:Landroid/content/Context;

    invoke-static {v4}, Lcom/yingyonghui/market/util/q;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 369
    iget-object v5, p0, Lcom/yingyonghui/market/online/e;->d:Landroid/content/Context;

    invoke-static {v5}, Lcom/yingyonghui/market/util/q;->e(Landroid/content/Context;)F

    move-result v5

    .line 370
    iget-object v6, p0, Lcom/yingyonghui/market/online/e;->d:Landroid/content/Context;

    invoke-static {v6}, Lcom/yingyonghui/market/util/q;->f(Landroid/content/Context;)I

    move-result v6

    .line 372
    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v3, 0x1

    aput-object v4, v7, v3

    const/4 v3, 0x2

    aput-object v2, v7, v3

    const/4 v2, 0x3

    aput-object v1, v7, v2

    const/4 v1, 0x4

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x5

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    .line 374
    const/4 v1, 0x4

    new-array v8, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {p7 .. p8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v1

    const/4 v1, 0x1

    invoke-static/range {p9 .. p10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v1

    const/4 v1, 0x2

    invoke-static/range {p11 .. p12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v1

    const/4 v1, 0x3

    aput-object p13, v8, v1

    .line 378
    iget-object v1, p0, Lcom/yingyonghui/market/online/e;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/yingyonghui/market/util/g;->e(Landroid/content/Context;)[Ljava/lang/String;

    .line 380
    iget-object v1, p0, Lcom/yingyonghui/market/online/e;->d:Landroid/content/Context;

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v1 .. v8}, Lcom/yingyonghui/market/a/a;->a(Landroid/content/Context;IIJLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 385
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "param"

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    iget-object v2, p0, Lcom/yingyonghui/market/online/e;->c:Lcom/yingyonghui/market/online/l;

    const/16 v3, 0x66

    move-object/from16 v0, p14

    invoke-virtual {v2, v9, v3, v0}, Lcom/yingyonghui/market/online/l;->a(Ljava/util/List;ILandroid/os/Handler;)V

    .line 388
    return-object v1
.end method

.method public final a(IIILandroid/os/Handler;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    const-string v0, "app.list.featured"

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, v1}, Lcom/yingyonghui/market/online/e;->a(Ljava/util/List;)V

    iget-object v2, p0, Lcom/yingyonghui/market/online/e;->d:Landroid/content/Context;

    invoke-static {v2, v0, p1, p2}, Lcom/yingyonghui/market/a/a;->b(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "param"

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/yingyonghui/market/online/e;->c:Lcom/yingyonghui/market/online/l;

    invoke-virtual {v0, v1, p3, p4}, Lcom/yingyonghui/market/online/l;->a(Ljava/util/List;ILandroid/os/Handler;)V

    .line 79
    return-void
.end method

.method public final a(IILandroid/os/Handler;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 149
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 150
    invoke-direct {p0, v0}, Lcom/yingyonghui/market/online/e;->a(Ljava/util/List;)V

    .line 152
    iget-object v1, p0, Lcom/yingyonghui/market/online/e;->d:Landroid/content/Context;

    const-string v2, "app.list.recommend"

    invoke-static {v1, v2, p1, p2}, Lcom/yingyonghui/market/a/a;->a(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 154
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "param"

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v1, p0, Lcom/yingyonghui/market/online/e;->c:Lcom/yingyonghui/market/online/l;

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2, p3}, Lcom/yingyonghui/market/online/l;->a(Ljava/util/List;ILandroid/os/Handler;)V

    .line 157
    return-void
.end method

.method public final a(IILjava/lang/String;IILandroid/os/Handler;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 336
    new-instance v6, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 337
    invoke-direct {p0, v6}, Lcom/yingyonghui/market/online/e;->a(Ljava/util/List;)V

    .line 339
    iget-object v0, p0, Lcom/yingyonghui/market/online/e;->d:Landroid/content/Context;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/yingyonghui/market/a/a;->a(Landroid/content/Context;IILjava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 341
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "param"

    invoke-direct {v1, v2, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    iget-object v0, p0, Lcom/yingyonghui/market/online/e;->c:Lcom/yingyonghui/market/online/l;

    const/16 v1, 0x64

    invoke-virtual {v0, v6, v1, p6}, Lcom/yingyonghui/market/online/l;->a(Ljava/util/List;ILandroid/os/Handler;)V

    .line 343
    return-void
.end method

.method public final a(ILandroid/os/Handler;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 306
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 307
    invoke-direct {p0, v0}, Lcom/yingyonghui/market/online/e;->a(Ljava/util/List;)V

    .line 309
    iget-object v1, p0, Lcom/yingyonghui/market/online/e;->d:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/yingyonghui/market/a/a;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 310
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "param"

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    iget-object v1, p0, Lcom/yingyonghui/market/online/e;->c:Lcom/yingyonghui/market/online/l;

    const/16 v2, 0x3e4

    invoke-virtual {v1, v0, v2, p2}, Lcom/yingyonghui/market/online/l;->a(Ljava/util/List;ILandroid/os/Handler;)V

    .line 313
    return-void
.end method

.method public final a(ILjava/lang/String;ILandroid/os/Handler;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 521
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 522
    invoke-direct {p0, v0}, Lcom/yingyonghui/market/online/e;->a(Ljava/util/List;)V

    .line 524
    iget-object v1, p0, Lcom/yingyonghui/market/online/e;->d:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/yingyonghui/market/a/a;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 525
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "param"

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    iget-object v1, p0, Lcom/yingyonghui/market/online/e;->c:Lcom/yingyonghui/market/online/l;

    invoke-virtual {v1, v0, p3, p1, p4}, Lcom/yingyonghui/market/online/l;->a(Ljava/util/List;IILandroid/os/Handler;)V

    .line 528
    return-void
.end method

.method public final a(Landroid/os/Handler;)V
    .locals 4
    .parameter

    .prologue
    .line 201
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 202
    invoke-direct {p0, v0}, Lcom/yingyonghui/market/online/e;->a(Ljava/util/List;)V

    .line 204
    iget-object v1, p0, Lcom/yingyonghui/market/online/e;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/yingyonghui/market/a/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 205
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "param"

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object v1, p0, Lcom/yingyonghui/market/online/e;->c:Lcom/yingyonghui/market/online/l;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2, p1}, Lcom/yingyonghui/market/online/l;->a(Ljava/util/List;ILandroid/os/Handler;)V

    .line 208
    return-void
.end method

.method public final a(Ljava/lang/String;IIILjava/lang/String;ILandroid/os/Handler;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    new-instance v6, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 56
    invoke-direct {p0, v6}, Lcom/yingyonghui/market/online/e;->a(Ljava/util/List;)V

    .line 58
    iget-object v0, p0, Lcom/yingyonghui/market/online/e;->d:Landroid/content/Context;

    move-object v1, p1

    move v2, p2

    move-object v3, p5

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/yingyonghui/market/a/a;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 60
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "param"

    invoke-direct {v1, v2, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lcom/yingyonghui/market/online/e;->c:Lcom/yingyonghui/market/online/l;

    invoke-virtual {v0, v6, p6, p7}, Lcom/yingyonghui/market/online/l;->a(Ljava/util/List;ILandroid/os/Handler;)V

    .line 63
    return-void
.end method

.method public final a(Ljava/lang/String;IILandroid/os/Handler;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 403
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 404
    invoke-direct {p0, v0}, Lcom/yingyonghui/market/online/e;->a(Ljava/util/List;)V

    .line 406
    iget-object v1, p0, Lcom/yingyonghui/market/online/e;->d:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/yingyonghui/market/a/a;->d(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 407
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "param"

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    iget-object v1, p0, Lcom/yingyonghui/market/online/e;->c:Lcom/yingyonghui/market/online/l;

    invoke-virtual {v1, v0, p3, p4}, Lcom/yingyonghui/market/online/l;->a(Ljava/util/List;ILandroid/os/Handler;)V

    .line 409
    return-void
.end method

.method public final a(Ljava/lang/String;IILjava/lang/String;ILandroid/os/Handler;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 137
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 138
    invoke-direct {p0, v0}, Lcom/yingyonghui/market/online/e;->a(Ljava/util/List;)V

    .line 140
    iget-object v1, p0, Lcom/yingyonghui/market/online/e;->d:Landroid/content/Context;

    invoke-static {v1, p1, p4, p2, p3}, Lcom/yingyonghui/market/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 142
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "param"

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v1, p0, Lcom/yingyonghui/market/online/e;->c:Lcom/yingyonghui/market/online/l;

    invoke-virtual {v1, v0, p5, p6}, Lcom/yingyonghui/market/online/l;->a(Ljava/util/List;ILandroid/os/Handler;)V

    .line 145
    return-void
.end method

.method public final a(Ljava/lang/String;ILandroid/os/Handler;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 178
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 179
    invoke-direct {p0, v0}, Lcom/yingyonghui/market/online/e;->a(Ljava/util/List;)V

    .line 181
    iget-object v1, p0, Lcom/yingyonghui/market/online/e;->d:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/yingyonghui/market/a/a;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 183
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "param"

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v1, p0, Lcom/yingyonghui/market/online/e;->c:Lcom/yingyonghui/market/online/l;

    const/16 v2, 0x68

    invoke-virtual {v1, v0, v2, p3}, Lcom/yingyonghui/market/online/l;->a(Ljava/util/List;ILandroid/os/Handler;)V

    .line 186
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 457
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 458
    invoke-direct {p0, v0}, Lcom/yingyonghui/market/online/e;->a(Ljava/util/List;)V

    .line 460
    iget-object v1, p0, Lcom/yingyonghui/market/online/e;->d:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/yingyonghui/market/a/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 462
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "param"

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    iget-object v1, p0, Lcom/yingyonghui/market/online/e;->c:Lcom/yingyonghui/market/online/l;

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2, p2}, Lcom/yingyonghui/market/online/l;->a(Ljava/util/List;ILandroid/os/Handler;)V

    .line 465
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 392
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 393
    invoke-direct {p0, v0}, Lcom/yingyonghui/market/online/e;->a(Ljava/util/List;)V

    .line 395
    iget-object v1, p0, Lcom/yingyonghui/market/online/e;->d:Landroid/content/Context;

    invoke-static {v1, p1, p2, p3}, Lcom/yingyonghui/market/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 397
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "param"

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    iget-object v1, p0, Lcom/yingyonghui/market/online/e;->c:Lcom/yingyonghui/market/online/l;

    invoke-virtual {v1, v0}, Lcom/yingyonghui/market/online/l;->a(Ljava/util/List;)V

    .line 399
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 166
    new-instance v6, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 167
    invoke-direct {p0, v6}, Lcom/yingyonghui/market/online/e;->a(Ljava/util/List;)V

    .line 169
    iget-object v0, p0, Lcom/yingyonghui/market/online/e;->d:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/yingyonghui/market/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 171
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "param"

    invoke-direct {v1, v2, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    iget-object v0, p0, Lcom/yingyonghui/market/online/e;->c:Lcom/yingyonghui/market/online/l;

    invoke-virtual {v0, v6, p6, p7}, Lcom/yingyonghui/market/online/l;->a(Ljava/util/List;ILandroid/os/Handler;)V

    .line 174
    return-void
.end method

.method public final a(Ljava/lang/String;ZLandroid/os/Handler;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 663
    iget-object v0, p0, Lcom/yingyonghui/market/online/e;->c:Lcom/yingyonghui/market/online/l;

    const/16 v1, 0x6c

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/yingyonghui/market/online/l;->a(Ljava/lang/String;ZILandroid/os/Handler;)V

    .line 664
    return-void
.end method

.method public final a(Ljava/util/ArrayList;Landroid/os/Handler;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 533
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 534
    invoke-direct {p0, v0}, Lcom/yingyonghui/market/online/e;->a(Ljava/util/List;)V

    .line 536
    iget-object v1, p0, Lcom/yingyonghui/market/online/e;->d:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/yingyonghui/market/a/a;->a(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 537
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "param"

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    iget-object v1, p0, Lcom/yingyonghui/market/online/e;->c:Lcom/yingyonghui/market/online/l;

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2, p2}, Lcom/yingyonghui/market/online/l;->a(Ljava/util/List;ILandroid/os/Handler;)V

    .line 539
    return-void
.end method

.method public final a([BLjava/lang/String;Landroid/os/Handler;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 667
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 668
    invoke-direct {p0, v0}, Lcom/yingyonghui/market/online/e;->a(Ljava/util/List;)V

    .line 670
    iget-object v1, p0, Lcom/yingyonghui/market/online/e;->d:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/yingyonghui/market/util/GlobalUtil;->i(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    .line 672
    iget-object v3, p0, Lcom/yingyonghui/market/online/e;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/yingyonghui/market/util/r;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1, v2}, Lcom/yingyonghui/market/a/a;->a(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    .line 674
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "param"

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 676
    iget-object v1, p0, Lcom/yingyonghui/market/online/e;->c:Lcom/yingyonghui/market/online/l;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/yingyonghui/market/online/l;->a(Ljava/util/List;[BLjava/lang/String;Landroid/os/Handler;)V

    .line 677
    return-void
.end method

.method public final b(IIILandroid/os/Handler;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 190
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 191
    invoke-direct {p0, v0}, Lcom/yingyonghui/market/online/e;->a(Ljava/util/List;)V

    .line 193
    iget-object v1, p0, Lcom/yingyonghui/market/online/e;->d:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/yingyonghui/market/a/a;->b(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .line 195
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "param"

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v1, p0, Lcom/yingyonghui/market/online/e;->c:Lcom/yingyonghui/market/online/l;

    invoke-virtual {v1, v0, p3, p4}, Lcom/yingyonghui/market/online/l;->a(Ljava/util/List;ILandroid/os/Handler;)V

    .line 198
    return-void
.end method

.method public final b(IILandroid/os/Handler;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 283
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 284
    invoke-direct {p0, v0}, Lcom/yingyonghui/market/online/e;->a(Ljava/util/List;)V

    .line 286
    iget-object v1, p0, Lcom/yingyonghui/market/online/e;->d:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/yingyonghui/market/a/a;->c(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .line 288
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "param"

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object v1, p0, Lcom/yingyonghui/market/online/e;->c:Lcom/yingyonghui/market/online/l;

    const/16 v2, 0x384

    invoke-virtual {v1, v0, v2, p3}, Lcom/yingyonghui/market/online/l;->a(Ljava/util/List;ILandroid/os/Handler;)V

    .line 291
    return-void
.end method

.method public final b(ILandroid/os/Handler;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 347
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 348
    invoke-direct {p0, v0}, Lcom/yingyonghui/market/online/e;->a(Ljava/util/List;)V

    .line 350
    iget-object v1, p0, Lcom/yingyonghui/market/online/e;->d:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/yingyonghui/market/a/a;->d(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 352
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "param"

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    iget-object v1, p0, Lcom/yingyonghui/market/online/e;->c:Lcom/yingyonghui/market/online/l;

    const/16 v2, 0x385

    invoke-virtual {v1, v0, v2, p2}, Lcom/yingyonghui/market/online/l;->a(Ljava/util/List;ILandroid/os/Handler;)V

    .line 355
    return-void
.end method

.method public final b(Landroid/os/Handler;)V
    .locals 4
    .parameter

    .prologue
    .line 316
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 317
    invoke-direct {p0, v0}, Lcom/yingyonghui/market/online/e;->a(Ljava/util/List;)V

    .line 319
    iget-object v1, p0, Lcom/yingyonghui/market/online/e;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/yingyonghui/market/a/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 320
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "param"

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    iget-object v1, p0, Lcom/yingyonghui/market/online/e;->c:Lcom/yingyonghui/market/online/l;

    const/16 v2, 0x3e5

    invoke-virtual {v1, v0, v2, p1}, Lcom/yingyonghui/market/online/l;->a(Ljava/util/List;ILandroid/os/Handler;)V

    .line 323
    return-void
.end method

.method public final b(Ljava/lang/String;IILandroid/os/Handler;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 645
    iget-object v0, p0, Lcom/yingyonghui/market/online/e;->d:Landroid/content/Context;

    const-string v1, "com.yingyonghui.market_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 647
    iget-object v1, p0, Lcom/yingyonghui/market/online/e;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/yingyonghui/market/util/g;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "WiFi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 648
    iget-object v0, p0, Lcom/yingyonghui/market/online/e;->c:Lcom/yingyonghui/market/online/l;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/yingyonghui/market/online/l;->a(Ljava/lang/String;IILandroid/os/Handler;)V

    .line 655
    :cond_0
    :goto_0
    return-void

    .line 650
    :cond_1
    const-string v1, "checkbox_display_icons"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 651
    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/yingyonghui/market/online/e;->c:Lcom/yingyonghui/market/online/l;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/yingyonghui/market/online/l;->a(Ljava/lang/String;IILandroid/os/Handler;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;ILandroid/os/Handler;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 221
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 222
    invoke-direct {p0, v0}, Lcom/yingyonghui/market/online/e;->a(Ljava/util/List;)V

    .line 224
    iget-object v1, p0, Lcom/yingyonghui/market/online/e;->d:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/yingyonghui/market/a/a;->b(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 225
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "param"

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v1, p0, Lcom/yingyonghui/market/online/e;->c:Lcom/yingyonghui/market/online/l;

    const/16 v2, 0x65

    invoke-virtual {v1, v0, v2, p3}, Lcom/yingyonghui/market/online/l;->a(Ljava/util/List;ILandroid/os/Handler;)V

    .line 228
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/yingyonghui/market/online/e;->c:Lcom/yingyonghui/market/online/l;

    invoke-virtual {v0}, Lcom/yingyonghui/market/online/l;->b()V

    .line 700
    return-void
.end method

.method public final c(IIILandroid/os/Handler;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x5

    .line 441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 442
    invoke-direct {p0, v0}, Lcom/yingyonghui/market/online/e;->a(Ljava/util/List;)V

    .line 444
    iget-object v1, p0, Lcom/yingyonghui/market/online/e;->d:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/yingyonghui/market/a/a;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .line 446
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "param"

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 450
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 451
    iget-object v1, p0, Lcom/yingyonghui/market/online/e;->c:Lcom/yingyonghui/market/online/l;

    invoke-virtual {v1, v0, p3, p4}, Lcom/yingyonghui/market/online/l;->a(Ljava/util/List;ILandroid/os/Handler;)V

    .line 453
    :cond_0
    return-void
.end method

.method public final c(ILandroid/os/Handler;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 431
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 432
    invoke-direct {p0, v0}, Lcom/yingyonghui/market/online/e;->a(Ljava/util/List;)V

    .line 434
    iget-object v1, p0, Lcom/yingyonghui/market/online/e;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/yingyonghui/market/a/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 435
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "param"

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    iget-object v1, p0, Lcom/yingyonghui/market/online/e;->c:Lcom/yingyonghui/market/online/l;

    invoke-virtual {v1, v0, p1, p2}, Lcom/yingyonghui/market/online/l;->a(Ljava/util/List;ILandroid/os/Handler;)V

    .line 438
    return-void
.end method

.method public final c(Landroid/os/Handler;)V
    .locals 4
    .parameter

    .prologue
    .line 473
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 474
    invoke-direct {p0, v0}, Lcom/yingyonghui/market/online/e;->a(Ljava/util/List;)V

    .line 476
    iget-object v1, p0, Lcom/yingyonghui/market/online/e;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/yingyonghui/market/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 477
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "param"

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    iget-object v1, p0, Lcom/yingyonghui/market/online/e;->c:Lcom/yingyonghui/market/online/l;

    const/16 v2, 0x399

    invoke-virtual {v1, v0, v2, p1}, Lcom/yingyonghui/market/online/l;->a(Ljava/util/List;ILandroid/os/Handler;)V

    .line 481
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 482
    return-void
.end method

.method public final c(Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 231
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 232
    invoke-direct {p0, v0}, Lcom/yingyonghui/market/online/e;->a(Ljava/util/List;)V

    .line 234
    iget-object v1, p0, Lcom/yingyonghui/market/online/e;->d:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/yingyonghui/market/a/a;->c(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 235
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "param"

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v1, p0, Lcom/yingyonghui/market/online/e;->c:Lcom/yingyonghui/market/online/l;

    invoke-virtual {v1, v0}, Lcom/yingyonghui/market/online/l;->a(Ljava/util/List;)V

    .line 238
    return-void
.end method

.method public final c(Ljava/lang/String;ILandroid/os/Handler;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 417
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 418
    invoke-direct {p0, v0}, Lcom/yingyonghui/market/online/e;->a(Ljava/util/List;)V

    .line 420
    iget-object v1, p0, Lcom/yingyonghui/market/online/e;->d:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/yingyonghui/market/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 421
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "param"

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    iget-object v1, p0, Lcom/yingyonghui/market/online/e;->c:Lcom/yingyonghui/market/online/l;

    invoke-virtual {v1, v0, p2, p3}, Lcom/yingyonghui/market/online/l;->a(Ljava/util/List;ILandroid/os/Handler;)V

    .line 424
    return-void
.end method

.method public final d(ILandroid/os/Handler;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 492
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 493
    invoke-direct {p0, v0}, Lcom/yingyonghui/market/online/e;->a(Ljava/util/List;)V

    .line 495
    iget-object v1, p0, Lcom/yingyonghui/market/online/e;->d:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/yingyonghui/market/a/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 497
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "param"

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    iget-object v1, p0, Lcom/yingyonghui/market/online/e;->c:Lcom/yingyonghui/market/online/l;

    const/16 v2, 0x38e

    invoke-virtual {v1, v0, v2, p2}, Lcom/yingyonghui/market/online/l;->a(Ljava/util/List;ILandroid/os/Handler;)V

    .line 500
    return-void
.end method

.method public final d(Ljava/lang/String;ILandroid/os/Handler;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 591
    iget-object v0, p0, Lcom/yingyonghui/market/online/e;->d:Landroid/content/Context;

    const-string v1, "com.yingyonghui.market_preferences"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 593
    invoke-static {}, Lcom/yingyonghui/market/util/ab;->a()Lcom/yingyonghui/market/util/ab;

    invoke-static {p1}, Lcom/yingyonghui/market/util/ab;->a(Ljava/lang/String;)Lcom/yingyonghui/market/model/m;

    move-result-object v0

    .line 595
    iget-boolean v1, v0, Lcom/yingyonghui/market/model/m;->b:Z

    if-nez v1, :cond_0

    .line 597
    iget-object v1, p0, Lcom/yingyonghui/market/online/e;->c:Lcom/yingyonghui/market/online/l;

    invoke-virtual {v1, p1, v2, p2, p3}, Lcom/yingyonghui/market/online/l;->a(Ljava/lang/String;ZILandroid/os/Handler;)V

    .line 598
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/yingyonghui/market/model/m;->b:Z

    .line 600
    :cond_0
    return-void
.end method

.method public final e(ILandroid/os/Handler;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 509
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 510
    invoke-direct {p0, v0}, Lcom/yingyonghui/market/online/e;->a(Ljava/util/List;)V

    .line 512
    iget-object v1, p0, Lcom/yingyonghui/market/online/e;->d:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/yingyonghui/market/a/a;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 514
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "param"

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    iget-object v1, p0, Lcom/yingyonghui/market/online/e;->c:Lcom/yingyonghui/market/online/l;

    const/16 v2, 0x390

    invoke-virtual {v1, v0, v2, p2}, Lcom/yingyonghui/market/online/l;->a(Ljava/util/List;ILandroid/os/Handler;)V

    .line 517
    return-void
.end method

.method public final e(Ljava/lang/String;ILandroid/os/Handler;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 620
    iget-object v0, p0, Lcom/yingyonghui/market/online/e;->d:Landroid/content/Context;

    const-string v1, "com.yingyonghui.market_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 622
    invoke-static {}, Lcom/yingyonghui/market/util/ab;->a()Lcom/yingyonghui/market/util/ab;

    invoke-static {p1}, Lcom/yingyonghui/market/util/ab;->a(Ljava/lang/String;)Lcom/yingyonghui/market/model/m;

    move-result-object v1

    .line 625
    iget-object v2, p0, Lcom/yingyonghui/market/online/e;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/yingyonghui/market/util/g;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 627
    iget-boolean v0, v1, Lcom/yingyonghui/market/model/m;->b:Z

    if-nez v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/yingyonghui/market/online/e;->c:Lcom/yingyonghui/market/online/l;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yingyonghui/market/online/l;->a(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 629
    iput-boolean v3, v1, Lcom/yingyonghui/market/model/m;->b:Z

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 632
    :cond_1
    const-string v2, "checkbox_display_icons"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 633
    if-eqz v0, :cond_0

    .line 634
    iget-boolean v0, v1, Lcom/yingyonghui/market/model/m;->b:Z

    if-nez v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/yingyonghui/market/online/e;->c:Lcom/yingyonghui/market/online/l;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yingyonghui/market/online/l;->a(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 636
    iput-boolean v3, v1, Lcom/yingyonghui/market/model/m;->b:Z

    goto :goto_0
.end method

.method public final i(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 658
    iget-object v0, p0, Lcom/yingyonghui/market/online/e;->c:Lcom/yingyonghui/market/online/l;

    invoke-virtual {v0, p1}, Lcom/yingyonghui/market/online/l;->a(Ljava/lang/String;)V

    .line 659
    return-void
.end method
