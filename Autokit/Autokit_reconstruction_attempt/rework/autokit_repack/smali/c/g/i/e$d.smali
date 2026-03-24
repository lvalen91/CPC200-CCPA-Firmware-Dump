.class abstract Lc/g/i/e$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/g/i/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/g/i/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "d"
.end annotation


# instance fields
.field private final a:Lc/g/i/e$c;


# direct methods
.method constructor <init>(Lc/g/i/e$c;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/g/i/e$d;->a:Lc/g/i/e$c;

    return-void
.end method

.method private c(Ljava/lang/CharSequence;II)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lc/g/i/e$d;->a:Lc/g/i/e$c;

    invoke-interface {v0, p1, p2, p3}, Lc/g/i/e$c;->a(Ljava/lang/CharSequence;II)I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_12

    if-eq p1, p2, :cond_10

    .line 2
    invoke-virtual {p0}, Lc/g/i/e$d;->b()Z

    move-result p1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1

    :cond_12
    return p2
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;II)Z
    .registers 5

    if-eqz p1, :cond_1b

    if-ltz p2, :cond_1b

    if-ltz p3, :cond_1b

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, p3

    if-lt v0, p2, :cond_1b

    .line 2
    iget-object v0, p0, Lc/g/i/e$d;->a:Lc/g/i/e$c;

    if-nez v0, :cond_16

    .line 3
    invoke-virtual {p0}, Lc/g/i/e$d;->b()Z

    move-result p1

    return p1

    .line 4
    :cond_16
    invoke-direct {p0, p1, p2, p3}, Lc/g/i/e$d;->c(Ljava/lang/CharSequence;II)Z

    move-result p1

    return p1

    .line 5
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method protected abstract b()Z
.end method
