.class final Landroidx/appcompat/app/g$v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "v"
.end annotation


# instance fields
.field final synthetic b:Landroidx/appcompat/app/g;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/g;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/g$v;->b:Landroidx/appcompat/app/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/g;Z)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->D()Landroidx/appcompat/view/menu/g;

    move-result-object v0

    const/4 v1, 0x1

    if-eq v0, p1, :cond_9

    const/4 v2, 0x1

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    .line 2
    :goto_a
    iget-object v3, p0, Landroidx/appcompat/app/g$v;->b:Landroidx/appcompat/app/g;

    if-eqz v2, :cond_f

    move-object p1, v0

    :cond_f
    invoke-virtual {v3, p1}, Landroidx/appcompat/app/g;->e0(Landroid/view/Menu;)Landroidx/appcompat/app/g$u;

    move-result-object p1

    if-eqz p1, :cond_29

    if-eqz v2, :cond_24

    .line 3
    iget-object p2, p0, Landroidx/appcompat/app/g$v;->b:Landroidx/appcompat/app/g;

    iget v2, p1, Landroidx/appcompat/app/g$u;->a:I

    invoke-virtual {p2, v2, p1, v0}, Landroidx/appcompat/app/g;->Q(ILandroidx/appcompat/app/g$u;Landroid/view/Menu;)V

    .line 4
    iget-object p2, p0, Landroidx/appcompat/app/g$v;->b:Landroidx/appcompat/app/g;

    invoke-virtual {p2, p1, v1}, Landroidx/appcompat/app/g;->U(Landroidx/appcompat/app/g$u;Z)V

    goto :goto_29

    .line 5
    :cond_24
    iget-object v0, p0, Landroidx/appcompat/app/g$v;->b:Landroidx/appcompat/app/g;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/g;->U(Landroidx/appcompat/app/g$u;Z)V

    :cond_29
    :goto_29
    return-void
.end method

.method public b(Landroidx/appcompat/view/menu/g;)Z
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->D()Landroidx/appcompat/view/menu/g;

    move-result-object v0

    if-ne p1, v0, :cond_1d

    iget-object v0, p0, Landroidx/appcompat/app/g$v;->b:Landroidx/appcompat/app/g;

    iget-boolean v1, v0, Landroidx/appcompat/app/g;->B:Z

    if-eqz v1, :cond_1d

    .line 2
    invoke-virtual {v0}, Landroidx/appcompat/app/g;->l0()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 3
    iget-object v1, p0, Landroidx/appcompat/app/g$v;->b:Landroidx/appcompat/app/g;

    iget-boolean v1, v1, Landroidx/appcompat/app/g;->N:Z

    if-nez v1, :cond_1d

    const/16 v1, 0x6c

    .line 4
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_1d
    const/4 p1, 0x1

    return p1
.end method
