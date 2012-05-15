.class public Lcom/yingyonghui/market/ActivityWarningDownload;
.super Landroid/app/Activity;
.source "ActivityWarningDownload.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 26
    const v1, 0x7f0b00ae

    if-ne v0, v1, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityWarningDownload;->finish()V

    .line 29
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityWarningDownload;->requestWindowFeature(I)Z

    .line 15
    const v0, 0x7f030026

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityWarningDownload;->setContentView(I)V

    .line 17
    const v0, 0x7f0b00ae

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityWarningDownload;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 18
    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 20
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    return-void
.end method
