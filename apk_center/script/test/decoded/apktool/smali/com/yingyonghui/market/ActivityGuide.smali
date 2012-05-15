.class public Lcom/yingyonghui/market/ActivityGuide;
.super Landroid/app/Activity;
.source "ActivityGuide.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field private static c:I


# instance fields
.field private a:Landroid/widget/ViewFlipper;

.field private b:Landroid/view/GestureDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput v0, Lcom/yingyonghui/market/ActivityGuide;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/yingyonghui/market/ActivityGuide;->b:Landroid/view/GestureDetector;

    .line 144
    iput-object v0, p0, Lcom/yingyonghui/market/ActivityGuide;->a:Landroid/widget/ViewFlipper;

    .line 146
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 147
    const-class v1, Lcom/yingyonghui/market/ActivityMain;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 148
    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityGuide;->startActivity(Landroid/content/Intent;)V

    .line 150
    invoke-virtual {p0}, Lcom/yingyonghui/market/ActivityGuide;->finish()V

    .line 151
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityGuide;->requestWindowFeature(I)Z

    .line 35
    const v0, 0x7f030033

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityGuide;->setContentView(I)V

    .line 37
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityGuide;->b:Landroid/view/GestureDetector;

    .line 38
    const v0, 0x7f0b00d1

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityGuide;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/yingyonghui/market/ActivityGuide;->a:Landroid/widget/ViewFlipper;

    .line 44
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityGuide;->a:Landroid/widget/ViewFlipper;

    new-instance v1, Lcom/yingyonghui/market/cx;

    invoke-direct {v1, p0}, Lcom/yingyonghui/market/cx;-><init>(Lcom/yingyonghui/market/ActivityGuide;)V

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 49
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x428c

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 87
    sget v2, Lcom/yingyonghui/market/ActivityGuide;->c:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 88
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityGuide;->a:Landroid/widget/ViewFlipper;

    const v2, 0x7f040003

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 89
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityGuide;->a:Landroid/widget/ViewFlipper;

    const v2, 0x7f040004

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 90
    iget-object v1, p0, Lcom/yingyonghui/market/ActivityGuide;->a:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->showNext()V

    .line 95
    :goto_0
    sget v1, Lcom/yingyonghui/market/ActivityGuide;->c:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/yingyonghui/market/ActivityGuide;->c:I

    .line 109
    :cond_0
    :goto_1
    return v0

    .line 92
    :cond_1
    sput v1, Lcom/yingyonghui/market/ActivityGuide;->c:I

    .line 93
    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityGuide;->a()V

    goto :goto_0

    .line 97
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, -0x3d74

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    .line 98
    sget v2, Lcom/yingyonghui/market/ActivityGuide;->c:I

    if-lez v2, :cond_3

    .line 99
    iget-object v2, p0, Lcom/yingyonghui/market/ActivityGuide;->a:Landroid/widget/ViewFlipper;

    const v3, 0x7f040005

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 100
    iget-object v2, p0, Lcom/yingyonghui/market/ActivityGuide;->a:Landroid/widget/ViewFlipper;

    const v3, 0x7f040006

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 101
    iget-object v2, p0, Lcom/yingyonghui/market/ActivityGuide;->a:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 103
    :cond_3
    sget v2, Lcom/yingyonghui/market/ActivityGuide;->c:I

    add-int/lit8 v2, v2, -0x1

    .line 104
    sput v2, Lcom/yingyonghui/market/ActivityGuide;->c:I

    if-gez v2, :cond_0

    .line 105
    sput v1, Lcom/yingyonghui/market/ActivityGuide;->c:I

    goto :goto_1

    :cond_4
    move v0, v1

    .line 109
    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 114
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/yingyonghui/market/ActivityGuide;->a()V

    .line 117
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/yingyonghui/market/ActivityGuide;->b:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
