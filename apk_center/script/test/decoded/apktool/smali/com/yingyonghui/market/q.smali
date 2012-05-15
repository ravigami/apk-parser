.class final Lcom/yingyonghui/market/q;
.super Ljava/lang/Object;
.source "ActivityWeekly.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityWeekly;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityWeekly;)V
    .locals 0
    .parameter

    .prologue
    .line 315
    iput-object p1, p0, Lcom/yingyonghui/market/q;->a:Lcom/yingyonghui/market/ActivityWeekly;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 318
    iget-object v0, p0, Lcom/yingyonghui/market/q;->a:Lcom/yingyonghui/market/ActivityWeekly;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityWeekly;->e(Lcom/yingyonghui/market/ActivityWeekly;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 319
    return-void
.end method
