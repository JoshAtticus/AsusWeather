.class public Lcom/asus/weather/RadioPreference;
.super Landroid/preference/Preference;
.source "RadioPreference.java"


# instance fields
.field private mChecked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 17
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .registers 2

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/asus/weather/RadioPreference;->mChecked:Z

    return v0
.end method

.method public isPersistent()Z
    .registers 2

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 27
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 28
    const v1, 0x7f080005

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 29
    .local v0, "radioView":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 30
    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 32
    if-eqz v0, :cond_1a

    .line 34
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "radioView":Landroid/view/View;
    iget-boolean v1, p0, Lcom/asus/weather/RadioPreference;->mChecked:Z

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 36
    :cond_1a
    return-void
.end method

.method protected onClick()V
    .registers 3

    .prologue
    .line 41
    invoke-super {p0}, Landroid/preference/Preference;->onClick()V

    .line 42
    invoke-virtual {p0}, Lcom/asus/weather/RadioPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_15

    const/4 v0, 0x1

    .line 44
    .local v0, "newValue":Z
    :goto_a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 49
    :goto_14
    return-void

    .line 42
    .end local v0    # "newValue":Z
    :cond_15
    const/4 v0, 0x0

    goto :goto_a

    .line 48
    .restart local v0    # "newValue":Z
    :cond_17
    invoke-virtual {p0, v0}, Lcom/asus/weather/RadioPreference;->setChecked(Z)V

    goto :goto_14
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .registers 4
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 69
    if-eqz p1, :cond_c

    iget-boolean v0, p0, Lcom/asus/weather/RadioPreference;->mChecked:Z

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->getPersistedBoolean(Z)Z

    move-result v0

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_8
    invoke-virtual {p0, v0}, Lcom/asus/weather/RadioPreference;->setChecked(Z)V

    .line 71
    return-void

    .line 69
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_c
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "defaultValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_8
.end method

.method public setChecked(Z)V
    .registers 3
    .param p1, "checked"    # Z

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/asus/weather/RadioPreference;->mChecked:Z

    if-eq v0, p1, :cond_c

    .line 55
    iput-boolean p1, p0, Lcom/asus/weather/RadioPreference;->mChecked:Z

    .line 56
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->persistBoolean(Z)Z

    .line 57
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 59
    :cond_c
    return-void
.end method
