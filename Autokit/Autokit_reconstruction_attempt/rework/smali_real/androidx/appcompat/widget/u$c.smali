.class Landroidx/appcompat/widget/u$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/u$g;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field b:Landroidx/appcompat/app/c;

.field private c:Landroid/widget/ListAdapter;

.field private d:Ljava/lang/CharSequence;

.field final synthetic e:Landroidx/appcompat/widget/u;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/u;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/u$c;->e:Landroidx/appcompat/widget/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u$c;->b:Landroidx/appcompat/app/c;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public c(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    return-void
.end method

.method public d(I)V
    .registers 2

    return-void
.end method

.method public dismiss()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u$c;->b:Landroidx/appcompat/app/c;

    if-eqz v0, :cond_a

    .line 2
    invoke-virtual {v0}, Landroidx/appcompat/app/h;->dismiss()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroidx/appcompat/widget/u$c;->b:Landroidx/appcompat/app/c;

    :cond_a
    return-void
.end method

.method public e()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public f(II)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u$c;->c:Landroid/widget/ListAdapter;

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    new-instance v0, Landroidx/appcompat/app/c$a;

    iget-object v1, p0, Landroidx/appcompat/widget/u$c;->e:Landroidx/appcompat/widget/u;

    invoke-virtual {v1}, Landroidx/appcompat/widget/u;->getPopupContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    .line 3
    iget-object v1, p0, Landroidx/appcompat/widget/u$c;->d:Ljava/lang/CharSequence;

    if-eqz v1, :cond_17

    .line 4
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/c$a;->h(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    .line 5
    :cond_17
    iget-object v1, p0, Landroidx/appcompat/widget/u$c;->c:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroidx/appcompat/widget/u$c;->e:Landroidx/appcompat/widget/u;

    .line 6
    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    .line 7
    invoke-virtual {v0, v1, v2, p0}, Landroidx/appcompat/app/c$a;->g(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    .line 8
    invoke-virtual {v0}, Landroidx/appcompat/app/c$a;->a()Landroidx/appcompat/app/c;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/u$c;->b:Landroidx/appcompat/app/c;

    .line 9
    invoke-virtual {v0}, Landroidx/appcompat/app/c;->e()Landroid/widget/ListView;

    move-result-object v0

    .line 10
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_38

    .line 11
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setTextDirection(I)V

    .line 12
    invoke-virtual {v0, p2}, Landroid/widget/ListView;->setTextAlignment(I)V

    .line 13
    :cond_38
    iget-object p1, p0, Landroidx/appcompat/widget/u$c;->b:Landroidx/appcompat/app/c;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public h()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public j()Landroid/graphics/drawable/Drawable;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public k()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u$c;->d:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public m(Ljava/lang/CharSequence;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/u$c;->d:Ljava/lang/CharSequence;

    return-void
.end method

.method public n(I)V
    .registers 2

    return-void
.end method

.method public o(Landroid/widget/ListAdapter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/u$c;->c:Landroid/widget/ListAdapter;

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .line 1
    iget-object p1, p0, Landroidx/appcompat/widget/u$c;->e:Landroidx/appcompat/widget/u;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/u$c;->e:Landroidx/appcompat/widget/u;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 3
    iget-object p1, p0, Landroidx/appcompat/widget/u$c;->e:Landroidx/appcompat/widget/u;

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/appcompat/widget/u$c;->c:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/widget/Spinner;->performItemClick(Landroid/view/View;IJ)Z

    .line 4
    :cond_19
    invoke-virtual {p0}, Landroidx/appcompat/widget/u$c;->dismiss()V

    return-void
.end method

.method public p(I)V
    .registers 2

    return-void
.end method
