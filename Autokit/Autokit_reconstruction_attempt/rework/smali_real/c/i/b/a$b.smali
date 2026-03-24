.class final Lc/i/b/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/i/b/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/i/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/i/b/b$b<",
        "Lc/d/h<",
        "Landroidx/core/view/e0/c;",
        ">;",
        "Landroidx/core/view/e0/c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Lc/d/h;

    invoke-virtual {p0, p1}, Lc/i/b/a$b;->d(Lc/d/h;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lc/d/h;

    invoke-virtual {p0, p1, p2}, Lc/i/b/a$b;->c(Lc/d/h;I)Landroidx/core/view/e0/c;

    move-result-object p1

    return-object p1
.end method

.method public c(Lc/d/h;I)Landroidx/core/view/e0/c;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/h<",
            "Landroidx/core/view/e0/c;",
            ">;I)",
            "Landroidx/core/view/e0/c;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Lc/d/h;->k(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/core/view/e0/c;

    return-object p1
.end method

.method public d(Lc/d/h;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/h<",
            "Landroidx/core/view/e0/c;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lc/d/h;->j()I

    move-result p1

    return p1
.end method
