.class final Lcom/yingyonghui/market/install/f;
.super Ljava/lang/Object;
.source "UninstallerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/install/UninstallerActivity;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/install/UninstallerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/yingyonghui/market/install/f;->a:Lcom/yingyonghui/market/install/UninstallerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/yingyonghui/market/install/f;->a:Lcom/yingyonghui/market/install/UninstallerActivity;

    invoke-virtual {v0}, Lcom/yingyonghui/market/install/UninstallerActivity;->finish()V

    .line 159
    return-void
.end method
