.class public Lcom/google/android/material/internal/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/h$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/text/TextPaint;

.field private final b:Ld/c/a/a/x/f;

.field private c:F

.field private d:Z

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/material/internal/h$b;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ld/c/a/a/x/d;


# direct methods
.method public constructor <init>(Lcom/google/android/material/internal/h$b;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/internal/h;->a:Landroid/text/TextPaint;

    .line 3
    new-instance v0, Lcom/google/android/material/internal/h$a;

    invoke-direct {v0, p0}, Lcom/google/android/material/internal/h$a;-><init>(Lcom/google/android/material/internal/h;)V

    iput-object v0, p0, Lcom/google/android/material/internal/h;->b:Ld/c/a/a/x/f;

    .line 4
    iput-boolean v1, p0, Lcom/google/android/material/internal/h;->d:Z

    .line 5
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/internal/h;->e:Ljava/lang/ref/WeakReference;

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/h;->g(Lcom/google/android/material/internal/h$b;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/internal/h;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/internal/h;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/google/android/material/internal/h;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/internal/h;->e:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private c(Ljava/lang/CharSequence;)F
    .registers 5

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/internal/h;->a:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p1

    return p1
.end method


# virtual methods
.method public d()Ld/c/a/a/x/d;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/h;->f:Ld/c/a/a/x/d;

    return-object v0
.end method

.method public e()Landroid/text/TextPaint;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/h;->a:Landroid/text/TextPaint;

    return-object v0
.end method

.method public f(Ljava/lang/String;)F
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/internal/h;->d:Z

    if-nez v0, :cond_7

    .line 2
    iget p1, p0, Lcom/google/android/material/internal/h;->c:F

    return p1

    .line 3
    :cond_7
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/h;->c(Ljava/lang/CharSequence;)F

    move-result p1

    iput p1, p0, Lcom/google/android/material/internal/h;->c:F

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/google/android/material/internal/h;->d:Z

    return p1
.end method

.method public g(Lcom/google/android/material/internal/h$b;)V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/internal/h;->e:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public h(Ld/c/a/a/x/d;Landroid/content/Context;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/h;->f:Ld/c/a/a/x/d;

    if-eq v0, p1, :cond_3f

    .line 2
    iput-object p1, p0, Lcom/google/android/material/internal/h;->f:Ld/c/a/a/x/d;

    if-eqz p1, :cond_2b

    .line 3
    iget-object v0, p0, Lcom/google/android/material/internal/h;->a:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/material/internal/h;->b:Ld/c/a/a/x/f;

    invoke-virtual {p1, p2, v0, v1}, Ld/c/a/a/x/d;->k(Landroid/content/Context;Landroid/text/TextPaint;Ld/c/a/a/x/f;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/material/internal/h;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/internal/h$b;

    if-eqz v0, :cond_21

    .line 5
    iget-object v1, p0, Lcom/google/android/material/internal/h;->a:Landroid/text/TextPaint;

    invoke-interface {v0}, Lcom/google/android/material/internal/h$b;->getState()[I

    move-result-object v0

    iput-object v0, v1, Landroid/text/TextPaint;->drawableState:[I

    .line 6
    :cond_21
    iget-object v0, p0, Lcom/google/android/material/internal/h;->a:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/material/internal/h;->b:Ld/c/a/a/x/f;

    invoke-virtual {p1, p2, v0, v1}, Ld/c/a/a/x/d;->j(Landroid/content/Context;Landroid/text/TextPaint;Ld/c/a/a/x/f;)V

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/google/android/material/internal/h;->d:Z

    .line 8
    :cond_2b
    iget-object p1, p0, Lcom/google/android/material/internal/h;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/internal/h$b;

    if-eqz p1, :cond_3f

    .line 9
    invoke-interface {p1}, Lcom/google/android/material/internal/h$b;->a()V

    .line 10
    invoke-interface {p1}, Lcom/google/android/material/internal/h$b;->getState()[I

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/material/internal/h$b;->onStateChange([I)Z

    :cond_3f
    return-void
.end method

.method public i(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/internal/h;->d:Z

    return-void
.end method

.method public j(Landroid/content/Context;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/h;->f:Ld/c/a/a/x/d;

    iget-object v1, p0, Lcom/google/android/material/internal/h;->a:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/google/android/material/internal/h;->b:Ld/c/a/a/x/f;

    invoke-virtual {v0, p1, v1, v2}, Ld/c/a/a/x/d;->j(Landroid/content/Context;Landroid/text/TextPaint;Ld/c/a/a/x/f;)V

    return-void
.end method
