.class public final Lcom/yingyonghui/market/model/j;
.super Ljava/lang/Object;
.source "NewsContent.java"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/util/List;

.field private synthetic d:Lcom/yingyonghui/market/model/a;


# direct methods
.method public constructor <init>(Lcom/yingyonghui/market/model/a;)V
    .locals 1
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/yingyonghui/market/model/j;->d:Lcom/yingyonghui/market/model/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/yingyonghui/market/model/j;->b:Ljava/lang/String;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yingyonghui/market/model/j;->c:Ljava/util/List;

    .line 104
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 107
    new-instance v0, Lcom/yingyonghui/market/model/r;

    iget-object v1, p0, Lcom/yingyonghui/market/model/j;->d:Lcom/yingyonghui/market/model/a;

    invoke-direct {v0, v1}, Lcom/yingyonghui/market/model/r;-><init>(Lcom/yingyonghui/market/model/a;)V

    .line 108
    iput-object p1, v0, Lcom/yingyonghui/market/model/r;->a:Ljava/lang/String;

    .line 109
    iget-object v1, p0, Lcom/yingyonghui/market/model/j;->c:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/yingyonghui/market/model/j;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 115
    new-instance v0, Lcom/yingyonghui/market/model/n;

    iget-object v1, p0, Lcom/yingyonghui/market/model/j;->d:Lcom/yingyonghui/market/model/a;

    invoke-direct {v0, v1}, Lcom/yingyonghui/market/model/n;-><init>(Lcom/yingyonghui/market/model/a;)V

    .line 116
    iput-object p1, v0, Lcom/yingyonghui/market/model/n;->a:Ljava/lang/String;

    .line 117
    iget-object v1, p0, Lcom/yingyonghui/market/model/j;->c:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/yingyonghui/market/model/j;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 123
    new-instance v0, Lcom/yingyonghui/market/model/e;

    iget-object v1, p0, Lcom/yingyonghui/market/model/j;->d:Lcom/yingyonghui/market/model/a;

    invoke-direct {v0, v1}, Lcom/yingyonghui/market/model/e;-><init>(Lcom/yingyonghui/market/model/a;)V

    .line 124
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/yingyonghui/market/model/e;->a:I

    .line 125
    iget-object v1, p0, Lcom/yingyonghui/market/model/j;->c:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/yingyonghui/market/model/j;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_0
    return-void
.end method
