.class Lc/d/b$a;
.super Lc/d/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/d/b;->d()Lc/d/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/d/f<",
        "TE;TE;>;"
    }
.end annotation


# instance fields
.field final synthetic d:Lc/d/b;


# direct methods
.method constructor <init>(Lc/d/b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lc/d/b$a;->d:Lc/d/b;

    invoke-direct {p0}, Lc/d/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 2

    .line 1
    iget-object v0, p0, Lc/d/b$a;->d:Lc/d/b;

    invoke-virtual {v0}, Lc/d/b;->clear()V

    return-void
.end method

.method protected b(II)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object p2, p0, Lc/d/b$a;->d:Lc/d/b;

    iget-object p2, p2, Lc/d/b;->c:[Ljava/lang/Object;

    aget-object p1, p2, p1

    return-object p1
.end method

.method protected c()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TE;TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not a map"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected d()I
    .registers 2

    .line 1
    iget-object v0, p0, Lc/d/b$a;->d:Lc/d/b;

    iget v0, v0, Lc/d/b;->d:I

    return v0
.end method

.method protected e(Ljava/lang/Object;)I
    .registers 3

    .line 1
    iget-object v0, p0, Lc/d/b$a;->d:Lc/d/b;

    invoke-virtual {v0, p1}, Lc/d/b;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected f(Ljava/lang/Object;)I
    .registers 3

    .line 1
    iget-object v0, p0, Lc/d/b$a;->d:Lc/d/b;

    invoke-virtual {v0, p1}, Lc/d/b;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected g(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lc/d/b$a;->d:Lc/d/b;

    invoke-virtual {p2, p1}, Lc/d/b;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected h(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lc/d/b$a;->d:Lc/d/b;

    invoke-virtual {v0, p1}, Lc/d/b;->g(I)Ljava/lang/Object;

    return-void
.end method

.method protected i(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "not a map"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
