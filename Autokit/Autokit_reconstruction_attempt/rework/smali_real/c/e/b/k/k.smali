.class public Lc/e/b/k/k;
.super Lc/e/b/k/i;
.source "SourceFile"


# instance fields
.field private r0:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lc/e/b/k/i;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lc/e/b/k/k;->r0:Z

    .line 3
    new-instance v0, Lc/e/b/k/m/b$a;

    return-void
.end method


# virtual methods
.method public b(Lc/e/b/k/f;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lc/e/b/k/k;->c1()V

    return-void
.end method

.method public c1()V
    .registers 4

    const/4 v0, 0x0

    .line 1
    :goto_1
    iget v1, p0, Lc/e/b/k/i;->q0:I

    if-ge v0, v1, :cond_12

    .line 2
    iget-object v1, p0, Lc/e/b/k/i;->p0:[Lc/e/b/k/e;

    aget-object v1, v1, v0

    if-eqz v1, :cond_f

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v2}, Lc/e/b/k/e;->E0(Z)V

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    return-void
.end method

.method public d1()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lc/e/b/k/k;->r0:Z

    return v0
.end method
