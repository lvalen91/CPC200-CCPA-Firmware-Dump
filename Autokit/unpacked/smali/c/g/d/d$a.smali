.class public Lc/g/d/d$a;
.super Lc/g/h/f$c;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lc/g/d/d;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 9
  name = "a"
.end annotation

.field private a:Landroidx/core/content/c/f$a;

.method public constructor <init>(Landroidx/core/content/c/f$a;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Lc/g/h/f$c;-><init>()V
  .line 2
    iput-object p1, p0, Lc/g/d/d$a;->a:Landroidx/core/content/c/f$a;
    return-void
.end method

.method public a(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Lc/g/d/d$a;->a:Landroidx/core/content/c/f$a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Landroidx/core/content/c/f$a;->d(I)V
  :L0
    return-void
.end method

.method public b(Landroid/graphics/Typeface;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lc/g/d/d$a;->a:Landroidx/core/content/c/f$a;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Landroidx/core/content/c/f$a;->e(Landroid/graphics/Typeface;)V
  :L0
    return-void
.end method
