.class Lc/p/q$b;
.super Lc/p/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/p/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Lc/p/q;


# direct methods
.method constructor <init>(Lc/p/q;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lc/p/n;-><init>()V

    .line 2
    iput-object p1, p0, Lc/p/q$b;->a:Lc/p/q;

    return-void
.end method


# virtual methods
.method public c(Lc/p/m;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lc/p/q$b;->a:Lc/p/q;

    iget-boolean v0, p1, Lc/p/q;->N:Z

    if-nez v0, :cond_e

    .line 2
    invoke-virtual {p1}, Lc/p/m;->Z()V

    .line 3
    iget-object p1, p0, Lc/p/q$b;->a:Lc/p/q;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lc/p/q;->N:Z

    :cond_e
    return-void
.end method

.method public e(Lc/p/m;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lc/p/q$b;->a:Lc/p/q;

    iget v1, v0, Lc/p/q;->M:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lc/p/q;->M:I

    if-nez v1, :cond_10

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lc/p/q;->N:Z

    .line 3
    invoke-virtual {v0}, Lc/p/m;->o()V

    .line 4
    :cond_10
    invoke-virtual {p1, p0}, Lc/p/m;->O(Lc/p/m$f;)Lc/p/m;

    return-void
.end method
