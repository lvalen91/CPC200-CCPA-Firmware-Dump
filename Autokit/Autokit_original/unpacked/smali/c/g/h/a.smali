.class Lc/g/h/a;
.super Ljava/lang/Object;
.source "SourceFile"

.field private final a:Lc/g/h/f$c;

.field private final b:Landroid/os/Handler;

.method constructor <init>(Lc/g/h/f$c;Landroid/os/Handler;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Lc/g/h/a;->a:Lc/g/h/f$c;
  .line 3
    iput-object p2, p0, Lc/g/h/a;->b:Landroid/os/Handler;
    return-void
.end method

.method private a(I)V
  .registers 5
  .line 1
    iget-object v0, p0, Lc/g/h/a;->a:Lc/g/h/f$c;
  .line 2
    iget-object v1, p0, Lc/g/h/a;->b:Landroid/os/Handler;
    new-instance v2, Lc/g/h/a$b;
    invoke-direct { v2, p0, v0, p1 }, Lc/g/h/a$b;-><init>(Lc/g/h/a;Lc/g/h/f$c;I)V
    invoke-virtual { v1, v2 }, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    return-void
.end method

.method private c(Landroid/graphics/Typeface;)V
  .registers 5
  .line 1
    iget-object v0, p0, Lc/g/h/a;->a:Lc/g/h/f$c;
  .line 2
    iget-object v1, p0, Lc/g/h/a;->b:Landroid/os/Handler;
    new-instance v2, Lc/g/h/a$a;
    invoke-direct { v2, p0, v0, p1 }, Lc/g/h/a$a;-><init>(Lc/g/h/a;Lc/g/h/f$c;Landroid/graphics/Typeface;)V
    invoke-virtual { v1, v2 }, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    return-void
.end method

.method b(Lc/g/h/e$e;)V
  .registers 3
  .line 1
    invoke-virtual { p1 }, Lc/g/h/e$e;->a()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget-object p1, p1, Lc/g/h/e$e;->a:Landroid/graphics/Typeface;
    invoke-direct { p0, p1 }, Lc/g/h/a;->c(Landroid/graphics/Typeface;)V
    goto :L1
  :L0
  .line 3
    iget p1, p1, Lc/g/h/e$e;->b:I
    invoke-direct { p0, p1 }, Lc/g/h/a;->a(I)V
  :L1
    return-void
.end method
