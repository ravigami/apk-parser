.class final Lcom/yingyonghui/market/ee;
.super Ljava/lang/Object;
.source "ActivityListAppRecommend.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityListAppRecommend;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityListAppRecommend;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/yingyonghui/market/ee;->a:Lcom/yingyonghui/market/ActivityListAppRecommend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 217
    iget-object v0, p0, Lcom/yingyonghui/market/ee;->a:Lcom/yingyonghui/market/ActivityListAppRecommend;

    invoke-virtual {v0}, Lcom/yingyonghui/market/ActivityListAppRecommend;->finish()V

    .line 218
    return-void
.end method
