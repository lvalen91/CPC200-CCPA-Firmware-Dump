.class Lc/b/a/b/b$b;
.super Lc/b/a/b/b$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lc/b/a/b/b$e<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lc/b/a/b/b$c;Lc/b/a/b/b$c;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/b/b$c<",
            "TK;TV;>;",
            "Lc/b/a/b/b$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lc/b/a/b/b$e;-><init>(Lc/b/a/b/b$c;Lc/b/a/b/b$c;)V

    return-void
.end method


# virtual methods
.method b(Lc/b/a/b/b$c;)Lc/b/a/b/b$c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/b/b$c<",
            "TK;TV;>;)",
            "Lc/b/a/b/b$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lc/b/a/b/b$c;->d:Lc/b/a/b/b$c;

    return-object p1
.end method

.method c(Lc/b/a/b/b$c;)Lc/b/a/b/b$c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/b/b$c<",
            "TK;TV;>;)",
            "Lc/b/a/b/b$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lc/b/a/b/b$c;->e:Lc/b/a/b/b$c;

    return-object p1
.end method
