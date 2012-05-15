.class final Lcom/yingyonghui/market/u;
.super Ljava/lang/Object;
.source "ActivityWeekly.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityWeekly;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityWeekly;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/yingyonghui/market/u;->a:Lcom/yingyonghui/market/ActivityWeekly;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 176
    iget-object v0, p0, Lcom/yingyonghui/market/u;->a:Lcom/yingyonghui/market/ActivityWeekly;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityWeekly;->a(Lcom/yingyonghui/market/ActivityWeekly;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "list"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/yingyonghui/market/u;->a:Lcom/yingyonghui/market/ActivityWeekly;

    invoke-virtual {v0}, Lcom/yingyonghui/market/ActivityWeekly;->finish()V

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/yingyonghui/market/u;->a:Lcom/yingyonghui/market/ActivityWeekly;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityWeekly;->a(Lcom/yingyonghui/market/ActivityWeekly;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 180
    iget-object v1, p0, Lcom/yingyonghui/market/u;->a:Lcom/yingyonghui/market/ActivityWeekly;

    const-class v2, Lcom/yingyonghui/market/ActivityGridWeekly;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 181
    iget-object v1, p0, Lcom/yingyonghui/market/u;->a:Lcom/yingyonghui/market/ActivityWeekly;

    invoke-virtual {v1, v0}, Lcom/yingyonghui/market/ActivityWeekly;->startActivity(Landroid/content/Intent;)V

    .line 182
    iget-object v0, p0, Lcom/yingyonghui/market/u;->a:Lcom/yingyonghui/market/ActivityWeekly;

    invoke-virtual {v0}, Lcom/yingyonghui/market/ActivityWeekly;->finish()V

    goto :goto_0
.end method
