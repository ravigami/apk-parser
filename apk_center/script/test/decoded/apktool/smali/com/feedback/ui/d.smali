.class final Lcom/feedback/ui/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/feedback/ui/SendFeedback;


# direct methods
.method constructor <init>(Lcom/feedback/ui/SendFeedback;)V
    .locals 0

    iput-object p1, p0, Lcom/feedback/ui/d;->a:Lcom/feedback/ui/SendFeedback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/feedback/ui/d;->a:Lcom/feedback/ui/SendFeedback;

    invoke-static {v0}, Lcom/feedback/a/c;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/feedback/ui/d;->a:Lcom/feedback/ui/SendFeedback;

    invoke-virtual {v0}, Lcom/feedback/ui/SendFeedback;->finish()V

    iget-object v0, p0, Lcom/feedback/ui/d;->a:Lcom/feedback/ui/SendFeedback;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/feedback/ui/SendFeedback;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/feedback/ui/d;->a:Lcom/feedback/ui/SendFeedback;

    invoke-static {v1}, Lcom/feedback/ui/SendFeedback;->a(Lcom/feedback/ui/SendFeedback;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method
