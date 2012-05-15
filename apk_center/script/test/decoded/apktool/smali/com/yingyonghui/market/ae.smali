.class final Lcom/yingyonghui/market/ae;
.super Ljava/lang/Object;
.source "ActivityGridWeekly.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityGridWeekly;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityGridWeekly;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/yingyonghui/market/ae;->a:Lcom/yingyonghui/market/ActivityGridWeekly;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/yingyonghui/market/ae;->a:Lcom/yingyonghui/market/ActivityGridWeekly;

    invoke-virtual {v0}, Lcom/yingyonghui/market/ActivityGridWeekly;->finish()V

    .line 123
    return-void
.end method
