.class public Lcom/yingyonghui/market/ActivityMenuSetting;
.super Landroid/preference/PreferenceActivity;
.source "ActivityMenuSetting.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 17
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "checkbox_screen_lock"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityMenuSetting;->setRequestedOrientation(I)V

    .line 23
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const-string v0, "abtest_tag_002"

    const-string v1, "a"

    invoke-static {p0, v0, v1}, Lcom/yingyonghui/market/util/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    const/high16 v0, 0x7f05

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityMenuSetting;->addPreferencesFromResource(I)V

    .line 30
    :goto_1
    return-void

    .line 20
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityMenuSetting;->setRequestedOrientation(I)V

    goto :goto_0

    .line 28
    :cond_1
    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityMenuSetting;->addPreferencesFromResource(I)V

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "checkbox_screen_lock"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityMenuSetting;->setRequestedOrientation(I)V

    .line 45
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 43
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/yingyonghui/market/ActivityMenuSetting;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method
