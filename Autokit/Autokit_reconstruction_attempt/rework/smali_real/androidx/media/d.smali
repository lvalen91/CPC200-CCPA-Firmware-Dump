.class Landroidx/media/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media/b;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/media/d;->a:Ljava/lang/String;

    .line 3
    iput p2, p0, Landroidx/media/d;->b:I

    .line 4
    iput p3, p0, Landroidx/media/d;->c:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Landroidx/media/d;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 2
    :cond_a
    check-cast p1, Landroidx/media/d;

    .line 3
    iget-object v1, p0, Landroidx/media/d;->a:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media/d;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_23

    iget v1, p0, Landroidx/media/d;->b:I

    iget v3, p1, Landroidx/media/d;->b:I

    if-ne v1, v3, :cond_23

    iget v1, p0, Landroidx/media/d;->c:I

    iget p1, p1, Landroidx/media/d;->c:I

    if-ne v1, p1, :cond_23

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Landroidx/media/d;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroidx/media/d;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroidx/media/d;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lc/g/j/c;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
