.class public final Lcom/yingyonghui/market/log/l;
.super Ljava/lang/Object;
.source "ClientLogger.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .parameter

    .prologue
    .line 359
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 361
    if-eqz p0, :cond_1

    .line 362
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/q;

    .line 363
    if-eqz v0, :cond_0

    .line 364
    iget v0, v0, Lcom/yingyonghui/market/model/q;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 369
    :cond_1
    return-object v1
.end method

.method public static a(Landroid/content/Context;J)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 336
    invoke-static {p1, p2}, Lcom/yingyonghui/market/log/h;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 337
    invoke-static {p0, v0}, Lcom/yingyonghui/market/log/LogService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 338
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yingyonghui/market/log/m;IILjava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 244
    invoke-static {p4}, Lcom/yingyonghui/market/log/l;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 245
    invoke-static {p1, p2, p3, v0}, Lcom/yingyonghui/market/log/h;->f(Lcom/yingyonghui/market/log/m;IILjava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-static {p0, v0}, Lcom/yingyonghui/market/log/LogService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yingyonghui/market/log/m;IILjava/util/List;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 293
    const-string v0, "app.list.featured"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    invoke-static {p4}, Lcom/yingyonghui/market/log/l;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lcom/yingyonghui/market/log/h;->a(Lcom/yingyonghui/market/log/m;IILjava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yingyonghui/market/log/LogService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    const-string v0, "app.list.category"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 296
    invoke-static {p4}, Lcom/yingyonghui/market/log/l;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lcom/yingyonghui/market/log/h;->e(Lcom/yingyonghui/market/log/m;IILjava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yingyonghui/market/log/LogService;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 297
    :cond_2
    const-string v0, "app.list.fast"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 298
    invoke-static {p4}, Lcom/yingyonghui/market/log/l;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lcom/yingyonghui/market/log/h;->d(Lcom/yingyonghui/market/log/m;IILjava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yingyonghui/market/log/LogService;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 299
    :cond_3
    const-string v0, "app.list.rank"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 300
    invoke-static {p4}, Lcom/yingyonghui/market/log/l;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lcom/yingyonghui/market/log/h;->c(Lcom/yingyonghui/market/log/m;IILjava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yingyonghui/market/log/LogService;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 301
    :cond_4
    const-string v0, "Latest"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 302
    invoke-static {p4}, Lcom/yingyonghui/market/log/l;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lcom/yingyonghui/market/log/h;->b(Lcom/yingyonghui/market/log/m;IILjava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yingyonghui/market/log/LogService;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 303
    :cond_5
    const-string v0, "relative_app"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 304
    invoke-static {p0, p1, p2, p3, p4}, Lcom/yingyonghui/market/log/l;->c(Landroid/content/Context;Lcom/yingyonghui/market/log/m;IILjava/util/List;)V

    goto :goto_0

    .line 305
    :cond_6
    const-string v0, "search"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    invoke-static {p0, p1, p2, p3, p4}, Lcom/yingyonghui/market/log/l;->b(Landroid/content/Context;Lcom/yingyonghui/market/log/m;IILjava/util/List;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/yingyonghui/market/log/m;ILjava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 261
    invoke-static {p3}, Lcom/yingyonghui/market/log/l;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 262
    invoke-static {p1, p2, v0}, Lcom/yingyonghui/market/log/h;->a(Lcom/yingyonghui/market/log/m;ILjava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-static {p0, v0}, Lcom/yingyonghui/market/log/LogService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yingyonghui/market/log/m;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-static {p1, p2}, Lcom/yingyonghui/market/log/h;->a(Lcom/yingyonghui/market/log/m;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {p0, v0}, Lcom/yingyonghui/market/log/LogService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yingyonghui/market/log/m;Ljava/lang/String;II)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-static {p1, p2, p3, p4}, Lcom/yingyonghui/market/log/h;->a(Lcom/yingyonghui/market/log/m;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {p0, v0}, Lcom/yingyonghui/market/log/LogService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yingyonghui/market/log/m;Ljava/lang/String;IILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-static {p1, p2, p3, p4, p5}, Lcom/yingyonghui/market/log/h;->a(Lcom/yingyonghui/market/log/m;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {p0, v0}, Lcom/yingyonghui/market/log/LogService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yingyonghui/market/log/m;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-static {p1, p2, p3, p4}, Lcom/yingyonghui/market/log/h;->a(Lcom/yingyonghui/market/log/m;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {p0, v0}, Lcom/yingyonghui/market/log/LogService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yingyonghui/market/log/m;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 202
    invoke-static {p2}, Lcom/yingyonghui/market/log/l;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 203
    invoke-static {p1, v0}, Lcom/yingyonghui/market/log/h;->a(Lcom/yingyonghui/market/log/m;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-static {p0, v0}, Lcom/yingyonghui/market/log/LogService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-static {p1}, Lcom/yingyonghui/market/log/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {p0, v0}, Lcom/yingyonghui/market/log/LogService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-static {p1, p2}, Lcom/yingyonghui/market/log/h;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {p0, v0}, Lcom/yingyonghui/market/log/LogService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/yingyonghui/market/log/m;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 192
    invoke-static {p1, p2}, Lcom/yingyonghui/market/log/h;->a(Ljava/lang/String;Lcom/yingyonghui/market/log/m;)Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-static {p0, v0}, Lcom/yingyonghui/market/log/LogService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/yingyonghui/market/log/m;II)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 182
    invoke-static {p1, p2, p3, p4}, Lcom/yingyonghui/market/log/h;->a(Ljava/lang/String;Lcom/yingyonghui/market/log/m;II)Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-static {p0, v0}, Lcom/yingyonghui/market/log/LogService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/yingyonghui/market/log/m;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 187
    invoke-static {p1, p2, p3, p4}, Lcom/yingyonghui/market/log/h;->a(Ljava/lang/String;Lcom/yingyonghui/market/log/m;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-static {p0, v0}, Lcom/yingyonghui/market/log/LogService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-static {p1, p2}, Lcom/yingyonghui/market/log/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {p0, v0}, Lcom/yingyonghui/market/log/LogService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/yingyonghui/market/log/m;IILjava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 255
    invoke-static {p4}, Lcom/yingyonghui/market/log/l;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 256
    invoke-static {p1, p2, p3, v0}, Lcom/yingyonghui/market/log/h;->h(Lcom/yingyonghui/market/log/m;IILjava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-static {p0, v0}, Lcom/yingyonghui/market/log/LogService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/yingyonghui/market/log/m;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 238
    invoke-static {p2}, Lcom/yingyonghui/market/log/l;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 239
    invoke-static {p1, v0}, Lcom/yingyonghui/market/log/h;->b(Lcom/yingyonghui/market/log/m;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 240
    invoke-static {p0, v0}, Lcom/yingyonghui/market/log/LogService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 197
    invoke-static {p1}, Lcom/yingyonghui/market/log/h;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-static {p0, v0}, Lcom/yingyonghui/market/log/LogService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 311
    invoke-static {p1, p2}, Lcom/yingyonghui/market/log/h;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 312
    invoke-static {p0, v0}, Lcom/yingyonghui/market/log/LogService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 313
    return-void
.end method

.method public static c(Landroid/content/Context;Lcom/yingyonghui/market/log/m;IILjava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 273
    invoke-static {p4}, Lcom/yingyonghui/market/log/l;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 274
    invoke-static {p1, p2, p3, v0}, Lcom/yingyonghui/market/log/h;->i(Lcom/yingyonghui/market/log/m;IILjava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 275
    invoke-static {p0, v0}, Lcom/yingyonghui/market/log/LogService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method public static c(Landroid/content/Context;Lcom/yingyonghui/market/log/m;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 267
    invoke-static {p2}, Lcom/yingyonghui/market/log/l;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 268
    invoke-static {p1, v0}, Lcom/yingyonghui/market/log/h;->c(Lcom/yingyonghui/market/log/m;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-static {p0, v0}, Lcom/yingyonghui/market/log/LogService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 321
    invoke-static {p1}, Lcom/yingyonghui/market/log/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 322
    invoke-static {p0, v0}, Lcom/yingyonghui/market/log/LogService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 323
    return-void
.end method

.method public static d(Landroid/content/Context;Lcom/yingyonghui/market/log/m;Ljava/util/List;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 285
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/h;

    iget-object v3, v0, Lcom/yingyonghui/market/model/h;->c:Ljava/lang/String;

    const-string v4, "weekly_app"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    check-cast v0, Lcom/yingyonghui/market/model/b;

    iget-object v0, v0, Lcom/yingyonghui/market/model/b;->a:Lcom/yingyonghui/market/model/q;

    iget v0, v0, Lcom/yingyonghui/market/model/q;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 286
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0, v1}, Lcom/yingyonghui/market/log/h;->c(Lcom/yingyonghui/market/log/m;ILjava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 287
    invoke-static {p0, v0}, Lcom/yingyonghui/market/log/LogService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 288
    return-void
.end method
