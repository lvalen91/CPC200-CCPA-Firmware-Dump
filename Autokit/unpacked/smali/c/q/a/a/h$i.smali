.class Lc/q/a/a/h$i;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lc/q/a/a/h;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "i"
.end annotation

.field private final a:Landroid/graphics/drawable/Drawable$ConstantState;

.method public constructor <init>(Landroid/graphics/drawable/Drawable$ConstantState;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V
  .line 2
    iput-object p1, p0, Lc/q/a/a/h$i;->a:Landroid/graphics/drawable/Drawable$ConstantState;
    return-void
.end method

.method public canApplyTheme()Z
  .registers 2
  .line 1
    iget-object v0, p0, Lc/q/a/a/h$i;->a:Landroid/graphics/drawable/Drawable$ConstantState;
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z
    move-result v0
    return v0
.end method

.method public getChangingConfigurations()I
  .registers 2
  .line 1
    iget-object v0, p0, Lc/q/a/a/h$i;->a:Landroid/graphics/drawable/Drawable$ConstantState;
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I
    move-result v0
    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
  .registers 3
  .line 1
    new-instance v0, Lc/q/a/a/h;
    invoke-direct { v0 }, Lc/q/a/a/h;-><init>()V
  .line 2
    iget-object v1, p0, Lc/q/a/a/h$i;->a:Landroid/graphics/drawable/Drawable$ConstantState;
    invoke-virtual { v1 }, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;
    move-result-object v1
    check-cast v1, Landroid/graphics/drawable/VectorDrawable;
    iput-object v1, v0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;
    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
  .registers 4
  .line 3
    new-instance v0, Lc/q/a/a/h;
    invoke-direct { v0 }, Lc/q/a/a/h;-><init>()V
  .line 4
    iget-object v1, p0, Lc/q/a/a/h$i;->a:Landroid/graphics/drawable/Drawable$ConstantState;
    invoke-virtual { v1, p1 }, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    move-result-object p1
    check-cast p1, Landroid/graphics/drawable/VectorDrawable;
    iput-object p1, v0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;
    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
  .registers 5
  .line 5
    new-instance v0, Lc/q/a/a/h;
    invoke-direct { v0 }, Lc/q/a/a/h;-><init>()V
  .line 6
    iget-object v1, p0, Lc/q/a/a/h$i;->a:Landroid/graphics/drawable/Drawable$ConstantState;
  .line 7
    invoke-virtual { v1, p1, p2 }, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    move-result-object p1
    check-cast p1, Landroid/graphics/drawable/VectorDrawable;
    iput-object p1, v0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;
    return-object v0
.end method
