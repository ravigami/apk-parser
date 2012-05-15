.class public Lcom/feedback/ui/FeedbackConversations;
.super Landroid/app/ListActivity;


# static fields
.field private static synthetic c:[I


# instance fields
.field private a:Lcom/feedback/ui/i;

.field private b:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    invoke-virtual {p0}, Lcom/feedback/ui/FeedbackConversations;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/feedback/ui/b;

    invoke-static {p0}, Lcom/feedback/a/a;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/feedback/ui/b;->a(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/feedback/ui/b;->notifyDataSetChanged()V

    return-void
.end method

.method private static synthetic b()[I
    .locals 3

    sget-object v0, Lcom/feedback/ui/FeedbackConversations;->c:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/feedback/b/c;->values()[Lcom/feedback/b/c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/feedback/b/c;->c:Lcom/feedback/b/c;

    invoke-virtual {v1}, Lcom/feedback/b/c;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/feedback/b/c;->b:Lcom/feedback/b/c;

    invoke-virtual {v1}, Lcom/feedback/b/c;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/feedback/b/c;->a:Lcom/feedback/b/c;

    invoke-virtual {v1}, Lcom/feedback/b/c;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/feedback/ui/FeedbackConversations;->c:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0}, Lcom/feedback/ui/FeedbackConversations;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/feedback/ui/b;

    invoke-virtual {v0, v1}, Lcom/feedback/ui/b;->a(I)Lcom/feedback/b/b;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    iget-object v1, v0, Lcom/feedback/b/b;->b:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/feedback/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/feedback/a/c;->b(Landroid/content/Context;Lcom/feedback/b/b;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, v0, Lcom/feedback/b/b;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/feedback/a/a;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/feedback/ui/FeedbackConversations;->a()V

    goto :goto_0

    :pswitch_2
    iget-object v0, v0, Lcom/feedback/b/b;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/feedback/a/a;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/feedback/ui/FeedbackConversations;->a()V

    goto :goto_0

    :pswitch_3
    invoke-static {p0, v0}, Lcom/feedback/a/c;->a(Landroid/content/Context;Lcom/feedback/b/b;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/feedback/ui/FeedbackConversations;->requestWindowFeature(I)Z

    const-string v0, "layout"

    const-string v1, "umeng_analyse_feedback_conversations"

    invoke-static {p0, v0, v1}, Lcom/a/a/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/feedback/ui/FeedbackConversations;->setContentView(I)V

    const-string v0, "id"

    const-string v1, "umeng_analyse_imgBtn_submitFb"

    invoke-static {p0, v0, v1}, Lcom/a/a/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/feedback/ui/FeedbackConversations;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/feedback/ui/FeedbackConversations;->b:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/feedback/ui/FeedbackConversations;->b:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/feedback/ui/FeedbackConversations;->b:Landroid/widget/ImageButton;

    new-instance v1, Lcom/feedback/ui/j;

    invoke-direct {v1, p0}, Lcom/feedback/ui/j;-><init>(Lcom/feedback/ui/FeedbackConversations;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const-string v0, "id"

    const-string v1, "umeng_analyse_um_feedbacklist_title"

    invoke-static {p0, v0, v1}, Lcom/a/a/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/feedback/ui/FeedbackConversations;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const-string v1, "string"

    const-string v2, "UMFeedbackListTitle"

    invoke-static {p0, v1, v2}, Lcom/a/a/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/feedback/ui/FeedbackConversations;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-static {}, Lcom/feedback/e;->a()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/feedback/c/b;

    invoke-direct {v0, p0}, Lcom/feedback/c/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/feedback/c/b;->start()V

    :cond_2
    invoke-virtual {p0}, Lcom/feedback/ui/FeedbackConversations;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/feedback/ui/FeedbackConversations;->registerForContextMenu(Landroid/view/View;)V

    invoke-static {p0}, Lcom/feedback/a/a;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/feedback/ui/b;

    invoke-direct {v1, p0, v0}, Lcom/feedback/ui/b;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/feedback/ui/FeedbackConversations;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0}, Lcom/feedback/ui/FeedbackConversations;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/feedback/ui/b;

    invoke-virtual {v0, v1}, Lcom/feedback/ui/b;->a(I)Lcom/feedback/b/b;

    move-result-object v0

    iget-object v0, v0, Lcom/feedback/b/b;->a:Lcom/feedback/b/c;

    sget-object v1, Lcom/feedback/b/c;->c:Lcom/feedback/b/c;

    if-ne v0, v1, :cond_1

    const-string v0, "string"

    const-string v1, "UMViewThread"

    invoke-static {p0, v0, v1}, Lcom/a/a/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/feedback/ui/FeedbackConversations;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v3, v3, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const/4 v0, 0x1

    const-string v1, "string"

    const-string v2, "UMDeleteThread"

    invoke-static {p0, v1, v2}, Lcom/a/a/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/feedback/ui/FeedbackConversations;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/feedback/b/c;->a:Lcom/feedback/b/c;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x2

    const-string v1, "string"

    const-string v2, "UMViewFeedback"

    invoke-static {p0, v1, v2}, Lcom/a/a/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/feedback/ui/FeedbackConversations;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const-string v0, "string"

    const-string v1, "UMDeleteFeedback"

    invoke-static {p0, v0, v1}, Lcom/a/a/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/feedback/ui/FeedbackConversations;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v4, v3, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/feedback/b/c;->b:Lcom/feedback/b/c;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    const-string v1, "string"

    const-string v2, "UMResendFeedback"

    invoke-static {p0, v1, v2}, Lcom/a/a/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/feedback/ui/FeedbackConversations;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const-string v0, "string"

    const-string v1, "UMDeleteFeedback"

    invoke-static {p0, v0, v1}, Lcom/a/a/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/feedback/ui/FeedbackConversations;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v4, v3, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    invoke-virtual {p0}, Lcom/feedback/ui/FeedbackConversations;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/feedback/ui/b;

    invoke-virtual {v0, p3}, Lcom/feedback/ui/b;->a(I)Lcom/feedback/b/b;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/feedback/ui/FeedbackConversations;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/feedback/ui/b;

    invoke-virtual {v0, p3}, Lcom/feedback/ui/b;->a(I)Lcom/feedback/b/b;

    move-result-object v0

    iget-object v2, v0, Lcom/feedback/b/b;->a:Lcom/feedback/b/c;

    iget-object v3, v0, Lcom/feedback/b/b;->b:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/feedback/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/feedback/ui/FeedbackConversations;->b()[I

    move-result-object v3

    invoke-virtual {v2}, Lcom/feedback/b/c;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    invoke-static {p0, v0}, Lcom/feedback/a/c;->b(Landroid/content/Context;Lcom/feedback/b/b;)V

    :goto_0
    monitor-exit v1

    return-void

    :pswitch_0
    invoke-static {p0, v0}, Lcom/feedback/a/c;->a(Landroid/content/Context;Lcom/feedback/b/b;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestart()V
    .locals 0

    invoke-super {p0}, Landroid/app/ListActivity;->onRestart()V

    invoke-direct {p0}, Lcom/feedback/ui/FeedbackConversations;->a()V

    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    new-instance v1, Lcom/feedback/ui/i;

    invoke-virtual {p0}, Lcom/feedback/ui/FeedbackConversations;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/feedback/ui/b;

    invoke-direct {v1, p0, v0}, Lcom/feedback/ui/i;-><init>(Lcom/feedback/ui/FeedbackConversations;Lcom/feedback/ui/b;)V

    iput-object v1, p0, Lcom/feedback/ui/FeedbackConversations;->a:Lcom/feedback/ui/i;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "postFeedbackFinished"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "RetrieveReplyBroadcast"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/feedback/ui/FeedbackConversations;->a:Lcom/feedback/ui/i;

    invoke-virtual {p0, v1, v0}, Lcom/feedback/ui/FeedbackConversations;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    iget-object v0, p0, Lcom/feedback/ui/FeedbackConversations;->a:Lcom/feedback/ui/i;

    invoke-virtual {p0, v0}, Lcom/feedback/ui/FeedbackConversations;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
