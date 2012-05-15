.class final Lcom/yingyonghui/market/dj;
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
    .line 127
    iput-object p1, p0, Lcom/yingyonghui/market/dj;->a:Lcom/yingyonghui/market/ActivitySearchSuggestion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/yingyonghui/market/dj;->a:Lcom/yingyonghui/market/ActivitySearchSuggestion;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivitySearchSuggestion;->a(Lcom/yingyonghui/market/ActivitySearchSuggestion;)V

    .line 131
    iget-object v0, p0, Lcom/yingyonghui/market/dj;->a:Lcom/yingyonghui/market/ActivitySearchSuggestion;

    invoke-virtual {v0}, Lcom/yingyonghui/market/ActivitySearchSuggestion;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/yingyonghui/market/log/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yingyonghui/market/log/LogService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 132
    return-void
.end method
