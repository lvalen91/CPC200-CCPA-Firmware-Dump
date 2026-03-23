.class Lc/g/h/e$a;
.super Ljava/lang/Object;
.implements Ljava/util/concurrent/Callable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lc/g/h/e;->e(Landroid/content/Context;Lc/g/h/d;Lc/g/h/a;II)Landroid/graphics/Typeface;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "Ljava/lang/Object;",
    "Ljava/util/concurrent/Callable<",
    "Lc/g/h/e$e;",
    ">;"
  }
.end annotation

.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lc/g/h/d;

.field final synthetic d:I

.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Lc/g/h/d;I)V
  .registers 5
  .line 1
    iput-object p1, p0, Lc/g/h/e$a;->a:Ljava/lang/String;
    iput-object p2, p0, Lc/g/h/e$a;->b:Landroid/content/Context;
    iput-object p3, p0, Lc/g/h/e$a;->c:Lc/g/h/d;
    iput p4, p0, Lc/g/h/e$a;->d:I
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public a()Lc/g/h/e$e;
  .registers 5
  .line 1
    iget-object v0, p0, Lc/g/h/e$a;->a:Ljava/lang/String;
    iget-object v1, p0, Lc/g/h/e$a;->b:Landroid/content/Context;
    iget-object v2, p0, Lc/g/h/e$a;->c:Lc/g/h/d;
    iget v3, p0, Lc/g/h/e$a;->d:I
    invoke-static { v0, v1, v2, v3 }, Lc/g/h/e;->c(Ljava/lang/String;Landroid/content/Context;Lc/g/h/d;I)Lc/g/h/e$e;
    move-result-object v0
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
  .registers 2
  .line 1
    invoke-virtual { p0 }, Lc/g/h/e$a;->a()Lc/g/h/e$e;
    move-result-object v0
    return-object v0
.end method
