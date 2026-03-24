.class Landroidx/core/view/d0$c;
.super Landroidx/core/view/d0$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
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


# instance fields
.field private c:Landroid/view/WindowInsets;

.field private d:Lc/g/d/b;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/core/view/d0$f;-><init>()V

    .line 2
    invoke-static {}, Landroidx/core/view/d0$c;->h()Landroid/view/WindowInsets;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/d0$c;->c:Landroid/view/WindowInsets;

    return-void
.end method

.method constructor <init>(Landroidx/core/view/d0;)V
    .registers 2

    .line 3
    invoke-direct {p0}, Landroidx/core/view/d0$f;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroidx/core/view/d0;->r()Landroid/view/WindowInsets;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/view/d0$c;->c:Landroid/view/WindowInsets;

    return-void
.end method

.method private static h()Landroid/view/WindowInsets;
    .registers 6

    .line 1
    sget-boolean v0, Landroidx/core/view/d0$c;->f:Z

    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 2
    :try_start_5
    const-class v0, Landroid/view/WindowInsets;

    const-string v2, "CONSUMED"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/view/d0$c;->e:Ljava/lang/reflect/Field;
    :try_end_f
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_5 .. :try_end_f} :catch_f

    .line 3
    :catch_f
    sput-boolean v1, Landroidx/core/view/d0$c;->f:Z

    .line 4
    :cond_11
    sget-object v0, Landroidx/core/view/d0$c;->e:Ljava/lang/reflect/Field;

    const/4 v2, 0x0

    if-eqz v0, :cond_25

    .line 5
    :try_start_16
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInsets;

    if-eqz v0, :cond_25

    .line 6
    new-instance v3, Landroid/view/WindowInsets;

    invoke-direct {v3, v0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V
    :try_end_23
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_16 .. :try_end_23} :catch_24

    return-object v3

    :catch_24
    nop

    .line 7
    :cond_25
    sget-boolean v0, Landroidx/core/view/d0$c;->h:Z

    const/4 v3, 0x0

    if-nez v0, :cond_3a

    .line 8
    :try_start_2a
    const-class v0, Landroid/view/WindowInsets;

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Landroid/graphics/Rect;

    aput-object v5, v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Landroidx/core/view/d0$c;->g:Ljava/lang/reflect/Constructor;
    :try_end_38
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_2a .. :try_end_38} :catch_38

    .line 9
    :catch_38
    sput-boolean v1, Landroidx/core/view/d0$c;->h:Z

    .line 10
    :cond_3a
    sget-object v0, Landroidx/core/view/d0$c;->g:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_4e

    :try_start_3e
    new-array v1, v1, [Ljava/lang/Object;

    .line 11
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInsets;
    :try_end_4d
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_3e .. :try_end_4d} :catch_4e

    return-object v0

    :catch_4e
    :cond_4e
    return-object v2
.end method


# virtual methods
.method b()Landroidx/core/view/d0;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/core/view/d0$f;->a()V

    .line 2
    iget-object v0, p0, Landroidx/core/view/d0$c;->c:Landroid/view/WindowInsets;

    invoke-static {v0}, Landroidx/core/view/d0;->s(Landroid/view/WindowInsets;)Landroidx/core/view/d0;

    move-result-object v0

    .line 3
    iget-object v1, p0, Landroidx/core/view/d0$f;->b:[Lc/g/d/b;

    invoke-virtual {v0, v1}, Landroidx/core/view/d0;->n([Lc/g/d/b;)V

    .line 4
    iget-object v1, p0, Landroidx/core/view/d0$c;->d:Lc/g/d/b;

    invoke-virtual {v0, v1}, Landroidx/core/view/d0;->q(Lc/g/d/b;)V

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

    if-eqz v0, :cond_12

    .line 2
    iget v1, p1, Lc/g/d/b;->a:I

    iget v2, p1, Lc/g/d/b;->b:I

    iget v3, p1, Lc/g/d/b;->c:I

    iget p1, p1, Lc/g/d/b;->d:I

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/view/d0$c;->c:Landroid/view/WindowInsets;

    :cond_12
    return-void
.end method
