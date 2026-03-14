.class final Lc/g/h/e$e;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lc/g/h/e;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 24
  name = "e"
.end annotation

.field final a:Landroid/graphics/Typeface;

.field final b:I

.method constructor <init>(I)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 0
  .line 2
    iput-object v0, p0, Lc/g/h/e$e;->a:Landroid/graphics/Typeface;
  .line 3
    iput p1, p0, Lc/g/h/e$e;->b:I
    return-void
.end method

.method constructor <init>(Landroid/graphics/Typeface;)V
  .annotation build Landroid/annotation/SuppressLint;
    value = {
      "WrongConstant"
    }
  .end annotation
  .registers 2
  .line 4
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 5
    iput-object p1, p0, Lc/g/h/e$e;->a:Landroid/graphics/Typeface;
    const/4 p1, 0
  .line 6
    iput p1, p0, Lc/g/h/e$e;->b:I
    return-void
.end method

.method a()Z
  .annotation build Landroid/annotation/SuppressLint;
    value = {
      "WrongConstant"
    }
  .end annotation
  .registers 2
  .line 1
    iget v0, p0, Lc/g/h/e$e;->b:I
    if-nez v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method
