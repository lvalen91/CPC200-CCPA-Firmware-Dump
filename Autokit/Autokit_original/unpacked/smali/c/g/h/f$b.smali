.class public Lc/g/h/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lc/g/h/f;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 9
  name = "b"
.end annotation

.field private final a:Landroid/net/Uri;

.field private final b:I

.field private final c:I

.field private final d:Z

.field private final e:I

.method public constructor <init>(Landroid/net/Uri;IIZI)V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 6
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    invoke-static { p1 }, Lc/g/j/h;->e(Ljava/lang/Object;)Ljava/lang/Object;
    check-cast p1, Landroid/net/Uri;
    iput-object p1, p0, Lc/g/h/f$b;->a:Landroid/net/Uri;
  .line 3
    iput p2, p0, Lc/g/h/f$b;->b:I
  .line 4
    iput p3, p0, Lc/g/h/f$b;->c:I
  .line 5
    iput-boolean p4, p0, Lc/g/h/f$b;->d:Z
  .line 6
    iput p5, p0, Lc/g/h/f$b;->e:I
    return-void
.end method

.method static a(Landroid/net/Uri;IIZI)Lc/g/h/f$b;
  .registers 12
  .line 1
    new-instance v6, Lc/g/h/f$b;
    move-object v0, v6
    move-object v1, p0
    move v2, p1
    move v3, p2
    move v4, p3
    move v5, p4
    invoke-direct/range { v0 .. v5 }, Lc/g/h/f$b;-><init>(Landroid/net/Uri;IIZI)V
    return-object v6
.end method

.method public b()I
  .registers 2
  .line 1
    iget v0, p0, Lc/g/h/f$b;->e:I
    return v0
.end method

.method public c()I
  .registers 2
  .line 1
    iget v0, p0, Lc/g/h/f$b;->b:I
    return v0
.end method

.method public d()Landroid/net/Uri;
  .registers 2
  .line 1
    iget-object v0, p0, Lc/g/h/f$b;->a:Landroid/net/Uri;
    return-object v0
.end method

.method public e()I
  .registers 2
  .line 1
    iget v0, p0, Lc/g/h/f$b;->c:I
    return v0
.end method

.method public f()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lc/g/h/f$b;->d:Z
    return v0
.end method
