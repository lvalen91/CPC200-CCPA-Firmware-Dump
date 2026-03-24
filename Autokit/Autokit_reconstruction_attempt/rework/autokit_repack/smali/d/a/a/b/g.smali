.class public Ld/a/a/b/g;
.super Ld/a/a/b/c;
.source "SourceFile"


# instance fields
.field private e:Landroid/view/Surface;

.field private f:Z


# direct methods
.method public constructor <init>(Ld/a/a/b/b;Landroid/view/Surface;Z)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Ld/a/a/b/c;-><init>(Ld/a/a/b/b;)V

    .line 2
    invoke-virtual {p0, p2}, Ld/a/a/b/c;->a(Ljava/lang/Object;)V

    .line 3
    iput-object p2, p0, Ld/a/a/b/g;->e:Landroid/view/Surface;

    .line 4
    iput-boolean p3, p0, Ld/a/a/b/g;->f:Z

    return-void
.end method


# virtual methods
.method public g()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Ld/a/a/b/c;->e()V

    .line 2
    iget-object v0, p0, Ld/a/a/b/g;->e:Landroid/view/Surface;

    if-eqz v0, :cond_11

    .line 3
    iget-boolean v1, p0, Ld/a/a/b/g;->f:Z

    if-eqz v1, :cond_e

    .line 4
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_e
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Ld/a/a/b/g;->e:Landroid/view/Surface;

    :cond_11
    return-void
.end method
