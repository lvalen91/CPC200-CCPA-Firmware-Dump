.class final Ld/c/a/a/y/a$b;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Ld/c/a/a/y/a;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 24
  name = "b"
.end annotation

.field a:Ld/c/a/a/a0/g;

.field b:Z

.method public constructor <init>(Ld/c/a/a/a0/g;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V
  .line 2
    iput-object p1, p0, Ld/c/a/a/y/a$b;->a:Ld/c/a/a/a0/g;
    const/4 p1, 0
  .line 3
    iput-boolean p1, p0, Ld/c/a/a/y/a$b;->b:Z
    return-void
.end method

.method public constructor <init>(Ld/c/a/a/y/a$b;)V
  .registers 3
  .line 4
    invoke-direct { p0 }, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V
  .line 5
    iget-object v0, p1, Ld/c/a/a/y/a$b;->a:Ld/c/a/a/a0/g;
    invoke-virtual { v0 }, Ld/c/a/a/a0/g;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    check-cast v0, Ld/c/a/a/a0/g;
    iput-object v0, p0, Ld/c/a/a/y/a$b;->a:Ld/c/a/a/a0/g;
  .line 6
    iget-boolean p1, p1, Ld/c/a/a/y/a$b;->b:Z
    iput-boolean p1, p0, Ld/c/a/a/y/a$b;->b:Z
    return-void
.end method

.method public a()Ld/c/a/a/y/a;
  .registers 4
  .line 1
    new-instance v0, Ld/c/a/a/y/a;
    new-instance v1, Ld/c/a/a/y/a$b;
    invoke-direct { v1, p0 }, Ld/c/a/a/y/a$b;-><init>(Ld/c/a/a/y/a$b;)V
    const/4 v2, 0
    invoke-direct { v0, v1, v2 }, Ld/c/a/a/y/a;-><init>(Ld/c/a/a/y/a$b;Ld/c/a/a/y/a$a;)V
    return-object v0
.end method

.method public getChangingConfigurations()I
  .registers 2
    const/4 v0, 0
    return v0
.end method

.method public bridge synthetic newDrawable()Landroid/graphics/drawable/Drawable;
  .registers 2
  .line 1
    invoke-virtual { p0 }, Ld/c/a/a/y/a$b;->a()Ld/c/a/a/y/a;
    move-result-object v0
    return-object v0
.end method
