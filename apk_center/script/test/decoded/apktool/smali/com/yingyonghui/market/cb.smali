.class final Lcom/yingyonghui/market/cb;
.super Ljava/lang/Object;
.source "ActivityAssetPermissions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityAssetPermissions;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityAssetPermissions;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/yingyonghui/market/cb;->a:Lcom/yingyonghui/market/ActivityAssetPermissions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/yingyonghui/market/cb;->a:Lcom/yingyonghui/market/ActivityAssetPermissions;

    invoke-virtual {v0}, Lcom/yingyonghui/market/ActivityAssetPermissions;->finish()V

    .line 89
    return-void
.end method
