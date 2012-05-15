.class final Lcom/yingyonghui/market/online/k;
.super Ljava/lang/Object;
.source "HttpCache.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/online/d;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/online/d;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/yingyonghui/market/online/k;->a:Lcom/yingyonghui/market/online/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    .line 101
    check-cast p1, Lcom/yingyonghui/market/util/o;

    check-cast p2, Lcom/yingyonghui/market/util/o;

    iget-object v0, p1, Lcom/yingyonghui/market/util/o;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    move-wide v1, v3

    :goto_0
    iget-object v0, p2, Lcom/yingyonghui/market/util/o;->b:Ljava/lang/Object;

    if-nez v0, :cond_1

    move-wide v5, v3

    :goto_1
    sub-long v0, v1, v5

    cmp-long v2, v0, v3

    if-lez v2, :cond_2

    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_0
    iget-object v0, p1, Lcom/yingyonghui/market/util/o;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-wide v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p2, Lcom/yingyonghui/market/util/o;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_1

    :cond_2
    cmp-long v0, v0, v3

    if-gez v0, :cond_3

    const/4 v0, -0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method
