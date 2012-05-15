.class public Lcom/yingyonghui/market/MarketApplication;
.super Landroid/app/Application;
.source "MarketApplication.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/yingyonghui/market/MarketApplication;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/yingyonghui/market/model/q;)V
    .locals 2
    .parameter

    .prologue
    .line 70
    if-nez p1, :cond_0

    .line 77
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/yingyonghui/market/MarketApplication;->e:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_1

    .line 73
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/yingyonghui/market/MarketApplication;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/yingyonghui/market/MarketApplication;->e:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/yingyonghui/market/MarketApplication;->a:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 4
    .parameter

    .prologue
    .line 55
    if-nez p1, :cond_1

    .line 56
    iget-object v0, p0, Lcom/yingyonghui/market/MarketApplication;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 67
    :cond_0
    return-void

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/yingyonghui/market/MarketApplication;->e:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_2

    .line 61
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/yingyonghui/market/MarketApplication;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 64
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/model/q;

    .line 65
    iget-object v2, p0, Lcom/yingyonghui/market/MarketApplication;->e:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, v0, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/yingyonghui/market/MarketApplication;->b:Z

    .line 29
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/yingyonghui/market/MarketApplication;->d:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public final b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/yingyonghui/market/MarketApplication;->c:Z

    .line 35
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/yingyonghui/market/MarketApplication;->b:Z

    return v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/yingyonghui/market/MarketApplication;->e:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/yingyonghui/market/MarketApplication;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/yingyonghui/market/MarketApplication;->c:Z

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yingyonghui/market/MarketApplication;->d:Ljava/lang/String;

    return-object v0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/yingyonghui/market/MarketApplication;->e:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/yingyonghui/market/MarketApplication;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yingyonghui/market/MarketApplication;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 104
    :cond_0
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 105
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/yingyonghui/market/MarketApplication;->e:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/yingyonghui/market/MarketApplication;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yingyonghui/market/MarketApplication;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 94
    :cond_0
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 95
    return-void
.end method
