.class Lc/q/a/a/b$c;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lc/q/a/a/b;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "c"
.end annotation

.field private final a:Landroid/graphics/drawable/Drawable$ConstantState;

.method public constructor <init>(Landroid/graphics/drawable/Drawable$ConstantState;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V
  .line 2
    iput-object p1, p0, Lc/q/a/a/b$c;->a:Landroid/graphics/drawable/Drawable$ConstantState;
    return-void
.end method

.method public canApplyTheme()Z
  .registers 2
  .line 1
    iget-object v0, p0, Lc/q/a/a/b$c;->a:Landroid/graphics/drawable/Drawable$ConstantState;
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z
    move-result v0
    return v0
.end method

.method public getChangingConfigurations()I
  .registers 2
  .line 1
    iget-object v0, p0, Lc/q/a/a/b$c;->a:Landroid/graphics/drawable/Drawable$ConstantState;
    invoke-virtual { v0 }, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I
    move-result v0
    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
  .registers 4
  .line 1
    new-instance v0, Lc/q/a/a/b;
    invoke-direct { v0 }, Lc/q/a/a/b;-><init>()V
  .line 2
    iget-object v1, p0, Lc/q/a/a/b$c;->a:Landroid/graphics/drawable/Drawable$ConstantState;
    invoke-virtual { v1 }, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;
    move-result-object v1
    iput-object v1, v0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;
  .line 3
    iget-object v2, v0, Lc/q/a/a/b;->f:Landroid/graphics/drawable/Drawable$Callback;
    invoke-virtual { v1, v2 }, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
  .registers 4
  .line 4
    new-instance v0, Lc/q/a/a/b;
    invoke-direct { v0 }, Lc/q/a/a/b;-><init>()V
  .line 5
    iget-object v1, p0, Lc/q/a/a/b$c;->a:Landroid/graphics/drawable/Drawable$ConstantState;
    invoke-virtual { v1, p1 }, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    move-result-object p1
    iput-object p1, v0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;
  .line 6
    iget-object v1, v0, Lc/q/a/a/b;->f:Landroid/graphics/drawable/Drawable$Callback;
    invoke-virtual { p1, v1 }, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
  .registers 5
  .line 7
    new-instance v0, Lc/q/a/a/b;
    invoke-direct { v0 }, Lc/q/a/a/b;-><init>()V
  .line 8
    iget-object v1, p0, Lc/q/a/a/b$c;->a:Landroid/graphics/drawable/Drawable$ConstantState;
    invoke-virtual { v1, p1, p2 }, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    move-result-object p1
    iput-object p1, v0, Lc/q/a/a/g;->b:Landroid/graphics/drawable/Drawable;
  .line 9
    iget-object p2, v0, Lc/q/a/a/b;->f:Landroid/graphics/drawable/Drawable$Callback;
    invoke-virtual { p1, p2 }, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
    return-object v0
.end method
