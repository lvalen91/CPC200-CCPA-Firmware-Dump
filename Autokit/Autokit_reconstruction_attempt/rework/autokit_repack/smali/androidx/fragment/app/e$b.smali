.class Landroidx/fragment/app/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/d/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/e;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/e;


# direct methods
.method constructor <init>(Landroidx/fragment/app/e;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/e$b;->a:Landroidx/fragment/app/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 3

    .line 1
    iget-object p1, p0, Landroidx/fragment/app/e$b;->a:Landroidx/fragment/app/e;

    iget-object p1, p1, Landroidx/fragment/app/e;->mFragments:Landroidx/fragment/app/i;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/i;->a(Landroidx/fragment/app/Fragment;)V

    .line 2
    iget-object p1, p0, Landroidx/fragment/app/e$b;->a:Landroidx/fragment/app/e;

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;

    move-result-object p1

    const-string v0, "android:support:fragments"

    .line 3
    invoke-virtual {p1, v0}, Landroidx/savedstate/SavedStateRegistry;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 5
    iget-object v0, p0, Landroidx/fragment/app/e$b;->a:Landroidx/fragment/app/e;

    iget-object v0, v0, Landroidx/fragment/app/e;->mFragments:Landroidx/fragment/app/i;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/i;->w(Landroid/os/Parcelable;)V

    :cond_21
    return-void
.end method
