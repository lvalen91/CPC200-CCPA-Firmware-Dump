.class Landroidx/core/view/d0$d;
.super Landroidx/core/view/d0$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field final c:Landroid/view/WindowInsets$Builder;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/core/view/d0$f;-><init>()V

    .line 2
    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0}, Landroid/view/WindowInsets$Builder;-><init>()V

    iput-object v0, p0, Landroidx/core/view/d0$d;->c:Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method constructor <init>(Landroidx/core/view/d0;)V
    .registers 3

    .line 3
    invoke-direct {p0}, Landroidx/core/view/d0$f;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroidx/core/view/d0;->r()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 5
    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0, p1}, Landroid/view/WindowInsets$Builder;-><init>(Landroid/view/WindowInsets;)V

    goto :goto_14

    .line 6
    :cond_f
    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0}, Landroid/view/WindowInsets$Builder;-><init>()V

    :goto_14
    iput-object v0, p0, Landroidx/core/view/d0$d;->c:Landroid/view/WindowInsets$Builder;

    return-void
.end method


# virtual methods
.method b()Landroidx/core/view/d0;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/core/view/d0$f;->a()V

    .line 2
    iget-object v0, p0, Landroidx/core/view/d0$d;->c:Landroid/view/WindowInsets$Builder;

    .line 3
    invoke-virtual {v0}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroidx/core/view/d0;->s(Landroid/view/WindowInsets;)Landroidx/core/view/d0;

    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/core/view/d0$f;->b:[Lc/g/d/b;

    invoke-virtual {v0, v1}, Landroidx/core/view/d0;->n([Lc/g/d/b;)V

    return-object v0
.end method

.method c(Lc/g/d/b;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/view/d0$d;->c:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Lc/g/d/b;->e()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets$Builder;->setMandatorySystemGestureInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method d(Lc/g/d/b;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/view/d0$d;->c:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Lc/g/d/b;->e()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets$Builder;->setStableInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method e(Lc/g/d/b;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/view/d0$d;->c:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Lc/g/d/b;->e()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets$Builder;->setSystemGestureInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method f(Lc/g/d/b;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/view/d0$d;->c:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Lc/g/d/b;->e()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets$Builder;->setSystemWindowInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method g(Lc/g/d/b;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/view/d0$d;->c:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Lc/g/d/b;->e()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets$Builder;->setTappableElementInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method
