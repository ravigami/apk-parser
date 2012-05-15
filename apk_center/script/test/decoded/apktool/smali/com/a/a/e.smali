.class final Lcom/a/a/e;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcom/a/a/g;


# direct methods
.method constructor <init>(Lcom/a/a/g;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/e;->a:Lcom/a/a/g;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/a/a/e;->a:Lcom/a/a/g;

    invoke-static {v0}, Lcom/a/a/g;->e(Lcom/a/a/g;)I

    move-result v0

    sget v1, Lcom/a/a/d;->c:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/a/a/e;->a:Lcom/a/a/g;

    invoke-static {v0}, Lcom/a/a/g;->f(Lcom/a/a/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/e;->a:Lcom/a/a/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/a/a/g;->a(Lcom/a/a/g;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/a/a/e;->a:Lcom/a/a/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/a/a/g;->a(Lcom/a/a/g;Z)V

    goto :goto_0
.end method
