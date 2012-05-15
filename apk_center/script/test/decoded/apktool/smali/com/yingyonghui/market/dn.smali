.class final Lcom/yingyonghui/market/dn;
.super Ljava/lang/Object;
.source "ActivityMenuAbout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityMenuAbout;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityMenuAbout;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/yingyonghui/market/dn;->a:Lcom/yingyonghui/market/ActivityMenuAbout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/yingyonghui/market/dn;->a:Lcom/yingyonghui/market/ActivityMenuAbout;

    invoke-virtual {v0}, Lcom/yingyonghui/market/ActivityMenuAbout;->finish()V

    .line 37
    return-void
.end method
