.class public Lcom/yingyonghui/market/model/q;
.super Ljava/lang/Object;
.source "Asset.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public A:I

.field public B:I

.field public C:[Ljava/lang/String;

.field public D:Ljava/lang/String;

.field public E:I

.field public F:Ljava/lang/String;

.field public G:Ljava/lang/String;

.field public H:Ljava/lang/String;

.field public I:I

.field public J:I

.field public K:Ljava/lang/String;

.field public L:I

.field public M:I

.field public N:I

.field public O:Z

.field public P:Z

.field public Q:Ljava/lang/String;

.field public R:Ljava/lang/String;

.field public S:Landroid/content/pm/ApplicationInfo;

.field private a:Ljava/lang/String;

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Landroid/graphics/drawable/Drawable;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:F

.field public l:F

.field public m:Ljava/lang/String;

.field public n:I

.field public o:I

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:I

.field public t:[Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/yingyonghui/market/model/q;->J:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/yingyonghui/market/model/q;)V
    .locals 1
    .parameter

    .prologue
    .line 67
    if-nez p1, :cond_0

    .line 89
    :goto_0
    return-void

    .line 70
    :cond_0
    iget v0, p1, Lcom/yingyonghui/market/model/q;->e:I

    iput v0, p0, Lcom/yingyonghui/market/model/q;->e:I

    .line 71
    iget-object v0, p1, Lcom/yingyonghui/market/model/q;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/yingyonghui/market/model/q;->f:Ljava/lang/String;

    .line 72
    iget-object v0, p1, Lcom/yingyonghui/market/model/q;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/yingyonghui/market/model/q;->g:Ljava/lang/String;

    .line 73
    iget-object v0, p1, Lcom/yingyonghui/market/model/q;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/yingyonghui/market/model/q;->i:Ljava/lang/String;

    .line 74
    iget-object v0, p1, Lcom/yingyonghui/market/model/q;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/yingyonghui/market/model/q;->j:Ljava/lang/String;

    .line 75
    iget v0, p1, Lcom/yingyonghui/market/model/q;->k:F

    iput v0, p0, Lcom/yingyonghui/market/model/q;->k:F

    .line 76
    iget v0, p1, Lcom/yingyonghui/market/model/q;->l:F

    iput v0, p0, Lcom/yingyonghui/market/model/q;->l:F

    .line 77
    iget-object v0, p1, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/yingyonghui/market/model/q;->m:Ljava/lang/String;

    .line 78
    iget-object v0, p1, Lcom/yingyonghui/market/model/q;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/yingyonghui/market/model/q;->a:Ljava/lang/String;

    .line 79
    iget v0, p1, Lcom/yingyonghui/market/model/q;->o:I

    iput v0, p0, Lcom/yingyonghui/market/model/q;->o:I

    .line 80
    iget-object v0, p1, Lcom/yingyonghui/market/model/q;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/yingyonghui/market/model/q;->p:Ljava/lang/String;

    .line 81
    iget-object v0, p1, Lcom/yingyonghui/market/model/q;->q:Ljava/lang/String;

    iput-object v0, p0, Lcom/yingyonghui/market/model/q;->q:Ljava/lang/String;

    .line 82
    iget-object v0, p1, Lcom/yingyonghui/market/model/q;->r:Ljava/lang/String;

    iput-object v0, p0, Lcom/yingyonghui/market/model/q;->r:Ljava/lang/String;

    .line 83
    iget v0, p1, Lcom/yingyonghui/market/model/q;->s:I

    iput v0, p0, Lcom/yingyonghui/market/model/q;->s:I

    .line 84
    iget-object v0, p1, Lcom/yingyonghui/market/model/q;->t:[Ljava/lang/String;

    iput-object v0, p0, Lcom/yingyonghui/market/model/q;->t:[Ljava/lang/String;

    .line 85
    iget-object v0, p1, Lcom/yingyonghui/market/model/q;->u:Ljava/lang/String;

    iput-object v0, p0, Lcom/yingyonghui/market/model/q;->u:Ljava/lang/String;

    .line 86
    iget v0, p1, Lcom/yingyonghui/market/model/q;->I:I

    iput v0, p0, Lcom/yingyonghui/market/model/q;->I:I

    .line 87
    iget v0, p1, Lcom/yingyonghui/market/model/q;->J:I

    iput v0, p0, Lcom/yingyonghui/market/model/q;->J:I

    .line 88
    iget-object v0, p1, Lcom/yingyonghui/market/model/q;->h:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/yingyonghui/market/model/q;->h:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method
