.class final Lcom/yingyonghui/market/ce;
.super Ljava/lang/Object;
.source "ActivityListCategoryInner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityListCategoryInner;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityListCategoryInner;)V
    .locals 0
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, Lcom/yingyonghui/market/ce;->a:Lcom/yingyonghui/market/ActivityListCategoryInner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 306
    iget-object v0, p0, Lcom/yingyonghui/market/ce;->a:Lcom/yingyonghui/market/ActivityListCategoryInner;

    invoke-virtual {v0}, Lcom/yingyonghui/market/ActivityListCategoryInner;->finish()V

    .line 307
    return-void
.end method
