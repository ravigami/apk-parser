.class final Lcom/yingyonghui/downloads/l;
.super Ljava/lang/Object;
.source "DownloadThread.java"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:J


# direct methods
.method synthetic constructor <init>()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yingyonghui/downloads/l;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput v0, p0, Lcom/yingyonghui/downloads/l;->a:I

    .line 97
    iput-boolean v0, p0, Lcom/yingyonghui/downloads/l;->c:Z

    .line 101
    iput v0, p0, Lcom/yingyonghui/downloads/l;->g:I

    .line 102
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/yingyonghui/downloads/l;->h:J

    return-void
.end method
