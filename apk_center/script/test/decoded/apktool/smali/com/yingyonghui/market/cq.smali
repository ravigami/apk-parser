.class final Lcom/yingyonghui/market/cq;
.super Landroid/os/AsyncTask;
.source "ActivitySplash.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/au;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/au;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/yingyonghui/market/cq;->a:Lcom/yingyonghui/market/au;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 19

    .prologue
    .line 230
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yingyonghui/market/cq;->a:Lcom/yingyonghui/market/au;

    iget-object v1, v1, Lcom/yingyonghui/market/au;->a:Lcom/yingyonghui/market/ActivitySplash;

    invoke-virtual {v1}, Lcom/yingyonghui/market/ActivitySplash;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-static {}, Lcom/yingyonghui/market/util/q;->a()I

    move-result v1

    invoke-static/range {v17 .. v17}, Lcom/yingyonghui/market/util/q;->f(Landroid/content/Context;)I

    move-result v15

    invoke-static/range {v17 .. v17}, Lcom/yingyonghui/market/util/q;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v3}, Lcom/yingyonghui/market/util/b;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v17 .. v17}, Lcom/yingyonghui/market/util/GlobalUtil;->e(Landroid/content/Context;)I

    move-result v4

    invoke-static {}, Lcom/yingyonghui/market/util/q;->b()Ljava/lang/String;

    move-result-object v10

    invoke-static/range {v17 .. v17}, Lcom/yingyonghui/market/util/q;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v17 .. v17}, Lcom/yingyonghui/market/util/q;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-static/range {v17 .. v17}, Lcom/yingyonghui/market/util/q;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v17 .. v17}, Lcom/yingyonghui/market/util/GlobalUtil;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/yingyonghui/market/util/g;->a()Ljava/lang/String;

    move-result-object v11

    invoke-static/range {v17 .. v17}, Lcom/yingyonghui/market/util/q;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-static/range {v17 .. v17}, Lcom/yingyonghui/market/util/g;->e(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/yingyonghui/market/util/q;->c()Ljava/lang/String;

    move-result-object v16

    const/4 v6, 0x0

    aget-object v6, v8, v6

    const/4 v7, 0x1

    aget-object v7, v8, v7

    const/16 v18, 0x2

    aget-object v8, v8, v18

    invoke-static/range {v1 .. v16}, Lcom/yingyonghui/market/log/h;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-static {v0, v1}, Lcom/yingyonghui/market/log/LogService;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    const/4 v1, 0x0

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/yingyonghui/market/cq;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
