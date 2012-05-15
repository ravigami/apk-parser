.class public final Lcom/yingyonghui/market/online/b;
.super Ljava/lang/Object;
.source "HttpManager.java"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Ljava/util/List;

.field public g:Landroid/os/Handler;

.field public h:Ljava/lang/Object;

.field public i:I

.field public j:Z

.field public k:Ljava/lang/String;

.field public l:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x5

    iput v0, p0, Lcom/yingyonghui/market/online/b;->i:I

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yingyonghui/market/online/b;->j:Z

    return-void
.end method
