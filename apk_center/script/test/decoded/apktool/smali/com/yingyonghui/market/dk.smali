.class final Lcom/yingyonghui/market/dk;
.super Ljava/lang/Object;
.source "ActivitySearchSuggestion.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivitySearchSuggestion;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivitySearchSuggestion;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/yingyonghui/market/dk;->a:Lcom/yingyonghui/market/ActivitySearchSuggestion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 201
    iget-object v0, p0, Lcom/yingyonghui/market/dk;->a:Lcom/yingyonghui/market/ActivitySearchSuggestion;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivitySearchSuggestion;->b(Lcom/yingyonghui/market/ActivitySearchSuggestion;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/yingyonghui/market/dk;->a:Lcom/yingyonghui/market/ActivitySearchSuggestion;

    invoke-virtual {v0}, Lcom/yingyonghui/market/ActivitySearchSuggestion;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 203
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/yingyonghui/market/ActivityTab4Search;

    if-eqz v1, :cond_0

    .line 205
    check-cast v0, Lcom/yingyonghui/market/ActivityTab4Search;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yingyonghui/market/ActivityTab4Search;->a(I)V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/yingyonghui/market/dk;->a:Lcom/yingyonghui/market/ActivitySearchSuggestion;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivitySearchSuggestion;->c(Lcom/yingyonghui/market/ActivitySearchSuggestion;)Z

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/yingyonghui/market/dk;->a:Lcom/yingyonghui/market/ActivitySearchSuggestion;

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yingyonghui/market/ActivitySearchSuggestion;->a(Lcom/yingyonghui/market/ActivitySearchSuggestion;Ljava/lang/String;)Ljava/lang/String;

    .line 211
    new-instance v0, Landroid/content/Intent;

    const-string v1, "broadcast_search_request"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 212
    const-string v1, "keyword"

    iget-object v2, p0, Lcom/yingyonghui/market/dk;->a:Lcom/yingyonghui/market/ActivitySearchSuggestion;

    invoke-static {v2}, Lcom/yingyonghui/market/ActivitySearchSuggestion;->d(Lcom/yingyonghui/market/ActivitySearchSuggestion;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const-string v1, "title"

    iget-object v2, p0, Lcom/yingyonghui/market/dk;->a:Lcom/yingyonghui/market/ActivitySearchSuggestion;

    invoke-static {v2}, Lcom/yingyonghui/market/ActivitySearchSuggestion;->e(Lcom/yingyonghui/market/ActivitySearchSuggestion;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    const-string v1, "searchType"

    iget-object v2, p0, Lcom/yingyonghui/market/dk;->a:Lcom/yingyonghui/market/ActivitySearchSuggestion;

    invoke-static {v2}, Lcom/yingyonghui/market/ActivitySearchSuggestion;->f(Lcom/yingyonghui/market/ActivitySearchSuggestion;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 215
    iget-object v1, p0, Lcom/yingyonghui/market/dk;->a:Lcom/yingyonghui/market/ActivitySearchSuggestion;

    invoke-virtual {v1, v0}, Lcom/yingyonghui/market/ActivitySearchSuggestion;->sendBroadcast(Landroid/content/Intent;)V

    .line 217
    iget-object v0, p0, Lcom/yingyonghui/market/dk;->a:Lcom/yingyonghui/market/ActivitySearchSuggestion;

    invoke-virtual {v0}, Lcom/yingyonghui/market/ActivitySearchSuggestion;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "searchByHotword"

    iget-object v2, p0, Lcom/yingyonghui/market/dk;->a:Lcom/yingyonghui/market/ActivitySearchSuggestion;

    invoke-static {v2}, Lcom/yingyonghui/market/ActivitySearchSuggestion;->d(Lcom/yingyonghui/market/ActivitySearchSuggestion;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yingyonghui/market/log/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    return-void
.end method
