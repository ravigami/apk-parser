.class final Lcom/yingyonghui/market/c;
.super Ljava/lang/Object;
.source "ActivityListAppDownload.java"

# interfaces
.implements Lcom/yingyonghui/market/cf;


# instance fields
.field final synthetic a:Lcom/yingyonghui/market/ActivityListAppDownload;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityListAppDownload;)V
    .locals 0
    .parameter

    .prologue
    .line 787
    iput-object p1, p0, Lcom/yingyonghui/market/c;->a:Lcom/yingyonghui/market/ActivityListAppDownload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 790
    new-instance v0, Lcom/yingyonghui/market/cc;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/cc;-><init>(Lcom/yingyonghui/market/c;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/cc;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 837
    return-void
.end method
