.class final Lcom/yingyonghui/market/ap;
.super Ljava/lang/Object;
.source "ActivityMain.java"

# interfaces
.implements Lcom/yingyonghui/market/cf;


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityMain;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityMain;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/yingyonghui/market/ap;->a:Lcom/yingyonghui/market/ActivityMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 182
    invoke-static {}, Lcom/yingyonghui/market/util/q;->a()I

    move-result v0

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 184
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 185
    const-string v1, "android.settings.APPLICATION_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    iget-object v1, p0, Lcom/yingyonghui/market/ap;->a:Lcom/yingyonghui/market/ActivityMain;

    invoke-virtual {v1, v0}, Lcom/yingyonghui/market/ActivityMain;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/yingyonghui/market/ap;->a:Lcom/yingyonghui/market/ActivityMain;

    const-string v1, "check_market_not_allow_install"

    invoke-static {v0, v1, v2}, Lcom/yingyonghui/market/util/l;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 193
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 194
    const-string v1, "android.settings.SECURITY_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    iget-object v1, p0, Lcom/yingyonghui/market/ap;->a:Lcom/yingyonghui/market/ActivityMain;

    invoke-virtual {v1, v0}, Lcom/yingyonghui/market/ActivityMain;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 198
    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/yingyonghui/market/ap;->a:Lcom/yingyonghui/market/ActivityMain;

    const-string v1, "check_market_not_allow_install"

    invoke-static {v0, v1, v2}, Lcom/yingyonghui/market/util/l;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method
