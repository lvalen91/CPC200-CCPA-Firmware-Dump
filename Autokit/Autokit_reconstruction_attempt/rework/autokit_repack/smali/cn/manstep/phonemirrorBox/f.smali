.class public Lcn/manstep/phonemirrorBox/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/manstep/phonemirrorBox/e;


# static fields
.field static b:Lcn/manstep/phonemirrorBox/e;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/manstep/phonemirrorBox/g;",
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
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/f;->a:Ljava/util/List;

    return-void
.end method

.method public static b(Z)V
    .registers 7

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/f;->d()Lcn/manstep/phonemirrorBox/e;

    move-result-object v0

    check-cast v0, Lcn/manstep/phonemirrorBox/f;

    if-eqz v0, :cond_3c

    .line 2
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 3
    iget-object v2, v0, Lcn/manstep/phonemirrorBox/f;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/manstep/phonemirrorBox/g;

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 4
    invoke-interface {v3, v4, v5, v1}, Lcn/manstep/phonemirrorBox/g;->a(IILjava/lang/Object;)V

    goto :goto_13

    .line 5
    :cond_25
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/manstep/phonemirrorBox/g;

    const/4 v3, 0x1

    .line 6
    invoke-interface {v2, v3, p0, v1}, Lcn/manstep/phonemirrorBox/g;->a(IILjava/lang/Object;)V

    goto :goto_2b

    :cond_3c
    return-void
.end method

.method public static c()V
    .registers 2

    .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/f;->b:Lcn/manstep/phonemirrorBox/e;

    if-nez v0, :cond_f

    .line 2
    new-instance v0, Lcn/manstep/phonemirrorBox/f;

    invoke-direct {v0}, Lcn/manstep/phonemirrorBox/f;-><init>()V

    sput-object v0, Lcn/manstep/phonemirrorBox/f;->b:Lcn/manstep/phonemirrorBox/e;

    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/f;->g(Z)V

    :cond_f
    return-void
.end method

.method public static d()Lcn/manstep/phonemirrorBox/e;
    .registers 2

    .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/f;->b:Lcn/manstep/phonemirrorBox/e;

    if-nez v0, :cond_7

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/f;->c()V

    .line 3
    :cond_7
    sget-object v0, Lcn/manstep/phonemirrorBox/f;->b:Lcn/manstep/phonemirrorBox/e;

    return-object v0
.end method

.method public static e()V
    .registers 3

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/f;->d()Lcn/manstep/phonemirrorBox/e;

    move-result-object v0

    check-cast v0, Lcn/manstep/phonemirrorBox/f;

    if-eqz v0, :cond_d

    .line 2
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_d
    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcn/manstep/phonemirrorBox/f;->b:Lcn/manstep/phonemirrorBox/e;

    return-void
.end method

.method public static f(IIIIF)V
    .registers 8

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/f;->d()Lcn/manstep/phonemirrorBox/e;

    move-result-object v0

    check-cast v0, Lcn/manstep/phonemirrorBox/f;

    if-eqz v0, :cond_31

    const/4 v1, 0x5

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 p0, 0x1

    aput p1, v1, p0

    const/4 p0, 0x2

    aput p2, v1, p0

    const/4 p0, 0x3

    aput p3, v1, p0

    const/4 p1, 0x4

    float-to-int p2, p4

    aput p2, v1, p1

    .line 2
    iget-object p1, v0, Lcn/manstep/phonemirrorBox/f;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_31

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/manstep/phonemirrorBox/g;

    .line 3
    invoke-interface {p2, p0, v2, v1}, Lcn/manstep/phonemirrorBox/g;->a(IILjava/lang/Object;)V

    goto :goto_21

    :cond_31
    return-void
.end method

.method public static g(Z)V
    .registers 5

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/f;->d()Lcn/manstep/phonemirrorBox/e;

    move-result-object v0

    check-cast v0, Lcn/manstep/phonemirrorBox/f;

    if-eqz v0, :cond_20

    .line 2
    iget-object v0, v0, Lcn/manstep/phonemirrorBox/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/g;

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 3
    invoke-interface {v1, v2, p0, v3}, Lcn/manstep/phonemirrorBox/g;->a(IILjava/lang/Object;)V

    goto :goto_e

    :cond_20
    return-void
.end method


# virtual methods
.method public a(Lcn/manstep/phonemirrorBox/g;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/f;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
