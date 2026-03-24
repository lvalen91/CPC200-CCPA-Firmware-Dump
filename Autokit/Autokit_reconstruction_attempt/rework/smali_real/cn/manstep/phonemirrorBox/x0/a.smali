.class public Lcn/manstep/phonemirrorBox/x0/a;
.super Landroidx/lifecycle/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/manstep/phonemirrorBox/x0/a$k;
    }
.end annotation


# instance fields
.field public final d:Z

.field private final e:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Landroidx/fragment/app/n;

.field private final t:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public u:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final v:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final w:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private x:Lcn/manstep/phonemirrorBox/x0/a$k;

.field private y:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final z:[Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;Landroidx/fragment/app/n;)V
    .registers 7

    .line 1
    invoke-direct {p0, p1}, Landroidx/lifecycle/a;-><init>(Landroid/app/Application;)V

    .line 2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x1a

    if-lt p1, v3, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    .line 4
    :goto_12
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/x0/a;->d:Z

    .line 5
    new-instance p1, Landroidx/lifecycle/o;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, v3}, Landroidx/lifecycle/o;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/x0/a;->u:Landroidx/lifecycle/o;

    const/16 p1, 0x8

    new-array p1, p1, [Landroidx/lifecycle/o;

    .line 6
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/x0/a;->z:[Landroidx/lifecycle/o;

    .line 7
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/x0/a;->s:Landroidx/fragment/app/n;

    .line 8
    new-instance p1, Landroidx/lifecycle/o;

    invoke-direct {p1, v2}, Landroidx/lifecycle/o;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/x0/a;->e:Landroidx/lifecycle/o;

    .line 9
    new-instance p1, Landroidx/lifecycle/o;

    invoke-direct {p1, v2}, Landroidx/lifecycle/o;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/x0/a;->f:Landroidx/lifecycle/o;

    .line 10
    new-instance p1, Landroidx/lifecycle/o;

    invoke-direct {p1, v2}, Landroidx/lifecycle/o;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/x0/a;->g:Landroidx/lifecycle/o;

    .line 11
    new-instance p1, Landroidx/lifecycle/o;

    invoke-direct {p1, v2}, Landroidx/lifecycle/o;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/x0/a;->h:Landroidx/lifecycle/o;

    .line 12
    new-instance p1, Landroidx/lifecycle/o;

    invoke-direct {p1, v2}, Landroidx/lifecycle/o;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/x0/a;->i:Landroidx/lifecycle/o;

    .line 13
    new-instance p1, Landroidx/lifecycle/o;

    invoke-direct {p1, v2}, Landroidx/lifecycle/o;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/x0/a;->j:Landroidx/lifecycle/o;

    .line 14
    new-instance p1, Landroidx/lifecycle/o;

    invoke-direct {p1, v2}, Landroidx/lifecycle/o;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/x0/a;->k:Landroidx/lifecycle/o;

    .line 15
    new-instance p1, Landroidx/lifecycle/o;

    invoke-direct {p1, v2}, Landroidx/lifecycle/o;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/x0/a;->l:Landroidx/lifecycle/o;

    .line 16
    new-instance p1, Landroidx/lifecycle/o;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/lifecycle/o;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/x0/a;->w:Landroidx/lifecycle/o;

    .line 17
    new-instance p1, Landroidx/lifecycle/o;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p2}, Landroidx/lifecycle/o;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/x0/a;->m:Landroidx/lifecycle/o;

    .line 18
    new-instance p1, Landroidx/lifecycle/o;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p2}, Landroidx/lifecycle/o;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/x0/a;->n:Landroidx/lifecycle/o;

    .line 19
    new-instance p1, Landroidx/lifecycle/o;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p2}, Landroidx/lifecycle/o;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/x0/a;->p:Landroidx/lifecycle/o;

    .line 20
    new-instance p1, Landroidx/lifecycle/o;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p2}, Landroidx/lifecycle/o;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/x0/a;->o:Landroidx/lifecycle/o;

    .line 21
    new-instance p1, Landroidx/lifecycle/o;

    const/16 p2, 0x3e80

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/lifecycle/o;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/x0/a;->t:Landroidx/lifecycle/o;

    .line 22
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/u;->a0()Z

    move-result p1

    if-eqz p1, :cond_af

    .line 23
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/x0/a;->t:Landroidx/lifecycle/o;

    const p2, 0xbb80

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    .line 24
    :cond_af
    new-instance p1, Landroidx/lifecycle/o;

    invoke-direct {p1, v2}, Landroidx/lifecycle/o;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/x0/a;->q:Landroidx/lifecycle/o;

    .line 25
    new-instance p1, Landroidx/lifecycle/o;

    invoke-direct {p1}, Landroidx/lifecycle/o;-><init>()V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/x0/a;->r:Landroidx/lifecycle/o;

    .line 26
    new-instance p1, Landroidx/lifecycle/o;

    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object p2

    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/u;->F()I

    move-result v0

    const-string v3, "RecordSource"

    invoke-virtual {p2, v3, v0}, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/lifecycle/o;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/x0/a;->v:Landroidx/lifecycle/o;

    .line 27
    new-instance p1, Landroidx/lifecycle/o;

    invoke-direct {p1, v2}, Landroidx/lifecycle/o;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/x0/a;->y:Landroidx/lifecycle/o;

    .line 28
    :goto_e1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/x0/a;->z:[Landroidx/lifecycle/o;

    array-length p2, p1

    if-ge v1, p2, :cond_f2

    .line 29
    new-instance p2, Landroidx/lifecycle/o;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p2, v0}, Landroidx/lifecycle/o;-><init>(Ljava/lang/Object;)V

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e1

    .line 30
    :cond_f2
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/x0/a;->P()V

    return-void
.end method

.method private P()V
    .registers 9

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_8f

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->i:Landroidx/lifecycle/o;

    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/e;->j()Lcn/manstep/phonemirrorBox/f0/e;

    move-result-object v2

    invoke-virtual {v2}, Lcn/manstep/phonemirrorBox/f0/a;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->e:Landroidx/lifecycle/o;

    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/e;->j()Lcn/manstep/phonemirrorBox/f0/e;

    move-result-object v2

    invoke-virtual {v2}, Lcn/manstep/phonemirrorBox/f0/a;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->j:Landroidx/lifecycle/o;

    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/b;->j()Lcn/manstep/phonemirrorBox/f0/b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/manstep/phonemirrorBox/f0/a;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->f:Landroidx/lifecycle/o;

    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/b;->j()Lcn/manstep/phonemirrorBox/f0/b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/manstep/phonemirrorBox/f0/a;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->k:Landroidx/lifecycle/o;

    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/g;->j()Lcn/manstep/phonemirrorBox/f0/g;

    move-result-object v2

    invoke-virtual {v2}, Lcn/manstep/phonemirrorBox/f0/a;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->g:Landroidx/lifecycle/o;

    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/g;->j()Lcn/manstep/phonemirrorBox/f0/g;

    move-result-object v2

    invoke-virtual {v2}, Lcn/manstep/phonemirrorBox/f0/a;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->l:Landroidx/lifecycle/o;

    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/f;->j()Lcn/manstep/phonemirrorBox/f0/f;

    move-result-object v2

    invoke-virtual {v2}, Lcn/manstep/phonemirrorBox/f0/a;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->h:Landroidx/lifecycle/o;

    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/f;->j()Lcn/manstep/phonemirrorBox/f0/f;

    move-result-object v2

    invoke-virtual {v2}, Lcn/manstep/phonemirrorBox/f0/a;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    goto :goto_d3

    .line 10
    :cond_8f
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->e:Landroidx/lifecycle/o;

    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/e;->j()Lcn/manstep/phonemirrorBox/f0/e;

    move-result-object v2

    invoke-virtual {v2}, Lcn/manstep/phonemirrorBox/f0/a;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->f:Landroidx/lifecycle/o;

    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/b;->j()Lcn/manstep/phonemirrorBox/f0/b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/manstep/phonemirrorBox/f0/a;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    .line 12
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->g:Landroidx/lifecycle/o;

    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/g;->j()Lcn/manstep/phonemirrorBox/f0/g;

    move-result-object v2

    invoke-virtual {v2}, Lcn/manstep/phonemirrorBox/f0/a;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    .line 13
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->h:Landroidx/lifecycle/o;

    invoke-static {}, Lcn/manstep/phonemirrorBox/f0/f;->j()Lcn/manstep/phonemirrorBox/f0/f;

    move-result-object v2

    invoke-virtual {v2}, Lcn/manstep/phonemirrorBox/f0/a;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    .line 14
    :goto_d3
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    const-string v2, "NVAudioType"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcn/manstep/phonemirrorBox/x0/a;->v(I)[I

    move-result-object v0

    .line 15
    aget v2, v0, v3

    const/4 v4, 0x1

    if-nez v2, :cond_eb

    aget v2, v0, v4

    if-eqz v2, :cond_101

    .line 16
    :cond_eb
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/x0/a;->e:Landroidx/lifecycle/o;

    aget v5, v0, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    .line 17
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/x0/a;->i:Landroidx/lifecycle/o;

    aget v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    .line 18
    :cond_101
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    const-string v2, "CallAudioType"

    invoke-virtual {v0, v2, v3}, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcn/manstep/phonemirrorBox/x0/a;->v(I)[I

    move-result-object v0

    .line 19
    aget v2, v0, v3

    if-nez v2, :cond_117

    aget v2, v0, v4

    if-eqz v2, :cond_12d

    .line 20
    :cond_117
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/x0/a;->f:Landroidx/lifecycle/o;

    aget v5, v0, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    .line 21
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/x0/a;->j:Landroidx/lifecycle/o;

    aget v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    .line 22
    :cond_12d
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    const-string v2, "VAAudioType"

    invoke-virtual {v0, v2, v3}, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcn/manstep/phonemirrorBox/x0/a;->v(I)[I

    move-result-object v0

    .line 23
    aget v2, v0, v3

    if-nez v2, :cond_143

    aget v2, v0, v4

    if-eqz v2, :cond_159

    .line 24
    :cond_143
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/x0/a;->g:Landroidx/lifecycle/o;

    aget v5, v0, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    .line 25
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/x0/a;->k:Landroidx/lifecycle/o;

    aget v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    .line 26
    :cond_159
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    const-string v2, "RingAudioType"

    invoke-virtual {v0, v2, v3}, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcn/manstep/phonemirrorBox/x0/a;->v(I)[I

    move-result-object v0

    .line 27
    aget v2, v0, v3

    if-nez v2, :cond_16f

    aget v2, v0, v4

    if-eqz v2, :cond_185

    .line 28
    :cond_16f
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/x0/a;->h:Landroidx/lifecycle/o;

    aget v5, v0, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    .line 29
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/x0/a;->l:Landroidx/lifecycle/o;

    aget v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    .line 30
    :cond_185
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->r:Landroidx/lifecycle/o;

    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v2

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v5, v1, :cond_191

    const/4 v1, 0x1

    goto :goto_192

    :cond_191
    const/4 v1, 0x0

    :goto_192
    const-string v5, "LowerAudioAPI"

    invoke-virtual {v2, v5, v1}, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    .line 31
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object v1

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/u;->D()I

    move-result v1

    const-string v2, "RecordChannel"

    invoke-virtual {v0, v2, v1}, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I

    move-result v0

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init: channelIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AudioDebug"

    invoke-static {v2, v1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/x0/a;->y:Landroidx/lifecycle/o;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    .line 34
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/x0/a;->y:Landroidx/lifecycle/o;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1f3

    .line 35
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->y:Landroidx/lifecycle/o;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    .line 36
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->w:Landroidx/lifecycle/o;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    goto :goto_234

    :cond_1f3
    const/4 v1, 0x0

    :goto_1f4
    const/16 v5, 0x8

    if-ge v1, v5, :cond_22a

    shl-int v5, v4, v1

    and-int/2addr v5, v0

    if-eqz v5, :cond_1ff

    const/4 v5, 0x1

    goto :goto_200

    :cond_1ff
    const/4 v5, 0x0

    .line 37
    :goto_200
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "init: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/x0/a;->z:[Landroidx/lifecycle/o;

    aget-object v6, v6, v1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f4

    .line 39
    :cond_22a
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->w:Landroidx/lifecycle/o;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    :goto_234
    return-void
.end method

.method private R()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->z:[Landroidx/lifecycle/o;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->z:[Landroidx/lifecycle/o;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 3
    :goto_15
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/x0/a;->z:[Landroidx/lifecycle/o;

    array-length v2, v1

    if-ge v0, v2, :cond_24

    .line 4
    aget-object v1, v1, v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 5
    :cond_24
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->y:Landroidx/lifecycle/o;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    .line 6
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RecordChannel"

    invoke-virtual {v0, v2, v1}, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private S(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    if-eqz p2, :cond_f

    .line 2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_f
    shl-int/lit8 p2, v0, 0x10

    const/high16 v1, -0x10000

    and-int/2addr p2, v1

    const v1, 0xffff

    and-int/2addr v1, p1

    or-int/2addr p2, v1

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAudioType: usage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",contentType="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",value="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AudioDebug"

    invoke-static {v0, p1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p2
.end method

.method static synthetic j(Lcn/manstep/phonemirrorBox/x0/a;)Landroidx/lifecycle/o;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/x0/a;->i:Landroidx/lifecycle/o;

    return-object p0
.end method

.method static synthetic k(Lcn/manstep/phonemirrorBox/x0/a;)Landroidx/lifecycle/o;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/x0/a;->e:Landroidx/lifecycle/o;

    return-object p0
.end method

.method static synthetic l(Lcn/manstep/phonemirrorBox/x0/a;)Landroidx/lifecycle/o;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/x0/a;->v:Landroidx/lifecycle/o;

    return-object p0
.end method

.method static synthetic m(Lcn/manstep/phonemirrorBox/x0/a;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/x0/a;->P()V

    return-void
.end method

.method static synthetic n(Lcn/manstep/phonemirrorBox/x0/a;Ljava/lang/Integer;Ljava/lang/Integer;)I
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/manstep/phonemirrorBox/x0/a;->S(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method static synthetic o(Lcn/manstep/phonemirrorBox/x0/a;)Lcn/manstep/phonemirrorBox/x0/a$k;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/x0/a;->x:Lcn/manstep/phonemirrorBox/x0/a$k;

    return-object p0
.end method

.method static synthetic p(Lcn/manstep/phonemirrorBox/x0/a;)Landroidx/lifecycle/o;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/x0/a;->j:Landroidx/lifecycle/o;

    return-object p0
.end method

.method static synthetic q(Lcn/manstep/phonemirrorBox/x0/a;)Landroidx/lifecycle/o;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/x0/a;->f:Landroidx/lifecycle/o;

    return-object p0
.end method

.method static synthetic r(Lcn/manstep/phonemirrorBox/x0/a;)Landroidx/lifecycle/o;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/x0/a;->k:Landroidx/lifecycle/o;

    return-object p0
.end method

.method static synthetic s(Lcn/manstep/phonemirrorBox/x0/a;)Landroidx/lifecycle/o;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/x0/a;->g:Landroidx/lifecycle/o;

    return-object p0
.end method

.method static synthetic t(Lcn/manstep/phonemirrorBox/x0/a;)Landroidx/lifecycle/o;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/x0/a;->l:Landroidx/lifecycle/o;

    return-object p0
.end method

.method static synthetic u(Lcn/manstep/phonemirrorBox/x0/a;)Landroidx/lifecycle/o;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/x0/a;->h:Landroidx/lifecycle/o;

    return-object p0
.end method

.method private v(I)[I
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAudioType: type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioDebug"

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    shr-int/lit8 v0, p1, 0x10

    const v2, 0xffff

    and-int/2addr v0, v2

    and-int/2addr p1, v2

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAudioType: contentType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",usage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput v0, v1, p1

    return-object v1
.end method


# virtual methods
.method public A(I)Landroidx/lifecycle/LiveData;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SoundChannel["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/x0/a;->z:[Landroidx/lifecycle/o;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioDebug"

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->z:[Landroidx/lifecycle/o;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public B()Landroidx/lifecycle/o;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->i:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public C()Landroidx/lifecycle/o;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->e:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public D()Landroidx/lifecycle/o;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->q:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public E()Landroidx/lifecycle/o;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->p:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public F()Landroidx/lifecycle/o;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->w:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public G()Landroidx/lifecycle/o;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->v:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public H()Landroidx/lifecycle/o;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->o:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public I()Landroidx/lifecycle/o;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->l:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public J()Landroidx/lifecycle/o;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->h:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public K()Landroidx/lifecycle/o;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->t:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public L()Landroidx/lifecycle/o;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->y:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public M()Landroidx/lifecycle/o;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->m:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public N()Landroidx/lifecycle/o;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->k:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public O()Landroidx/lifecycle/o;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->g:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public Q()V
    .registers 5

    const-string v0, "AudioDebug"

    const-string v1, "ready to reset"

    .line 1
    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/b0;->a()V

    const/16 v0, 0x3e80

    .line 3
    invoke-virtual {p0, v0}, Lcn/manstep/phonemirrorBox/x0/a;->h0(I)V

    .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->n:Landroidx/lifecycle/o;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->m:Landroidx/lifecycle/o;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->u:Landroidx/lifecycle/o;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    .line 7
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcn/manstep/phonemirrorBox/x0/a$a;

    invoke-direct {v1, p0}, Lcn/manstep/phonemirrorBox/x0/a$a;-><init>(Lcn/manstep/phonemirrorBox/x0/a;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public T()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->j:Landroidx/lifecycle/o;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_16

    :cond_a
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->j:Landroidx/lifecycle/o;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2
    :goto_16
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/x0/a;->s:Landroidx/fragment/app/n;

    const/16 v2, 0xa

    new-instance v3, Lcn/manstep/phonemirrorBox/x0/a$c;

    invoke-direct {v3, p0}, Lcn/manstep/phonemirrorBox/x0/a$c;-><init>(Lcn/manstep/phonemirrorBox/x0/a;)V

    const-string v4, "\u7535\u8bdd\u97f3\u9891"

    invoke-static {v1, v4, v2, v0, v3}, Lcn/manstep/phonemirrorBox/k0/c;->B2(Landroidx/fragment/app/n;Ljava/lang/String;IILcn/manstep/phonemirrorBox/k0/c$b;)V

    return-void
.end method

.method public U()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->r:Landroidx/lifecycle/o;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->r:Landroidx/lifecycle/o;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_1a

    :cond_18
    const/4 v0, 0x0

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 v0, 0x1

    .line 2
    :goto_1b
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/x0/a;->f:Landroidx/lifecycle/o;

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_24

    goto :goto_30

    :cond_24
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/x0/a;->f:Landroidx/lifecycle/o;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3
    :goto_30
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/x0/a;->s:Landroidx/fragment/app/n;

    const/16 v0, 0x28

    new-instance v3, Lcn/manstep/phonemirrorBox/x0/a$f;

    invoke-direct {v3, p0}, Lcn/manstep/phonemirrorBox/x0/a$f;-><init>(Lcn/manstep/phonemirrorBox/x0/a;)V

    const-string v4, "\u7535\u8bdd\u97f3\u9891"

    invoke-static {v2, v4, v0, v1, v3}, Lcn/manstep/phonemirrorBox/k0/c;->B2(Landroidx/fragment/app/n;Ljava/lang/String;IILcn/manstep/phonemirrorBox/k0/c$b;)V

    return-void
.end method

.method public V(Lcn/manstep/phonemirrorBox/x0/a$k;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/x0/a;->x:Lcn/manstep/phonemirrorBox/x0/a$k;

    return-void
.end method

.method public W(Landroid/view/View;)V
    .registers 4

    .line 1
    check-cast p1, Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->r:Landroidx/lifecycle/o;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "LowerAudioAPI"

    invoke-virtual {v0, v1, p1}, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object p1

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->e:Landroidx/lifecycle/o;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/x0/a;->i:Landroidx/lifecycle/o;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-direct {p0, v0, v1}, Lcn/manstep/phonemirrorBox/x0/a;->S(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "NVAudioType"

    invoke-virtual {p1, v1, v0}, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object p1

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->g:Landroidx/lifecycle/o;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/x0/a;->k:Landroidx/lifecycle/o;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-direct {p0, v0, v1}, Lcn/manstep/phonemirrorBox/x0/a;->S(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "VAAudioType"

    invoke-virtual {p1, v1, v0}, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object p1

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->f:Landroidx/lifecycle/o;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/x0/a;->j:Landroidx/lifecycle/o;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-direct {p0, v0, v1}, Lcn/manstep/phonemirrorBox/x0/a;->S(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "CallAudioType"

    invoke-virtual {p1, v1, v0}, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object p1

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->h:Landroidx/lifecycle/o;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/x0/a;->l:Landroidx/lifecycle/o;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-direct {p0, v0, v1}, Lcn/manstep/phonemirrorBox/x0/a;->S(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "RingAudioType"

    invoke-virtual {p1, v1, v0}, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public X(ILandroid/view/View;)V
    .registers 8

    .line 1
    instance-of v0, p2, Landroid/widget/CompoundButton;

    if-eqz v0, :cond_71

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->y:Landroidx/lifecycle/o;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3
    check-cast p2, Landroid/widget/CompoundButton;

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    .line 4
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/x0/a;->z:[Landroidx/lifecycle/o;

    aget-object v1, v1, p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    const/4 v1, 0x1

    if-eqz p2, :cond_28

    shl-int p1, v1, p1

    or-int/2addr p1, v0

    goto :goto_2d

    :cond_28
    shl-int p1, v1, p1

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, v0

    .line 5
    :goto_2d
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/x0/a;->y:Landroidx/lifecycle/o;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    .line 6
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "RecordChannel"

    invoke-virtual {p2, v2, v0}, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setMultiSoundChannel: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "%d, 0x%x"

    invoke-static {v0, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AudioDebug"

    invoke-static {p2, p1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_71
    return-void
.end method

.method public Y()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->i:Landroidx/lifecycle/o;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_16

    :cond_a
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->i:Landroidx/lifecycle/o;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2
    :goto_16
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/x0/a;->s:Landroidx/fragment/app/n;

    const/16 v2, 0xa

    new-instance v3, Lcn/manstep/phonemirrorBox/x0/a$b;

    invoke-direct {v3, p0}, Lcn/manstep/phonemirrorBox/x0/a$b;-><init>(Lcn/manstep/phonemirrorBox/x0/a;)V

    const-string v4, "\u5bfc\u822a\u97f3\u9891"

    invoke-static {v1, v4, v2, v0, v3}, Lcn/manstep/phonemirrorBox/k0/c;->B2(Landroidx/fragment/app/n;Ljava/lang/String;IILcn/manstep/phonemirrorBox/k0/c$b;)V

    return-void
.end method

.method public Z()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->r:Landroidx/lifecycle/o;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->r:Landroidx/lifecycle/o;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_1a

    :cond_18
    const/4 v0, 0x0

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 v0, 0x1

    .line 2
    :goto_1b
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/x0/a;->e:Landroidx/lifecycle/o;

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_24

    goto :goto_30

    :cond_24
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/x0/a;->e:Landroidx/lifecycle/o;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3
    :goto_30
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/x0/a;->s:Landroidx/fragment/app/n;

    const/16 v0, 0x28

    new-instance v3, Lcn/manstep/phonemirrorBox/x0/a$e;

    invoke-direct {v3, p0}, Lcn/manstep/phonemirrorBox/x0/a$e;-><init>(Lcn/manstep/phonemirrorBox/x0/a;)V

    const-string v4, "\u5bfc\u822a\u97f3\u9891"

    invoke-static {v2, v4, v0, v1, v3}, Lcn/manstep/phonemirrorBox/k0/c;->B2(Landroidx/fragment/app/n;Ljava/lang/String;IILcn/manstep/phonemirrorBox/k0/c$b;)V

    return-void
.end method

.method public a0(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->q:Landroidx/lifecycle/o;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    return-void
.end method

.method public b0(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->p:Landroidx/lifecycle/o;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    return-void
.end method

.method public c0(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->w:Landroidx/lifecycle/o;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    const/4 v0, 0x3

    if-ne p1, v0, :cond_10

    .line 2
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/x0/a;->R()V

    goto :goto_1e

    .line 3
    :cond_10
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "RecordChannel"

    invoke-virtual {p1, v1, v0}, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1e
    return-void
.end method

.method public d0()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->v:Landroidx/lifecycle/o;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/x0/a;->s:Landroidx/fragment/app/n;

    new-instance v2, Lcn/manstep/phonemirrorBox/x0/a$j;

    invoke-direct {v2, p0}, Lcn/manstep/phonemirrorBox/x0/a$j;-><init>(Lcn/manstep/phonemirrorBox/x0/a;)V

    const-string v3, "\u5f55\u97f3\u6e90"

    const/16 v4, 0xa

    invoke-static {v1, v3, v4, v0, v2}, Lcn/manstep/phonemirrorBox/k0/c;->B2(Landroidx/fragment/app/n;Ljava/lang/String;IILcn/manstep/phonemirrorBox/k0/c$b;)V

    return-void
.end method

.method public e0(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->o:Landroidx/lifecycle/o;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    return-void
.end method

.method public f0()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->l:Landroidx/lifecycle/o;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_16

    :cond_a
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->l:Landroidx/lifecycle/o;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2
    :goto_16
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/x0/a;->s:Landroidx/fragment/app/n;

    const/4 v2, 0x5

    new-instance v3, Lcn/manstep/phonemirrorBox/x0/a$h;

    invoke-direct {v3, p0}, Lcn/manstep/phonemirrorBox/x0/a$h;-><init>(Lcn/manstep/phonemirrorBox/x0/a;)V

    const-string v4, "\u94c3\u58f0\u97f3\u9891"

    invoke-static {v1, v4, v2, v0, v3}, Lcn/manstep/phonemirrorBox/k0/c;->B2(Landroidx/fragment/app/n;Ljava/lang/String;IILcn/manstep/phonemirrorBox/k0/c$b;)V

    return-void
.end method

.method public g0()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->r:Landroidx/lifecycle/o;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->r:Landroidx/lifecycle/o;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_1a

    :cond_18
    const/4 v0, 0x0

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 v0, 0x1

    .line 2
    :goto_1b
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/x0/a;->h:Landroidx/lifecycle/o;

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_24

    goto :goto_30

    :cond_24
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/x0/a;->h:Landroidx/lifecycle/o;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3
    :goto_30
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/x0/a;->s:Landroidx/fragment/app/n;

    const/16 v0, 0x28

    new-instance v3, Lcn/manstep/phonemirrorBox/x0/a$i;

    invoke-direct {v3, p0}, Lcn/manstep/phonemirrorBox/x0/a$i;-><init>(Lcn/manstep/phonemirrorBox/x0/a;)V

    const-string v4, "\u94c3\u58f0\u97f3\u9891"

    invoke-static {v2, v4, v0, v1, v3}, Lcn/manstep/phonemirrorBox/k0/c;->B2(Landroidx/fragment/app/n;Ljava/lang/String;IILcn/manstep/phonemirrorBox/k0/c$b;)V

    return-void
.end method

.method public h0(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->t:Landroidx/lifecycle/o;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    const v0, 0xbb80

    if-ne p1, v0, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    .line 2
    :goto_11
    sput-boolean p1, Lcn/manstep/phonemirrorBox/p;->t:Z

    return-void
.end method

.method public i0()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->k:Landroidx/lifecycle/o;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_16

    :cond_a
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->k:Landroidx/lifecycle/o;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2
    :goto_16
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/x0/a;->s:Landroidx/fragment/app/n;

    const/16 v2, 0xa

    new-instance v3, Lcn/manstep/phonemirrorBox/x0/a$d;

    invoke-direct {v3, p0}, Lcn/manstep/phonemirrorBox/x0/a$d;-><init>(Lcn/manstep/phonemirrorBox/x0/a;)V

    const-string v4, "\u8bed\u97f3\u97f3\u9891"

    invoke-static {v1, v4, v2, v0, v3}, Lcn/manstep/phonemirrorBox/k0/c;->B2(Landroidx/fragment/app/n;Ljava/lang/String;IILcn/manstep/phonemirrorBox/k0/c$b;)V

    return-void
.end method

.method public j0()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->r:Landroidx/lifecycle/o;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->r:Landroidx/lifecycle/o;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_1a

    :cond_18
    const/4 v0, 0x0

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 v0, 0x1

    .line 2
    :goto_1b
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/x0/a;->g:Landroidx/lifecycle/o;

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_24

    goto :goto_30

    :cond_24
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/x0/a;->g:Landroidx/lifecycle/o;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3
    :goto_30
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/x0/a;->s:Landroidx/fragment/app/n;

    const/16 v0, 0x28

    new-instance v3, Lcn/manstep/phonemirrorBox/x0/a$g;

    invoke-direct {v3, p0}, Lcn/manstep/phonemirrorBox/x0/a$g;-><init>(Lcn/manstep/phonemirrorBox/x0/a;)V

    const-string v4, "\u8bed\u97f3\u97f3\u9891"

    invoke-static {v2, v4, v0, v1, v3}, Lcn/manstep/phonemirrorBox/k0/c;->B2(Landroidx/fragment/app/n;Ljava/lang/String;IILcn/manstep/phonemirrorBox/k0/c$b;)V

    return-void
.end method

.method public w()Landroidx/lifecycle/o;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->j:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public x()Landroidx/lifecycle/o;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->f:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public y()Landroidx/lifecycle/o;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->n:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public z()Landroidx/lifecycle/o;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/a;->r:Landroidx/lifecycle/o;

    return-object v0
.end method
