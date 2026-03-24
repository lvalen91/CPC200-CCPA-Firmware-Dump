.class public Ld/c/a/a/q/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;II)I
    .registers 3

    .line 1
    invoke-static {p0, p1}, Ld/c/a/a/x/b;->a(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 2
    iget p0, p0, Landroid/util/TypedValue;->data:I

    return p0

    :cond_9
    return p2
.end method

.method public static b(Landroid/content/Context;ILjava/lang/String;)I
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Ld/c/a/a/x/b;->c(Landroid/content/Context;ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static c(Landroid/view/View;I)I
    .registers 2

    .line 1
    invoke-static {p0, p1}, Ld/c/a/a/x/b;->d(Landroid/view/View;I)I

    move-result p0

    return p0
.end method

.method public static d(Landroid/view/View;II)I
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p2}, Ld/c/a/a/q/a;->a(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public static e(II)I
    .registers 2

    .line 1
    invoke-static {p1, p0}, Lc/g/d/a;->b(II)I

    move-result p0

    return p0
.end method

.method public static f(IIF)I
    .registers 4

    .line 1
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 2
    invoke-static {p1, p2}, Lc/g/d/a;->d(II)I

    move-result p1

    .line 3
    invoke-static {p0, p1}, Ld/c/a/a/q/a;->e(II)I

    move-result p0

    return p0
.end method

.method public static g(Landroid/view/View;IIF)I
    .registers 4

    .line 1
    invoke-static {p0, p1}, Ld/c/a/a/q/a;->c(Landroid/view/View;I)I

    move-result p1

    .line 2
    invoke-static {p0, p2}, Ld/c/a/a/q/a;->c(Landroid/view/View;I)I

    move-result p0

    .line 3
    invoke-static {p1, p0, p3}, Ld/c/a/a/q/a;->f(IIF)I

    move-result p0

    return p0
.end method
