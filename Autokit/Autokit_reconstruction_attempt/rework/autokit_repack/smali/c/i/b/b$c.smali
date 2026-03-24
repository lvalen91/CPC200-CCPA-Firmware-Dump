.class Lc/i/b/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/i/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final b:Landroid/graphics/Rect;

.field private final c:Landroid/graphics/Rect;

.field private final d:Z

.field private final e:Lc/i/b/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/i/b/b$a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ZLc/i/b/b$a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lc/i/b/b$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lc/i/b/b$c;->b:Landroid/graphics/Rect;

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lc/i/b/b$c;->c:Landroid/graphics/Rect;

    .line 4
    iput-boolean p1, p0, Lc/i/b/b$c;->d:Z

    .line 5
    iput-object p2, p0, Lc/i/b/b$c;->e:Lc/i/b/b$a;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/i/b/b$c;->b:Landroid/graphics/Rect;

    .line 2
    iget-object v1, p0, Lc/i/b/b$c;->c:Landroid/graphics/Rect;

    .line 3
    iget-object v2, p0, Lc/i/b/b$c;->e:Lc/i/b/b$a;

    invoke-interface {v2, p1, v0}, Lc/i/b/b$a;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 4
    iget-object p1, p0, Lc/i/b/b$c;->e:Lc/i/b/b$a;

    invoke-interface {p1, p2, v1}, Lc/i/b/b$a;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 5
    iget p1, v0, Landroid/graphics/Rect;->top:I

    iget p2, v1, Landroid/graphics/Rect;->top:I

    const/4 v2, -0x1

    if-ge p1, p2, :cond_16

    return v2

    :cond_16
    const/4 v3, 0x1

    if-le p1, p2, :cond_1a

    return v3

    .line 6
    :cond_1a
    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget p2, v1, Landroid/graphics/Rect;->left:I

    if-ge p1, p2, :cond_26

    .line 7
    iget-boolean p1, p0, Lc/i/b/b$c;->d:Z

    if-eqz p1, :cond_25

    const/4 v2, 0x1

    :cond_25
    return v2

    :cond_26
    if-le p1, p2, :cond_2f

    .line 8
    iget-boolean p1, p0, Lc/i/b/b$c;->d:Z

    if-eqz p1, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v2, 0x1

    :goto_2e
    return v2

    .line 9
    :cond_2f
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    iget p2, v1, Landroid/graphics/Rect;->bottom:I

    if-ge p1, p2, :cond_36

    return v2

    :cond_36
    if-le p1, p2, :cond_39

    return v3

    .line 10
    :cond_39
    iget p1, v0, Landroid/graphics/Rect;->right:I

    iget p2, v1, Landroid/graphics/Rect;->right:I

    if-ge p1, p2, :cond_45

    .line 11
    iget-boolean p1, p0, Lc/i/b/b$c;->d:Z

    if-eqz p1, :cond_44

    const/4 v2, 0x1

    :cond_44
    return v2

    :cond_45
    if-le p1, p2, :cond_4e

    .line 12
    iget-boolean p1, p0, Lc/i/b/b$c;->d:Z

    if-eqz p1, :cond_4c

    goto :goto_4d

    :cond_4c
    const/4 v2, 0x1

    :goto_4d
    return v2

    :cond_4e
    const/4 p1, 0x0

    return p1
.end method
