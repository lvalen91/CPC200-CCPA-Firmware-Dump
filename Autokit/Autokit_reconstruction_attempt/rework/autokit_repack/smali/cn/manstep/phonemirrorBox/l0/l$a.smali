.class Lcn/manstep/phonemirrorBox/l0/l$a;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/manstep/phonemirrorBox/l0/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/manstep/phonemirrorBox/l0/l;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/l0/l;JJ)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$a;->a:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l$a;->a:Lcn/manstep/phonemirrorBox/l0/l;

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3
    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/l0/l;->i2(Lcn/manstep/phonemirrorBox/l0/l;Z)Z

    .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l$a;->a:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/x0/a;->D()Landroidx/lifecycle/o;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_a8

    const/4 v4, 0x2

    if-eq v0, v4, :cond_7f

    const/4 v4, 0x3

    if-eq v0, v4, :cond_56

    const/4 v4, 0x4

    if-eq v0, v4, :cond_2c

    goto/16 :goto_d0

    .line 5
    :cond_2c
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/f;->j()Lcn/manstep/phonemirrorBox/f0/f;

    move-result-object v1

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/f0/f;->g()V

    .line 6
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/l$a;->a:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/x0/a;->J()Landroidx/lifecycle/o;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 7
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/l0/l$a;->a:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v4}, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/manstep/phonemirrorBox/x0/a;->I()Landroidx/lifecycle/o;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    goto/16 :goto_d0

    .line 8
    :cond_56
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/g;->j()Lcn/manstep/phonemirrorBox/f0/g;

    move-result-object v1

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/f0/g;->g()V

    .line 9
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/l$a;->a:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/x0/a;->O()Landroidx/lifecycle/o;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 10
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/l0/l$a;->a:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v4}, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/manstep/phonemirrorBox/x0/a;->N()Landroidx/lifecycle/o;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    goto :goto_d0

    .line 11
    :cond_7f
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/b;->j()Lcn/manstep/phonemirrorBox/f0/b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/f0/b;->g()V

    .line 12
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/l$a;->a:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/x0/a;->x()Landroidx/lifecycle/o;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 13
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/l0/l$a;->a:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v4}, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/manstep/phonemirrorBox/x0/a;->w()Landroidx/lifecycle/o;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    goto :goto_d0

    .line 14
    :cond_a8
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/e;->j()Lcn/manstep/phonemirrorBox/f0/e;

    move-result-object v1

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/f0/e;->g()V

    .line 15
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/l$a;->a:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/x0/a;->C()Landroidx/lifecycle/o;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 16
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/l0/l$a;->a:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v4}, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/manstep/phonemirrorBox/x0/a;->B()Landroidx/lifecycle/o;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    :goto_d0
    add-int/2addr v1, v3

    .line 17
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcn/manstep/phonemirrorBox/l0/l$a$a;

    invoke-direct {v3, p0, v1, v0}, Lcn/manstep/phonemirrorBox/l0/l$a$a;-><init>(Lcn/manstep/phonemirrorBox/l0/l$a;II)V

    const-wide/16 v0, 0x1f40

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onTick(J)V
    .registers 3

    return-void
.end method
