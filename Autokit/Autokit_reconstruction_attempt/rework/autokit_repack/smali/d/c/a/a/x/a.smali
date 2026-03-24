.class public final Ld/c/a/a/x/a;
.super Ld/c/a/a/x/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/c/a/a/x/a$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Typeface;

.field private final b:Ld/c/a/a/x/a$a;

.field private c:Z


# direct methods
.method public constructor <init>(Ld/c/a/a/x/a$a;Landroid/graphics/Typeface;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ld/c/a/a/x/f;-><init>()V

    .line 2
    iput-object p2, p0, Ld/c/a/a/x/a;->a:Landroid/graphics/Typeface;

    .line 3
    iput-object p1, p0, Ld/c/a/a/x/a;->b:Ld/c/a/a/x/a$a;

    return-void
.end method

.method private d(Landroid/graphics/Typeface;)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Ld/c/a/a/x/a;->c:Z

    if-nez v0, :cond_9

    .line 2
    iget-object v0, p0, Ld/c/a/a/x/a;->b:Ld/c/a/a/x/a$a;

    invoke-interface {v0, p1}, Ld/c/a/a/x/a$a;->a(Landroid/graphics/Typeface;)V

    :cond_9
    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 2

    .line 1
    iget-object p1, p0, Ld/c/a/a/x/a;->a:Landroid/graphics/Typeface;

    invoke-direct {p0, p1}, Ld/c/a/a/x/a;->d(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public b(Landroid/graphics/Typeface;Z)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Ld/c/a/a/x/a;->d(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public c()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Ld/c/a/a/x/a;->c:Z

    return-void
.end method
