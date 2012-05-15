.class public final Lcom/yingyonghui/market/model/a;
.super Ljava/lang/Object;
.source "NewsContent.java"


# instance fields
.field private a:Lcom/yingyonghui/market/model/c;

.field private b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/yingyonghui/market/model/a;->a:Lcom/yingyonghui/market/model/c;

    .line 21
    iput-object v0, p0, Lcom/yingyonghui/market/model/a;->b:Ljava/util/ArrayList;

    .line 22
    return-void
.end method


# virtual methods
.method public final a()Lcom/yingyonghui/market/model/c;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/yingyonghui/market/model/a;->a:Lcom/yingyonghui/market/model/c;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/yingyonghui/market/model/c;

    invoke-direct {v0}, Lcom/yingyonghui/market/model/c;-><init>()V

    iput-object v0, p0, Lcom/yingyonghui/market/model/a;->a:Lcom/yingyonghui/market/model/c;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/yingyonghui/market/model/a;->a:Lcom/yingyonghui/market/model/c;

    return-object v0
.end method

.method public final a(Lcom/yingyonghui/market/model/j;)V
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/yingyonghui/market/model/a;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yingyonghui/market/model/a;->b:Ljava/util/ArrayList;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/yingyonghui/market/model/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method

.method public final b()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/yingyonghui/market/model/a;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yingyonghui/market/model/a;->b:Ljava/util/ArrayList;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/yingyonghui/market/model/a;->b:Ljava/util/ArrayList;

    return-object v0
.end method
