.class final Lcom/yingyonghui/market/be;
.super Ljava/lang/Thread;
.source "ActivityListAppDownload.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityListAppDownload;


# direct methods
.method synthetic constructor <init>(Lcom/yingyonghui/market/ActivityListAppDownload;)V
    .locals 1
    .parameter

    .prologue
    .line 394
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yingyonghui/market/be;-><init>(Lcom/yingyonghui/market/ActivityListAppDownload;B)V

    return-void
.end method

.method private constructor <init>(Lcom/yingyonghui/market/ActivityListAppDownload;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 394
    iput-object p1, p0, Lcom/yingyonghui/market/be;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 397
    iget-object v1, p0, Lcom/yingyonghui/market/be;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    iget-object v0, p0, Lcom/yingyonghui/market/be;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-virtual {v0}, Lcom/yingyonghui/market/ActivityListAppDownload;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v2, ".apk"

    invoke-static {v0, v2, v9}, Lcom/yingyonghui/market/util/d;->a(Ljava/io/File;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/yingyonghui/market/util/GlobalUtil;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "/Yingyonghui"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v3, ".apk"

    invoke-static {v2, v3, v8}, Lcom/yingyonghui/market/util/d;->a(Ljava/io/File;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v2, p0, Lcom/yingyonghui/market/be;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-virtual {v2}, Lcom/yingyonghui/market/ActivityListAppDownload;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-static {v2, v0}, Lcom/yingyonghui/market/util/GlobalUtil;->a(Landroid/content/ContentResolver;Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Lcom/yingyonghui/market/model/q;

    invoke-direct {v5}, Lcom/yingyonghui/market/model/q;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/yingyonghui/market/model/q;->R:Ljava/lang/String;

    iget-object v0, p0, Lcom/yingyonghui/market/be;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppDownload;->l(Lcom/yingyonghui/market/ActivityListAppDownload;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v6, v5, Lcom/yingyonghui/market/model/q;->R:Ljava/lang/String;

    const/16 v7, 0x80

    invoke-virtual {v0, v6, v7}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_1

    iget-object v7, v5, Lcom/yingyonghui/market/model/q;->R:Ljava/lang/String;

    iput-object v7, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v7, v5, Lcom/yingyonghui/market/model/q;->R:Ljava/lang/String;

    iput-object v7, v6, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iget-object v6, p0, Lcom/yingyonghui/market/be;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v6}, Lcom/yingyonghui/market/ActivityListAppDownload;->l(Lcom/yingyonghui/market/ActivityListAppDownload;)Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/yingyonghui/market/model/q;->i:Ljava/lang/String;

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v6, v5, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, v5, Lcom/yingyonghui/market/model/q;->s:I

    iget-object v0, p0, Lcom/yingyonghui/market/be;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppDownload;->l(Lcom/yingyonghui/market/ActivityListAppDownload;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v6, v5, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/yingyonghui/market/util/GlobalUtil;->b(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v0

    iget v6, v5, Lcom/yingyonghui/market/model/q;->s:I

    if-eq v0, v6, :cond_2

    iput v9, v5, Lcom/yingyonghui/market/model/q;->n:I

    :goto_1
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iput v8, v5, Lcom/yingyonghui/market/model/q;->n:I

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/yingyonghui/market/be;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/yingyonghui/market/ActivityListAppDownload;->b(I)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v1, v3}, Lcom/yingyonghui/market/ActivityListAppDownload;->a(Lcom/yingyonghui/market/ActivityListAppDownload;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 398
    iget-object v0, p0, Lcom/yingyonghui/market/be;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListAppDownload;->k(Lcom/yingyonghui/market/ActivityListAppDownload;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/be;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-static {v1}, Lcom/yingyonghui/market/ActivityListAppDownload;->k(Lcom/yingyonghui/market/ActivityListAppDownload;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x64

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 399
    return-void
.end method
