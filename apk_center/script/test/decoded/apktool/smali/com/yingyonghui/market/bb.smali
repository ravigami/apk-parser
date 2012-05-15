.class final Lcom/yingyonghui/market/bb;
.super Landroid/content/BroadcastReceiver;
.source "ActivityHubListen.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityHubListen;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityHubListen;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/yingyonghui/market/bb;->a:Lcom/yingyonghui/market/ActivityHubListen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 110
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.UMS_DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/yingyonghui/market/bb;->a:Lcom/yingyonghui/market/ActivityHubListen;

    invoke-virtual {v0}, Lcom/yingyonghui/market/ActivityHubListen;->finish()V

    .line 114
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.UMS_CONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_0
.end method
