.class final Lcom/yingyonghui/market/online/d;
.super Ljava/lang/Thread;
.source "HttpCache.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/online/n;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/online/n;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/yingyonghui/market/online/d;->a:Lcom/yingyonghui/market/online/n;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 58
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/yingyonghui/market/online/n;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 62
    const-string v3, ".meta"

    invoke-static {v3}, Lcom/yingyonghui/market/online/n;->a(Ljava/lang/String;)Ljava/io/FilenameFilter;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    .line 64
    if-nez v3, :cond_0

    .line 133
    :goto_0
    return-void

    :cond_0
    move v0, v1

    .line 68
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 70
    aget-object v4, v3, v0

    .line 71
    new-instance v5, Lcom/yingyonghui/market/util/o;

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lcom/yingyonghui/market/util/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 73
    rem-int/lit8 v4, v0, 0x64

    if-nez v4, :cond_1

    .line 75
    const-wide/16 v4, 0xfa

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 76
    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 116
    :cond_2
    new-instance v0, Lcom/yingyonghui/market/online/k;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/online/k;-><init>(Lcom/yingyonghui/market/online/d;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 125
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 126
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v4

    :goto_3
    if-ge v1, v4, :cond_4

    .line 127
    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/util/o;

    .line 128
    if-eqz v0, :cond_3

    iget-object v5, v0, Lcom/yingyonghui/market/util/o;->a:Ljava/lang/Object;

    if-eqz v5, :cond_3

    .line 129
    iget-object v0, v0, Lcom/yingyonghui/market/util/o;->a:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 132
    :cond_4
    iget-object v0, p0, Lcom/yingyonghui/market/online/d;->a:Lcom/yingyonghui/market/online/n;

    invoke-static {v0, v3}, Lcom/yingyonghui/market/online/n;->a(Lcom/yingyonghui/market/online/n;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    goto :goto_0
.end method
