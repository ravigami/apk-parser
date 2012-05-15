.class final Lcom/yingyonghui/downloads/f;
.super Ljava/lang/Object;
.source "DownloadNotification.java"


# instance fields
.field a:I

.field b:J

.field c:J

.field d:I

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:[Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-wide v0, p0, Lcom/yingyonghui/downloads/f;->b:J

    .line 72
    iput-wide v0, p0, Lcom/yingyonghui/downloads/f;->c:J

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/yingyonghui/downloads/f;->d:I

    .line 76
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/yingyonghui/downloads/f;->g:[Ljava/lang/String;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yingyonghui/downloads/f;->h:Ljava/lang/String;

    return-void
.end method
