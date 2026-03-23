.class final Lc/i/b/a$a;
.super Ljava/lang/Object;
.implements Lc/i/b/b$a;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lc/i/b/a;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = null
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/lang/Object;",
    "Lc/i/b/b$a<",
    "Landroidx/core/view/e0/c;",
    ">;"
  }
.end annotation

.method constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Landroid/graphics/Rect;)V
  .registers 3
  .line 1
    check-cast p1, Landroidx/core/view/e0/c;
    invoke-virtual { p0, p1, p2 }, Lc/i/b/a$a;->b(Landroidx/core/view/e0/c;Landroid/graphics/Rect;)V
    return-void
.end method

.method public b(Landroidx/core/view/e0/c;Landroid/graphics/Rect;)V
  .registers 3
  .line 1
    invoke-virtual { p1, p2 }, Landroidx/core/view/e0/c;->l(Landroid/graphics/Rect;)V
    return-void
.end method
