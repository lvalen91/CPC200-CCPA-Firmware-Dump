.class public Ld/c/a/a/l/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lc/d/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/g<",
            "Ljava/lang/String;",
            "Ld/c/a/a/l/i;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lc/d/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/g<",
            "Ljava/lang/String;",
            "[",
            "Landroid/animation/PropertyValuesHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lc/d/g;

    invoke-direct {v0}, Lc/d/g;-><init>()V

    iput-object v0, p0, Ld/c/a/a/l/h;->a:Lc/d/g;

    .line 3
    new-instance v0, Lc/d/g;

    invoke-direct {v0}, Lc/d/g;-><init>()V

    iput-object v0, p0, Ld/c/a/a/l/h;->b:Lc/d/g;

    return-void
.end method

.method private static a(Ld/c/a/a/l/h;Landroid/animation/Animator;)V
    .registers 4

    .line 1
    instance-of v0, p1, Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1d

    .line 2
    check-cast p1, Landroid/animation/ObjectAnimator;

    .line 3
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ld/c/a/a/l/h;->h(Ljava/lang/String;[Landroid/animation/PropertyValuesHolder;)V

    .line 4
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ld/c/a/a/l/i;->b(Landroid/animation/ValueAnimator;)Ld/c/a/a/l/i;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ld/c/a/a/l/h;->i(Ljava/lang/String;Ld/c/a/a/l/i;)V

    return-void

    .line 5
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Animator must be an ObjectAnimator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Landroid/content/Context;Landroid/content/res/TypedArray;I)Ld/c/a/a/l/h;
    .registers 4

    .line 1
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-eqz p1, :cond_12

    .line 3
    invoke-static {p0, p1}, Ld/c/a/a/l/h;->c(Landroid/content/Context;I)Ld/c/a/a/l/h;

    move-result-object p0

    return-object p0

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Landroid/content/Context;I)Ld/c/a/a/l/h;
    .registers 4

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-static {p0, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p0

    .line 2
    instance-of v1, p0, Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_14

    .line 3
    check-cast p0, Landroid/animation/AnimatorSet;

    .line 4
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Ld/c/a/a/l/h;->d(Ljava/util/List;)Ld/c/a/a/l/h;

    move-result-object p0

    return-object p0

    :cond_14
    if-eqz p0, :cond_23

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-static {v1}, Ld/c/a/a/l/h;->d(Ljava/util/List;)Ld/c/a/a/l/h;

    move-result-object p0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_24

    return-object p0

    :cond_23
    return-object v0

    .line 8
    :catch_24
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t load animation resource ID #0x"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object v0
.end method

.method private static d(Ljava/util/List;)Ld/c/a/a/l/h;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)",
            "Ld/c/a/a/l/h;"
        }
    .end annotation

    .line 1
    new-instance v0, Ld/c/a/a/l/h;

    invoke-direct {v0}, Ld/c/a/a/l/h;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_18

    .line 3
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    invoke-static {v0, v3}, Ld/c/a/a/l/h;->a(Ld/c/a/a/l/h;Landroid/animation/Animator;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_18
    return-object v0
.end method


# virtual methods
.method public e(Ljava/lang/String;)Ld/c/a/a/l/i;
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Ld/c/a/a/l/h;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2
    iget-object v0, p0, Ld/c/a/a/l/h;->a:Lc/d/g;

    invoke-virtual {v0, p1}, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld/c/a/a/l/i;

    return-object p1

    .line 3
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_4
    instance-of v0, p1, Ld/c/a/a/l/h;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_a
    check-cast p1, Ld/c/a/a/l/h;

    .line 3
    iget-object v0, p0, Ld/c/a/a/l/h;->a:Lc/d/g;

    iget-object p1, p1, Ld/c/a/a/l/h;->a:Lc/d/g;

    invoke-virtual {v0, p1}, Lc/d/g;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()J
    .registers 10

    .line 1
    iget-object v0, p0, Ld/c/a/a/l/h;->a:Lc/d/g;

    invoke-virtual {v0}, Lc/d/g;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v0, :cond_23

    .line 2
    iget-object v4, p0, Ld/c/a/a/l/h;->a:Lc/d/g;

    invoke-virtual {v4, v3}, Lc/d/g;->m(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld/c/a/a/l/i;

    .line 3
    invoke-virtual {v4}, Ld/c/a/a/l/i;->c()J

    move-result-wide v5

    invoke-virtual {v4}, Ld/c/a/a/l/i;->d()J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_23
    return-wide v1
.end method

.method public g(Ljava/lang/String;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Ld/c/a/a/l/h;->a:Lc/d/g;

    invoke-virtual {v0, p1}, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public h(Ljava/lang/String;[Landroid/animation/PropertyValuesHolder;)V
    .registers 4

    .line 1
    iget-object v0, p0, Ld/c/a/a/l/h;->b:Lc/d/g;

    invoke-virtual {v0, p1, p2}, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Ld/c/a/a/l/h;->a:Lc/d/g;

    invoke-virtual {v0}, Lc/d/g;->hashCode()I

    move-result v0

    return v0
.end method

.method public i(Ljava/lang/String;Ld/c/a/a/l/i;)V
    .registers 4

    .line 1
    iget-object v0, p0, Ld/c/a/a/l/h;->a:Lc/d/g;

    invoke-virtual {v0, p1, p2}, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xa

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    const-class v1, Ld/c/a/a/l/h;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " timings: "

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v1, p0, Ld/c/a/a/l/h;->a:Lc/d/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}\n"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
