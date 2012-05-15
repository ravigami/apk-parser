.class final Lcom/yingyonghui/market/cl;
.super Ljava/lang/Object;
.source "HttpServiceSupportForTabActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/yingyonghui/market/cl;->a:Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yingyonghui/market/cl;->a:Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;

    iget-object v0, v0, Lcom/yingyonghui/market/HttpServiceSupportForTabActivity;->a:Lcom/yingyonghui/market/online/e;

    invoke-virtual {v0}, Lcom/yingyonghui/market/online/e;->c()V

    .line 83
    return-void
.end method
