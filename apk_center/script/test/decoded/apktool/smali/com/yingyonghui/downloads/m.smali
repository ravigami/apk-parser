.class final Lcom/yingyonghui/downloads/m;
.super Ljava/lang/Throwable;
.source "DownloadThread.java"


# instance fields
.field public a:I

.field private synthetic b:Lcom/yingyonghui/downloads/s;


# direct methods
.method public constructor <init>(Lcom/yingyonghui/downloads/s;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/yingyonghui/downloads/m;->b:Lcom/yingyonghui/downloads/s;

    .line 117
    invoke-direct {p0, p3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 118
    iput p2, p0, Lcom/yingyonghui/downloads/m;->a:I

    .line 119
    return-void
.end method

.method public constructor <init>(Lcom/yingyonghui/downloads/s;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/yingyonghui/downloads/m;->b:Lcom/yingyonghui/downloads/s;

    .line 122
    invoke-direct {p0, p3, p4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    iput p2, p0, Lcom/yingyonghui/downloads/m;->a:I

    .line 124
    return-void
.end method
