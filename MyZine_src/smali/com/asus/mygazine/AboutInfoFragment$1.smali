.class Lcom/asus/mygazine/AboutInfoFragment$1;
.super Ljava/lang/Object;
.source "AboutInfoFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/mygazine/AboutInfoFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/mygazine/AboutInfoFragment;


# direct methods
.method constructor <init>(Lcom/asus/mygazine/AboutInfoFragment;)V
    .registers 2

    .prologue
    .line 32
    iput-object p1, p0, Lcom/asus/mygazine/AboutInfoFragment$1;->this$0:Lcom/asus/mygazine/AboutInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 5
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 35
    invoke-static {}, Lcom/asus/mygazine/LegalInfoFragment;->newInstance()Lcom/asus/mygazine/LegalInfoFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/mygazine/AboutInfoFragment$1;->this$0:Lcom/asus/mygazine/AboutInfoFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "aboutdialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 36
    const/4 v0, 0x1

    return v0
.end method
