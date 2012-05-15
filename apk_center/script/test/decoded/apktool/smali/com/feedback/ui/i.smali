.class final Lcom/feedback/ui/i;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private a:Lcom/feedback/ui/b;

.field private synthetic b:Lcom/feedback/ui/FeedbackConversations;


# direct methods
.method public constructor <init>(Lcom/feedback/ui/FeedbackConversations;Lcom/feedback/ui/b;)V
    .locals 0

    iput-object p1, p0, Lcom/feedback/ui/i;->b:Lcom/feedback/ui/FeedbackConversations;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lcom/feedback/ui/i;->a:Lcom/feedback/ui/b;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/feedback/ui/i;->b:Lcom/feedback/ui/FeedbackConversations;

    invoke-static {v0}, Lcom/feedback/a/a;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/feedback/ui/i;->a:Lcom/feedback/ui/b;

    invoke-virtual {v1, v0}, Lcom/feedback/ui/b;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/feedback/ui/i;->a:Lcom/feedback/ui/b;

    invoke-virtual {v0}, Lcom/feedback/ui/b;->notifyDataSetChanged()V

    return-void
.end method
