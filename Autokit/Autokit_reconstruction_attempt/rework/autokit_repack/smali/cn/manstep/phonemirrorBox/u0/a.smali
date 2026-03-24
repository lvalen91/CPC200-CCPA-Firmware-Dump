.class public abstract Lcn/manstep/phonemirrorBox/u0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:I

.field protected h:I

.field protected i:I

.field protected j:I

.field protected k:I

.field protected l:I

.field protected m:I

.field protected n:I

.field protected o:I

.field protected p:I

.field protected q:I

.field protected r:Ljava/lang/String;

.field protected s:Ljava/lang/String;

.field protected t:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A(Landroid/content/Context;)V
    .registers 2

    return-void
.end method

.method protected B(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 5

    return-void
.end method

.method public C(Ljava/lang/String;II)V
    .registers 5

    if-eqz p1, :cond_c

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/a;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 2
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/u0/a;->r:Ljava/lang/String;

    :cond_c
    const/4 p1, -0x1

    if-eq p2, p1, :cond_15

    .line 3
    iget v0, p0, Lcn/manstep/phonemirrorBox/u0/a;->k:I

    if-eq p2, v0, :cond_15

    .line 4
    iput p2, p0, Lcn/manstep/phonemirrorBox/u0/a;->k:I

    :cond_15
    if-eq p3, p1, :cond_1d

    .line 5
    iget p1, p0, Lcn/manstep/phonemirrorBox/u0/a;->l:I

    if-eq p3, p1, :cond_1d

    .line 6
    iput p3, p0, Lcn/manstep/phonemirrorBox/u0/a;->l:I

    :cond_1d
    return-void
.end method

.method public D(Ljava/lang/String;IIIIII)V
    .registers 9

    if-eqz p1, :cond_c

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/a;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 2
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/u0/a;->s:Ljava/lang/String;

    :cond_c
    const/4 p1, -0x1

    if-eq p2, p1, :cond_15

    .line 3
    iget v0, p0, Lcn/manstep/phonemirrorBox/u0/a;->m:I

    if-eq p2, v0, :cond_15

    .line 4
    iput p2, p0, Lcn/manstep/phonemirrorBox/u0/a;->m:I

    :cond_15
    if-eq p3, p1, :cond_1d

    .line 5
    iget p2, p0, Lcn/manstep/phonemirrorBox/u0/a;->n:I

    if-eq p3, p2, :cond_1d

    .line 6
    iput p3, p0, Lcn/manstep/phonemirrorBox/u0/a;->n:I

    :cond_1d
    if-eq p4, p1, :cond_25

    .line 7
    iget p2, p0, Lcn/manstep/phonemirrorBox/u0/a;->o:I

    if-eq p4, p2, :cond_25

    .line 8
    iput p4, p0, Lcn/manstep/phonemirrorBox/u0/a;->o:I

    :cond_25
    if-eq p5, p1, :cond_2d

    .line 9
    iget p2, p0, Lcn/manstep/phonemirrorBox/u0/a;->p:I

    if-eq p5, p2, :cond_2d

    .line 10
    iput p5, p0, Lcn/manstep/phonemirrorBox/u0/a;->p:I

    :cond_2d
    if-eq p6, p1, :cond_35

    .line 11
    iget p2, p0, Lcn/manstep/phonemirrorBox/u0/a;->q:I

    if-eq p6, p2, :cond_35

    .line 12
    iput p6, p0, Lcn/manstep/phonemirrorBox/u0/a;->q:I

    :cond_35
    if-eq p7, p1, :cond_3d

    .line 13
    iget p1, p0, Lcn/manstep/phonemirrorBox/u0/a;->t:I

    if-eq p7, p1, :cond_3d

    .line 14
    iput p7, p0, Lcn/manstep/phonemirrorBox/u0/a;->t:I

    :cond_3d
    return-void
.end method

.method public E(I)V
    .registers 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_9

    .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/u0/a;->j:I

    if-eq p1, v0, :cond_9

    .line 2
    iput p1, p0, Lcn/manstep/phonemirrorBox/u0/a;->j:I

    :cond_9
    return-void
.end method

.method protected F([B)V
    .registers 2

    return-void
.end method

.method protected G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .registers 11

    if-eqz p1, :cond_c

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 2
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/u0/a;->a:Ljava/lang/String;

    :cond_c
    if-eqz p2, :cond_18

    .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/u0/a;->b:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    .line 4
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/u0/a;->b:Ljava/lang/String;

    :cond_18
    if-eqz p3, :cond_24

    .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/u0/a;->c:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_24

    .line 6
    iput-object p3, p0, Lcn/manstep/phonemirrorBox/u0/a;->c:Ljava/lang/String;

    :cond_24
    const/4 p1, -0x1

    if-eq p7, p1, :cond_2d

    .line 7
    iget p2, p0, Lcn/manstep/phonemirrorBox/u0/a;->i:I

    if-eq p7, p2, :cond_2d

    .line 8
    iput p7, p0, Lcn/manstep/phonemirrorBox/u0/a;->i:I

    :cond_2d
    if-eq p5, p1, :cond_35

    .line 9
    iget p2, p0, Lcn/manstep/phonemirrorBox/u0/a;->g:I

    if-eq p5, p2, :cond_35

    .line 10
    iput p5, p0, Lcn/manstep/phonemirrorBox/u0/a;->g:I

    :cond_35
    if-eqz p8, :cond_41

    .line 11
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/u0/a;->e:Ljava/lang/String;

    invoke-virtual {p8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_41

    .line 12
    iput-object p8, p0, Lcn/manstep/phonemirrorBox/u0/a;->e:Ljava/lang/String;

    :cond_41
    if-eqz p9, :cond_4d

    .line 13
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/u0/a;->f:Ljava/lang/String;

    invoke-virtual {p9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4d

    .line 14
    iput-object p9, p0, Lcn/manstep/phonemirrorBox/u0/a;->f:Ljava/lang/String;

    :cond_4d
    if-eqz p4, :cond_59

    .line 15
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/u0/a;->d:Ljava/lang/String;

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_59

    .line 16
    iput-object p4, p0, Lcn/manstep/phonemirrorBox/u0/a;->d:Ljava/lang/String;

    :cond_59
    if-eq p6, p1, :cond_61

    .line 17
    iget p1, p0, Lcn/manstep/phonemirrorBox/u0/a;->h:I

    if-eq p1, p6, :cond_61

    .line 18
    iput p6, p0, Lcn/manstep/phonemirrorBox/u0/a;->h:I

    :cond_61
    return-void
.end method

.method abstract H()V
.end method

.method public a()V
    .registers 1

    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public c(Z)V
    .registers 2

    return-void
.end method

.method public d(Z)V
    .registers 2

    return-void
.end method

.method public e(Z)V
    .registers 2

    return-void
.end method

.method protected f()V
    .registers 1

    return-void
.end method

.method protected g()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public h(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public i(Landroid/content/Context;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public j()V
    .registers 3

    const-string v0, "box.phone_call.state"

    const-string v1, "1"

    .line 1
    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/util/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public k()V
    .registers 3

    const-string v0, "box.phone_call.state"

    const-string v1, "1"

    .line 1
    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/util/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public l()V
    .registers 3

    const-string v0, "box.phone_call.state"

    const-string v1, "0"

    .line 1
    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/util/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public m()V
    .registers 1

    return-void
.end method

.method public n()V
    .registers 1

    return-void
.end method

.method abstract o()V
.end method

.method abstract p()V
.end method

.method abstract q()V
.end method

.method abstract r()V
.end method

.method abstract s(Landroid/content/Context;)V
.end method

.method public t(Landroid/content/Context;Z)V
    .registers 3

    return-void
.end method

.method protected u()V
    .registers 1

    return-void
.end method

.method public v(Landroid/content/Context;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method abstract w()V
.end method

.method public x(Landroid/content/Context;I)I
    .registers 3

    const/4 p1, -0x1

    return p1
.end method

.method protected y(Lcn/manstep/phonemirrorBox/u0/b;)V
    .registers 2

    return-void
.end method

.method abstract z()V
.end method
