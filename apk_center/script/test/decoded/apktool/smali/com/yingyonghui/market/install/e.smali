.class final Lcom/yingyonghui/market/install/e;
.super Ljava/lang/Object;
.source "UninstallAppProgress.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/install/UninstallAppProgress;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/install/UninstallAppProgress;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/yingyonghui/market/install/e;->a:Lcom/yingyonghui/market/install/UninstallAppProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/yingyonghui/market/install/e;->a:Lcom/yingyonghui/market/install/UninstallAppProgress;

    invoke-virtual {v0}, Lcom/yingyonghui/market/install/UninstallAppProgress;->finish()V

    .line 86
    return-void
.end method
