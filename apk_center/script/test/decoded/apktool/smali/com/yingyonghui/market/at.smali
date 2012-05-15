.class final Lcom/yingyonghui/market/at;
.super Ljava/lang/Object;
.source "ActivitySplash.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivitySplash;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivitySplash;)V
    .locals 0
    .parameter

    .prologue
    .line 407
    iput-object p1, p0, Lcom/yingyonghui/market/at;->a:Lcom/yingyonghui/market/ActivitySplash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 410
    iget-object v0, p0, Lcom/yingyonghui/market/at;->a:Lcom/yingyonghui/market/ActivitySplash;

    invoke-virtual {v0}, Lcom/yingyonghui/market/ActivitySplash;->finish()V

    .line 411
    return-void
.end method
