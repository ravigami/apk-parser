.class public Lcom/yingyonghui/market/widget/SlowSpeedGallery;
.super Landroid/widget/Gallery;
.source "SlowSpeedGallery.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 27
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    .line 28
    const/high16 v2, 0x41a0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 30
    const/16 v1, 0x15

    invoke-virtual {p0, v1, v3}, Lcom/yingyonghui/market/widget/SlowSpeedGallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 37
    :goto_0
    return v0

    .line 32
    :cond_0
    const/high16 v2, -0x3e60

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 34
    const/16 v1, 0x16

    invoke-virtual {p0, v1, v3}, Lcom/yingyonghui/market/widget/SlowSpeedGallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 37
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
