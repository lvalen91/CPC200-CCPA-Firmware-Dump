.class Landroidx/core/view/v$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation


# direct methods
.method static a(Landroid/view/WindowInsets;Landroid/view/View;)V
    .registers 3

    .line 1
    sget v0, Lc/g/b;->tag_window_insets_animation_callback:I

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnApplyWindowInsetsListener;

    if-eqz v0, :cond_d

    .line 3
    invoke-interface {v0, p1, p0}, Landroid/view/View$OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    :cond_d
    return-void
.end method

.method static b(Landroid/view/View;Landroidx/core/view/d0;Landroid/graphics/Rect;)Landroidx/core/view/d0;
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroidx/core/view/d0;->r()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 2
    invoke-virtual {p0, v0, p2}, Landroid/view/View;->computeSystemWindowInsets(Landroid/view/WindowInsets;Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    move-result-object p1

    .line 3
    invoke-static {p1, p0}, Landroidx/core/view/d0;->t(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/d0;

    move-result-object p0

    return-object p0

    .line 4
    :cond_f
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    return-object p1
.end method

.method public static c(Landroid/view/View;)Landroidx/core/view/d0;
    .registers 1

    .line 1
    invoke-static {p0}, Landroidx/core/view/d0$a;->a(Landroid/view/View;)Landroidx/core/view/d0;

    move-result-object p0

    return-object p0
.end method

.method static d(Landroid/view/View;Landroidx/core/view/q;)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_b

    .line 2
    sget v0, Lc/g/b;->tag_on_apply_window_listener:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_b
    if-nez p1, :cond_19

    .line 3
    sget p1, Lc/g/b;->tag_window_insets_animation_callback:I

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View$OnApplyWindowInsetsListener;

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void

    .line 6
    :cond_19
    new-instance v0, Landroidx/core/view/v$h$a;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/v$h$a;-><init>(Landroid/view/View;Landroidx/core/view/q;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method
