.class Landroidx/core/view/d0$l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "l"
.end annotation


# static fields
.field static final b:Landroidx/core/view/d0;


# instance fields
.field final a:Landroidx/core/view/d0;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroidx/core/view/d0$b;

    invoke-direct {v0}, Landroidx/core/view/d0$b;-><init>()V

    .line 2
    invoke-virtual {v0}, Landroidx/core/view/d0$b;->a()Landroidx/core/view/d0;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroidx/core/view/d0;->a()Landroidx/core/view/d0;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroidx/core/view/d0;->b()Landroidx/core/view/d0;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/core/view/d0;->c()Landroidx/core/view/d0;

    move-result-object v0

    sput-object v0, Landroidx/core/view/d0$l;->b:Landroidx/core/view/d0;

    return-void
.end method

.method constructor <init>(Landroidx/core/view/d0;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/core/view/d0$l;->a:Landroidx/core/view/d0;

    return-void
.end method


# virtual methods
.method a()Landroidx/core/view/d0;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/d0$l;->a:Landroidx/core/view/d0;

    return-object v0
.end method

.method b()Landroidx/core/view/d0;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/d0$l;->a:Landroidx/core/view/d0;

    return-object v0
.end method

.method c()Landroidx/core/view/d0;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/d0$l;->a:Landroidx/core/view/d0;

    return-object v0
.end method

.method d(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method e(Landroidx/core/view/d0;)V
    .registers 2

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Landroidx/core/view/d0$l;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 2
    :cond_a
    check-cast p1, Landroidx/core/view/d0$l;

    .line 3
    invoke-virtual {p0}, Landroidx/core/view/d0$l;->l()Z

    move-result v1

    invoke-virtual {p1}, Landroidx/core/view/d0$l;->l()Z

    move-result v3

    if-ne v1, v3, :cond_4b

    .line 4
    invoke-virtual {p0}, Landroidx/core/view/d0$l;->k()Z

    move-result v1

    invoke-virtual {p1}, Landroidx/core/view/d0$l;->k()Z

    move-result v3

    if-ne v1, v3, :cond_4b

    .line 5
    invoke-virtual {p0}, Landroidx/core/view/d0$l;->i()Lc/g/d/b;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/core/view/d0$l;->i()Lc/g/d/b;

    move-result-object v3

    invoke-static {v1, v3}, Lc/g/j/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 6
    invoke-virtual {p0}, Landroidx/core/view/d0$l;->h()Lc/g/d/b;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/core/view/d0$l;->h()Lc/g/d/b;

    move-result-object v3

    invoke-static {v1, v3}, Lc/g/j/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 7
    invoke-virtual {p0}, Landroidx/core/view/d0$l;->f()Landroidx/core/view/d;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/core/view/d0$l;->f()Landroidx/core/view/d;

    move-result-object p1

    invoke-static {v1, p1}, Lc/g/j/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4b

    goto :goto_4c

    :cond_4b
    const/4 v0, 0x0

    :goto_4c
    return v0
.end method

.method f()Landroidx/core/view/d;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method g()Lc/g/d/b;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/core/view/d0$l;->i()Lc/g/d/b;

    move-result-object v0

    return-object v0
.end method

.method h()Lc/g/d/b;
    .registers 2

    .line 1
    sget-object v0, Lc/g/d/b;->e:Lc/g/d/b;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p0}, Landroidx/core/view/d0$l;->l()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroidx/core/view/d0$l;->k()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroidx/core/view/d0$l;->i()Lc/g/d/b;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 2
    invoke-virtual {p0}, Landroidx/core/view/d0$l;->h()Lc/g/d/b;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroidx/core/view/d0$l;->f()Landroidx/core/view/d;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 3
    invoke-static {v0}, Lc/g/j/c;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method i()Lc/g/d/b;
    .registers 2

    .line 1
    sget-object v0, Lc/g/d/b;->e:Lc/g/d/b;

    return-object v0
.end method

.method j(IIII)Landroidx/core/view/d0;
    .registers 5

    .line 1
    sget-object p1, Landroidx/core/view/d0$l;->b:Landroidx/core/view/d0;

    return-object p1
.end method

.method k()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method l()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public m([Lc/g/d/b;)V
    .registers 2

    return-void
.end method

.method n(Lc/g/d/b;)V
    .registers 2

    return-void
.end method

.method o(Landroidx/core/view/d0;)V
    .registers 2

    return-void
.end method

.method public p(Lc/g/d/b;)V
    .registers 2

    return-void
.end method
