.class final Lcom/yingyonghui/market/log/n;
.super Ljava/lang/Thread;
.source "LogService.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/log/LogService;


# direct methods
.method synthetic constructor <init>(Lcom/yingyonghui/market/log/LogService;)V
    .locals 1
    .parameter

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yingyonghui/market/log/n;-><init>(Lcom/yingyonghui/market/log/LogService;B)V

    return-void
.end method

.method private constructor <init>(Lcom/yingyonghui/market/log/LogService;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/yingyonghui/market/log/n;->a:Lcom/yingyonghui/market/log/LogService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 68
    iget-object v0, p0, Lcom/yingyonghui/market/log/n;->a:Lcom/yingyonghui/market/log/LogService;

    invoke-static {v0}, Lcom/yingyonghui/market/log/LogService;->a(Lcom/yingyonghui/market/log/LogService;)V

    .line 71
    iget-object v0, p0, Lcom/yingyonghui/market/log/n;->a:Lcom/yingyonghui/market/log/LogService;

    invoke-static {v0}, Lcom/yingyonghui/market/log/LogService;->b(Lcom/yingyonghui/market/log/LogService;)V

    .line 73
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 74
    return-void
.end method
