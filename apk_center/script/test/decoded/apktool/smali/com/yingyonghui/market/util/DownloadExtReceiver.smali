.class public Lcom/yingyonghui/market/util/DownloadExtReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DownloadExtReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;ILcom/yingyonghui/market/provider/k;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 117
    const-string v0, "package_name"

    invoke-virtual {p2, v0}, Lcom/yingyonghui/market/provider/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 119
    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    .line 120
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 122
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v3, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 123
    const-string v0, "version_code"

    iget v5, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {p2, v0, v5}, Lcom/yingyonghui/market/provider/k;->a(Ljava/lang/String;I)V

    .line 124
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    .line 126
    if-nez v0, :cond_0

    .line 127
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 128
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v3, v2, v4, v0}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    :cond_0
    const-string v2, "app_name"

    invoke-virtual {p2, v2, v0}, Lcom/yingyonghui/market/provider/k;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 136
    :cond_1
    :goto_0
    const-string v0, "install_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p2, v0, v2, v3}, Lcom/yingyonghui/market/provider/k;->a(Ljava/lang/String;J)V

    .line 137
    sget-object v0, Lcom/yingyonghui/market/provider/m;->f:Lcom/yingyonghui/market/provider/m;

    invoke-virtual {p2, v0}, Lcom/yingyonghui/market/provider/k;->a(Lcom/yingyonghui/market/provider/m;)V

    .line 138
    invoke-virtual {p2, v1}, Lcom/yingyonghui/market/provider/k;->b(Landroid/content/ContentResolver;)V

    .line 140
    invoke-virtual {p2, v1}, Lcom/yingyonghui/market/provider/k;->a(Landroid/content/ContentResolver;)Ljava/io/File;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_3

    .line 142
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    .line 143
    const-string v3, "sdcard/Yingyonghui"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v6, :cond_3

    .line 145
    :try_start_1
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/apk/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 147
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 149
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 156
    :cond_3
    :goto_1
    invoke-virtual {p2}, Lcom/yingyonghui/market/provider/k;->g()Landroid/net/Uri;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_4

    .line 158
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "content://com.yingyonghui.market.download"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 162
    invoke-virtual {v1, v0, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 190
    :cond_4
    :goto_2
    return-void

    .line 150
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 171
    :cond_5
    invoke-virtual {p2}, Lcom/yingyonghui/market/provider/k;->d()Lcom/yingyonghui/market/provider/m;

    move-result-object v0

    sget-object v2, Lcom/yingyonghui/market/provider/m;->j:Lcom/yingyonghui/market/provider/m;

    if-eq v0, v2, :cond_6

    invoke-virtual {p2}, Lcom/yingyonghui/market/provider/k;->d()Lcom/yingyonghui/market/provider/m;

    move-result-object v0

    sget-object v2, Lcom/yingyonghui/market/provider/m;->k:Lcom/yingyonghui/market/provider/m;

    if-ne v0, v2, :cond_7

    .line 172
    :cond_6
    sget-object v0, Lcom/yingyonghui/market/provider/m;->l:Lcom/yingyonghui/market/provider/m;

    invoke-virtual {p2, v0}, Lcom/yingyonghui/market/provider/k;->a(Lcom/yingyonghui/market/provider/m;)V

    .line 176
    :goto_3
    invoke-virtual {p2, v1}, Lcom/yingyonghui/market/provider/k;->b(Landroid/content/ContentResolver;)V

    .line 178
    if-ne p1, v6, :cond_8

    .line 179
    const v0, 0x7f090145

    invoke-static {p0, v0}, Lcom/yingyonghui/market/util/GlobalUtil;->a(Landroid/content/Context;I)V

    goto :goto_2

    .line 174
    :cond_7
    sget-object v0, Lcom/yingyonghui/market/provider/m;->g:Lcom/yingyonghui/market/provider/m;

    invoke-virtual {p2, v0}, Lcom/yingyonghui/market/provider/k;->a(Lcom/yingyonghui/market/provider/m;)V

    goto :goto_3

    .line 180
    :cond_8
    const/4 v0, -0x2

    if-ne p1, v0, :cond_4

    .line 181
    invoke-virtual {p2, v1}, Lcom/yingyonghui/market/provider/k;->a(Landroid/content/ContentResolver;)Ljava/io/File;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 183
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 186
    :cond_9
    const v0, 0x7f090146

    invoke-static {p0, v0}, Lcom/yingyonghui/market/util/GlobalUtil;->a(Landroid/content/Context;I)V

    goto :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method private static a(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 193
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 194
    invoke-static {v0, p1}, Lcom/yingyonghui/market/provider/k;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/yingyonghui/market/provider/k;

    move-result-object v1

    .line 195
    if-eqz v1, :cond_1

    .line 196
    invoke-virtual {v1, v0}, Lcom/yingyonghui/market/provider/k;->a(Landroid/content/ContentResolver;)Ljava/io/File;

    move-result-object v0

    .line 198
    if-eqz v0, :cond_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 199
    :cond_0
    const/4 v0, -0x1

    invoke-static {p0, v0, v1}, Lcom/yingyonghui/market/util/DownloadExtReceiver;->a(Landroid/content/Context;ILcom/yingyonghui/market/provider/k;)V

    .line 212
    :cond_1
    :goto_0
    return-void

    .line 201
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 202
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-nez v2, :cond_3

    .line 203
    const/4 v0, -0x2

    invoke-static {p0, v0, v1}, Lcom/yingyonghui/market/util/DownloadExtReceiver;->a(Landroid/content/Context;ILcom/yingyonghui/market/provider/k;)V

    goto :goto_0

    .line 205
    :cond_3
    const-string v2, "app_name"

    invoke-virtual {v1, v2}, Lcom/yingyonghui/market/provider/k;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "package_name"

    invoke-virtual {v1, v2}, Lcom/yingyonghui/market/provider/k;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/yingyonghui/market/util/GlobalUtil;->b(Landroid/content/Context;Ljava/io/File;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 34
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/yingyonghui/market/by;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 36
    if-nez v0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 39
    :cond_0
    invoke-static {p1, v0}, Lcom/yingyonghui/market/util/DownloadExtReceiver;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 113
    :cond_1
    :goto_0
    return-void

    .line 40
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/yingyonghui/market/provider/k;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/yingyonghui/market/provider/k;

    move-result-object v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    invoke-virtual {v1}, Lcom/yingyonghui/market/provider/k;->d()Lcom/yingyonghui/market/provider/m;

    move-result-object v2

    sget-object v3, Lcom/yingyonghui/market/provider/m;->j:Lcom/yingyonghui/market/provider/m;

    if-ne v2, v3, :cond_3

    .line 45
    sget-object v2, Lcom/yingyonghui/market/provider/m;->m:Lcom/yingyonghui/market/provider/m;

    invoke-virtual {v1, v2}, Lcom/yingyonghui/market/provider/k;->a(Lcom/yingyonghui/market/provider/m;)V

    .line 49
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yingyonghui/market/provider/k;->b(Landroid/content/ContentResolver;)V

    .line 50
    invoke-static {p1, v4, v1}, Lcom/yingyonghui/market/util/DownloadExtReceiver;->a(Landroid/content/Context;ILcom/yingyonghui/market/provider/k;)V

    .line 52
    new-instance v1, Landroid/content/Intent;

    const-string v2, "app_instaled_refreshview"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    const-string v2, "pkgName"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 47
    :cond_3
    sget-object v2, Lcom/yingyonghui/market/provider/m;->f:Lcom/yingyonghui/market/provider/m;

    invoke-virtual {v1, v2}, Lcom/yingyonghui/market/provider/k;->a(Lcom/yingyonghui/market/provider/m;)V

    goto :goto_1

    .line 56
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 59
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/yingyonghui/market/provider/k;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/yingyonghui/market/provider/k;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_1

    .line 62
    invoke-static {p1, v4, v0}, Lcom/yingyonghui/market/util/DownloadExtReceiver;->a(Landroid/content/Context;ILcom/yingyonghui/market/provider/k;)V

    goto :goto_0

    .line 66
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 67
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/yingyonghui/market/provider/k;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/yingyonghui/market/provider/k;

    move-result-object v1

    .line 69
    if-eqz v1, :cond_1

    .line 70
    sget-object v2, Lcom/yingyonghui/market/provider/m;->n:Lcom/yingyonghui/market/provider/m;

    invoke-virtual {v1, v2}, Lcom/yingyonghui/market/provider/k;->a(Lcom/yingyonghui/market/provider/m;)V

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yingyonghui/market/provider/k;->b(Landroid/content/ContentResolver;)V

    .line 73
    new-instance v1, Landroid/content/Intent;

    const-string v2, "app_uninstaled_refreshview"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    const-string v2, "pkgName"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 77
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.DOWNLOAD_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 79
    if-eqz v1, :cond_1

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 81
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 82
    if-eqz v1, :cond_1

    .line 83
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    const-string v2, "status"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 85
    const-string v3, "notificationextras"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 86
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 88
    invoke-static {p1}, Lcom/yingyonghui/market/util/n;->a(Landroid/content/Context;)Lcom/yingyonghui/market/util/n;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/yingyonghui/market/util/n;->a(Ljava/lang/String;)Lcom/yingyonghui/market/util/j;

    move-result-object v1

    .line 89
    if-eqz v1, :cond_7

    .line 90
    invoke-static {p1}, Lcom/yingyonghui/market/online/e;->a(Landroid/content/Context;)Lcom/yingyonghui/market/online/e;

    move-result-object v4

    iget-object v5, v1, Lcom/yingyonghui/market/util/j;->a:Ljava/lang/String;

    iget-object v1, v1, Lcom/yingyonghui/market/util/j;->b:Ljava/lang/String;

    const-string v6, "download"

    invoke-virtual {v4, v5, v1, v6}, Lcom/yingyonghui/market/online/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_7
    invoke-static {v0, v3}, Lcom/yingyonghui/market/provider/k;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/yingyonghui/market/provider/k;

    move-result-object v1

    .line 93
    invoke-static {v2}, Lcom/yingyonghui/downloads/g;->b(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 94
    invoke-virtual {v1}, Lcom/yingyonghui/market/provider/k;->b()V

    .line 95
    invoke-virtual {v1, v0}, Lcom/yingyonghui/market/provider/k;->b(Landroid/content/ContentResolver;)V

    .line 96
    invoke-virtual {v1}, Lcom/yingyonghui/market/provider/k;->c()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yingyonghui/market/util/DownloadExtReceiver;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 104
    :goto_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.yingyonghui.market.DOWNLOAD_COMPLETED_2"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    const-string v1, "packageName"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 108
    invoke-static {v3}, Lcom/yingyonghui/market/log/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yingyonghui/market/log/LogService;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 98
    :cond_8
    invoke-virtual {v1}, Lcom/yingyonghui/market/provider/k;->a()V

    .line 99
    invoke-virtual {v1, v0}, Lcom/yingyonghui/market/provider/k;->b(Landroid/content/ContentResolver;)V

    .line 100
    const v0, 0x7f0900a4

    invoke-static {p1, v0}, Lcom/yingyonghui/market/util/GlobalUtil;->a(Landroid/content/Context;I)V

    goto :goto_2
.end method
