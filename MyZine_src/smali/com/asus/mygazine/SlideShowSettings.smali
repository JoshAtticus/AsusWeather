.class public Lcom/asus/mygazine/SlideShowSettings;
.super Landroid/preference/PreferenceFragment;
.source "SlideShowSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final DBG:Z

.field public static final DEFAULT_PIC_NUMBER:I = 0x14

.field public static final DEFAULT_QUERY_NUMBER:I = 0x64

.field public static final DEFAULT_SLIDE_SHOW_INTERVAL:I = 0x2710

.field public static final KEY_SELECT_FOLDER:Ljava/lang/String; = "select"

.field public static final KEY_SLIDE_SHOW_INTERVAL:Ljava/lang/String; = "slide_show_interval"

.field public static final KEY_TRANSITION:Ljava/lang/String; = "transition_effect"

.field public static final TAG:Ljava/lang/String; = "SlideShowSettings"


# instance fields
.field private mSelectFolderPref:Landroid/preference/Preference;

.field private mShowIntervalPref:Landroid/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 13
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_d

    :goto_a
    sput-boolean v0, Lcom/asus/mygazine/SlideShowSettings;->DBG:Z

    return-void

    :cond_d
    move v0, v1

    goto :goto_a
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method initUI()V
    .registers 8

    .prologue
    .line 54
    const-string v4, "select"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/asus/mygazine/SlideShowSettings;->mSelectFolderPref:Landroid/preference/Preference;

    .line 55
    const-string v4, "slide_show_interval"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/asus/mygazine/SlideShowSettings;->mShowIntervalPref:Landroid/preference/ListPreference;

    .line 57
    iget-object v4, p0, Lcom/asus/mygazine/SlideShowSettings;->mSelectFolderPref:Landroid/preference/Preference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 58
    iget-object v4, p0, Lcom/asus/mygazine/SlideShowSettings;->mShowIntervalPref:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 60
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "MyzinePrefs"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 62
    .local v2, "settings":Landroid/content/SharedPreferences;
    const-string v4, "slide_show_interval"

    const/16 v5, 0x2710

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "interval":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "showIntervalEntries":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3f
    array-length v4, v3

    if-ge v0, v4, :cond_5e

    .line 66
    aget-object v4, v3, v0

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060020

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 68
    :cond_5e
    iget-object v4, p0, Lcom/asus/mygazine/SlideShowSettings;->mShowIntervalPref:Landroid/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 69
    iget-object v4, p0, Lcom/asus/mygazine/SlideShowSettings;->mShowIntervalPref:Landroid/preference/ListPreference;

    invoke-virtual {v4, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 70
    iget-object v4, p0, Lcom/asus/mygazine/SlideShowSettings;->mShowIntervalPref:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/asus/mygazine/SlideShowSettings;->mShowIntervalPref:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 71
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 26
    sget-boolean v0, Lcom/asus/mygazine/SlideShowSettings;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "SlideShowSettings"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :cond_b
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f040003

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 29
    invoke-virtual {p0}, Lcom/asus/mygazine/SlideShowSettings;->initUI()V

    .line 30
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 9
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 33
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "MyzinePrefs"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 35
    .local v2, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 37
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "slide_show_interval"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 38
    sget-boolean v3, Lcom/asus/mygazine/SlideShowSettings;->DBG:Z

    if-eqz v3, :cond_44

    const-string v4, "SlideShowSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceChange - key = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " value="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    move-object v3, p2

    .line 39
    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 40
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 41
    iget-object v4, p0, Lcom/asus/mygazine/SlideShowSettings;->mShowIntervalPref:Landroid/preference/ListPreference;

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 42
    iget-object v3, p0, Lcom/asus/mygazine/SlideShowSettings;->mShowIntervalPref:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/asus/mygazine/SlideShowSettings;->mShowIntervalPref:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 44
    :cond_64
    const-string v3, "transition_effect"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a1

    .line 45
    sget-boolean v3, Lcom/asus/mygazine/SlideShowSettings;->DBG:Z

    if-eqz v3, :cond_95

    const-string v4, "SlideShowSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceChange - key = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " value="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_95
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 47
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 49
    :cond_a1
    const/4 v3, 0x1

    return v3
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 74
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 75
    const-string v2, "select"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 76
    sget-boolean v2, Lcom/asus/mygazine/SlideShowSettings;->DBG:Z

    if-eqz v2, :cond_29

    const-string v2, "SlideShowSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceClick - key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_29
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/asus/mygazine/PhotoActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    invoke-virtual {p0, v1, v0}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 82
    :goto_37
    return v0

    :cond_38
    const/4 v0, 0x0

    goto :goto_37
.end method

.method public onResume()V
    .registers 6

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 87
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/asus/mygazine/MyZineWidgetProvider;->getOrNewDataUtils(Landroid/content/Context;)Lcom/asus/mygazine/MyZineDataUtils;

    move-result-object v0

    .line 88
    .local v0, "dataUtils":Lcom/asus/mygazine/MyZineDataUtils;
    invoke-virtual {v0}, Lcom/asus/mygazine/MyZineDataUtils;->getAlbumTitle()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "title":Ljava/lang/String;
    sget-boolean v2, Lcom/asus/mygazine/SlideShowSettings;->DBG:Z

    if-eqz v2, :cond_2b

    const-string v2, "SlideShowSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume is called, title = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_2b
    if-eqz v1, :cond_33

    .line 91
    iget-object v2, p0, Lcom/asus/mygazine/SlideShowSettings;->mSelectFolderPref:Landroid/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 95
    :goto_32
    return-void

    .line 93
    :cond_33
    iget-object v2, p0, Lcom/asus/mygazine/SlideShowSettings;->mSelectFolderPref:Landroid/preference/Preference;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_32
.end method
