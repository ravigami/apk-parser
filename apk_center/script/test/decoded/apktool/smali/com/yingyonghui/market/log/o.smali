.class final Lcom/yingyonghui/market/log/o;
.super Ljava/lang/Object;
.source "FileClientLogDAO.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Ljava/util/ArrayList;

.field private synthetic c:Lcom/yingyonghui/market/log/d;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/log/d;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/yingyonghui/market/log/o;->c:Lcom/yingyonghui/market/log/d;

    iput-object p2, p0, Lcom/yingyonghui/market/log/o;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/yingyonghui/market/log/o;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 153
    new-instance v0, Lcom/yingyonghui/market/log/j;

    invoke-direct {v0}, Lcom/yingyonghui/market/log/j;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/yingyonghui/market/log/o;->a:Landroid/content/Context;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/yingyonghui/market/log/o;->b:Ljava/util/ArrayList;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/log/j;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 154
    return-void
.end method
