.class final Lcom/yingyonghui/market/install/b;
.super Ljava/lang/Object;
.source "InstallAppProgress.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/install/InstallAppProgress;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/install/InstallAppProgress;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/yingyonghui/market/install/b;->a:Lcom/yingyonghui/market/install/InstallAppProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/yingyonghui/market/install/b;->a:Lcom/yingyonghui/market/install/InstallAppProgress;

    invoke-static {v0}, Lcom/yingyonghui/market/install/IWorksPackageManager;->a(Landroid/content/Context;)Lcom/yingyonghui/market/install/IWorksPackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/install/b;->a:Lcom/yingyonghui/market/install/InstallAppProgress;

    invoke-static {v1}, Lcom/yingyonghui/market/install/InstallAppProgress;->f(Lcom/yingyonghui/market/install/InstallAppProgress;)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/yingyonghui/market/install/b;->a:Lcom/yingyonghui/market/install/InstallAppProgress;

    invoke-static {v2}, Lcom/yingyonghui/market/install/InstallAppProgress;->g(Lcom/yingyonghui/market/install/InstallAppProgress;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yingyonghui/market/install/b;->a:Lcom/yingyonghui/market/install/InstallAppProgress;

    invoke-static {v3}, Lcom/yingyonghui/market/install/InstallAppProgress;->e(Lcom/yingyonghui/market/install/InstallAppProgress;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/yingyonghui/market/install/IWorksPackageManager;->a(Ljava/io/File;Ljava/lang/String;Landroid/os/Handler;)Z

    .line 107
    return-void
.end method
