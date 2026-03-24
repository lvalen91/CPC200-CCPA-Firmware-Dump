.class abstract Lc/q/a/a/h$f;
.super Lc/q/a/a/h$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/q/a/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "f"
.end annotation


# instance fields
.field protected a:[Lc/g/d/c$b;

.field b:Ljava/lang/String;

.field c:I

.field d:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lc/q/a/a/h$e;-><init>(Lc/q/a/a/h$a;)V

    .line 2
    iput-object v0, p0, Lc/q/a/a/h$f;->a:[Lc/g/d/c$b;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lc/q/a/a/h$f;->c:I

    return-void
.end method

.method public constructor <init>(Lc/q/a/a/h$f;)V
    .registers 3

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lc/q/a/a/h$e;-><init>(Lc/q/a/a/h$a;)V

    .line 5
    iput-object v0, p0, Lc/q/a/a/h$f;->a:[Lc/g/d/c$b;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lc/q/a/a/h$f;->c:I

    .line 7
    iget-object v0, p1, Lc/q/a/a/h$f;->b:Ljava/lang/String;

    iput-object v0, p0, Lc/q/a/a/h$f;->b:Ljava/lang/String;

    .line 8
    iget v0, p1, Lc/q/a/a/h$f;->d:I

    iput v0, p0, Lc/q/a/a/h$f;->d:I

    .line 9
    iget-object p1, p1, Lc/q/a/a/h$f;->a:[Lc/g/d/c$b;

    invoke-static {p1}, Lc/g/d/c;->f([Lc/g/d/c$b;)[Lc/g/d/c$b;

    move-result-object p1

    iput-object p1, p0, Lc/q/a/a/h$f;->a:[Lc/g/d/c$b;

    return-void
.end method


# virtual methods
.method public c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/graphics/Path;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 2
    iget-object v0, p0, Lc/q/a/a/h$f;->a:[Lc/g/d/c$b;

    if-eqz v0, :cond_a

    .line 3
    invoke-static {v0, p1}, Lc/g/d/c$b;->e([Lc/g/d/c$b;Landroid/graphics/Path;)V

    :cond_a
    return-void
.end method

.method public getPathData()[Lc/g/d/c$b;
    .registers 2

    .line 1
    iget-object v0, p0, Lc/q/a/a/h$f;->a:[Lc/g/d/c$b;

    return-object v0
.end method

.method public getPathName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lc/q/a/a/h$f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setPathData([Lc/g/d/c$b;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lc/q/a/a/h$f;->a:[Lc/g/d/c$b;

    invoke-static {v0, p1}, Lc/g/d/c;->b([Lc/g/d/c$b;[Lc/g/d/c$b;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 2
    invoke-static {p1}, Lc/g/d/c;->f([Lc/g/d/c$b;)[Lc/g/d/c$b;

    move-result-object p1

    iput-object p1, p0, Lc/q/a/a/h$f;->a:[Lc/g/d/c$b;

    goto :goto_14

    .line 3
    :cond_f
    iget-object v0, p0, Lc/q/a/a/h$f;->a:[Lc/g/d/c$b;

    invoke-static {v0, p1}, Lc/g/d/c;->j([Lc/g/d/c$b;[Lc/g/d/c$b;)V

    :goto_14
    return-void
.end method
