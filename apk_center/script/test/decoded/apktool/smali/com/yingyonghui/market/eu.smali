.class final Lcom/yingyonghui/market/eu;
.super Ljava/lang/Object;
.source "ActivityGridCategory.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityGridCategory;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityGridCategory;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/yingyonghui/market/eu;->a:Lcom/yingyonghui/market/ActivityGridCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 246
    iget-object v0, p0, Lcom/yingyonghui/market/eu;->a:Lcom/yingyonghui/market/ActivityGridCategory;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityGridCategory;->a(Lcom/yingyonghui/market/ActivityGridCategory;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 247
    return-void
.end method
