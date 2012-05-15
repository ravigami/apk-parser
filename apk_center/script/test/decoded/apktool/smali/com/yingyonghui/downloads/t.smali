.class final Lcom/yingyonghui/downloads/t;
.super Ljava/lang/Object;
.source "DownloadThread.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/io/FileOutputStream;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:I

.field public f:I

.field public g:Ljava/lang/String;

.field public h:Z

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/yingyonghui/downloads/y;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-boolean v0, p0, Lcom/yingyonghui/downloads/t;->d:Z

    .line 78
    iput v0, p0, Lcom/yingyonghui/downloads/t;->e:I

    .line 79
    iput v0, p0, Lcom/yingyonghui/downloads/t;->f:I

    .line 81
    iput-boolean v0, p0, Lcom/yingyonghui/downloads/t;->h:Z

    .line 85
    iget-object v0, p1, Lcom/yingyonghui/downloads/y;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/yingyonghui/downloads/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/downloads/t;->c:Ljava/lang/String;

    .line 86
    iget-object v0, p1, Lcom/yingyonghui/downloads/y;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/yingyonghui/downloads/t;->i:Ljava/lang/String;

    .line 87
    iget-object v0, p1, Lcom/yingyonghui/downloads/y;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/yingyonghui/downloads/t;->a:Ljava/lang/String;

    .line 88
    return-void
.end method
