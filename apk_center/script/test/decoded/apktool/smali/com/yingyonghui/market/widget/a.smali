.class final Lcom/yingyonghui/market/widget/a;
.super Ljava/lang/Object;
.source "AppSecurityPermissions.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private a:Landroid/content/pm/PackageManager;

.field private final b:Ljava/text/Collator;


# direct methods
.method constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 1
    .parameter

    .prologue
    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/widget/a;->b:Ljava/text/Collator;

    .line 402
    iput-object p1, p0, Lcom/yingyonghui/market/widget/a;->a:Landroid/content/pm/PackageManager;

    .line 403
    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 396
    check-cast p1, Landroid/content/pm/PermissionInfo;

    check-cast p2, Landroid/content/pm/PermissionInfo;

    iget-object v0, p0, Lcom/yingyonghui/market/widget/a;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/PermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/yingyonghui/market/widget/a;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v1}, Landroid/content/pm/PermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/yingyonghui/market/widget/a;->b:Ljava/text/Collator;

    invoke-virtual {v2, v0, v1}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
