.class Lc/g/d/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/g/d/j$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/g/d/j;->h([Lc/g/h/f$b;I)Lc/g/h/f$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/g/d/j$c<",
        "Lc/g/h/f$b;",
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
    check-cast p1, Lc/g/h/f$b;

    invoke-virtual {p0, p1}, Lc/g/d/j$a;->c(Lc/g/h/f$b;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    check-cast p1, Lc/g/h/f$b;

    invoke-virtual {p0, p1}, Lc/g/d/j$a;->d(Lc/g/h/f$b;)Z

    move-result p1

    return p1
.end method

.method public c(Lc/g/h/f$b;)I
    .registers 2

    .line 1
    invoke-virtual {p1}, Lc/g/h/f$b;->e()I

    move-result p1

    return p1
.end method

.method public d(Lc/g/h/f$b;)Z
    .registers 2

    .line 1
    invoke-virtual {p1}, Lc/g/h/f$b;->f()Z

    move-result p1

    return p1
.end method
