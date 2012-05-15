.class final Lcom/yingyonghui/market/av;
.super Landroid/os/AsyncTask;
.source "ActivitySplash.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivitySplash;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivitySplash;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/yingyonghui/market/av;->a:Lcom/yingyonghui/market/ActivitySplash;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .parameter

    .prologue
    const/high16 v8, 0x4000

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 121
    iget-object v0, p0, Lcom/yingyonghui/market/av;->a:Lcom/yingyonghui/market/ActivitySplash;

    invoke-virtual {v0}, Lcom/yingyonghui/market/ActivitySplash;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/av;->a:Lcom/yingyonghui/market/ActivitySplash;

    invoke-virtual {v1}, Lcom/yingyonghui/market/ActivitySplash;->getPackageManager()Landroid/content/pm/PackageManager;

    invoke-static {v0}, Lcom/yingyonghui/market/util/GlobalUtil;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/yingyonghui/market/av;->a:Lcom/yingyonghui/market/ActivitySplash;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/ActivitySplash;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/yingyonghui/market/by;->n:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/yingyonghui/market/by;->a:Ljava/lang/String;

    const-class v3, Lcom/yingyonghui/market/online/MarketReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x927c0

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/yingyonghui/market/av;->a:Lcom/yingyonghui/market/ActivitySplash;

    invoke-static {v4, v6, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v7, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/yingyonghui/market/by;->o:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/yingyonghui/market/by;->a:Ljava/lang/String;

    const-class v3, Lcom/yingyonghui/market/online/MarketReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x116520

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/yingyonghui/market/av;->a:Lcom/yingyonghui/market/ActivitySplash;

    invoke-static {v4, v6, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v7, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    const/4 v0, 0x0

    return-object v0
.end method
