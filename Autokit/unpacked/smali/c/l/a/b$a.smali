.class public Lc/l/a/b$a;
.super Landroidx/lifecycle/o;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lc/l/a/b;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 9
  name = "a"
.end annotation
.annotation system Ldalvik/annotation/Signature;
  value = {
    "<D:",
    "Ljava/lang/Object;",
    ">",
    "Landroidx/lifecycle/o<",
    "TD;>;",
    "Ljava/lang/Object<",
    "TD;>;"
  }
.end annotation

.field private final k:I

.field private final l:Landroid/os/Bundle;

.field private final m:Lc/l/b/a;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Lc/l/b/a<",
      "TD;>;"
    }
  .end annotation
.end field

.field private n:Landroidx/lifecycle/j;

.field private o:Lc/l/a/b$b;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Lc/l/a/b$b<",
      "TD;>;"
    }
  .end annotation
.end field

.field private p:Lc/l/b/a;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Lc/l/b/a<",
      "TD;>;"
    }
  .end annotation
.end field

.method protected h()V
  .registers 3
  .line 1
    sget-boolean v0, Lc/l/a/b;->c:Z
    if-eqz v0, :L0
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "  Starting: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L0
  .line 2
    iget-object v0, p0, Lc/l/a/b$a;->m:Lc/l/b/a;
    invoke-virtual { v0 }, Lc/l/b/a;->d()V
    const/4 v0, 0
    throw v0
.end method

.method protected i()V
  .registers 3
  .line 1
    sget-boolean v0, Lc/l/a/b;->c:Z
    if-eqz v0, :L0
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "  Stopping: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L0
  .line 2
    iget-object v0, p0, Lc/l/a/b$a;->m:Lc/l/b/a;
    invoke-virtual { v0 }, Lc/l/b/a;->e()V
    const/4 v0, 0
    throw v0
.end method

.method public j(Landroidx/lifecycle/p;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroidx/lifecycle/p<",
      "-TD;>;)V"
    }
  .end annotation
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/p;)V
    const/4 p1, 0
  .line 2
    iput-object p1, p0, Lc/l/a/b$a;->n:Landroidx/lifecycle/j;
  .line 3
    iput-object p1, p0, Lc/l/a/b$a;->o:Lc/l/a/b$b;
    return-void
.end method

.method public k(Ljava/lang/Object;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(TD;)V"
    }
  .end annotation
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V
  .line 2
    iget-object p1, p0, Lc/l/a/b$a;->p:Lc/l/b/a;
    if-nez p1, :L0
    return-void
  :L0
  .line 3
    invoke-virtual { p1 }, Lc/l/b/a;->c()V
    const/4 p1, 0
    throw p1
.end method

.method l(Z)Lc/l/b/a;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(Z)",
      "Lc/l/b/a<",
      "TD;>;"
    }
  .end annotation
  .registers 3
  .line 1
    sget-boolean p1, Lc/l/a/b;->c:Z
    if-eqz p1, :L0
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "  Destroying: "
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L0
  .line 2
    iget-object p1, p0, Lc/l/a/b$a;->m:Lc/l/b/a;
    invoke-virtual { p1 }, Lc/l/b/a;->a()Z
    const/4 p1, 0
    throw p1
.end method

.method public m(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
  .registers 7
  .line 1
    invoke-virtual { p3, p1 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    const-string v0, "mId="
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    iget v0, p0, Lc/l/a/b$a;->k:I
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->print(I)V
    const-string v0, " mArgs="
  .line 2
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    iget-object v0, p0, Lc/l/a/b$a;->l:Landroid/os/Bundle;
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
  .line 3
    invoke-virtual { p3, p1 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    const-string v0, "mLoader="
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    iget-object v0, p0, Lc/l/a/b$a;->m:Lc/l/b/a;
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
  .line 4
    iget-object v0, p0, Lc/l/a/b$a;->m:Lc/l/b/a;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p1, "  "
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v0, p1, p2, p3, p4 }, Lc/l/b/a;->b(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    const/4 p1, 0
    throw p1
.end method

.method n()V
  .registers 3
  .line 1
    iget-object v0, p0, Lc/l/a/b$a;->n:Landroidx/lifecycle/j;
  .line 2
    iget-object v1, p0, Lc/l/a/b$a;->o:Lc/l/a/b$b;
    if-eqz v0, :L0
    if-eqz v1, :L0
  .line 3
    invoke-super { p0, v1 }, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/p;)V
  .line 4
    invoke-virtual { p0, v0, v1 }, Landroidx/lifecycle/LiveData;->f(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V
  :L0
    return-void
.end method

.method public toString()Ljava/lang/String;
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    const/16 v1, 64
    invoke-direct { v0, v1 }, Ljava/lang/StringBuilder;-><init>(I)V
    const-string v1, "LoaderInfo{"
  .line 2
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 3
    invoke-static { p0 }, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I
    move-result v1
    invoke-static { v1 }, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, " #"
  .line 4
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 5
    iget v1, p0, Lc/l/a/b$a;->k:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, " : "
  .line 6
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 7
    iget-object v1, p0, Lc/l/a/b$a;->m:Lc/l/b/a;
    invoke-static { v1, v0 }, Lc/g/j/b;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    const-string v1, "}}"
  .line 8
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 9
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method
