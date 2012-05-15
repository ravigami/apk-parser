.class final Lcom/yingyonghui/market/ax;
.super Ljava/lang/Object;
.source "ActivityListApp2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityListApp2;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityListApp2;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/yingyonghui/market/ax;->a:Lcom/yingyonghui/market/ActivityListApp2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 209
    iget-object v0, p0, Lcom/yingyonghui/market/ax;->a:Lcom/yingyonghui/market/ActivityListApp2;

    invoke-virtual {v0}, Lcom/yingyonghui/market/ActivityListApp2;->finish()V

    .line 210
    return-void
.end method
