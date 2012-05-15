.class public final Lcom/a/a/g;
.super Ljava/lang/Object;


# static fields
.field private static g:Landroid/app/Notification;


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private h:Landroid/app/NotificationManager;

.field private i:I

.field private j:Z

.field private k:Z

.field private l:I

.field private m:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/a/a/g;->g:Landroid/app/Notification;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x32

    iput v0, p0, Lcom/a/a/g;->b:I

    iput-boolean v1, p0, Lcom/a/a/g;->j:Z

    iput-boolean v1, p0, Lcom/a/a/g;->k:Z

    sget v0, Lcom/a/a/d;->a:I

    iput v0, p0, Lcom/a/a/g;->l:I

    new-instance v0, Lcom/a/a/f;

    invoke-direct {v0, p0}, Lcom/a/a/f;-><init>(Lcom/a/a/g;)V

    iput-object v0, p0, Lcom/a/a/g;->m:Landroid/os/Handler;

    :try_start_0
    iput-object p1, p0, Lcom/a/a/g;->a:Landroid/content/Context;

    iput-object p6, p0, Lcom/a/a/g;->f:Ljava/lang/String;

    invoke-direct {p0}, Lcom/a/a/g;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/g;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/a/a/g;->a:Landroid/content/Context;

    const-string v2, "string"

    const-string v3, "UMBreak_Network"

    invoke-direct {p0, v2, v3}, Lcom/a/a/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    sget v0, Lcom/a/a/d;->b:I

    iput v0, p0, Lcom/a/a/g;->l:I

    :goto_0
    iget v0, p0, Lcom/a/a/g;->l:I

    sget v1, Lcom/a/a/d;->b:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/g;->j:Z

    :goto_1
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/a/a/d;->c:I

    iput v0, p0, Lcom/a/a/g;->l:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iput-boolean v5, p0, Lcom/a/a/g;->j:Z

    goto :goto_1

    :cond_1
    :try_start_1
    sget v0, Lcom/a/a/d;->a:I

    iput v0, p0, Lcom/a/a/g;->l:I

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/g;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/a/a/g;->e:Ljava/lang/String;

    const v0, 0x1080081

    iput v0, p0, Lcom/a/a/g;->i:I

    new-instance v0, Landroid/app/Notification;

    iget v1, p0, Lcom/a/a/g;->i:I

    const-wide/16 v2, 0x1

    invoke-direct {v0, v1, p3, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    sput-object v0, Lcom/a/a/g;->g:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/a/a/g;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "layout"

    const-string v3, "umeng_analyse_download_notification"

    invoke-direct {p0, v2, v3}, Lcom/a/a/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const-string v1, "id"

    const-string v2, "umeng_analyse_progress_bar"

    invoke-direct {p0, v1, v2}, Lcom/a/a/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x64

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    const-string v1, "id"

    const-string v2, "umeng_analyse_progress_text"

    invoke-direct {p0, v1, v2}, Lcom/a/a/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v2, "0%"

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const-string v1, "id"

    const-string v2, "umeng_analyse_title"

    invoke-direct {p0, v1, v2}, Lcom/a/a/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const-string v1, "id"

    const-string v2, "umeng_analyse_description"

    invoke-direct {p0, v1, v2}, Lcom/a/a/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const-string v1, "id"

    const-string v2, "umeng_analyse_appIcon"

    invoke-direct {p0, v1, v2}, Lcom/a/a/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget v2, p0, Lcom/a/a/g;->i:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    sget-object v1, Lcom/a/a/g;->g:Landroid/app/Notification;

    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/a/a/g;->g:Landroid/app/Notification;

    iget-object v2, p0, Lcom/a/a/g;->a:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x800

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/a/a/g;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/a/a/g;->h:Landroid/app/NotificationManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/a/a/g;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".R$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "getIdByReflection error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/a/a/g;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/a/a/g;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/a/a/g;Z)V
    .locals 12

    const/4 v2, 0x0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/a/a/g;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    iget-object v1, p0, Lcom/a/a/g;->h:Landroid/app/NotificationManager;

    const/4 v3, 0x0

    sget-object v4, Lcom/a/a/g;->g:Landroid/app/Notification;

    invoke-virtual {v1, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    const/16 v1, 0x1000

    new-array v6, v1, [B

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v7

    iget-object v0, p0, Lcom/a/a/g;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/g;->f:Ljava/lang/String;

    invoke-static {v0, v1, v7}, Lcom/a/a/g;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/g;->d:Ljava/lang/String;

    if-eqz p1, :cond_0

    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/a/a/g;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/a/a/g;->d:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move v1, v2

    move v3, v2

    :goto_0
    invoke-virtual {v5, v6}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_1

    :goto_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    iget-boolean v0, p0, Lcom/a/a/g;->j:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/a/a/g;->b()V

    :goto_2
    return-void

    :cond_0
    iget-object v0, p0, Lcom/a/a/g;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/g;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/a/a/g;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/a/a/g;->d:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    move v1, v2

    move v3, v2

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    invoke-virtual {v0, v6, v8, v4}, Ljava/io/FileOutputStream;->write([BII)V

    add-int/2addr v1, v4

    add-int/lit8 v4, v3, 0x1

    iget v8, p0, Lcom/a/a/g;->b:I

    rem-int/2addr v3, v8

    if-nez v3, :cond_3

    invoke-direct {p0}, Lcom/a/a/g;->c()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/a/a/g;->j:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iput-boolean v2, p0, Lcom/a/a/g;->j:Z

    invoke-direct {p0}, Lcom/a/a/g;->b()V

    goto :goto_2

    :cond_2
    int-to-float v3, v1

    const/high16 v8, 0x42c8

    mul-float/2addr v3, v8

    int-to-float v8, v7

    div-float/2addr v3, v8

    float-to-int v3, v3

    :try_start_1
    sget-object v8, Lcom/a/a/g;->g:Landroid/app/Notification;

    iget-object v8, v8, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v9, "id"

    const-string v10, "umeng_analyse_progress_bar"

    invoke-direct {p0, v9, v10}, Lcom/a/a/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    const/16 v10, 0x64

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v3, v11}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    sget-object v8, Lcom/a/a/g;->g:Landroid/app/Notification;

    iget-object v8, v8, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v9, "id"

    const-string v10, "umeng_analyse_progress_text"

    invoke-direct {p0, v9, v10}, Lcom/a/a/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "%"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v9, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/a/a/g;->h:Landroid/app/NotificationManager;

    const/4 v8, 0x0

    sget-object v9, Lcom/a/a/g;->g:Landroid/app/Notification;

    invoke-virtual {v3, v8, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_3
    move v3, v4

    goto/16 :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/a/a/g;->b()V

    iget-object v0, p0, Lcom/a/a/g;->m:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method static synthetic b(Lcom/a/a/g;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/a/a/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/a/a/g;->h:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const/4 v0, 0x0

    sput-object v0, Lcom/a/a/g;->g:Landroid/app/Notification;

    return-void
.end method

.method static synthetic c(Lcom/a/a/g;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/a/a/g;->a:Landroid/content/Context;

    return-object v0
.end method

.method private c()Z
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/a/a/g;->a:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0
.end method

.method static synthetic d(Lcom/a/a/g;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/g;->j:Z

    return-void
.end method

.method static synthetic e(Lcom/a/a/g;)I
    .locals 1

    iget v0, p0, Lcom/a/a/g;->l:I

    return v0
.end method

.method static synthetic f(Lcom/a/a/g;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/a/a/g;->k:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-boolean v0, p0, Lcom/a/a/g;->j:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/a/a/g;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance v0, Lcom/a/a/e;

    invoke-direct {v0, p0}, Lcom/a/a/e;-><init>(Lcom/a/a/g;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MobclickAgent"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
