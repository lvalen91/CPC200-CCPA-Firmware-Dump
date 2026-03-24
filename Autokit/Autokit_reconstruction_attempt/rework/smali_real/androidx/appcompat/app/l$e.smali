.class Landroidx/appcompat/app/l$e;
.super Lc/a/o/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic c:Landroidx/appcompat/app/l;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/l;Landroid/view/Window$Callback;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/l$e;->c:Landroidx/appcompat/app/l;

    .line 2
    invoke-direct {p0, p2}, Lc/a/o/i;-><init>(Landroid/view/Window$Callback;)V

    return-void
.end method


# virtual methods
.method public onCreatePanelView(I)Landroid/view/View;
    .registers 3

    if-nez p1, :cond_10

    .line 1
    new-instance p1, Landroid/view/View;

    iget-object v0, p0, Landroidx/appcompat/app/l$e;->c:Landroidx/appcompat/app/l;

    iget-object v0, v0, Landroidx/appcompat/app/l;->a:Landroidx/appcompat/widget/b0;

    invoke-interface {v0}, Landroidx/appcompat/widget/b0;->q()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 2
    :cond_10
    invoke-super {p0, p1}, Lc/a/o/i;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lc/a/o/i;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 2
    iget-object p2, p0, Landroidx/appcompat/app/l$e;->c:Landroidx/appcompat/app/l;

    iget-boolean p3, p2, Landroidx/appcompat/app/l;->b:Z

    if-nez p3, :cond_16

    .line 3
    iget-object p2, p2, Landroidx/appcompat/app/l;->a:Landroidx/appcompat/widget/b0;

    invoke-interface {p2}, Landroidx/appcompat/widget/b0;->f()V

    .line 4
    iget-object p2, p0, Landroidx/appcompat/app/l$e;->c:Landroidx/appcompat/app/l;

    const/4 p3, 0x1

    iput-boolean p3, p2, Landroidx/appcompat/app/l;->b:Z

    :cond_16
    return p1
.end method
