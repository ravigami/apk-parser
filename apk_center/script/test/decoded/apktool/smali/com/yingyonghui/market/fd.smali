.class final Lcom/yingyonghui/market/fd;
.super Ljava/lang/Object;
.source "HttpServiceSupportForListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/HttpServiceSupportForListActivity;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/HttpServiceSupportForListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/yingyonghui/market/fd;->a:Lcom/yingyonghui/market/HttpServiceSupportForListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yingyonghui/market/fd;->a:Lcom/yingyonghui/market/HttpServiceSupportForListActivity;

    iget-object v0, v0, Lcom/yingyonghui/market/HttpServiceSupportForListActivity;->a:Lcom/yingyonghui/market/online/e;

    invoke-virtual {v0}, Lcom/yingyonghui/market/online/e;->c()V

    .line 64
    return-void
.end method
