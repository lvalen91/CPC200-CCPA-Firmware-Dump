.class Lcn/manstep/phonemirrorBox/l0/l$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/l0/l;->X2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/l0/l;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/l0/l;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$g;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l$g;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/manstep/phonemirrorBox/x0/a;->b0(Z)V

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l$g;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/l0/l;->i2(Lcn/manstep/phonemirrorBox/l0/l;Z)Z

    .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l$g;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/x0/a;->D()Landroidx/lifecycle/o;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_146

    const/4 v1, 0x2

    if-eq v0, v1, :cond_ea

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8d

    const/4 v1, 0x4

    if-eq v0, v1, :cond_30

    goto/16 :goto_1a1

    .line 4
    :cond_30
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/f;->j()Lcn/manstep/phonemirrorBox/f0/f;

    move-result-object v1

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/l0/l$g;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v2}, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/manstep/phonemirrorBox/x0/a;->z()Landroidx/lifecycle/o;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lcn/manstep/phonemirrorBox/l0/l;->E2(Lcn/manstep/phonemirrorBox/l0/l;Ljava/lang/Boolean;)Z

    move-result v2

    iget-object v3, p0, Lcn/manstep/phonemirrorBox/l0/l$g;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v3}, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/manstep/phonemirrorBox/x0/a;->J()Landroidx/lifecycle/o;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-static {v3, v4}, Lcn/manstep/phonemirrorBox/l0/l;->F2(Lcn/manstep/phonemirrorBox/l0/l;Ljava/lang/Integer;)I

    move-result v4

    iget-object v5, p0, Lcn/manstep/phonemirrorBox/l0/l$g;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v5}, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;

    move-result-object v6

    invoke-virtual {v6}, Lcn/manstep/phonemirrorBox/x0/a;->I()Landroidx/lifecycle/o;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-static {v5, v6}, Lcn/manstep/phonemirrorBox/l0/l;->F2(Lcn/manstep/phonemirrorBox/l0/l;Ljava/lang/Integer;)I

    move-result v5

    invoke-static {v3, v4, v5}, Lcn/manstep/phonemirrorBox/l0/l;->G2(Lcn/manstep/phonemirrorBox/l0/l;II)Landroid/media/AudioAttributes;

    move-result-object v3

    iget-object v4, p0, Lcn/manstep/phonemirrorBox/l0/l$g;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v4}, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;

    move-result-object v5

    invoke-virtual {v5}, Lcn/manstep/phonemirrorBox/x0/a;->J()Landroidx/lifecycle/o;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-static {v4, v5}, Lcn/manstep/phonemirrorBox/l0/l;->F2(Lcn/manstep/phonemirrorBox/l0/l;Ljava/lang/Integer;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcn/manstep/phonemirrorBox/f0/f;->n(ZLandroid/media/AudioAttributes;I)I

    goto/16 :goto_1a1

    .line 5
    :cond_8d
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/g;->j()Lcn/manstep/phonemirrorBox/f0/g;

    move-result-object v1

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/l0/l$g;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v2}, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/manstep/phonemirrorBox/x0/a;->z()Landroidx/lifecycle/o;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lcn/manstep/phonemirrorBox/l0/l;->E2(Lcn/manstep/phonemirrorBox/l0/l;Ljava/lang/Boolean;)Z

    move-result v2

    iget-object v3, p0, Lcn/manstep/phonemirrorBox/l0/l$g;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v3}, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/manstep/phonemirrorBox/x0/a;->O()Landroidx/lifecycle/o;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-static {v3, v4}, Lcn/manstep/phonemirrorBox/l0/l;->F2(Lcn/manstep/phonemirrorBox/l0/l;Ljava/lang/Integer;)I

    move-result v4

    iget-object v5, p0, Lcn/manstep/phonemirrorBox/l0/l$g;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v5}, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;

    move-result-object v6

    invoke-virtual {v6}, Lcn/manstep/phonemirrorBox/x0/a;->N()Landroidx/lifecycle/o;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-static {v5, v6}, Lcn/manstep/phonemirrorBox/l0/l;->F2(Lcn/manstep/phonemirrorBox/l0/l;Ljava/lang/Integer;)I

    move-result v5

    invoke-static {v3, v4, v5}, Lcn/manstep/phonemirrorBox/l0/l;->G2(Lcn/manstep/phonemirrorBox/l0/l;II)Landroid/media/AudioAttributes;

    move-result-object v3

    iget-object v4, p0, Lcn/manstep/phonemirrorBox/l0/l$g;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v4}, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;

    move-result-object v5

    invoke-virtual {v5}, Lcn/manstep/phonemirrorBox/x0/a;->O()Landroidx/lifecycle/o;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-static {v4, v5}, Lcn/manstep/phonemirrorBox/l0/l;->F2(Lcn/manstep/phonemirrorBox/l0/l;Ljava/lang/Integer;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcn/manstep/phonemirrorBox/f0/g;->n(ZLandroid/media/AudioAttributes;I)I

    goto/16 :goto_1a1

    .line 6
    :cond_ea
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/b;->j()Lcn/manstep/phonemirrorBox/f0/b;

    move-result-object v1

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/l0/l$g;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v2}, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/manstep/phonemirrorBox/x0/a;->z()Landroidx/lifecycle/o;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lcn/manstep/phonemirrorBox/l0/l;->E2(Lcn/manstep/phonemirrorBox/l0/l;Ljava/lang/Boolean;)Z

    move-result v2

    iget-object v3, p0, Lcn/manstep/phonemirrorBox/l0/l$g;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v3}, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/manstep/phonemirrorBox/x0/a;->x()Landroidx/lifecycle/o;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-static {v3, v4}, Lcn/manstep/phonemirrorBox/l0/l;->F2(Lcn/manstep/phonemirrorBox/l0/l;Ljava/lang/Integer;)I

    move-result v4

    iget-object v5, p0, Lcn/manstep/phonemirrorBox/l0/l$g;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v5}, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;

    move-result-object v6

    invoke-virtual {v6}, Lcn/manstep/phonemirrorBox/x0/a;->w()Landroidx/lifecycle/o;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-static {v5, v6}, Lcn/manstep/phonemirrorBox/l0/l;->F2(Lcn/manstep/phonemirrorBox/l0/l;Ljava/lang/Integer;)I

    move-result v5

    invoke-static {v3, v4, v5}, Lcn/manstep/phonemirrorBox/l0/l;->G2(Lcn/manstep/phonemirrorBox/l0/l;II)Landroid/media/AudioAttributes;

    move-result-object v3

    iget-object v4, p0, Lcn/manstep/phonemirrorBox/l0/l$g;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v4}, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;

    move-result-object v5

    invoke-virtual {v5}, Lcn/manstep/phonemirrorBox/x0/a;->x()Landroidx/lifecycle/o;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-static {v4, v5}, Lcn/manstep/phonemirrorBox/l0/l;->F2(Lcn/manstep/phonemirrorBox/l0/l;Ljava/lang/Integer;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcn/manstep/phonemirrorBox/f0/b;->n(ZLandroid/media/AudioAttributes;I)I

    goto :goto_1a1

    .line 7
    :cond_146
    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/e;->j()Lcn/manstep/phonemirrorBox/f0/e;

    move-result-object v1

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/l0/l$g;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v2}, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/manstep/phonemirrorBox/x0/a;->z()Landroidx/lifecycle/o;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lcn/manstep/phonemirrorBox/l0/l;->E2(Lcn/manstep/phonemirrorBox/l0/l;Ljava/lang/Boolean;)Z

    move-result v2

    iget-object v3, p0, Lcn/manstep/phonemirrorBox/l0/l$g;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v3}, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/manstep/phonemirrorBox/x0/a;->C()Landroidx/lifecycle/o;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-static {v3, v4}, Lcn/manstep/phonemirrorBox/l0/l;->F2(Lcn/manstep/phonemirrorBox/l0/l;Ljava/lang/Integer;)I

    move-result v4

    iget-object v5, p0, Lcn/manstep/phonemirrorBox/l0/l$g;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v5}, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;

    move-result-object v6

    invoke-virtual {v6}, Lcn/manstep/phonemirrorBox/x0/a;->B()Landroidx/lifecycle/o;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-static {v5, v6}, Lcn/manstep/phonemirrorBox/l0/l;->F2(Lcn/manstep/phonemirrorBox/l0/l;Ljava/lang/Integer;)I

    move-result v5

    invoke-static {v3, v4, v5}, Lcn/manstep/phonemirrorBox/l0/l;->G2(Lcn/manstep/phonemirrorBox/l0/l;II)Landroid/media/AudioAttributes;

    move-result-object v3

    iget-object v4, p0, Lcn/manstep/phonemirrorBox/l0/l$g;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v4}, Lcn/manstep/phonemirrorBox/l0/l;->j2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/x0/a;

    move-result-object v5

    invoke-virtual {v5}, Lcn/manstep/phonemirrorBox/x0/a;->C()Landroidx/lifecycle/o;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-static {v4, v5}, Lcn/manstep/phonemirrorBox/l0/l;->F2(Lcn/manstep/phonemirrorBox/l0/l;Ljava/lang/Integer;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcn/manstep/phonemirrorBox/f0/e;->n(ZLandroid/media/AudioAttributes;I)I

    .line 8
    :goto_1a1
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/l$g;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/l0/l;->H2(Lcn/manstep/phonemirrorBox/l0/l;I)V

    return-void
.end method
