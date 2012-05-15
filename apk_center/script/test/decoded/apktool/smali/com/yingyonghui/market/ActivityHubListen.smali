.class public Lcom/yingyonghui/market/ActivityHubListen;
.super Landroid/app/Activity;
.source "ActivityHubListen.java"


# static fields
.field private static c:I


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/os/Handler;

.field private d:Landroid/widget/TextView;

.field private e:Ljava/net/ServerSocket;

.field private f:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    sput v0, Lcom/yingyonghui/market/ActivityHubListen;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/yingyonghui/market/ActivityHubListen;->d:Landroid/widget/TextView;

    .line 40
    iput-object v0, p0, Lcom/yingyonghui/market/ActivityHubListen;->e:Ljava/net/ServerSocket;

    .line 43
    new-instance v0, Lcom/yingyonghui/market/bc;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/bc;-><init>(Lcom/yingyonghui/market/ActivityHubListen;)V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityHubListen;->b:Landroid/os/Handler;

    .line 106
    new-instance v0, Lcom/yingyonghui/market/bb;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/bb;-><init>(Lcom/yingyonghui/market/ActivityHubListen;)V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityHubListen;->f:Landroid/content/BroadcastReceiver;

    .line 197
    return-void
.end method

.method public static a()J
    .locals 5

    .prologue
    .line 163
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 164
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v3, v0

    mul-long v0, v1, v3

    return-wide v0
.end method

.method static synthetic a(Lcom/yingyonghui/market/ActivityHubListen;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityHubListen;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method public static b()J
    .locals 5

    .prologue
    .line 171
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 172
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v3, v0

    mul-long v0, v1, v3

    return-wide v0
.end method

.method static synthetic b(Lcom/yingyonghui/market/ActivityHubListen;)Ljava/net/ServerSocket;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityHubListen;->e:Ljava/net/ServerSocket;

    return-object v0
.end method

.method public static c()J
    .locals 5

    .prologue
    .line 178
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 179
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v3, v0

    mul-long v0, v1, v3

    return-wide v0
.end method

.method public static d()J
    .locals 5

    .prologue
    .line 186
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 187
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v3, v0

    mul-long v0, v1, v3

    return-wide v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityHubListen;->requestWindowFeature(I)Z

    .line 60
    const v0, 0x7f030031

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityHubListen;->setContentView(I)V

    .line 61
    iput-object p0, p0, Lcom/yingyonghui/market/ActivityHubListen;->a:Landroid/content/Context;

    .line 63
    const v0, 0x7f0b00cd

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityHubListen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityHubListen;->d:Landroid/widget/TextView;

    .line 65
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.UMS_CONNECTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.UMS_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yingyonghui/market/ActivityHubListen;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/yingyonghui/market/ActivityHubListen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 68
    :try_start_0
    new-instance v0, Ljava/net/ServerSocket;

    const/16 v1, 0x56ce

    invoke-direct {v0, v1}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityHubListen;->e:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    new-instance v0, Lcom/yingyonghui/market/dz;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/dz;-><init>(Lcom/yingyonghui/market/ActivityHubListen;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/dz;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 74
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityHubListen;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityHubListen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityHubListen;->e:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    :try_start_1
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityHubListen;->e:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 90
    :cond_0
    :goto_1
    return-void

    .line 80
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 85
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
