.class public Lcom/yingyonghui/market/install/IWorksPackageManager;
.super Ljava/lang/Object;
.source "IWorksPackageManager.java"


# static fields
.field private static b:Lcom/yingyonghui/market/install/IWorksPackageManager;


# instance fields
.field private a:Ljava/lang/String;

.field private c:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-class v0, Lcom/yingyonghui/market/install/IWorksPackageManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yingyonghui/market/install/IWorksPackageManager;->a:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/yingyonghui/market/install/IWorksPackageManager;->c:Landroid/content/Context;

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/yingyonghui/market/install/IWorksPackageManager;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/yingyonghui/market/install/IWorksPackageManager;->c:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/yingyonghui/market/install/IWorksPackageManager;
    .locals 1
    .parameter

    .prologue
    .line 38
    sget-object v0, Lcom/yingyonghui/market/install/IWorksPackageManager;->b:Lcom/yingyonghui/market/install/IWorksPackageManager;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/yingyonghui/market/install/IWorksPackageManager;

    invoke-direct {v0, p0}, Lcom/yingyonghui/market/install/IWorksPackageManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/yingyonghui/market/install/IWorksPackageManager;->b:Lcom/yingyonghui/market/install/IWorksPackageManager;

    .line 42
    :cond_0
    sget-object v0, Lcom/yingyonghui/market/install/IWorksPackageManager;->b:Lcom/yingyonghui/market/install/IWorksPackageManager;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/io/File;)Ljava/io/File;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v4, -0x1

    .line 76
    const-string v1, "tmpCopy.apk"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 77
    if-eqz v1, :cond_3

    .line 78
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 82
    :cond_0
    :try_start_0
    const-string v2, "tmpCopy.apk"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 92
    if-eqz v2, :cond_1

    .line 94
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 101
    :cond_1
    :goto_0
    invoke-static {p2, v1}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 102
    iget-object v1, p0, Lcom/yingyonghui/market/install/IWorksPackageManager;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to make copy of file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :goto_1
    return-object v0

    .line 95
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 86
    :catch_1
    move-exception v1

    :try_start_2
    iget-object v1, p0, Lcom/yingyonghui/market/install/IWorksPackageManager;->a:Ljava/lang/String;

    const-string v2, "Error opening file tmpCopy.apk"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 92
    :catchall_0
    move-exception v0

    throw v0

    .line 89
    :catch_2
    move-exception v1

    :try_start_3
    iget-object v1, p0, Lcom/yingyonghui/market/install/IWorksPackageManager;->a:Ljava/lang/String;

    const-string v2, "Error opening file tmpCopy.apk"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 105
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1a4

    invoke-static {v0, v2, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 106
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1fd

    invoke-static {v0, v2, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-object v0, v1

    .line 107
    goto :goto_1

    .line 110
    :cond_3
    iget-object v1, p0, Lcom/yingyonghui/market/install/IWorksPackageManager;->a:Ljava/lang/String;

    const-string v2, "Failed to create temp file"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/io/File;Ljava/lang/String;Landroid/os/Handler;)Z
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x2

    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 47
    .line 48
    iget-object v2, p0, Lcom/yingyonghui/market/install/IWorksPackageManager;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 50
    const/16 v3, 0x2000

    :try_start_0
    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 51
    if-eqz v3, :cond_1

    .line 56
    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_0

    .line 57
    iget-object v3, p0, Lcom/yingyonghui/market/install/IWorksPackageManager;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Replacing package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    new-instance v3, Lcom/yingyonghui/market/install/IWorksPackageManager$PackageInstallObserver;

    invoke-direct {v3, p0, p3}, Lcom/yingyonghui/market/install/IWorksPackageManager$PackageInstallObserver;-><init>(Lcom/yingyonghui/market/install/IWorksPackageManager;Landroid/os/Handler;)V

    .line 64
    :try_start_1
    iget-object v4, p0, Lcom/yingyonghui/market/install/IWorksPackageManager;->c:Landroid/content/Context;

    invoke-direct {p0, v4, p1}, Lcom/yingyonghui/market/install/IWorksPackageManager;->a(Landroid/content/Context;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 65
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "installPackage"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/net/Uri;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Landroid/content/pm/IPackageInstallObserver;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 66
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v4, 0x1

    aput-object v3, v6, v4

    const/4 v4, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v4

    const/4 v0, 0x3

    aput-object p2, v6, v0

    invoke-virtual {v5, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 72
    :goto_1
    return v10

    :catch_0
    move-exception v0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 67
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 69
    invoke-virtual {v3, p2, v1}, Lcom/yingyonghui/market/install/IWorksPackageManager$PackageInstallObserver;->packageInstalled(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Landroid/os/Handler;)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 151
    new-instance v1, Lcom/yingyonghui/market/install/IWorksPackageManager$PackageDeleteObserver;

    invoke-direct {v1, p0, p2}, Lcom/yingyonghui/market/install/IWorksPackageManager$PackageDeleteObserver;-><init>(Lcom/yingyonghui/market/install/IWorksPackageManager;Landroid/os/Handler;)V

    .line 152
    iget-object v0, p0, Lcom/yingyonghui/market/install/IWorksPackageManager;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 154
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "deletePackage"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/content/pm/IPackageDeleteObserver;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 155
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_0
    return v8

    .line 156
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 158
    invoke-virtual {v1, v7}, Lcom/yingyonghui/market/install/IWorksPackageManager$PackageDeleteObserver;->packageDeleted(Z)V

    goto :goto_0
.end method
