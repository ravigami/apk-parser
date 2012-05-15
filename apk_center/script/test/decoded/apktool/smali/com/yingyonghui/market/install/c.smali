.class final Lcom/yingyonghui/market/install/c;
.super Ljava/lang/Object;
.source "InstallAppProgress.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/install/InstallAppProgress;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/install/InstallAppProgress;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/yingyonghui/market/install/c;->a:Lcom/yingyonghui/market/install/InstallAppProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/yingyonghui/market/install/c;->a:Lcom/yingyonghui/market/install/InstallAppProgress;

    invoke-virtual {v0}, Lcom/yingyonghui/market/install/InstallAppProgress;->finish()V

    .line 125
    return-void
.end method
