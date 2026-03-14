.class public Lc/g/i/c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lc/g/i/c$a;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 9
  name = "a"
.end annotation

.field private final a:Landroid/text/TextPaint;

.field private b:Landroid/text/TextDirectionHeuristic;

.field private c:I

.field private d:I

.method public constructor <init>(Landroid/text/TextPaint;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Lc/g/i/c$a$a;->a:Landroid/text/TextPaint;
  .line 3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v0, 23
    if-lt p1, v0, :L0
    const/4 p1, 1
  .line 4
    iput p1, p0, Lc/g/i/c$a$a;->c:I
  .line 5
    iput p1, p0, Lc/g/i/c$a$a;->d:I
    goto :L1
  :L0
    const/4 p1, 0
  .line 6
    iput p1, p0, Lc/g/i/c$a$a;->d:I
    iput p1, p0, Lc/g/i/c$a$a;->c:I
  :L1
  .line 7
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v0, 18
    if-lt p1, v0, :L2
  .line 8
    sget-object p1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;
    iput-object p1, p0, Lc/g/i/c$a$a;->b:Landroid/text/TextDirectionHeuristic;
    goto :L3
  :L2
    const/4 p1, 0
  .line 9
    iput-object p1, p0, Lc/g/i/c$a$a;->b:Landroid/text/TextDirectionHeuristic;
  :L3
    return-void
.end method

.method public a()Lc/g/i/c$a;
  .registers 6
  .line 1
    new-instance v0, Lc/g/i/c$a;
    iget-object v1, p0, Lc/g/i/c$a$a;->a:Landroid/text/TextPaint;
    iget-object v2, p0, Lc/g/i/c$a$a;->b:Landroid/text/TextDirectionHeuristic;
    iget v3, p0, Lc/g/i/c$a$a;->c:I
    iget v4, p0, Lc/g/i/c$a$a;->d:I
    invoke-direct { v0, v1, v2, v3, v4 }, Lc/g/i/c$a;-><init>(Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;II)V
    return-object v0
.end method

.method public b(I)Lc/g/i/c$a$a;
  .registers 2
  .line 1
    iput p1, p0, Lc/g/i/c$a$a;->c:I
    return-object p0
.end method

.method public c(I)Lc/g/i/c$a$a;
  .registers 2
  .line 1
    iput p1, p0, Lc/g/i/c$a$a;->d:I
    return-object p0
.end method

.method public d(Landroid/text/TextDirectionHeuristic;)Lc/g/i/c$a$a;
  .registers 2
  .line 1
    iput-object p1, p0, Lc/g/i/c$a$a;->b:Landroid/text/TextDirectionHeuristic;
    return-object p0
.end method
