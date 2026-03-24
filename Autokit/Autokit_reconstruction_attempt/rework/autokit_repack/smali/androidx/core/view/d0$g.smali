.class Landroidx/core/view/d0$g;
.super Landroidx/core/view/d0$l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation


# static fields
.field private static g:Z

.field private static h:Ljava/lang/reflect/Method;

.field private static i:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static j:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static k:Ljava/lang/reflect/Field;

.field private static l:Ljava/lang/reflect/Field;


# instance fields
.field final c:Landroid/view/WindowInsets;

.field private d:Lc/g/d/b;

.field private e:Landroidx/core/view/d0;

.field f:Lc/g/d/b;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Landroidx/core/view/d0;Landroid/view/WindowInsets;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Landroidx/core/view/d0$l;-><init>(Landroidx/core/view/d0;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Landroidx/core/view/d0$g;->d:Lc/g/d/b;

    .line 3
    iput-object p2, p0, Landroidx/core/view/d0$g;->c:Landroid/view/WindowInsets;

    return-void
.end method

.method constructor <init>(Landroidx/core/view/d0;Landroidx/core/view/d0$g;)V
    .registers 4

    .line 4
    new-instance v0, Landroid/view/WindowInsets;

    iget-object p2, p2, Landroidx/core/view/d0$g;->c:Landroid/view/WindowInsets;

    invoke-direct {v0, p2}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    invoke-direct {p0, p1, v0}, Landroidx/core/view/d0$g;-><init>(Landroidx/core/view/d0;Landroid/view/WindowInsets;)V

    return-void
.end method

.method private q(Landroid/view/View;)Lc/g/d/b;
    .registers 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_55

    .line 2
    sget-boolean v0, Landroidx/core/view/d0$g;->g:Z

    if-nez v0, :cond_d

    .line 3
    invoke-static {}, Landroidx/core/view/d0$g;->r()V

    .line 4
    :cond_d
    sget-object v0, Landroidx/core/view/d0$g;->h:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_54

    sget-object v2, Landroidx/core/view/d0$g;->j:Ljava/lang/Class;

    if-eqz v2, :cond_54

    sget-object v2, Landroidx/core/view/d0$g;->k:Ljava/lang/reflect/Field;

    if-nez v2, :cond_1b

    goto :goto_54

    :cond_1b
    const/4 v2, 0x0

    :try_start_1c
    new-array v2, v2, [Ljava/lang/Object;

    .line 5
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2a

    .line 6
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    return-object v1

    .line 7
    :cond_2a
    sget-object v0, Landroidx/core/view/d0$g;->l:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 8
    sget-object v0, Landroidx/core/view/d0$g;->k:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    if-eqz p1, :cond_3e

    .line 9
    invoke-static {p1}, Lc/g/d/b;->c(Landroid/graphics/Rect;)Lc/g/d/b;

    move-result-object v1
    :try_end_3e
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1c .. :try_end_3e} :catch_3f

    :cond_3e
    return-object v1

    :catch_3f
    move-exception p1

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get visible insets. (Reflection error). "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_54
    :goto_54
    return-object v1

    .line 11
    :cond_55
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static r()V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    :try_start_1
    const-class v1, Landroid/view/View;

    const-string v2, "getViewRootImpl"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/core/view/d0$g;->h:Ljava/lang/reflect/Method;

    const-string v1, "android.view.ViewRootImpl"

    .line 2
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Landroidx/core/view/d0$g;->i:Ljava/lang/Class;

    const-string v1, "android.view.View$AttachInfo"

    .line 3
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Landroidx/core/view/d0$g;->j:Ljava/lang/Class;

    const-string v2, "mVisibleInsets"

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroidx/core/view/d0$g;->k:Ljava/lang/reflect/Field;

    .line 5
    sget-object v1, Landroidx/core/view/d0$g;->i:Ljava/lang/Class;

    const-string v2, "mAttachInfo"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroidx/core/view/d0$g;->l:Ljava/lang/reflect/Field;

    .line 6
    sget-object v1, Landroidx/core/view/d0$g;->k:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 7
    sget-object v1, Landroidx/core/view/d0$g;->l:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_3a
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_3a} :catch_3b

    goto :goto_50

    :catch_3b
    move-exception v1

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get visible insets. (Reflection error). "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 9
    :goto_50
    sput-boolean v0, Landroidx/core/view/d0$g;->g:Z

    return-void
.end method


# virtual methods
.method d(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/core/view/d0$g;->q(Landroid/view/View;)Lc/g/d/b;

    move-result-object p1

    if-nez p1, :cond_8

    .line 2
    sget-object p1, Lc/g/d/b;->e:Lc/g/d/b;

    .line 3
    :cond_8
    invoke-virtual {p0, p1}, Landroidx/core/view/d0$g;->n(Lc/g/d/b;)V

    return-void
.end method

.method e(Landroidx/core/view/d0;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/view/d0$g;->e:Landroidx/core/view/d0;

    invoke-virtual {p1, v0}, Landroidx/core/view/d0;->p(Landroidx/core/view/d0;)V

    .line 2
    iget-object v0, p0, Landroidx/core/view/d0$g;->f:Lc/g/d/b;

    invoke-virtual {p1, v0}, Landroidx/core/view/d0;->o(Lc/g/d/b;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/core/view/d0$l;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_8
    check-cast p1, Landroidx/core/view/d0$g;

    .line 3
    iget-object v0, p0, Landroidx/core/view/d0$g;->f:Lc/g/d/b;

    iget-object p1, p1, Landroidx/core/view/d0$g;->f:Lc/g/d/b;

    invoke-static {v0, p1}, La;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final i()Lc/g/d/b;
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/core/view/d0$g;->d:Lc/g/d/b;

    if-nez v0, :cond_22

    .line 2
    iget-object v0, p0, Landroidx/core/view/d0$g;->c:Landroid/view/WindowInsets;

    .line 3
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    iget-object v1, p0, Landroidx/core/view/d0$g;->c:Landroid/view/WindowInsets;

    .line 4
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    iget-object v2, p0, Landroidx/core/view/d0$g;->c:Landroid/view/WindowInsets;

    .line 5
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    iget-object v3, p0, Landroidx/core/view/d0$g;->c:Landroid/view/WindowInsets;

    .line 6
    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    .line 7
    invoke-static {v0, v1, v2, v3}, Lc/g/d/b;->b(IIII)Lc/g/d/b;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/d0$g;->d:Lc/g/d/b;

    .line 8
    :cond_22
    iget-object v0, p0, Landroidx/core/view/d0$g;->d:Lc/g/d/b;

    return-object v0
.end method

.method j(IIII)Landroidx/core/view/d0;
    .registers 7

    .line 1
    new-instance v0, Landroidx/core/view/d0$b;

    iget-object v1, p0, Landroidx/core/view/d0$g;->c:Landroid/view/WindowInsets;

    invoke-static {v1}, Landroidx/core/view/d0;->s(Landroid/view/WindowInsets;)Landroidx/core/view/d0;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/view/d0$b;-><init>(Landroidx/core/view/d0;)V

    .line 2
    invoke-virtual {p0}, Landroidx/core/view/d0$g;->i()Lc/g/d/b;

    move-result-object v1

    invoke-static {v1, p1, p2, p3, p4}, Landroidx/core/view/d0;->k(Lc/g/d/b;IIII)Lc/g/d/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/view/d0$b;->c(Lc/g/d/b;)Landroidx/core/view/d0$b;

    .line 3
    invoke-virtual {p0}, Landroidx/core/view/d0$l;->h()Lc/g/d/b;

    move-result-object v1

    invoke-static {v1, p1, p2, p3, p4}, Landroidx/core/view/d0;->k(Lc/g/d/b;IIII)Lc/g/d/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/core/view/d0$b;->b(Lc/g/d/b;)Landroidx/core/view/d0$b;

    .line 4
    invoke-virtual {v0}, Landroidx/core/view/d0$b;->a()Landroidx/core/view/d0;

    move-result-object p1

    return-object p1
.end method

.method l()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/d0$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isRound()Z

    move-result v0

    return v0
.end method

.method public m([Lc/g/d/b;)V
    .registers 2

    return-void
.end method

.method n(Lc/g/d/b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/core/view/d0$g;->f:Lc/g/d/b;

    return-void
.end method

.method o(Landroidx/core/view/d0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/core/view/d0$g;->e:Landroidx/core/view/d0;

    return-void
.end method
