.class public abstract Landroidx/fragment/app/w;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/fragment/app/w$a;
  }
.end annotation

.field a:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Landroidx/fragment/app/w$a;",
      ">;"
    }
  .end annotation
.end field

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:Z

.field h:Z

.field i:Ljava/lang/String;

.field j:I

.field k:Ljava/lang/CharSequence;

.field l:I

.field m:Ljava/lang/CharSequence;

.field n:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
.end field

.field o:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
.end field

.field p:Z

.field q:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Ljava/lang/Runnable;",
      ">;"
    }
  .end annotation
.end field

.method constructor <init>(Landroidx/fragment/app/j;Ljava/lang/ClassLoader;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance p1, Ljava/util/ArrayList;
    invoke-direct { p1 }, Ljava/util/ArrayList;-><init>()V
    iput-object p1, p0, Landroidx/fragment/app/w;->a:Ljava/util/ArrayList;
    const/4 p1, 1
  .line 3
    iput-boolean p1, p0, Landroidx/fragment/app/w;->h:Z
    const/4 p1, 0
  .line 4
    iput-boolean p1, p0, Landroidx/fragment/app/w;->p:Z
    return-void
.end method

.method public b(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;
  .registers 5
    const/4 v0, 0
    const/4 v1, 1
  .line 1
    invoke-virtual { p0, p1, p2, v0, v1 }, Landroidx/fragment/app/w;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V
    return-object p0
.end method

.method public c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/w;
  .registers 5
    const/4 v0, 1
  .line 1
    invoke-virtual { p0, p1, p2, p3, v0 }, Landroidx/fragment/app/w;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V
    return-object p0
.end method

.method d(Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/w;
  .registers 4
  .line 1
    iput-object p1, p2, Landroidx/fragment/app/Fragment;->H:Landroid/view/ViewGroup;
  .line 2
    invoke-virtual { p1 }, Landroid/view/ViewGroup;->getId()I
    move-result p1
    invoke-virtual { p0, p1, p2, p3 }, Landroidx/fragment/app/w;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/w;
    return-object p0
.end method

.method public e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/w;
  .registers 5
    const/4 v0, 0
    const/4 v1, 1
  .line 1
    invoke-virtual { p0, v0, p1, p2, v1 }, Landroidx/fragment/app/w;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V
    return-object p0
.end method

.method f(Landroidx/fragment/app/w$a;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/w;->a:Ljava/util/ArrayList;
    invoke-virtual { v0, p1 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 2
    iget v0, p0, Landroidx/fragment/app/w;->b:I
    iput v0, p1, Landroidx/fragment/app/w$a;->c:I
  .line 3
    iget v0, p0, Landroidx/fragment/app/w;->c:I
    iput v0, p1, Landroidx/fragment/app/w$a;->d:I
  .line 4
    iget v0, p0, Landroidx/fragment/app/w;->d:I
    iput v0, p1, Landroidx/fragment/app/w$a;->e:I
  .line 5
    iget v0, p0, Landroidx/fragment/app/w;->e:I
    iput v0, p1, Landroidx/fragment/app/w$a;->f:I
    return-void
.end method

.method public g(Ljava/lang/String;)Landroidx/fragment/app/w;
  .registers 3
  .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/w;->h:Z
    if-eqz v0, :L0
    const/4 v0, 1
  .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/w;->g:Z
  .line 3
    iput-object p1, p0, Landroidx/fragment/app/w;->i:Ljava/lang/String;
    return-object p0
  :L0
  .line 4
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string v0, "This FragmentTransaction is not allowed to be added to the back stack."
    invoke-direct { p1, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public abstract h()I
.end method

.method public abstract i()I
.end method

.method public abstract j()V
.end method

.method public abstract k()V
.end method

.method public l()Landroidx/fragment/app/w;
  .registers 3
  .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/w;->g:Z
    if-nez v0, :L0
    const/4 v0, 0
  .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/w;->h:Z
    return-object p0
  :L0
  .line 3
    new-instance v0, Ljava/lang/IllegalStateException;
    const-string v1, "This transaction is already being added to the back stack"
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V
  .registers 8
  .line 1
    invoke-virtual { p2 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v0
  .line 2
    invoke-virtual { v0 }, Ljava/lang/Class;->getModifiers()I
    move-result v1
  .line 3
    invoke-virtual { v0 }, Ljava/lang/Class;->isAnonymousClass()Z
    move-result v2
    if-nez v2, :L8
    invoke-static { v1 }, Ljava/lang/reflect/Modifier;->isPublic(I)Z
    move-result v2
    if-eqz v2, :L8
  .line 4
    invoke-virtual { v0 }, Ljava/lang/Class;->isMemberClass()Z
    move-result v2
    if-eqz v2, :L0
    invoke-static { v1 }, Ljava/lang/reflect/Modifier;->isStatic(I)Z
    move-result v1
    if-eqz v1, :L8
  :L0
    const-string v0, " now "
    const-string v1, ": was "
    if-eqz p3, :L3
  .line 5
    iget-object v2, p2, Landroidx/fragment/app/Fragment;->z:Ljava/lang/String;
    if-eqz v2, :L2
    invoke-virtual { p3, v2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :L1
    goto :L2
  :L1
  .line 6
    new-instance p1, Ljava/lang/IllegalStateException;
    new-instance p4, Ljava/lang/StringBuilder;
    invoke-direct { p4 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Can't change tag of fragment "
    invoke-virtual { p4, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p4, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { p4, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object p2, p2, Landroidx/fragment/app/Fragment;->z:Ljava/lang/String;
    invoke-virtual { p4, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p4, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p4, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
  :L2
  .line 7
    iput-object p3, p2, Landroidx/fragment/app/Fragment;->z:Ljava/lang/String;
  :L3
    if-eqz p1, :L7
    const/4 v2, -1
    if-eq p1, v2, :L6
  .line 8
    iget p3, p2, Landroidx/fragment/app/Fragment;->x:I
    if-eqz p3, :L5
    if-ne p3, p1, :L4
    goto :L5
  :L4
  .line 9
    new-instance p3, Ljava/lang/IllegalStateException;
    new-instance p4, Ljava/lang/StringBuilder;
    invoke-direct { p4 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Can't change container ID of fragment "
    invoke-virtual { p4, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p4, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { p4, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget p2, p2, Landroidx/fragment/app/Fragment;->x:I
    invoke-virtual { p4, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p4, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p4, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { p3, p1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p3
  :L5
  .line 10
    iput p1, p2, Landroidx/fragment/app/Fragment;->x:I
    iput p1, p2, Landroidx/fragment/app/Fragment;->y:I
    goto :L7
  :L6
  .line 11
    new-instance p1, Ljava/lang/IllegalArgumentException;
    new-instance p4, Ljava/lang/StringBuilder;
    invoke-direct { p4 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "Can't add fragment "
    invoke-virtual { p4, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p4, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string p2, " with tag "
    invoke-virtual { p4, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p4, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p2, " to container view with no id"
    invoke-virtual { p4, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L7
  .line 12
    new-instance p1, Landroidx/fragment/app/w$a;
    invoke-direct { p1, p4, p2 }, Landroidx/fragment/app/w$a;-><init>(ILandroidx/fragment/app/Fragment;)V
    invoke-virtual { p0, p1 }, Landroidx/fragment/app/w;->f(Landroidx/fragment/app/w$a;)V
    return-void
  :L8
  .line 13
    new-instance p1, Ljava/lang/IllegalStateException;
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p3, "Fragment "
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
    move-result-object p3
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p3, " must be a public static class to be  properly recreated from instance state."
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public n(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;
  .registers 4
  .line 1
    new-instance v0, Landroidx/fragment/app/w$a;
    const/4 v1, 4
    invoke-direct { v0, v1, p1 }, Landroidx/fragment/app/w$a;-><init>(ILandroidx/fragment/app/Fragment;)V
    invoke-virtual { p0, v0 }, Landroidx/fragment/app/w;->f(Landroidx/fragment/app/w$a;)V
    return-object p0
.end method

.method public o(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;
  .registers 4
  .line 1
    new-instance v0, Landroidx/fragment/app/w$a;
    const/4 v1, 3
    invoke-direct { v0, v1, p1 }, Landroidx/fragment/app/w$a;-><init>(ILandroidx/fragment/app/Fragment;)V
    invoke-virtual { p0, v0 }, Landroidx/fragment/app/w;->f(Landroidx/fragment/app/w$a;)V
    return-object p0
.end method

.method public p(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;
  .registers 4
    const/4 v0, 0
  .line 1
    invoke-virtual { p0, p1, p2, v0 }, Landroidx/fragment/app/w;->q(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/w;
    return-object p0
.end method

.method public q(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/w;
  .registers 5
    if-eqz p1, :L0
    const/4 v0, 2
  .line 1
    invoke-virtual { p0, p1, p2, p3, v0 }, Landroidx/fragment/app/w;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V
    return-object p0
  :L0
  .line 2
    new-instance p1, Ljava/lang/IllegalArgumentException;
    const-string p2, "Must use non-zero containerViewId"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public r(IIII)Landroidx/fragment/app/w;
  .registers 5
  .line 1
    iput p1, p0, Landroidx/fragment/app/w;->b:I
  .line 2
    iput p2, p0, Landroidx/fragment/app/w;->c:I
  .line 3
    iput p3, p0, Landroidx/fragment/app/w;->d:I
  .line 4
    iput p4, p0, Landroidx/fragment/app/w;->e:I
    return-object p0
.end method

.method public s(Z)Landroidx/fragment/app/w;
  .registers 2
  .line 1
    iput-boolean p1, p0, Landroidx/fragment/app/w;->p:Z
    return-object p0
.end method

.method public t(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;
  .registers 4
  .line 1
    new-instance v0, Landroidx/fragment/app/w$a;
    const/4 v1, 5
    invoke-direct { v0, v1, p1 }, Landroidx/fragment/app/w$a;-><init>(ILandroidx/fragment/app/Fragment;)V
    invoke-virtual { p0, v0 }, Landroidx/fragment/app/w;->f(Landroidx/fragment/app/w$a;)V
    return-object p0
.end method
