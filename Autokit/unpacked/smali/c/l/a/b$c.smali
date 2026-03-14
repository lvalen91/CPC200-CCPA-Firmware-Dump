.class Lc/l/a/b$c;
.super Landroidx/lifecycle/v;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lc/l/a/b;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 8
  name = "c"
.end annotation

.field private final static d:Landroidx/lifecycle/w$b;

.field private c:Lc/d/h;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Lc/d/h<",
      "Lc/l/a/b$a;",
      ">;"
    }
  .end annotation
.end field

.method static constructor <clinit>()V
  .registers 1
  .line 1
    new-instance v0, Lc/l/a/b$c$a;
    invoke-direct { v0 }, Lc/l/a/b$c$a;-><init>()V
    sput-object v0, Lc/l/a/b$c;->d:Landroidx/lifecycle/w$b;
    return-void
.end method

.method constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Landroidx/lifecycle/v;-><init>()V
  .line 2
    new-instance v0, Lc/d/h;
    invoke-direct { v0 }, Lc/d/h;-><init>()V
    iput-object v0, p0, Lc/l/a/b$c;->c:Lc/d/h;
    return-void
.end method

.method static j(Landroidx/lifecycle/x;)Lc/l/a/b$c;
  .registers 3
  .line 1
    new-instance v0, Landroidx/lifecycle/w;
    sget-object v1, Lc/l/a/b$c;->d:Landroidx/lifecycle/w$b;
    invoke-direct { v0, p0, v1 }, Landroidx/lifecycle/w;-><init>(Landroidx/lifecycle/x;Landroidx/lifecycle/w$b;)V
    const-class p0, Lc/l/a/b$c;
    invoke-virtual { v0, p0 }, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;
    move-result-object p0
    check-cast p0, Lc/l/a/b$c;
    return-object p0
.end method

.method protected g()V
  .registers 3
  .line 1
    invoke-super { p0 }, Landroidx/lifecycle/v;->g()V
  .line 2
    iget-object v0, p0, Lc/l/a/b$c;->c:Lc/d/h;
    invoke-virtual { v0 }, Lc/d/h;->j()I
    move-result v0
    if-gtz v0, :L0
  .line 3
    iget-object v0, p0, Lc/l/a/b$c;->c:Lc/d/h;
    invoke-virtual { v0 }, Lc/d/h;->b()V
    return-void
  :L0
  .line 4
    iget-object v0, p0, Lc/l/a/b$c;->c:Lc/d/h;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Lc/d/h;->k(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lc/l/a/b$a;
    const/4 v1, 1
  .line 5
    invoke-virtual { v0, v1 }, Lc/l/a/b$a;->l(Z)Lc/l/b/a;
    const/4 v0, 0
    throw v0
.end method

.method public i(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
  .registers 8
  .line 1
    iget-object v0, p0, Lc/l/a/b$c;->c:Lc/d/h;
    invoke-virtual { v0 }, Lc/d/h;->j()I
    move-result v0
    if-lez v0, :L1
  .line 2
    invoke-virtual { p3, p1 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    const-string v0, "Loaders:"
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
  .line 3
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "    "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const/4 v1, 0
  .line 4
    iget-object v2, p0, Lc/l/a/b$c;->c:Lc/d/h;
    invoke-virtual { v2 }, Lc/d/h;->j()I
    move-result v2
    if-gtz v2, :L0
    goto :L1
  :L0
  .line 5
    iget-object v2, p0, Lc/l/a/b$c;->c:Lc/d/h;
    invoke-virtual { v2, v1 }, Lc/d/h;->k(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lc/l/a/b$a;
  .line 6
    invoke-virtual { p3, p1 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    const-string p1, "  #"
    invoke-virtual { p3, p1 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    iget-object p1, p0, Lc/l/a/b$c;->c:Lc/d/h;
    invoke-virtual { p1, v1 }, Lc/d/h;->h(I)I
    move-result p1
    invoke-virtual { p3, p1 }, Ljava/io/PrintWriter;->print(I)V
    const-string p1, ": "
  .line 7
    invoke-virtual { p3, p1 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    invoke-virtual { v2 }, Lc/l/a/b$a;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-virtual { p3, p1 }, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
  .line 8
    invoke-virtual { v2, v0, p2, p3, p4 }, Lc/l/a/b$a;->m(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    const/4 p1, 0
    throw p1
  :L1
    return-void
.end method

.method k()V
  .registers 4
  .line 1
    iget-object v0, p0, Lc/l/a/b$c;->c:Lc/d/h;
    invoke-virtual { v0 }, Lc/d/h;->j()I
    move-result v0
    const/4 v1, 0
  :L0
    if-ge v1, v0, :L1
  .line 2
    iget-object v2, p0, Lc/l/a/b$c;->c:Lc/d/h;
    invoke-virtual { v2, v1 }, Lc/d/h;->k(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lc/l/a/b$a;
  .line 3
    invoke-virtual { v2 }, Lc/l/a/b$a;->n()V
    add-int/lit8 v1, v1, 1
    goto :L0
  :L1
    return-void
.end method
