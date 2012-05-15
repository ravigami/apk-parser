.class final Lcom/yingyonghui/downloads/o;
.super Landroid/database/ContentObserver;
.source "DownloadService.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/downloads/DownloadService;


# direct methods
.method public constructor <init>(Lcom/yingyonghui/downloads/DownloadService;)V
    .locals 1
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/yingyonghui/downloads/o;->a:Lcom/yingyonghui/downloads/DownloadService;

    .line 110
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 111
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2
    .parameter

    .prologue
    .line 118
    sget-boolean v0, Lcom/yingyonghui/downloads/w;->b:Z

    if-eqz v0, :cond_0

    .line 119
    const-string v0, "DownloadManager"

    const-string v1, "Service ContentObserver received notification"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/yingyonghui/downloads/o;->a:Lcom/yingyonghui/downloads/DownloadService;

    invoke-static {v0}, Lcom/yingyonghui/downloads/DownloadService;->a(Lcom/yingyonghui/downloads/DownloadService;)V

    .line 122
    return-void
.end method
