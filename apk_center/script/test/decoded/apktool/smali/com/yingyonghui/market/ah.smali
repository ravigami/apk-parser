.class final Lcom/yingyonghui/market/ah;
.super Landroid/content/BroadcastReceiver;
.source "ActivityMain.java"


# instance fields
.field private synthetic a:Lcom/yingyonghui/market/ActivityMain;


# direct methods
.method constructor <init>(Lcom/yingyonghui/market/ActivityMain;)V
    .locals 0
    .parameter

    .prologue
    .line 787
    iput-object p1, p0, Lcom/yingyonghui/market/ah;->a:Lcom/yingyonghui/market/ActivityMain;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 796
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 798
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 801
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 802
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/yingyonghui/market/util/GlobalUtil;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 803
    if-eqz v0, :cond_0

    .line 804
    invoke-static {p1}, Lcom/yingyonghui/market/online/e;->a(Landroid/content/Context;)Lcom/yingyonghui/market/online/e;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v4, v5, v0}, Lcom/yingyonghui/market/online/e;->c(Ljava/lang/String;I)V

    .line 807
    :cond_0
    iget-object v0, p0, Lcom/yingyonghui/market/ah;->a:Lcom/yingyonghui/market/ActivityMain;

    invoke-virtual {v0}, Lcom/yingyonghui/market/ActivityMain;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/yingyonghui/market/MarketApplication;

    .line 808
    invoke-virtual {v0, v2}, Lcom/yingyonghui/market/MarketApplication;->c(Ljava/lang/String;)V

    move v0, v1

    .line 819
    :goto_0
    if-eqz v0, :cond_5

    .line 820
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v7

    .line 822
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    const-string v0, "pkgname"

    aput-object v0, v2, v1

    .line 827
    iget-object v0, p0, Lcom/yingyonghui/market/ah;->a:Lcom/yingyonghui/market/ActivityMain;

    sget-object v1, Lcom/yingyonghui/market/provider/f;->a:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/yingyonghui/market/ActivityMain;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 828
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 829
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 830
    const-string v0, "pkgname"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 835
    :cond_1
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 836
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 838
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 839
    sget-object v5, Lcom/yingyonghui/market/provider/f;->a:Landroid/net/Uri;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v8, v0

    invoke-static {v5, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 840
    iget-object v5, p0, Lcom/yingyonghui/market/ah;->a:Lcom/yingyonghui/market/ActivityMain;

    invoke-virtual {v5}, Lcom/yingyonghui/market/ActivityMain;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v0, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 842
    invoke-static {}, Lcom/yingyonghui/market/ActivityMain;->d()I

    move-result v0

    if-lez v0, :cond_2

    .line 843
    invoke-static {}, Lcom/yingyonghui/market/ActivityMain;->e()I

    .line 845
    :cond_2
    sget-object v0, Lcom/yingyonghui/market/ActivityMain;->c:Landroid/widget/TextView;

    if-nez v0, :cond_3

    .line 846
    iget-object v0, p0, Lcom/yingyonghui/market/ah;->a:Lcom/yingyonghui/market/ActivityMain;

    invoke-static {v0}, Lcom/yingyonghui/market/ActivityMain;->c(Lcom/yingyonghui/market/ActivityMain;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const v5, 0x7f0b011a

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/yingyonghui/market/ActivityMain;->c:Landroid/widget/TextView;

    .line 849
    :cond_3
    invoke-static {}, Lcom/yingyonghui/market/ActivityMain;->d()I

    move-result v0

    if-lez v0, :cond_8

    .line 850
    sget-object v0, Lcom/yingyonghui/market/ActivityMain;->c:Landroid/widget/TextView;

    invoke-static {}, Lcom/yingyonghui/market/ActivityMain;->d()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 851
    sget-object v0, Lcom/yingyonghui/market/ActivityMain;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 857
    :cond_4
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 860
    :cond_5
    return-void

    .line 809
    :cond_6
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 812
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 813
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/yingyonghui/market/util/GlobalUtil;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 814
    if-eqz v0, :cond_7

    .line 815
    invoke-static {p1}, Lcom/yingyonghui/market/online/e;->a(Landroid/content/Context;)Lcom/yingyonghui/market/online/e;

    move-result-object v2

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v5, p0, Lcom/yingyonghui/market/ah;->a:Lcom/yingyonghui/market/ActivityMain;

    iget-object v5, v5, Lcom/yingyonghui/market/ActivityMain;->b:Landroid/os/Handler;

    invoke-virtual {v2, v4, v0, v5}, Lcom/yingyonghui/market/online/e;->b(Ljava/lang/String;ILandroid/os/Handler;)V

    :cond_7
    move v0, v1

    goto/16 :goto_0

    .line 853
    :cond_8
    sget-object v0, Lcom/yingyonghui/market/ActivityMain;->c:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 854
    sget-object v0, Lcom/yingyonghui/market/ActivityMain;->c:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_9
    move v0, v6

    goto/16 :goto_0
.end method
