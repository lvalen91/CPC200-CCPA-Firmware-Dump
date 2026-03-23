.class Landroidx/core/view/d0$c;
.super Landroidx/core/view/d0$f;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Landroidx/core/view/d0;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "c"
.end annotation

.field private static e:Ljava/lang/reflect/Field;

.field private static f:Z

.field private static g:Ljava/lang/reflect/Constructor;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/reflect/Constructor<",
      "Landroid/view/WindowInsets;",
      ">;"
    }
  .end annotation
.end field

.field private static h:Z

.field private c:Landroid/view/WindowInsets;

.field private d:Lc/g/d/b;

.method static constructor <clinit>()V
  .registers 0
    return-void
.end method

.method constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Landroidx/core/view/d0$f;-><init>()V
  .line 2
    invoke-static { }, Landroidx/core/view/d0$c;->h()Landroid/view/WindowInsets;
    move-result-object v0
    iput-object v0, p0, Landroidx/core/view/d0$c;->c:Landroid/view/WindowInsets;
    return-void
.end method

.method constructor <init>(Landroidx/core/view/d0;)V
  .registers 2
  .line 3
    invoke-direct { p0 }, Landroidx/core/view/d0$f;-><init>()V
  .line 4
    invoke-virtual { p1 }, Landroidx/core/view/d0;->r()Landroid/view/WindowInsets;
    move-result-object p1
    iput-object p1, p0, Landroidx/core/view/d0$c;->c:Landroid/view/WindowInsets;
    return-void
.end method

.method private static h()Landroid/view/WindowInsets;
  .catch Ljava/lang/ReflectiveOperationException; { :L0 .. :L1 } :L1
  .catch Ljava/lang/ReflectiveOperationException; { :L3 .. :L4 } :L5
  .catch Ljava/lang/ReflectiveOperationException; { :L7 .. :L8 } :L8
  .catch Ljava/lang/ReflectiveOperationException; { :L10 .. :L11 } :L12
  .registers 6
  .line 1
    sget-boolean v0, Landroidx/core/view/d0$c;->f:Z
    const/4 v1, 1
    if-nez v0, :L2
  :L0
  .line 2
    const-class v0, Landroid/view/WindowInsets;
    const-string v2, "CONSUMED"
    invoke-virtual { v0, v2 }, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    move-result-object v0
    sput-object v0, Landroidx/core/view/d0$c;->e:Ljava/lang/reflect/Field;
  :L1
  .line 3
    sput-boolean v1, Landroidx/core/view/d0$c;->f:Z
  :L2
  .line 4
    sget-object v0, Landroidx/core/view/d0$c;->e:Ljava/lang/reflect/Field;
    const/4 v2, 0
    if-eqz v0, :L6
  :L3
  .line 5
    invoke-virtual { v0, v2 }, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/view/WindowInsets;
    if-eqz v0, :L6
  .line 6
    new-instance v3, Landroid/view/WindowInsets;
    invoke-direct { v3, v0 }, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V
  :L4
    return-object v3
  :L5
    nop
  :L6
  .line 7
    sget-boolean v0, Landroidx/core/view/d0$c;->h:Z
    const/4 v3, 0
    if-nez v0, :L9
  :L7
  .line 8
    const-class v0, Landroid/view/WindowInsets;
    new-array v4, v1, [Ljava/lang/Class;
    const-class v5, Landroid/graphics/Rect;
    aput-object v5, v4, v3
    invoke-virtual { v0, v4 }, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    move-result-object v0
    sput-object v0, Landroidx/core/view/d0$c;->g:Ljava/lang/reflect/Constructor;
  :L8
  .line 9
    sput-boolean v1, Landroidx/core/view/d0$c;->h:Z
  :L9
  .line 10
    sget-object v0, Landroidx/core/view/d0$c;->g:Ljava/lang/reflect/Constructor;
    if-eqz v0, :L12
  :L10
    new-array v1, v1, [Ljava/lang/Object;
  .line 11
    new-instance v4, Landroid/graphics/Rect;
    invoke-direct { v4 }, Landroid/graphics/Rect;-><init>()V
    aput-object v4, v1, v3
    invoke-virtual { v0, v1 }, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/view/WindowInsets;
  :L11
    return-object v0
  :L12
    return-object v2
.end method

.method b()Landroidx/core/view/d0;
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroidx/core/view/d0$f;->a()V
  .line 2
    iget-object v0, p0, Landroidx/core/view/d0$c;->c:Landroid/view/WindowInsets;
    invoke-static { v0 }, Landroidx/core/view/d0;->s(Landroid/view/WindowInsets;)Landroidx/core/view/d0;
    move-result-object v0
  .line 3
    iget-object v1, p0, Landroidx/core/view/d0$f;->b:[Lc/g/d/b;
    invoke-virtual { v0, v1 }, Landroidx/core/view/d0;->n([Lc/g/d/b;)V
  .line 4
    iget-object v1, p0, Landroidx/core/view/d0$c;->d:Lc/g/d/b;
    invoke-virtual { v0, v1 }, Landroidx/core/view/d0;->q(Lc/g/d/b;)V
    return-object v0
.end method

.method d(Lc/g/d/b;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/core/view/d0$c;->d:Lc/g/d/b;
    return-void
.end method

.method f(Lc/g/d/b;)V
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/core/view/d0$c;->c:Landroid/view/WindowInsets;
    if-eqz v0, :L0
  .line 2
    iget v1, p1, Lc/g/d/b;->a:I
    iget v2, p1, Lc/g/d/b;->b:I
    iget v3, p1, Lc/g/d/b;->c:I
    iget p1, p1, Lc/g/d/b;->d:I
    invoke-virtual { v0, v1, v2, v3, p1 }, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;
    move-result-object p1
    iput-object p1, p0, Landroidx/core/view/d0$c;->c:Landroid/view/WindowInsets;
  :L0
    return-void
.end method
