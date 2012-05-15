.class final Lcom/yingyonghui/market/eo;
.super Ljava/lang/Object;
.source "ActivityNewEvents.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityNewEvents;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityNewEvents;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/yingyonghui/market/eo;->a:Lcom/yingyonghui/market/ActivityNewEvents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/yingyonghui/market/eo;->a:Lcom/yingyonghui/market/ActivityNewEvents;

    invoke-virtual {v0}, Lcom/yingyonghui/market/ActivityNewEvents;->finish()V

    .line 147
    return-void
.end method
