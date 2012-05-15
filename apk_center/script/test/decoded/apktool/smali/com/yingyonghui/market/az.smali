.class final Lcom/yingyonghui/market/az;
.super Landroid/content/BroadcastReceiver;
.source "ActivityListApp2.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityListApp2;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityListApp2;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/yingyonghui/market/az;->a:Lcom/yingyonghui/market/ActivityListApp2;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 182
    iget-object v0, p0, Lcom/yingyonghui/market/az;->a:Lcom/yingyonghui/market/ActivityListApp2;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListApp2;->a(Lcom/yingyonghui/market/ActivityListApp2;)Lcom/yingyonghui/market/br;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/yingyonghui/market/az;->a:Lcom/yingyonghui/market/ActivityListApp2;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityListApp2;->a(Lcom/yingyonghui/market/ActivityListApp2;)Lcom/yingyonghui/market/br;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yingyonghui/market/br;->notifyDataSetChanged()V

    .line 185
    :cond_0
    return-void
.end method
