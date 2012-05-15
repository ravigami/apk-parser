.class public Lcom/yingyonghui/market/log/LogService;
.super Landroid/app/Service;
.source "LogService.java"


# static fields
.field private static a:Lcom/yingyonghui/market/log/a;

.field private static b:Lcom/yingyonghui/market/log/f;

.field private static c:Lcom/yingyonghui/market/log/g;

.field private static e:Landroid/content/Context;

.field private static g:J


# instance fields
.field private d:Lcom/yingyonghui/market/log/n;

.field private f:Lcom/yingyonghui/market/log/r;

.field private final h:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/yingyonghui/market/log/LogService;->g:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 101
    new-instance v0, Lcom/yingyonghui/market/log/b;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/log/b;-><init>(Lcom/yingyonghui/market/log/LogService;)V

    iput-object v0, p0, Lcom/yingyonghui/market/log/LogService;->h:Landroid/os/IBinder;

    return-void
.end method

.method public static a()J
    .locals 2

    .prologue
    .line 247
    sget-wide v0, Lcom/yingyonghui/market/log/LogService;->g:J

    return-wide v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 189
    invoke-static {p0}, Lcom/yingyonghui/market/log/LogService;->b(Landroid/content/Context;)Lcom/yingyonghui/market/log/g;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Lcom/yingyonghui/market/log/g;->a()V

    .line 191
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 176
    invoke-static {p0}, Lcom/yingyonghui/market/log/LogService;->b(Landroid/content/Context;)Lcom/yingyonghui/market/log/g;

    move-result-object v0

    .line 177
    invoke-virtual {v0, p1}, Lcom/yingyonghui/market/log/g;->a(Ljava/lang/String;)V

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/yingyonghui/market/log/LogService;->g:J

    .line 179
    return-void
.end method

.method static synthetic a(Lcom/yingyonghui/market/log/LogService;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/yingyonghui/market/log/LogService;->b()V

    return-void
.end method

.method private static a(Ljava/lang/Thread;)V
    .locals 1
    .parameter

    .prologue
    .line 124
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Lcom/yingyonghui/market/log/g;
    .locals 1
    .parameter

    .prologue
    .line 158
    sget-object v0, Lcom/yingyonghui/market/log/LogService;->c:Lcom/yingyonghui/market/log/g;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yingyonghui/market/log/LogService;->c:Lcom/yingyonghui/market/log/g;

    invoke-virtual {v0}, Lcom/yingyonghui/market/log/g;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 159
    :cond_0
    invoke-static {p0}, Lcom/yingyonghui/market/log/g;->a(Landroid/content/Context;)Lcom/yingyonghui/market/log/g;

    move-result-object v0

    .line 160
    sput-object v0, Lcom/yingyonghui/market/log/LogService;->c:Lcom/yingyonghui/market/log/g;

    invoke-static {v0}, Lcom/yingyonghui/market/log/LogService;->a(Ljava/lang/Thread;)V

    .line 163
    :cond_1
    sget-object v0, Lcom/yingyonghui/market/log/LogService;->c:Lcom/yingyonghui/market/log/g;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/yingyonghui/market/log/LogService;->a:Lcom/yingyonghui/market/log/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yingyonghui/market/log/LogService;->a:Lcom/yingyonghui/market/log/a;

    invoke-virtual {v0}, Lcom/yingyonghui/market/log/a;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/yingyonghui/market/log/a;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/log/a;-><init>(Lcom/yingyonghui/market/log/LogService;)V

    sput-object v0, Lcom/yingyonghui/market/log/LogService;->a:Lcom/yingyonghui/market/log/a;

    invoke-static {v0}, Lcom/yingyonghui/market/log/LogService;->a(Ljava/lang/Thread;)V

    .line 119
    :cond_1
    sget-object v0, Lcom/yingyonghui/market/log/LogService;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/yingyonghui/market/log/LogService;->b(Landroid/content/Context;)Lcom/yingyonghui/market/log/g;

    .line 120
    sget-object v0, Lcom/yingyonghui/market/log/LogService;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/yingyonghui/market/log/LogService;->c(Landroid/content/Context;)Lcom/yingyonghui/market/log/f;

    .line 121
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogService send log:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    invoke-static {p0}, Lcom/yingyonghui/market/log/LogService;->c(Landroid/content/Context;)Lcom/yingyonghui/market/log/f;

    move-result-object v0

    .line 184
    invoke-virtual {v0, p1}, Lcom/yingyonghui/market/log/f;->a(Ljava/lang/String;)V

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogService send log:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    return-void
.end method

.method static synthetic b(Lcom/yingyonghui/market/log/LogService;)V
    .locals 5
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/yingyonghui/market/log/LogService;->f:Lcom/yingyonghui/market/log/r;

    sget-object v1, Lcom/yingyonghui/market/log/LogService;->e:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/yingyonghui/market/log/r;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/yingyonghui/market/log/LogService;->f:Lcom/yingyonghui/market/log/r;

    sget-object v3, Lcom/yingyonghui/market/log/LogService;->e:Landroid/content/Context;

    invoke-interface {v2, v3, v0}, Lcom/yingyonghui/market/log/r;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/yingyonghui/market/util/c;->a([B)[B

    move-result-object v2

    iget-object v3, p0, Lcom/yingyonghui/market/log/LogService;->f:Lcom/yingyonghui/market/log/r;

    sget-object v4, Lcom/yingyonghui/market/log/LogService;->e:Landroid/content/Context;

    invoke-interface {v3, v4, v2, v0}, Lcom/yingyonghui/market/log/r;->a(Landroid/content/Context;[BLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/yingyonghui/market/log/LogService;->f:Lcom/yingyonghui/market/log/r;

    sget-object v3, Lcom/yingyonghui/market/log/LogService;->e:Landroid/content/Context;

    invoke-interface {v2, v3, v0}, Lcom/yingyonghui/market/log/r;->c(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    iget-object v0, p0, Lcom/yingyonghui/market/log/LogService;->f:Lcom/yingyonghui/market/log/r;

    sget-object v1, Lcom/yingyonghui/market/log/LogService;->e:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/yingyonghui/market/log/r;->b(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_1
    sget-object v2, Lcom/yingyonghui/market/log/LogService;->e:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/yingyonghui/market/log/LogService;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static b(Ljava/lang/Thread;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    if-eqz p0, :cond_0

    .line 143
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 144
    :cond_0
    return-void
.end method

.method private static c(Landroid/content/Context;)Lcom/yingyonghui/market/log/f;
    .locals 1
    .parameter

    .prologue
    .line 167
    sget-object v0, Lcom/yingyonghui/market/log/LogService;->b:Lcom/yingyonghui/market/log/f;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yingyonghui/market/log/LogService;->b:Lcom/yingyonghui/market/log/f;

    invoke-virtual {v0}, Lcom/yingyonghui/market/log/f;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 168
    :cond_0
    invoke-static {p0}, Lcom/yingyonghui/market/log/f;->a(Landroid/content/Context;)Lcom/yingyonghui/market/log/f;

    move-result-object v0

    .line 169
    sput-object v0, Lcom/yingyonghui/market/log/LogService;->b:Lcom/yingyonghui/market/log/f;

    invoke-static {v0}, Lcom/yingyonghui/market/log/LogService;->a(Ljava/lang/Thread;)V

    .line 172
    :cond_1
    sget-object v0, Lcom/yingyonghui/market/log/LogService;->b:Lcom/yingyonghui/market/log/f;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/yingyonghui/market/log/LogService;->h:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 34
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 36
    invoke-virtual {p0}, Lcom/yingyonghui/market/log/LogService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 37
    sput-object v0, Lcom/yingyonghui/market/log/LogService;->e:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/yingyonghui/market/log/LogService;->stopSelf()V

    .line 62
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/yingyonghui/market/log/LogService;->g:J

    .line 44
    new-instance v0, Lcom/yingyonghui/market/log/d;

    invoke-direct {v0}, Lcom/yingyonghui/market/log/d;-><init>()V

    iput-object v0, p0, Lcom/yingyonghui/market/log/LogService;->f:Lcom/yingyonghui/market/log/r;

    .line 46
    sget-object v0, Lcom/yingyonghui/market/log/LogService;->e:Landroid/content/Context;

    const-class v1, Lcom/yingyonghui/market/ActivityMain;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yingyonghui/market/util/GlobalUtil;->h(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/yingyonghui/market/log/LogService;->e:Landroid/content/Context;

    const-class v1, Lcom/yingyonghui/market/ActivitySplash;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yingyonghui/market/util/GlobalUtil;->h(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAutoCreate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 47
    new-instance v0, Lcom/yingyonghui/market/log/n;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/log/n;-><init>(Lcom/yingyonghui/market/log/LogService;)V

    iput-object v0, p0, Lcom/yingyonghui/market/log/LogService;->d:Lcom/yingyonghui/market/log/n;

    .line 48
    iget-object v0, p0, Lcom/yingyonghui/market/log/LogService;->d:Lcom/yingyonghui/market/log/n;

    invoke-virtual {v0}, Lcom/yingyonghui/market/log/n;->start()V

    .line 50
    invoke-virtual {p0}, Lcom/yingyonghui/market/log/LogService;->stopSelf()V

    goto :goto_0

    .line 46
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/yingyonghui/market/log/LogService;->d:Lcom/yingyonghui/market/log/n;

    if-eqz v0, :cond_3

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/yingyonghui/market/log/LogService;->d:Lcom/yingyonghui/market/log/n;

    invoke-virtual {v0}, Lcom/yingyonghui/market/log/n;->interrupt()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yingyonghui/market/log/LogService;->d:Lcom/yingyonghui/market/log/n;

    .line 60
    :cond_3
    invoke-direct {p0}, Lcom/yingyonghui/market/log/LogService;->b()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/yingyonghui/market/log/LogService;->a:Lcom/yingyonghui/market/log/a;

    invoke-static {v0}, Lcom/yingyonghui/market/log/LogService;->b(Ljava/lang/Thread;)V

    sget-object v0, Lcom/yingyonghui/market/log/LogService;->b:Lcom/yingyonghui/market/log/f;

    invoke-static {v0}, Lcom/yingyonghui/market/log/LogService;->b(Ljava/lang/Thread;)V

    sget-object v0, Lcom/yingyonghui/market/log/LogService;->c:Lcom/yingyonghui/market/log/g;

    invoke-static {v0}, Lcom/yingyonghui/market/log/LogService;->b(Ljava/lang/Thread;)V

    iget-object v0, p0, Lcom/yingyonghui/market/log/LogService;->d:Lcom/yingyonghui/market/log/n;

    invoke-static {v0}, Lcom/yingyonghui/market/log/LogService;->b(Ljava/lang/Thread;)V

    .line 113
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 115
    return-void
.end method
