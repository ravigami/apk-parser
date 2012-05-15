.class public Lcom/yingyonghui/market/online/SyncService;
.super Landroid/app/Service;
.source "SyncService.java"


# instance fields
.field private a:[Ljava/lang/String;

.field private b:Lcom/yingyonghui/market/online/o;

.field private c:Lcom/yingyonghui/market/online/e;

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 43
    new-instance v0, Lcom/yingyonghui/market/online/a;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/online/a;-><init>(Lcom/yingyonghui/market/online/SyncService;)V

    iput-object v0, p0, Lcom/yingyonghui/market/online/SyncService;->d:Landroid/os/Handler;

    .line 155
    return-void
.end method

.method static synthetic a(Lcom/yingyonghui/market/online/SyncService;I)V
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/16 v4, 0x14

    const/4 v3, 0x0

    .line 23
    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/yingyonghui/market/online/SyncService;->c:Lcom/yingyonghui/market/online/e;

    iget-object v1, p0, Lcom/yingyonghui/market/online/SyncService;->d:Landroid/os/Handler;

    invoke-virtual {v0, v3, v1}, Lcom/yingyonghui/market/online/e;->c(ILandroid/os/Handler;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/yingyonghui/market/online/SyncService;->c:Lcom/yingyonghui/market/online/e;

    iget-object v1, p0, Lcom/yingyonghui/market/online/SyncService;->d:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v2, v1}, Lcom/yingyonghui/market/online/e;->a(IIILandroid/os/Handler;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/yingyonghui/market/online/SyncService;->c:Lcom/yingyonghui/market/online/e;

    const-string v1, "app.list.category"

    const-string v5, "time"

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/yingyonghui/market/online/SyncService;->d:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v7}, Lcom/yingyonghui/market/online/e;->a(Ljava/lang/String;IIILjava/lang/String;ILandroid/os/Handler;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/yingyonghui/market/online/SyncService;->c:Lcom/yingyonghui/market/online/e;

    const-string v2, "app.list.fast"

    const-string v5, "game"

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/yingyonghui/market/online/SyncService;->d:Landroid/os/Handler;

    invoke-virtual/range {v1 .. v7}, Lcom/yingyonghui/market/online/e;->a(Ljava/lang/String;IILjava/lang/String;ILandroid/os/Handler;)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/yingyonghui/market/online/SyncService;->c:Lcom/yingyonghui/market/online/e;

    const-string v2, "app.list.fast"

    const-string v5, "app"

    const/4 v6, 0x4

    iget-object v7, p0, Lcom/yingyonghui/market/online/SyncService;->d:Landroid/os/Handler;

    invoke-virtual/range {v1 .. v7}, Lcom/yingyonghui/market/online/e;->a(Ljava/lang/String;IILjava/lang/String;ILandroid/os/Handler;)V

    goto :goto_0

    :pswitch_5
    iget-object v5, p0, Lcom/yingyonghui/market/online/SyncService;->c:Lcom/yingyonghui/market/online/e;

    const-string v6, "app.list.rank"

    const-string v7, "all"

    const-string v8, "week"

    const/4 v11, 0x5

    iget-object v12, p0, Lcom/yingyonghui/market/online/SyncService;->d:Landroid/os/Handler;

    move v9, v3

    move v10, v4

    invoke-virtual/range {v5 .. v12}, Lcom/yingyonghui/market/online/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/yingyonghui/market/online/SyncService;->c:Lcom/yingyonghui/market/online/e;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/yingyonghui/market/online/SyncService;->d:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/yingyonghui/market/online/e;->c(IIILandroid/os/Handler;)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/yingyonghui/market/online/SyncService;->c:Lcom/yingyonghui/market/online/e;

    const-string v1, "category"

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/yingyonghui/market/online/SyncService;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/yingyonghui/market/online/e;->c(Ljava/lang/String;ILandroid/os/Handler;)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/yingyonghui/market/online/SyncService;->c:Lcom/yingyonghui/market/online/e;

    const-string v1, "category"

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/yingyonghui/market/online/SyncService;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/yingyonghui/market/online/e;->c(Ljava/lang/String;ILandroid/os/Handler;)V

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/yingyonghui/market/online/SyncService;->c:Lcom/yingyonghui/market/online/e;

    const-string v1, "recommend"

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/yingyonghui/market/online/SyncService;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/yingyonghui/market/online/e;->c(Ljava/lang/String;ILandroid/os/Handler;)V

    goto :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/yingyonghui/market/online/SyncService;->c:Lcom/yingyonghui/market/online/e;

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/yingyonghui/market/online/SyncService;->d:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/yingyonghui/market/online/e;->b(IIILandroid/os/Handler;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method static synthetic a(Lcom/yingyonghui/market/online/SyncService;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yingyonghui/market/online/SyncService;->c:Lcom/yingyonghui/market/online/e;

    invoke-virtual {v0, p1}, Lcom/yingyonghui/market/online/e;->i(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/yingyonghui/market/online/SyncService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/yingyonghui/market/online/SyncService;->a(Ljava/io/File;)Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_3
    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private a(Ljava/io/File;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 255
    const/4 v1, 0x1

    .line 256
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 257
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 258
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 259
    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_0

    .line 260
    aget-object v4, v2, v0

    invoke-direct {p0, v4}, Lcom/yingyonghui/market/online/SyncService;->a(Ljava/io/File;)Z

    move-result v4

    and-int/2addr v1, v4

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 262
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    and-int/2addr v0, v1

    .line 268
    :cond_1
    :goto_1
    return v0

    .line 264
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    and-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static synthetic a(Lcom/yingyonghui/market/online/SyncService;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/yingyonghui/market/online/SyncService;->a:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/yingyonghui/market/online/SyncService;)Lcom/yingyonghui/market/online/o;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/yingyonghui/market/online/SyncService;->b:Lcom/yingyonghui/market/online/o;

    return-object v0
.end method

.method static synthetic c(Lcom/yingyonghui/market/online/SyncService;)Lcom/yingyonghui/market/online/o;
    .locals 1
    .parameter

    .prologue
    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yingyonghui/market/online/SyncService;->b:Lcom/yingyonghui/market/online/o;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter

    .prologue
    .line 274
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot bind to Market Sync Service"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 143
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 148
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/yingyonghui/market/by;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/yingyonghui/market/by;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/yingyonghui/market/by;->f:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/yingyonghui/market/by;->g:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/yingyonghui/market/by;->h:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/yingyonghui/market/by;->i:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yingyonghui/market/by;->e:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/yingyonghui/market/by;->j:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/yingyonghui/market/by;->k:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/yingyonghui/market/by;->l:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/yingyonghui/market/by;->m:Ljava/lang/String;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/yingyonghui/market/online/SyncService;->a:[Ljava/lang/String;

    .line 149
    invoke-static {p0}, Lcom/yingyonghui/market/online/e;->a(Landroid/content/Context;)Lcom/yingyonghui/market/online/e;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/online/SyncService;->c:Lcom/yingyonghui/market/online/e;

    .line 151
    new-instance v0, Lcom/yingyonghui/market/online/o;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/online/o;-><init>(Lcom/yingyonghui/market/online/SyncService;)V

    iput-object v0, p0, Lcom/yingyonghui/market/online/SyncService;->b:Lcom/yingyonghui/market/online/o;

    .line 152
    iget-object v0, p0, Lcom/yingyonghui/market/online/SyncService;->b:Lcom/yingyonghui/market/online/o;

    invoke-virtual {v0}, Lcom/yingyonghui/market/online/o;->start()V

    .line 153
    return-void
.end method
