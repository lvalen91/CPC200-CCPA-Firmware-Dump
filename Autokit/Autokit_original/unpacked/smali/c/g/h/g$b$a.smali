.class Lc/g/h/g$b$a;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingMethod;
  value = Lc/g/h/g$b;->run()V
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 0
  name = null
.end annotation

.field final synthetic b:Lc/g/j/a;

.field final synthetic c:Ljava/lang/Object;

.method constructor <init>(Lc/g/h/g$b;Lc/g/j/a;Ljava/lang/Object;)V
  .registers 4
  .line 1
    iput-object p2, p0, Lc/g/h/g$b$a;->b:Lc/g/j/a;
    iput-object p3, p0, Lc/g/h/g$b$a;->c:Ljava/lang/Object;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
  .registers 3
  .line 1
    iget-object v0, p0, Lc/g/h/g$b$a;->b:Lc/g/j/a;
    iget-object v1, p0, Lc/g/h/g$b$a;->c:Ljava/lang/Object;
    invoke-interface { v0, v1 }, Lc/g/j/a;->a(Ljava/lang/Object;)V
    return-void
.end method
