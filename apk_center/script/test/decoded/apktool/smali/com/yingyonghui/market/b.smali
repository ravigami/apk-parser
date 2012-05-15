.class final Lcom/yingyonghui/market/b;
.super Ljava/lang/Object;
.source "ActivityListAppDownload.java"

# interfaces
.implements Lcom/yingyonghui/market/cf;


# instance fields
.field final synthetic a:Lcom/yingyonghui/market/a;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/a;)V
    .locals 0
    .parameter

    .prologue
    .line 847
    iput-object p1, p0, Lcom/yingyonghui/market/b;->a:Lcom/yingyonghui/market/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 850
    new-instance v0, Lcom/yingyonghui/market/ca;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/ca;-><init>(Lcom/yingyonghui/market/b;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/ca;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 879
    return-void
.end method
