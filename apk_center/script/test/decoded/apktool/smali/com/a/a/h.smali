.class final Lcom/a/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/h;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/a/a/h;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/a/a/h;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    new-instance v0, Lcom/a/a/g;

    iget-object v1, p0, Lcom/a/a/h;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/a/a/h;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/a/a/h;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/a/a/h;->a:Landroid/content/Context;

    const-string v5, "string"

    const-string v6, "UMAppUpdate"

    invoke-static {v4, v5, v6}, Lcom/a/a/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/a/a/h;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/a/a/h;->a:Landroid/content/Context;

    const-string v6, "string"

    const-string v7, "UMUpdatingNow"

    invoke-static {v5, v6, v7}, Lcom/a/a/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    iget-object v6, p0, Lcom/a/a/h;->c:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/a/a/g;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/a/a/g;->a()V

    return-void
.end method
