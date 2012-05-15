.class final Lcom/yingyonghui/market/ff;
.super Landroid/database/ContentObserver;
.source "ActivityDetailApp.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:I

.field private synthetic c:Lcom/yingyonghui/market/ActivityDetailApp;


# direct methods
.method public constructor <init>(Lcom/yingyonghui/market/ActivityDetailApp;Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, Lcom/yingyonghui/market/ff;->c:Lcom/yingyonghui/market/ActivityDetailApp;

    .line 357
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 358
    iput-object p2, p0, Lcom/yingyonghui/market/ff;->a:Landroid/content/Context;

    .line 359
    iput p3, p0, Lcom/yingyonghui/market/ff;->b:I

    .line 360
    return-void
.end method

.method static synthetic a(Lcom/yingyonghui/market/ff;)I
    .locals 1
    .parameter

    .prologue
    .line 339
    iget v0, p0, Lcom/yingyonghui/market/ff;->b:I

    return v0
.end method

.method static synthetic b(Lcom/yingyonghui/market/ff;)V
    .locals 1
    .parameter

    .prologue
    .line 339
    iget-object v0, p0, Lcom/yingyonghui/market/ff;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3
    .parameter

    .prologue
    .line 350
    iget-object v0, p0, Lcom/yingyonghui/market/ff;->c:Lcom/yingyonghui/market/ActivityDetailApp;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityDetailApp;->g(Lcom/yingyonghui/market/ActivityDetailApp;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/yingyonghui/market/ff;->c:Lcom/yingyonghui/market/ActivityDetailApp;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityDetailApp;->g(Lcom/yingyonghui/market/ActivityDetailApp;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6e

    iget-object v2, p0, Lcom/yingyonghui/market/ff;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 354
    :cond_0
    return-void
.end method
