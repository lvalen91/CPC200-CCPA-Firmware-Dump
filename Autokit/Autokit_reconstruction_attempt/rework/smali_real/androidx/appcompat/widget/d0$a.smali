.class Landroidx/appcompat/widget/d0$a;
.super Lc/a/l/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private c:Z


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lc/a/l/a/c;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/appcompat/widget/d0$a;->c:Z

    return-void
.end method


# virtual methods
.method c(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/d0$a;->c:Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/d0$a;->c:Z

    if-eqz v0, :cond_7

    .line 2
    invoke-super {p0, p1}, Lc/a/l/a/c;->draw(Landroid/graphics/Canvas;)V

    :cond_7
    return-void
.end method

.method public setHotspot(FF)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/d0$a;->c:Z

    if-eqz v0, :cond_7

    .line 2
    invoke-super {p0, p1, p2}, Lc/a/l/a/c;->setHotspot(FF)V

    :cond_7
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .registers 6

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/d0$a;->c:Z

    if-eqz v0, :cond_7

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Lc/a/l/a/c;->setHotspotBounds(IIII)V

    :cond_7
    return-void
.end method

.method public setState([I)Z
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/d0$a;->c:Z

    if-eqz v0, :cond_9

    .line 2
    invoke-super {p0, p1}, Lc/a/l/a/c;->setState([I)Z

    move-result p1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public setVisible(ZZ)Z
    .registers 4

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/d0$a;->c:Z

    if-eqz v0, :cond_9

    .line 2
    invoke-super {p0, p1, p2}, Lc/a/l/a/c;->setVisible(ZZ)Z

    move-result p1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method
