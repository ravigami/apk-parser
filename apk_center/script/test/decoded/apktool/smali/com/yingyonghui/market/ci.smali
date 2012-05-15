.class final Lcom/yingyonghui/market/ci;
.super Ljava/lang/Object;
.source "HttpServiceSupportForActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/HttpServiceSupportForActivity;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/HttpServiceSupportForActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/yingyonghui/market/ci;->a:Lcom/yingyonghui/market/HttpServiceSupportForActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yingyonghui/market/ci;->a:Lcom/yingyonghui/market/HttpServiceSupportForActivity;

    iget-object v0, v0, Lcom/yingyonghui/market/HttpServiceSupportForActivity;->a:Lcom/yingyonghui/market/online/e;

    invoke-virtual {v0}, Lcom/yingyonghui/market/online/e;->c()V

    .line 73
    return-void
.end method
