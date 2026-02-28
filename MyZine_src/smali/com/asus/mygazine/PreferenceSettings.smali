.class public Lcom/asus/mygazine/PreferenceSettings;
.super Landroid/preference/PreferenceFragment;
.source "PreferenceSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final DBG:Z

.field public static final DEFALT_SHOW_DATE:Z = true

.field public static final DEFALT_SHOW_EVENT:Z = true

.field public static final DEFALT_SHOW_LOGO:Z = true

.field public static final DEFALT_SHOW_PHOTO_DATE:Z = false

.field public static final DEFALT_SHOW_WEATHER:Z = true

.field public static final DEFAULT_DATE_FORMAT:Ljava/lang/String; = ""

.field public static final DEFAULT_SCALE_TYPE:Ljava/lang/String; = "centerCrop"

.field public static final KEY_DATE_FORMAT:Ljava/lang/String; = "date_format"

.field public static final KEY_SCALE_TYPE:Ljava/lang/String; = "scale_type"

.field public static final KEY_SHOW_EVENT:Ljava/lang/String; = "event_display"

.field public static final KEY_SHOW_LOGO:Ljava/lang/String; = "logo_display"

.field public static final KEY_SHOW_PHOTO_DATE:Ljava/lang/String; = "photo_date_display"

.field public static final KEY_SHOW_WEATHER:Ljava/lang/String; = "weather_display"

.field public static final TAG:Ljava/lang/String; = "PreferenceSettings"


# instance fields
.field private mDateFomatPrefs:Landroid/preference/ListPreference;

.field private mDummyDate:Ljava/util/Calendar;

.field private mLogoPrefs:Landroid/preference/CheckBoxPreference;

.field private mPhotDateShowPrefs:Landroid/preference/CheckBoxPreference;

.field private mScaleTypePref:Landroid/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 17
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_d

    :goto_a
    sput-boolean v0, Lcom/asus/mygazine/PreferenceSettings;->DBG:Z

    return-void

    :cond_d
    move v0, v1

    goto :goto_a
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method initUI()V
    .registers 16

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 85
    sget-boolean v9, Lcom/asus/mygazine/PreferenceSettings;->DBG:Z

    if-eqz v9, :cond_d

    const-string v9, "PreferenceSettings"

    const-string v12, "initUI"

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_d
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v12, "MyzinePrefs"

    invoke-virtual {v9, v12, v10}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 89
    .local v8, "settings":Landroid/content/SharedPreferences;
    const-string v9, "scale_type"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/ListPreference;

    iput-object v9, p0, Lcom/asus/mygazine/PreferenceSettings;->mScaleTypePref:Landroid/preference/ListPreference;

    .line 90
    const-string v9, "scale_type"

    const-string v12, "centerCrop"

    invoke-interface {v8, v9, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 91
    .local v7, "scaleType":Ljava/lang/String;
    iget-object v9, p0, Lcom/asus/mygazine/PreferenceSettings;->mScaleTypePref:Landroid/preference/ListPreference;

    invoke-virtual {v9, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 92
    iget-object v9, p0, Lcom/asus/mygazine/PreferenceSettings;->mScaleTypePref:Landroid/preference/ListPreference;

    iget-object v12, p0, Lcom/asus/mygazine/PreferenceSettings;->mScaleTypePref:Landroid/preference/ListPreference;

    invoke-virtual {v12}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v9, p0, Lcom/asus/mygazine/PreferenceSettings;->mScaleTypePref:Landroid/preference/ListPreference;

    invoke-virtual {v9, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 95
    const-string v9, "logo_display"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    iput-object v9, p0, Lcom/asus/mygazine/PreferenceSettings;->mLogoPrefs:Landroid/preference/CheckBoxPreference;

    .line 96
    const-string v9, "logo_display"

    invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 97
    .local v4, "isShowLogo":Z
    iget-object v9, p0, Lcom/asus/mygazine/PreferenceSettings;->mLogoPrefs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 98
    iget-object v9, p0, Lcom/asus/mygazine/PreferenceSettings;->mLogoPrefs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 100
    const-string v9, "photo_date_display"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    iput-object v9, p0, Lcom/asus/mygazine/PreferenceSettings;->mPhotDateShowPrefs:Landroid/preference/CheckBoxPreference;

    .line 101
    const-string v9, "photo_date_display"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 102
    .local v5, "isShowPhotoDate":Z
    iget-object v9, p0, Lcom/asus/mygazine/PreferenceSettings;->mPhotDateShowPrefs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 103
    iget-object v9, p0, Lcom/asus/mygazine/PreferenceSettings;->mPhotDateShowPrefs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 105
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    iput-object v9, p0, Lcom/asus/mygazine/PreferenceSettings;->mDummyDate:Ljava/util/Calendar;

    .line 106
    iget-object v9, p0, Lcom/asus/mygazine/PreferenceSettings;->mDummyDate:Ljava/util/Calendar;

    const/16 v12, 0x7db

    const/4 v13, 0x2

    const/4 v14, 0x7

    invoke-virtual {v9, v12, v13, v14}, Ljava/util/Calendar;->set(III)V

    .line 107
    iget-object v9, p0, Lcom/asus/mygazine/PreferenceSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 108
    .local v2, "dummyDate":Ljava/util/Date;
    const-string v9, "date_format"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/ListPreference;

    iput-object v9, p0, Lcom/asus/mygazine/PreferenceSettings;->mDateFomatPrefs:Landroid/preference/ListPreference;

    .line 109
    iget-object v9, p0, Lcom/asus/mygazine/PreferenceSettings;->mDateFomatPrefs:Landroid/preference/ListPreference;

    invoke-virtual {v9, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 110
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f050004

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "dateFormats":[Ljava/lang/String;
    iget-object v9, p0, Lcom/asus/mygazine/PreferenceSettings;->mDateFomatPrefs:Landroid/preference/ListPreference;

    invoke-virtual {v9, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 112
    array-length v9, v1

    new-array v0, v9, [Ljava/lang/String;

    .line 113
    .local v0, "dateEntrances":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_aa
    array-length v9, v0

    if-ge v3, v9, :cond_b8

    .line 114
    aget-object v9, v1, v3

    invoke-static {v9, v2}, Lcom/asus/mygazine/MyZineDataUtils;->getDateByFormat(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v3

    .line 113
    add-int/lit8 v3, v3, 0x1

    goto :goto_aa

    .line 116
    :cond_b8
    iget-object v9, p0, Lcom/asus/mygazine/PreferenceSettings;->mDateFomatPrefs:Landroid/preference/ListPreference;

    invoke-virtual {v9, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 117
    const-string v9, "date_format"

    array-length v12, v1

    add-int/lit8 v12, v12, -0x1

    aget-object v12, v1, v12

    invoke-interface {v8, v9, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 118
    .local v6, "mDateFormat":Ljava/lang/String;
    iget-object v9, p0, Lcom/asus/mygazine/PreferenceSettings;->mDateFomatPrefs:Landroid/preference/ListPreference;

    invoke-virtual {v9, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 119
    iget-object v9, p0, Lcom/asus/mygazine/PreferenceSettings;->mDateFomatPrefs:Landroid/preference/ListPreference;

    iget-object v12, p0, Lcom/asus/mygazine/PreferenceSettings;->mDateFomatPrefs:Landroid/preference/ListPreference;

    invoke-virtual {v12}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v12, p0, Lcom/asus/mygazine/PreferenceSettings;->mDateFomatPrefs:Landroid/preference/ListPreference;

    if-nez v4, :cond_de

    if-eqz v5, :cond_e3

    :cond_de
    move v9, v11

    :goto_df
    invoke-virtual {v12, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 121
    return-void

    :cond_e3
    move v9, v10

    .line 120
    goto :goto_df
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 40
    sget-boolean v0, Lcom/asus/mygazine/PreferenceSettings;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "PreferenceSettings"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_b
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 43
    invoke-virtual {p0}, Lcom/asus/mygazine/PreferenceSettings;->initUI()V

    .line 44
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 13
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 52
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v8, "MyzinePrefs"

    invoke-virtual {v5, v8, v6}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 54
    .local v4, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 55
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "logo_display"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_34

    const-string v5, "photo_date_display"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_34

    const-string v5, "event_display"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_34

    const-string v5, "weather_display"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6a

    :cond_34
    move-object v5, p2

    .line 57
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 58
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 59
    sget-boolean v5, Lcom/asus/mygazine/PreferenceSettings;->DBG:Z

    if-eqz v5, :cond_6a

    const-string v8, "PreferenceSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onPreferenceChange - key="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " newValue= "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v5, p2

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_6a
    const-string v5, "scale_type"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b7

    move-object v5, p2

    .line 63
    check-cast v5, Ljava/lang/String;

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 64
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 65
    iget-object v8, p0, Lcom/asus/mygazine/PreferenceSettings;->mScaleTypePref:Landroid/preference/ListPreference;

    move-object v5, p2

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v8, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 66
    iget-object v5, p0, Lcom/asus/mygazine/PreferenceSettings;->mScaleTypePref:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/asus/mygazine/PreferenceSettings;->mScaleTypePref:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 67
    sget-boolean v5, Lcom/asus/mygazine/PreferenceSettings;->DBG:Z

    if-eqz v5, :cond_b7

    const-string v8, "PreferenceSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onPreferenceChange - key = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " newValue="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v5, p2

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_b7
    const-string v5, "date_format"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_103

    move-object v5, p2

    .line 71
    check-cast v5, Ljava/lang/String;

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 72
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 73
    sget-boolean v5, Lcom/asus/mygazine/PreferenceSettings;->DBG:Z

    if-eqz v5, :cond_f1

    const-string v8, "PreferenceSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onPreferenceChange - key="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " newValue= "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v5, p2

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_f1
    iget-object v5, p0, Lcom/asus/mygazine/PreferenceSettings;->mDateFomatPrefs:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v5, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 75
    iget-object v5, p0, Lcom/asus/mygazine/PreferenceSettings;->mDateFomatPrefs:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/asus/mygazine/PreferenceSettings;->mDateFomatPrefs:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 77
    :cond_103
    const-string v5, "logo_display"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 78
    .local v1, "isShowLogo":Z
    const-string v5, "photo_date_display"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 79
    .local v2, "isShowPhotoDate":Z
    iget-object v8, p0, Lcom/asus/mygazine/PreferenceSettings;->mDateFomatPrefs:Landroid/preference/ListPreference;

    if-nez v1, :cond_115

    if-eqz v2, :cond_138

    :cond_115
    move v5, v7

    :goto_116
    invoke-virtual {v8, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 80
    const-string v5, "PreferenceSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mDateFomatPrefs.isEnabled() = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/asus/mygazine/PreferenceSettings;->mDateFomatPrefs:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/Preference;->isEnabled()Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return v7

    :cond_138
    move v5, v6

    .line 79
    goto :goto_116
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 47
    sget-boolean v0, Lcom/asus/mygazine/PreferenceSettings;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "PreferenceSettings"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_b
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 49
    return-void
.end method
