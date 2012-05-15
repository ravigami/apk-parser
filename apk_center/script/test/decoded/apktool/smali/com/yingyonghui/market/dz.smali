.class final Lcom/yingyonghui/market/dz;
.super Landroid/os/AsyncTask;
.source "ActivityHubListen.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityHubListen;


# direct methods
.method synthetic constructor <init>(Lcom/yingyonghui/market/ActivityHubListen;)V
    .locals 1
    .parameter

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yingyonghui/market/dz;-><init>(Lcom/yingyonghui/market/ActivityHubListen;B)V

    return-void
.end method

.method private constructor <init>(Lcom/yingyonghui/market/ActivityHubListen;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/yingyonghui/market/dz;->a:Lcom/yingyonghui/market/ActivityHubListen;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter

    .prologue
    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/yingyonghui/market/dz;->a:Lcom/yingyonghui/market/ActivityHubListen;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityHubListen;->b(Lcom/yingyonghui/market/ActivityHubListen;)Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get a connection from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 133
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 136
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 138
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    .line 139
    new-instance v0, Lcom/yingyonghui/market/bs;

    iget-object v4, p0, Lcom/yingyonghui/market/dz;->a:Lcom/yingyonghui/market/ActivityHubListen;

    invoke-direct {v0, v4}, Lcom/yingyonghui/market/bs;-><init>(Lcom/yingyonghui/market/ActivityHubListen;)V

    .line 140
    invoke-virtual {v0, v2, v3}, Lcom/yingyonghui/market/bs;->a(Ljava/io/ObjectInputStream;Ljava/io/ObjectOutputStream;)Z

    .line 141
    :cond_0
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    .line 148
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 149
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 150
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method

.method protected final varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 159
    return-void
.end method
