.class public final Ld/c/b/d/d/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ld/c/b/d/d/a;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld/c/b/d/d/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ld/c/b/d/d/a;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ld/c/b/d/d/c;->a:Ld/c/b/d/d/a;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/c/b/d/d/c;->b:Ljava/util/List;

    .line 4
    new-instance v1, Ld/c/b/d/d/b;

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    invoke-direct {v1, p1, v3}, Ld/c/b/d/d/b;-><init>(Ld/c/b/d/d/a;[I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(I)Ld/c/b/d/d/b;
    .registers 10

    .line 1
    iget-object v0, p0, Ld/c/b/d/d/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_44

    .line 2
    iget-object v0, p0, Ld/c/b/d/d/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/c/b/d/d/b;

    .line 3
    iget-object v1, p0, Ld/c/b/d/d/c;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_1c
    if-gt v1, p1, :cond_44

    .line 4
    new-instance v3, Ld/c/b/d/d/b;

    iget-object v4, p0, Ld/c/b/d/d/c;->a:Ld/c/b/d/d/a;

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v2, v5, v6

    add-int/lit8 v6, v1, -0x1

    .line 5
    invoke-virtual {v4}, Ld/c/b/d/d/a;->d()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v4, v6}, Ld/c/b/d/d/a;->c(I)I

    move-result v6

    aput v6, v5, v2

    invoke-direct {v3, v4, v5}, Ld/c/b/d/d/b;-><init>(Ld/c/b/d/d/a;[I)V

    .line 6
    invoke-virtual {v0, v3}, Ld/c/b/d/d/b;->g(Ld/c/b/d/d/b;)Ld/c/b/d/d/b;

    move-result-object v0

    .line 7
    iget-object v3, p0, Ld/c/b/d/d/c;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 8
    :cond_44
    iget-object v0, p0, Ld/c/b/d/d/c;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld/c/b/d/d/b;

    return-object p1
.end method


# virtual methods
.method public b([II)V
    .registers 9

    if-eqz p2, :cond_40

    .line 1
    array-length v0, p1

    sub-int/2addr v0, p2

    if-lez v0, :cond_38

    .line 2
    invoke-direct {p0, p2}, Ld/c/b/d/d/c;->a(I)Ld/c/b/d/d/b;

    move-result-object v1

    .line 3
    new-array v2, v0, [I

    const/4 v3, 0x0

    .line 4
    invoke-static {p1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    new-instance v4, Ld/c/b/d/d/b;

    iget-object v5, p0, Ld/c/b/d/d/c;->a:Ld/c/b/d/d/a;

    invoke-direct {v4, v5, v2}, Ld/c/b/d/d/b;-><init>(Ld/c/b/d/d/a;[I)V

    const/4 v2, 0x1

    .line 6
    invoke-virtual {v4, p2, v2}, Ld/c/b/d/d/b;->h(II)Ld/c/b/d/d/b;

    move-result-object v4

    .line 7
    invoke-virtual {v4, v1}, Ld/c/b/d/d/b;->b(Ld/c/b/d/d/b;)[Ld/c/b/d/d/b;

    move-result-object v1

    aget-object v1, v1, v2

    .line 8
    invoke-virtual {v1}, Ld/c/b/d/d/b;->d()[I

    move-result-object v1

    .line 9
    array-length v2, v1

    sub-int/2addr p2, v2

    const/4 v2, 0x0

    :goto_29
    if-ge v2, p2, :cond_32

    add-int v4, v0, v2

    .line 10
    aput v3, p1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :cond_32
    add-int/2addr v0, p2

    .line 11
    array-length p2, v1

    invoke-static {v1, v3, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 12
    :cond_38
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No data bytes provided"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_40
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No error correction bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_49

    :goto_48
    throw p1

    :goto_49
    goto :goto_48
.end method
