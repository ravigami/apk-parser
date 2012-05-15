.class final Lcom/feedback/ui/e;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Lcom/feedback/ui/FeedbackConversation;


# direct methods
.method synthetic constructor <init>(Lcom/feedback/ui/FeedbackConversation;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/feedback/ui/e;-><init>(Lcom/feedback/ui/FeedbackConversation;B)V

    return-void
.end method

.method private constructor <init>(Lcom/feedback/ui/FeedbackConversation;B)V
    .locals 0

    iput-object p1, p0, Lcom/feedback/ui/e;->a:Lcom/feedback/ui/FeedbackConversation;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "feedback_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sequence_num"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/feedback/ui/e;->a:Lcom/feedback/ui/FeedbackConversation;

    invoke-static {v2}, Lcom/feedback/ui/FeedbackConversation;->a(Lcom/feedback/ui/FeedbackConversation;)Lcom/feedback/b/b;

    move-result-object v2

    iget-object v2, v2, Lcom/feedback/b/b;->a:Lcom/feedback/b/c;

    sget-object v3, Lcom/feedback/b/c;->c:Lcom/feedback/b/c;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/feedback/ui/e;->a:Lcom/feedback/ui/FeedbackConversation;

    invoke-static {v2}, Lcom/feedback/ui/FeedbackConversation;->a(Lcom/feedback/ui/FeedbackConversation;)Lcom/feedback/b/b;

    move-result-object v2

    iget-object v2, v2, Lcom/feedback/b/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/feedback/ui/e;->a:Lcom/feedback/ui/FeedbackConversation;

    iget-object v2, p0, Lcom/feedback/ui/e;->a:Lcom/feedback/ui/FeedbackConversation;

    invoke-static {v2, v0}, Lcom/feedback/a/a;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/feedback/b/b;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/feedback/ui/FeedbackConversation;->a(Lcom/feedback/ui/FeedbackConversation;Lcom/feedback/b/b;)V

    iget-object v0, p0, Lcom/feedback/ui/e;->a:Lcom/feedback/ui/FeedbackConversation;

    invoke-static {v0}, Lcom/feedback/ui/FeedbackConversation;->b(Lcom/feedback/ui/FeedbackConversation;)Lcom/feedback/ui/h;

    move-result-object v0

    iget-object v1, p0, Lcom/feedback/ui/e;->a:Lcom/feedback/ui/FeedbackConversation;

    invoke-static {v1}, Lcom/feedback/ui/FeedbackConversation;->a(Lcom/feedback/ui/FeedbackConversation;)Lcom/feedback/b/b;

    move-result-object v1

    iput-object v1, v0, Lcom/feedback/ui/h;->a:Lcom/feedback/b/b;

    iget-object v0, p0, Lcom/feedback/ui/e;->a:Lcom/feedback/ui/FeedbackConversation;

    invoke-static {v0}, Lcom/feedback/ui/FeedbackConversation;->b(Lcom/feedback/ui/FeedbackConversation;)Lcom/feedback/ui/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/feedback/ui/h;->notifyDataSetChanged()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/feedback/ui/e;->a:Lcom/feedback/ui/FeedbackConversation;

    invoke-static {v0}, Lcom/feedback/ui/FeedbackConversation;->a(Lcom/feedback/ui/FeedbackConversation;)Lcom/feedback/b/b;

    move-result-object v0

    iget-object v0, v0, Lcom/feedback/b/b;->a:Lcom/feedback/b/c;

    sget-object v2, Lcom/feedback/b/c;->a:Lcom/feedback/b/c;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/feedback/ui/e;->a:Lcom/feedback/ui/FeedbackConversation;

    invoke-static {v0}, Lcom/feedback/ui/FeedbackConversation;->a(Lcom/feedback/ui/FeedbackConversation;)Lcom/feedback/b/b;

    move-result-object v0

    iget-object v0, v0, Lcom/feedback/b/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/feedback/ui/e;->a:Lcom/feedback/ui/FeedbackConversation;

    iget-object v2, p0, Lcom/feedback/ui/e;->a:Lcom/feedback/ui/FeedbackConversation;

    const-string v3, "fail"

    invoke-static {v2, v1, v3}, Lcom/feedback/a/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/feedback/b/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feedback/ui/FeedbackConversation;->a(Lcom/feedback/ui/FeedbackConversation;Lcom/feedback/b/b;)V

    iget-object v0, p0, Lcom/feedback/ui/e;->a:Lcom/feedback/ui/FeedbackConversation;

    invoke-static {v0}, Lcom/feedback/ui/FeedbackConversation;->b(Lcom/feedback/ui/FeedbackConversation;)Lcom/feedback/ui/h;

    move-result-object v0

    iget-object v1, p0, Lcom/feedback/ui/e;->a:Lcom/feedback/ui/FeedbackConversation;

    invoke-static {v1}, Lcom/feedback/ui/FeedbackConversation;->a(Lcom/feedback/ui/FeedbackConversation;)Lcom/feedback/b/b;

    move-result-object v1

    iput-object v1, v0, Lcom/feedback/ui/h;->a:Lcom/feedback/b/b;

    iget-object v0, p0, Lcom/feedback/ui/e;->a:Lcom/feedback/ui/FeedbackConversation;

    invoke-static {v0}, Lcom/feedback/ui/FeedbackConversation;->b(Lcom/feedback/ui/FeedbackConversation;)Lcom/feedback/ui/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/feedback/ui/h;->notifyDataSetChanged()V

    goto :goto_0
.end method
