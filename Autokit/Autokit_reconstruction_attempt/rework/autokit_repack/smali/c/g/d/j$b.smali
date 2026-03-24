.class Lc/g/d/j$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/g/d/j$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/g/d/j;->f(Landroidx/core/content/c/c$b;I)Landroidx/core/content/c/c$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/g/d/j$c<",
        "Landroidx/core/content/c/c$c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lc/g/d/j;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Landroidx/core/content/c/c$c;

    invoke-virtual {p0, p1}, Lc/g/d/j$b;->c(Landroidx/core/content/c/c$c;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    check-cast p1, Landroidx/core/content/c/c$c;

    invoke-virtual {p0, p1}, Lc/g/d/j$b;->d(Landroidx/core/content/c/c$c;)Z

    move-result p1

    return p1
.end method

.method public c(Landroidx/core/content/c/c$c;)I
    .registers 2

    .line 1
    invoke-virtual {p1}, Landroidx/core/content/c/c$c;->e()I

    move-result p1

    return p1
.end method

.method public d(Landroidx/core/content/c/c$c;)Z
    .registers 2

    .line 1
    invoke-virtual {p1}, Landroidx/core/content/c/c$c;->f()Z

    move-result p1

    return p1
.end method
