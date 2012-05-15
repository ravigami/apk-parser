.class final Lcom/yingyonghui/market/an;
.super Landroid/os/AsyncTask;
.source "ActivitySplash.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivitySplash;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivitySplash;)V
    .locals 0
    .parameter

    .prologue
    .line 427
    iput-object p1, p0, Lcom/yingyonghui/market/an;->a:Lcom/yingyonghui/market/ActivitySplash;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 4

    .prologue
    .line 431
    :try_start_0
    iget-object v0, p0, Lcom/yingyonghui/market/an;->a:Lcom/yingyonghui/market/ActivitySplash;

    invoke-virtual {v0}, Lcom/yingyonghui/market/ActivitySplash;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v1, ".apk"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/yingyonghui/market/util/d;->a(Ljava/io/File;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 432
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 433
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 434
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 435
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "tmpCopy.apk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 436
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 437
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 444
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 427
    invoke-direct {p0}, Lcom/yingyonghui/market/an;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
