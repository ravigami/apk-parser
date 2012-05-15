.class public final Lcom/feedback/e;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/feedback/a;

.field private static b:Landroid/content/Context;

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/feedback/e;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/feedback/a/c;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/feedback/a;)V
    .locals 2

    new-instance v0, Lcom/feedback/b;

    invoke-direct {v0}, Lcom/feedback/b;-><init>()V

    sput-object p0, Lcom/feedback/e;->b:Landroid/content/Context;

    sput-object p1, Lcom/feedback/e;->a:Lcom/feedback/a;

    new-instance v1, Lcom/feedback/c/b;

    invoke-direct {v1, p0, v0}, Lcom/feedback/c/b;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/feedback/e;->c:Z

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 10

    const/4 v2, 0x0

    const/4 v9, 0x0

    sget-object v0, Lcom/feedback/e;->a:Lcom/feedback/a;

    sget-object v1, Lcom/feedback/a;->a:Lcom/feedback/a;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/feedback/e;->b:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v3, Landroid/app/Notification;

    const v1, 0x108005e

    sget-object v4, Lcom/feedback/e;->b:Landroid/content/Context;

    sget-object v5, Lcom/feedback/e;->b:Landroid/content/Context;

    const-string v6, "string"

    const-string v7, "UMNewReplyFlick"

    invoke-static {v5, v6, v7}, Lcom/a/a/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v3, v1, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    new-instance v1, Landroid/content/Intent;

    sget-object v4, Lcom/feedback/e;->b:Landroid/content/Context;

    const-class v5, Lcom/feedback/ui/FeedbackConversations;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v4, Lcom/feedback/e;->b:Landroid/content/Context;

    invoke-static {v4, v9, v1, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    sget-object v1, Lcom/feedback/e;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    sget-object v5, Lcom/feedback/e;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v1, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    sget-object v2, Lcom/feedback/e;->b:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Lcom/feedback/e;->b:Landroid/content/Context;

    sget-object v6, Lcom/feedback/e;->b:Landroid/content/Context;

    const-string v7, "string"

    const-string v8, "UMNewReplyTitle"

    invoke-static {v6, v7, v8}, Lcom/a/a/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/feedback/e;->b:Landroid/content/Context;

    sget-object v6, Lcom/feedback/e;->b:Landroid/content/Context;

    const-string v7, "string"

    const-string v8, "UMNewReplyHint"

    invoke-static {v6, v7, v8}, Lcom/a/a/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v1, v5, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/16 v1, 0x10

    iput v1, v3, Landroid/app/Notification;->flags:I

    invoke-virtual {v0, v9, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v1, v2

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/feedback/e;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget-object v1, Lcom/feedback/e;->b:Landroid/content/Context;

    const-string v3, "layout"

    const-string v4, "umeng_analyse_new_reply_alert_dialog"

    invoke-static {v1, v3, v4}, Lcom/a/a/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sget-object v1, Lcom/feedback/e;->b:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "umeng_analyse_new_reply_alert_title"

    invoke-static {v1, v2, v3}, Lcom/a/a/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Lcom/feedback/e;->b:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "umeng_analyse_new_dev_reply_box"

    invoke-static {v2, v3, v4}, Lcom/a/a/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    sget-object v4, Lcom/feedback/e;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog;->setContentView(Landroid/view/View;)V

    sget-object v4, Lcom/feedback/e;->b:Landroid/content/Context;

    sget-object v5, Lcom/feedback/e;->b:Landroid/content/Context;

    const-string v6, "string"

    const-string v7, "UMNewReplyAlertTitle"

    invoke-static {v5, v6, v7}, Lcom/a/a/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/feedback/e;->b:Landroid/content/Context;

    const-string v4, "id"

    const-string v5, "umeng_analyse_exitBtn"

    invoke-static {v1, v4, v5}, Lcom/a/a/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v4, Lcom/feedback/d;

    invoke-direct {v4, v3}, Lcom/feedback/d;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v1, Lcom/feedback/e;->b:Landroid/content/Context;

    const-string v4, "id"

    const-string v5, "umeng_analyse_see_detail_btn"

    invoke-static {v1, v4, v5}, Lcom/a/a/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/feedback/c;

    invoke-direct {v1, v3}, Lcom/feedback/c;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lcom/feedback/e;->c:Z

    return v0
.end method

.method static synthetic b()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/feedback/e;->b:Landroid/content/Context;

    return-object v0
.end method
