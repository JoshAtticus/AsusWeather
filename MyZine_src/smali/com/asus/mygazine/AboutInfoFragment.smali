.class public Lcom/asus/mygazine/AboutInfoFragment;
.super Landroid/preference/PreferenceFragment;
.source "AboutInfoFragment.java"


# static fields
.field private static final KEY_LEGAL_INFO:Ljava/lang/String; = "legal_info"

.field private static final KEY_VERSION:Ljava/lang/String; = "version"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const/high16 v5, 0x7f040000

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 20
    const-string v5, "version"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 21
    .local v3, "versionPref":Landroid/preference/Preference;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "V"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .local v4, "versionText":Ljava/lang/StringBuilder;
    :try_start_15
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.asus.mygazine.revived"

    const/16 v7, 0x40

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 25
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2a} :catch_40

    .line 29
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_2a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 31
    const-string v5, "legal_info"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 32
    .local v1, "legalPref":Landroid/preference/Preference;
    new-instance v5, Lcom/asus/mygazine/AboutInfoFragment$1;

    invoke-direct {v5, p0}, Lcom/asus/mygazine/AboutInfoFragment$1;-><init>(Lcom/asus/mygazine/AboutInfoFragment;)V

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 39
    return-void

    .line 26
    .end local v1    # "legalPref":Landroid/preference/Preference;
    :catch_40
    move-exception v0

    .line 27
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "1.0.1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2a
.end method
