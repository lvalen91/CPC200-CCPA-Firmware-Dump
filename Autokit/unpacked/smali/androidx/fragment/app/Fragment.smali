.class public Landroidx/fragment/app/Fragment;
.super Ljava/lang/Object;
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroidx/lifecycle/j;
.implements Landroidx/lifecycle/y;
.implements Landroidx/savedstate/c;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/fragment/app/Fragment$h;,
    Landroidx/fragment/app/Fragment$k;,
    Landroidx/fragment/app/Fragment$i;,
    Landroidx/fragment/app/Fragment$j;
  }
.end annotation

.field final static Z:Ljava/lang/Object;

.field A:Z

.field B:Z

.field C:Z

.field D:Z

.field E:Z

.field F:Z

.field private G:Z

.field H:Landroid/view/ViewGroup;

.field I:Landroid/view/View;

.field J:Z

.field K:Z

.field L:Landroidx/fragment/app/Fragment$h;

.field M:Z

.field N:Z

.field O:F

.field P:Landroid/view/LayoutInflater;

.field Q:Z

.field R:Landroidx/lifecycle/f$c;

.field S:Landroidx/lifecycle/k;

.field T:Landroidx/fragment/app/a0;

.field U:Landroidx/lifecycle/o;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Landroidx/lifecycle/o<",
      "Landroidx/lifecycle/j;",
      ">;"
    }
  .end annotation
.end field

.field V:Landroidx/savedstate/b;

.field private W:I

.field private final X:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final Y:Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/ArrayList<",
      "Landroidx/fragment/app/Fragment$j;",
      ">;"
    }
  .end annotation
.end field

.field b:I

.field c:Landroid/os/Bundle;

.field d:Landroid/util/SparseArray;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Landroid/util/SparseArray<",
      "Landroid/os/Parcelable;",
      ">;"
    }
  .end annotation
.end field

.field e:Landroid/os/Bundle;

.field f:Ljava/lang/Boolean;

.field g:Ljava/lang/String;

.field h:Landroid/os/Bundle;

.field i:Landroidx/fragment/app/Fragment;

.field j:Ljava/lang/String;

.field k:I

.field private l:Ljava/lang/Boolean;

.field m:Z

.field n:Z

.field o:Z

.field p:Z

.field q:Z

.field r:Z

.field s:I

.field t:Landroidx/fragment/app/n;

.field u:Landroidx/fragment/app/k;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Landroidx/fragment/app/k<",
      "*>;"
    }
  .end annotation
.end field

.field v:Landroidx/fragment/app/n;

.field w:Landroidx/fragment/app/Fragment;

.field x:I

.field y:I

.field z:Ljava/lang/String;

.method static constructor <clinit>()V
  .registers 1
  .line 1
    new-instance v0, Ljava/lang/Object;
    invoke-direct { v0 }, Ljava/lang/Object;-><init>()V
    sput-object v0, Landroidx/fragment/app/Fragment;->Z:Ljava/lang/Object;
    return-void
.end method

.method public constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, -1
  .line 2
    iput v0, p0, Landroidx/fragment/app/Fragment;->b:I
  .line 3
    invoke-static { }, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/util/UUID;->toString()Ljava/lang/String;
    move-result-object v0
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->g:Ljava/lang/String;
    const/4 v0, 0
  .line 4
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->j:Ljava/lang/String;
  .line 5
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->l:Ljava/lang/Boolean;
  .line 6
    new-instance v0, Landroidx/fragment/app/o;
    invoke-direct { v0 }, Landroidx/fragment/app/o;-><init>()V
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->v:Landroidx/fragment/app/n;
    const/4 v0, 1
  .line 7
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->F:Z
  .line 8
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->K:Z
  .line 9
    sget-object v0, Landroidx/lifecycle/f$c;->f:Landroidx/lifecycle/f$c;
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->R:Landroidx/lifecycle/f$c;
  .line 10
    new-instance v0, Landroidx/lifecycle/o;
    invoke-direct { v0 }, Landroidx/lifecycle/o;-><init>()V
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->U:Landroidx/lifecycle/o;
  .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-direct { v0 }, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->X:Ljava/util/concurrent/atomic/AtomicInteger;
  .line 12
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->Y:Ljava/util/ArrayList;
  .line 13
    invoke-direct { p0 }, Landroidx/fragment/app/Fragment;->n0()V
    return-void
.end method

.method private A()Landroidx/fragment/app/Fragment$h;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->L:Landroidx/fragment/app/Fragment$h;
    if-nez v0, :L0
  .line 2
    new-instance v0, Landroidx/fragment/app/Fragment$h;
    invoke-direct { v0 }, Landroidx/fragment/app/Fragment$h;-><init>()V
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->L:Landroidx/fragment/app/Fragment$h;
  :L0
  .line 3
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->L:Landroidx/fragment/app/Fragment$h;
    return-object v0
.end method

.method private G1(Landroidx/activity/result/f/a;Lc/b/a/c/a;Landroidx/activity/result/b;)Landroidx/activity/result/c;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<I:",
      "Ljava/lang/Object;",
      "O:",
      "Ljava/lang/Object;",
      ">(",
      "Landroidx/activity/result/f/a<",
      "TI;TO;>;",
      "Lc/b/a/c/a<",
      "Ljava/lang/Void;",
      "Landroidx/activity/result/ActivityResultRegistry;",
      ">;",
      "Landroidx/activity/result/b<",
      "TO;>;)",
      "Landroidx/activity/result/c<",
      "TI;>;"
    }
  .end annotation
  .registers 12
  .line 1
    iget v0, p0, Landroidx/fragment/app/Fragment;->b:I
    const/4 v1, 1
    if-gt v0, v1, :L0
  .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;
    invoke-direct { v0 }, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V
  .line 3
    new-instance v1, Landroidx/fragment/app/Fragment$f;
    move-object v2, v1
    move-object v3, p0
    move-object v4, p2
    move-object v5, v0
    move-object v6, p1
    move-object v7, p3
    invoke-direct/range { v2 .. v7 }, Landroidx/fragment/app/Fragment$f;-><init>(Landroidx/fragment/app/Fragment;Lc/b/a/c/a;Ljava/util/concurrent/atomic/AtomicReference;Landroidx/activity/result/f/a;Landroidx/activity/result/b;)V
    invoke-direct { p0, v1 }, Landroidx/fragment/app/Fragment;->I1(Landroidx/fragment/app/Fragment$j;)V
  .line 4
    new-instance p2, Landroidx/fragment/app/Fragment$g;
    invoke-direct { p2, p0, v0, p1 }, Landroidx/fragment/app/Fragment$g;-><init>(Landroidx/fragment/app/Fragment;Ljava/util/concurrent/atomic/AtomicReference;Landroidx/activity/result/f/a;)V
    return-object p2
  :L0
  .line 5
    new-instance p1, Ljava/lang/IllegalStateException;
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p3, "Fragment "
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string p3, " is attempting to registerForActivityResult after being created. Fragments must call registerForActivityResult() before they are created (i.e. initialization, onAttach(), or onCreate())."
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method private I1(Landroidx/fragment/app/Fragment$j;)V
  .registers 3
  .line 1
    iget v0, p0, Landroidx/fragment/app/Fragment;->b:I
    if-ltz v0, :L0
  .line 2
    invoke-virtual { p1 }, Landroidx/fragment/app/Fragment$j;->a()V
    goto :L1
  :L0
  .line 3
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->Y:Ljava/util/ArrayList;
    invoke-virtual { v0, p1 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  :L1
    return-void
.end method

.method private N1()V
  .registers 3
    const/4 v0, 3
  .line 1
    invoke-static { v0 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "moveto RESTORE_VIEW_STATE: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L0
  .line 3
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    if-eqz v0, :L1
  .line 4
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;
    invoke-virtual { p0, v0 }, Landroidx/fragment/app/Fragment;->O1(Landroid/os/Bundle;)V
  :L1
    const/4 v0, 0
  .line 5
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;
    return-void
.end method

.method private U()I
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->R:Landroidx/lifecycle/f$c;
    sget-object v1, Landroidx/lifecycle/f$c;->c:Landroidx/lifecycle/f$c;
    if-eq v0, v1, :L1
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->w:Landroidx/fragment/app/Fragment;
    if-nez v1, :L0
    goto :L1
  :L0
  .line 2
    invoke-virtual { v0 }, Ljava/lang/Enum;->ordinal()I
    move-result v0
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->w:Landroidx/fragment/app/Fragment;
    invoke-direct { v1 }, Landroidx/fragment/app/Fragment;->U()I
    move-result v1
    invoke-static { v0, v1 }, Ljava/lang/Math;->min(II)I
    move-result v0
    return v0
  :L1
  .line 3
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->R:Landroidx/lifecycle/f$c;
    invoke-virtual { v0 }, Ljava/lang/Enum;->ordinal()I
    move-result v0
    return v0
.end method

.method private n0()V
  .registers 2
  .line 1
    new-instance v0, Landroidx/lifecycle/k;
    invoke-direct { v0, p0 }, Landroidx/lifecycle/k;-><init>(Landroidx/lifecycle/j;)V
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/lifecycle/k;
  .line 2
    invoke-static { p0 }, Landroidx/savedstate/b;->a(Landroidx/savedstate/c;)Landroidx/savedstate/b;
    move-result-object v0
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->V:Landroidx/savedstate/b;
    return-void
.end method

.method public static p0(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .catch Ljava/lang/InstantiationException; { :L0 .. :L1 } :L5
  .catch Ljava/lang/IllegalAccessException; { :L0 .. :L1 } :L4
  .catch Ljava/lang/NoSuchMethodException; { :L0 .. :L1 } :L3
  .catch Ljava/lang/reflect/InvocationTargetException; { :L0 .. :L1 } :L2
  .registers 7
    const-string v0, ": make sure class name exists, is public, and has an empty constructor that is public"
    const-string v1, "Unable to instantiate fragment "
  :L0
  .line 1
    invoke-virtual { p0 }, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
    move-result-object p0
  .line 2
    invoke-static { p0, p1 }, Landroidx/fragment/app/j;->d(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    move-result-object p0
    const/4 v2, 0
    new-array v3, v2, [Ljava/lang/Class;
  .line 3
    invoke-virtual { p0, v3 }, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    move-result-object p0
    new-array v2, v2, [Ljava/lang/Object;
    invoke-virtual { p0, v2 }, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p0
    check-cast p0, Landroidx/fragment/app/Fragment;
    if-eqz p2, :L1
  .line 4
    invoke-virtual { p0 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    move-result-object v2
    invoke-virtual { p2, v2 }, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
  .line 5
    invoke-virtual { p0, p2 }, Landroidx/fragment/app/Fragment;->S1(Landroid/os/Bundle;)V
  :L1
    return-object p0
  :L2
    move-exception p0
  .line 6
    new-instance p2, Landroidx/fragment/app/Fragment$i;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p1, ": calling Fragment constructor caused an exception"
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { p2, p1, p0 }, Landroidx/fragment/app/Fragment$i;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
    throw p2
  :L3
    move-exception p0
  .line 7
    new-instance p2, Landroidx/fragment/app/Fragment$i;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p1, ": could not find Fragment constructor"
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { p2, p1, p0 }, Landroidx/fragment/app/Fragment$i;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
    throw p2
  :L4
    move-exception p0
  .line 8
    new-instance p2, Landroidx/fragment/app/Fragment$i;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { p2, p1, p0 }, Landroidx/fragment/app/Fragment$i;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
    throw p2
  :L5
    move-exception p0
  .line 9
    new-instance p2, Landroidx/fragment/app/Fragment$i;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { p2, p1, p0 }, Landroidx/fragment/app/Fragment$i;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
    throw p2
.end method

.method A0()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->v:Landroidx/fragment/app/n;
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->R0()V
    return-void
.end method

.method A1()V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/n;
    invoke-virtual { v0, p0 }, Landroidx/fragment/app/n;->H0(Landroidx/fragment/app/Fragment;)Z
    move-result v0
  .line 2
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->l:Ljava/lang/Boolean;
    if-eqz v1, :L0
  .line 3
    invoke-virtual { v1 }, Ljava/lang/Boolean;->booleanValue()Z
    move-result v1
    if-eq v1, v0, :L1
  :L0
  .line 4
    invoke-static { v0 }, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    move-result-object v1
    iput-object v1, p0, Landroidx/fragment/app/Fragment;->l:Ljava/lang/Boolean;
  .line 5
    invoke-virtual { p0, v0 }, Landroidx/fragment/app/Fragment;->a1(Z)V
  .line 6
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->v:Landroidx/fragment/app/n;
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->P()V
  :L1
    return-void
.end method

.method B(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->g:Ljava/lang/String;
    invoke-virtual { p1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
    return-object p0
  :L0
  .line 2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->v:Landroidx/fragment/app/n;
    invoke-virtual { v0, p1 }, Landroidx/fragment/app/n;->i0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    move-result-object p1
    return-object p1
.end method

.method public B0(Landroid/os/Bundle;)V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 2
    const/4 p1, 1
  .line 1
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->G:Z
    return-void
.end method

.method B1()V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->v:Landroidx/fragment/app/n;
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->R0()V
  .line 2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->v:Landroidx/fragment/app/n;
    const/4 v1, 1
    invoke-virtual { v0, v1 }, Landroidx/fragment/app/n;->a0(Z)Z
    const/4 v0, 7
  .line 3
    iput v0, p0, Landroidx/fragment/app/Fragment;->b:I
    const/4 v0, 0
  .line 4
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->G:Z
  .line 5
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->c1()V
  .line 6
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->G:Z
    if-eqz v0, :L1
  .line 7
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/lifecycle/k;
    sget-object v1, Landroidx/lifecycle/f$b;->ON_RESUME:Landroidx/lifecycle/f$b;
    invoke-virtual { v0, v1 }, Landroidx/lifecycle/k;->h(Landroidx/lifecycle/f$b;)V
  .line 8
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    if-eqz v0, :L0
  .line 9
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->T:Landroidx/fragment/app/a0;
    sget-object v1, Landroidx/lifecycle/f$b;->ON_RESUME:Landroidx/lifecycle/f$b;
    invoke-virtual { v0, v1 }, Landroidx/fragment/app/a0;->a(Landroidx/lifecycle/f$b;)V
  :L0
  .line 10
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->v:Landroidx/fragment/app/n;
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->Q()V
    return-void
  :L1
  .line 11
    new-instance v0, Landroidx/fragment/app/e0;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Fragment "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v2, " did not call through to super.onResume()"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Landroidx/fragment/app/e0;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method C()Ljava/lang/String;
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "fragment_"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->g:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "_rq#"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->X:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual { v1 }, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public C0(IILandroid/content/Intent;)V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 6
    const/4 v0, 2
  .line 1
    invoke-static { v0 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Fragment "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v1, " received the following in onActivityResult(): requestCode: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p1, " resultCode: "
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p1, " data: "
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L0
    return-void
.end method

.method C1(Landroid/os/Bundle;)V
  .registers 4
  .line 1
    invoke-virtual { p0, p1 }, Landroidx/fragment/app/Fragment;->d1(Landroid/os/Bundle;)V
  .line 2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->V:Landroidx/savedstate/b;
    invoke-virtual { v0, p1 }, Landroidx/savedstate/b;->d(Landroid/os/Bundle;)V
  .line 3
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->v:Landroidx/fragment/app/n;
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->f1()Landroid/os/Parcelable;
    move-result-object v0
    if-eqz v0, :L0
    const-string v1, "android:support:fragments"
  .line 4
    invoke-virtual { p1, v1, v0 }, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
  :L0
    return-void
.end method

.method public final D()Landroidx/fragment/app/e;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/k;
    if-nez v0, :L0
    const/4 v0, 0
    goto :L1
  :L0
    invoke-virtual { v0 }, Landroidx/fragment/app/k;->e()Landroid/app/Activity;
    move-result-object v0
    check-cast v0, Landroidx/fragment/app/e;
  :L1
    return-object v0
.end method

.method public D0(Landroid/app/Activity;)V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 2
    const/4 p1, 1
  .line 1
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->G:Z
    return-void
.end method

.method D1()V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->v:Landroidx/fragment/app/n;
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->R0()V
  .line 2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->v:Landroidx/fragment/app/n;
    const/4 v1, 1
    invoke-virtual { v0, v1 }, Landroidx/fragment/app/n;->a0(Z)Z
    const/4 v0, 5
  .line 3
    iput v0, p0, Landroidx/fragment/app/Fragment;->b:I
    const/4 v0, 0
  .line 4
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->G:Z
  .line 5
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->e1()V
  .line 6
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->G:Z
    if-eqz v0, :L1
  .line 7
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/lifecycle/k;
    sget-object v1, Landroidx/lifecycle/f$b;->ON_START:Landroidx/lifecycle/f$b;
    invoke-virtual { v0, v1 }, Landroidx/lifecycle/k;->h(Landroidx/lifecycle/f$b;)V
  .line 8
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    if-eqz v0, :L0
  .line 9
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->T:Landroidx/fragment/app/a0;
    sget-object v1, Landroidx/lifecycle/f$b;->ON_START:Landroidx/lifecycle/f$b;
    invoke-virtual { v0, v1 }, Landroidx/fragment/app/a0;->a(Landroidx/lifecycle/f$b;)V
  :L0
  .line 10
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->v:Landroidx/fragment/app/n;
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->R()V
    return-void
  :L1
  .line 11
    new-instance v0, Landroidx/fragment/app/e0;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Fragment "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v2, " did not call through to super.onStart()"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Landroidx/fragment/app/e0;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public E()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->L:Landroidx/fragment/app/Fragment$h;
    if-eqz v0, :L1
    iget-object v0, v0, Landroidx/fragment/app/Fragment$h;->r:Ljava/lang/Boolean;
    if-nez v0, :L0
    goto :L1
  :L0
  .line 2
    invoke-virtual { v0 }, Ljava/lang/Boolean;->booleanValue()Z
    move-result v0
    goto :L2
  :L1
    const/4 v0, 1
  :L2
    return v0
.end method

.method public E0(Landroid/content/Context;)V
  .registers 3
    const/4 p1, 1
  .line 1
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->G:Z
  .line 2
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/k;
    if-nez p1, :L0
    const/4 p1, 0
    goto :L1
  :L0
    invoke-virtual { p1 }, Landroidx/fragment/app/k;->e()Landroid/app/Activity;
    move-result-object p1
  :L1
    if-eqz p1, :L2
    const/4 v0, 0
  .line 3
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->G:Z
  .line 4
    invoke-virtual { p0, p1 }, Landroidx/fragment/app/Fragment;->D0(Landroid/app/Activity;)V
  :L2
    return-void
.end method

.method E1()V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->v:Landroidx/fragment/app/n;
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->T()V
  .line 2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    if-eqz v0, :L0
  .line 3
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->T:Landroidx/fragment/app/a0;
    sget-object v1, Landroidx/lifecycle/f$b;->ON_STOP:Landroidx/lifecycle/f$b;
    invoke-virtual { v0, v1 }, Landroidx/fragment/app/a0;->a(Landroidx/lifecycle/f$b;)V
  :L0
  .line 4
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/lifecycle/k;
    sget-object v1, Landroidx/lifecycle/f$b;->ON_STOP:Landroidx/lifecycle/f$b;
    invoke-virtual { v0, v1 }, Landroidx/lifecycle/k;->h(Landroidx/lifecycle/f$b;)V
    const/4 v0, 4
  .line 5
    iput v0, p0, Landroidx/fragment/app/Fragment;->b:I
    const/4 v0, 0
  .line 6
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->G:Z
  .line 7
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->f1()V
  .line 8
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->G:Z
    if-eqz v0, :L1
    return-void
  :L1
  .line 9
    new-instance v0, Landroidx/fragment/app/e0;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Fragment "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v2, " did not call through to super.onStop()"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Landroidx/fragment/app/e0;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public F()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->L:Landroidx/fragment/app/Fragment$h;
    if-eqz v0, :L1
    iget-object v0, v0, Landroidx/fragment/app/Fragment$h;->q:Ljava/lang/Boolean;
    if-nez v0, :L0
    goto :L1
  :L0
  .line 2
    invoke-virtual { v0 }, Ljava/lang/Boolean;->booleanValue()Z
    move-result v0
    goto :L2
  :L1
    const/4 v0, 1
  :L2
    return v0
.end method

.method public F0(Landroidx/fragment/app/Fragment;)V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 2
    return-void
.end method

.method F1()V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;
    invoke-virtual { p0, v0, v1 }, Landroidx/fragment/app/Fragment;->g1(Landroid/view/View;Landroid/os/Bundle;)V
  .line 2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->v:Landroidx/fragment/app/n;
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->U()V
    return-void
.end method

.method G()Landroid/view/View;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->L:Landroidx/fragment/app/Fragment$h;
    if-nez v0, :L0
    const/4 v0, 0
    return-object v0
  :L0
  .line 2
    iget-object v0, v0, Landroidx/fragment/app/Fragment$h;->a:Landroid/view/View;
    return-object v0
.end method

.method public G0(Landroid/view/MenuItem;)Z
  .registers 2
    const/4 p1, 0
    return p1
.end method

.method H()Landroid/animation/Animator;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->L:Landroidx/fragment/app/Fragment$h;
    if-nez v0, :L0
    const/4 v0, 0
    return-object v0
  :L0
  .line 2
    iget-object v0, v0, Landroidx/fragment/app/Fragment$h;->b:Landroid/animation/Animator;
    return-object v0
.end method

.method public H0(Landroid/os/Bundle;)V
  .registers 3
    const/4 v0, 1
  .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->G:Z
  .line 2
    invoke-virtual { p0, p1 }, Landroidx/fragment/app/Fragment;->M1(Landroid/os/Bundle;)V
  .line 3
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->v:Landroidx/fragment/app/n;
    invoke-virtual { p1, v0 }, Landroidx/fragment/app/n;->I0(I)Z
    move-result p1
    if-nez p1, :L0
  .line 4
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->v:Landroidx/fragment/app/n;
    invoke-virtual { p1 }, Landroidx/fragment/app/n;->C()V
  :L0
    return-void
.end method

.method public final H1(Landroidx/activity/result/f/a;Landroidx/activity/result/b;)Landroidx/activity/result/c;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "<I:",
      "Ljava/lang/Object;",
      "O:",
      "Ljava/lang/Object;",
      ">(",
      "Landroidx/activity/result/f/a<",
      "TI;TO;>;",
      "Landroidx/activity/result/b<",
      "TO;>;)",
      "Landroidx/activity/result/c<",
      "TI;>;"
    }
  .end annotation
  .registers 4
  .line 1
    new-instance v0, Landroidx/fragment/app/Fragment$e;
    invoke-direct { v0, p0 }, Landroidx/fragment/app/Fragment$e;-><init>(Landroidx/fragment/app/Fragment;)V
    invoke-direct { p0, p1, v0, p2 }, Landroidx/fragment/app/Fragment;->G1(Landroidx/activity/result/f/a;Lc/b/a/c/a;Landroidx/activity/result/b;)Landroidx/activity/result/c;
    move-result-object p1
    return-object p1
.end method

.method public final I()Landroid/os/Bundle;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->h:Landroid/os/Bundle;
    return-object v0
.end method

.method public I0(IZI)Landroid/view/animation/Animation;
  .registers 4
    const/4 p1, 0
    return-object p1
.end method

.method public final J()Landroidx/fragment/app/n;
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/k;
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->v:Landroidx/fragment/app/n;
    return-object v0
  :L0
  .line 3
    new-instance v0, Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Fragment "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v2, " has not been attached yet."
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public J0(IZI)Landroid/animation/Animator;
  .registers 4
    const/4 p1, 0
    return-object p1
.end method

.method public final J1()Landroidx/fragment/app/e;
  .registers 4
  .line 1
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v0
    if-eqz v0, :L0
    return-object v0
  :L0
  .line 2
    new-instance v0, Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Fragment "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v2, " not attached to an activity."
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public K()Landroid/content/Context;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/k;
    if-nez v0, :L0
    const/4 v0, 0
    goto :L1
  :L0
    invoke-virtual { v0 }, Landroidx/fragment/app/k;->f()Landroid/content/Context;
    move-result-object v0
  :L1
    return-object v0
.end method

.method public K0(Landroid/view/Menu;Landroid/view/MenuInflater;)V
  .registers 3
    return-void
.end method

.method public final K1()Landroid/content/Context;
  .registers 4
  .line 1
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;
    move-result-object v0
    if-eqz v0, :L0
    return-object v0
  :L0
  .line 2
    new-instance v0, Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Fragment "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v2, " not attached to a context."
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method L()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->L:Landroidx/fragment/app/Fragment$h;
    if-nez v0, :L0
    const/4 v0, 0
    return v0
  :L0
  .line 2
    iget v0, v0, Landroidx/fragment/app/Fragment$h;->d:I
    return v0
.end method

.method public L0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
  .registers 5
  .line 1
    iget p3, p0, Landroidx/fragment/app/Fragment;->W:I
    if-eqz p3, :L0
    const/4 v0, 0
  .line 2
    invoke-virtual { p1, p3, p2, v0 }, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    move-result-object p1
    return-object p1
  :L0
    const/4 p1, 0
    return-object p1
.end method

.method public final L1()Landroid/view/View;
  .registers 4
  .line 1
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->l0()Landroid/view/View;
    move-result-object v0
    if-eqz v0, :L0
    return-object v0
  :L0
  .line 2
    new-instance v0, Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Fragment "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v2, " did not return a View from onCreateView() or this was called before onCreateView()."
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public M()Ljava/lang/Object;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->L:Landroidx/fragment/app/Fragment$h;
    if-nez v0, :L0
    const/4 v0, 0
    return-object v0
  :L0
  .line 2
    iget-object v0, v0, Landroidx/fragment/app/Fragment$h;->k:Ljava/lang/Object;
    return-object v0
.end method

.method public M0()V
  .registers 2
    const/4 v0, 1
  .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->G:Z
    return-void
.end method

.method M1(Landroid/os/Bundle;)V
  .registers 3
    if-eqz p1, :L0
    const-string v0, "android:support:fragments"
  .line 1
    invoke-virtual { p1, v0 }, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
    move-result-object p1
    if-eqz p1, :L0
  .line 2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->v:Landroidx/fragment/app/n;
    invoke-virtual { v0, p1 }, Landroidx/fragment/app/n;->d1(Landroid/os/Parcelable;)V
  .line 3
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->v:Landroidx/fragment/app/n;
    invoke-virtual { p1 }, Landroidx/fragment/app/n;->C()V
  :L0
    return-void
.end method

.method N()Landroidx/core/app/h;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->L:Landroidx/fragment/app/Fragment$h;
    if-nez v0, :L0
    const/4 v0, 0
    return-object v0
  :L0
  .line 2
    iget-object v0, v0, Landroidx/fragment/app/Fragment$h;->s:Landroidx/core/app/h;
    return-object v0
.end method

.method public N0()V
  .registers 1
    return-void
.end method

.method O()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->L:Landroidx/fragment/app/Fragment$h;
    if-nez v0, :L0
    const/4 v0, 0
    return v0
  :L0
  .line 2
    iget v0, v0, Landroidx/fragment/app/Fragment$h;->e:I
    return v0
.end method

.method public O0()V
  .registers 2
    const/4 v0, 1
  .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->G:Z
    return-void
.end method

.method final O1(Landroid/os/Bundle;)V
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->d:Landroid/util/SparseArray;
    const/4 v1, 0
    if-eqz v0, :L0
  .line 2
    iget-object v2, p0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    invoke-virtual { v2, v0 }, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V
  .line 3
    iput-object v1, p0, Landroidx/fragment/app/Fragment;->d:Landroid/util/SparseArray;
  :L0
  .line 4
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    if-eqz v0, :L1
  .line 5
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->T:Landroidx/fragment/app/a0;
    iget-object v2, p0, Landroidx/fragment/app/Fragment;->e:Landroid/os/Bundle;
    invoke-virtual { v0, v2 }, Landroidx/fragment/app/a0;->d(Landroid/os/Bundle;)V
  .line 6
    iput-object v1, p0, Landroidx/fragment/app/Fragment;->e:Landroid/os/Bundle;
  :L1
    const/4 v0, 0
  .line 7
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->G:Z
  .line 8
    invoke-virtual { p0, p1 }, Landroidx/fragment/app/Fragment;->h1(Landroid/os/Bundle;)V
  .line 9
    iget-boolean p1, p0, Landroidx/fragment/app/Fragment;->G:Z
    if-eqz p1, :L3
  .line 10
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    if-eqz p1, :L2
  .line 11
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->T:Landroidx/fragment/app/a0;
    sget-object v0, Landroidx/lifecycle/f$b;->ON_CREATE:Landroidx/lifecycle/f$b;
    invoke-virtual { p1, v0 }, Landroidx/fragment/app/a0;->a(Landroidx/lifecycle/f$b;)V
  :L2
    return-void
  :L3
  .line 12
    new-instance p1, Landroidx/fragment/app/e0;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Fragment "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v1, " did not call through to super.onViewStateRestored()"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { p1, v0 }, Landroidx/fragment/app/e0;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public P()Ljava/lang/Object;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->L:Landroidx/fragment/app/Fragment$h;
    if-nez v0, :L0
    const/4 v0, 0
    return-object v0
  :L0
  .line 2
    iget-object v0, v0, Landroidx/fragment/app/Fragment$h;->m:Ljava/lang/Object;
    return-object v0
.end method

.method public P0()V
  .registers 2
    const/4 v0, 1
  .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->G:Z
    return-void
.end method

.method P1(Landroid/view/View;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Landroidx/fragment/app/Fragment;->A()Landroidx/fragment/app/Fragment$h;
    move-result-object v0
    iput-object p1, v0, Landroidx/fragment/app/Fragment$h;->a:Landroid/view/View;
    return-void
.end method

.method Q()Landroidx/core/app/h;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->L:Landroidx/fragment/app/Fragment$h;
    if-nez v0, :L0
    const/4 v0, 0
    return-object v0
  :L0
  .line 2
    iget-object v0, v0, Landroidx/fragment/app/Fragment$h;->t:Landroidx/core/app/h;
    return-object v0
.end method

.method public Q0(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Landroidx/fragment/app/Fragment;->T(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    move-result-object p1
    return-object p1
.end method

.method Q1(IIII)V
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->L:Landroidx/fragment/app/Fragment$h;
    if-nez v0, :L0
    if-nez p1, :L0
    if-nez p2, :L0
    if-nez p3, :L0
    if-nez p4, :L0
    return-void
  :L0
  .line 2
    invoke-direct { p0 }, Landroidx/fragment/app/Fragment;->A()Landroidx/fragment/app/Fragment$h;
    move-result-object v0
    iput p1, v0, Landroidx/fragment/app/Fragment$h;->d:I
  .line 3
    invoke-direct { p0 }, Landroidx/fragment/app/Fragment;->A()Landroidx/fragment/app/Fragment$h;
    move-result-object p1
    iput p2, p1, Landroidx/fragment/app/Fragment$h;->e:I
  .line 4
    invoke-direct { p0 }, Landroidx/fragment/app/Fragment;->A()Landroidx/fragment/app/Fragment$h;
    move-result-object p1
    iput p3, p1, Landroidx/fragment/app/Fragment$h;->f:I
  .line 5
    invoke-direct { p0 }, Landroidx/fragment/app/Fragment;->A()Landroidx/fragment/app/Fragment$h;
    move-result-object p1
    iput p4, p1, Landroidx/fragment/app/Fragment$h;->g:I
    return-void
.end method

.method R()Landroid/view/View;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->L:Landroidx/fragment/app/Fragment$h;
    if-nez v0, :L0
    const/4 v0, 0
    return-object v0
  :L0
  .line 2
    iget-object v0, v0, Landroidx/fragment/app/Fragment$h;->v:Landroid/view/View;
    return-object v0
.end method

.method public R0(Z)V
  .registers 2
    return-void
.end method

.method R1(Landroid/animation/Animator;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Landroidx/fragment/app/Fragment;->A()Landroidx/fragment/app/Fragment$h;
    move-result-object v0
    iput-object p1, v0, Landroidx/fragment/app/Fragment$h;->b:Landroid/animation/Animator;
    return-void
.end method

.method public final S()Ljava/lang/Object;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/k;
    if-nez v0, :L0
    const/4 v0, 0
    goto :L1
  :L0
    invoke-virtual { v0 }, Landroidx/fragment/app/k;->h()Ljava/lang/Object;
    move-result-object v0
  :L1
    return-object v0
.end method

.method public S0(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 4
    const/4 p1, 1
  .line 1
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->G:Z
    return-void
.end method

.method public S1(Landroid/os/Bundle;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/n;
    if-eqz v0, :L1
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->y0()Z
    move-result v0
    if-nez v0, :L0
    goto :L1
  :L0
  .line 2
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string v0, "Fragment already added and state has been saved"
    invoke-direct { p1, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
  :L1
  .line 3
    iput-object p1, p0, Landroidx/fragment/app/Fragment;->h:Landroid/os/Bundle;
    return-void
.end method

.method public T(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 3
  .line 1
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/k;
    if-eqz p1, :L0
  .line 2
    invoke-virtual { p1 }, Landroidx/fragment/app/k;->i()Landroid/view/LayoutInflater;
    move-result-object p1
  .line 3
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->v:Landroidx/fragment/app/n;
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->t0()Landroid/view/LayoutInflater$Factory2;
    move-result-object v0
    invoke-static { p1, v0 }, Landroidx/core/view/LayoutInflaterCompat;->setFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V
    return-object p1
  :L0
  .line 4
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string v0, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."
    invoke-direct { p1, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public T0(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
  .registers 5
    const/4 p1, 1
  .line 1
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->G:Z
  .line 2
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/k;
    if-nez p1, :L0
    const/4 p1, 0
    goto :L1
  :L0
    invoke-virtual { p1 }, Landroidx/fragment/app/k;->e()Landroid/app/Activity;
    move-result-object p1
  :L1
    if-eqz p1, :L2
    const/4 v0, 0
  .line 3
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->G:Z
  .line 4
    invoke-virtual { p0, p1, p2, p3 }, Landroidx/fragment/app/Fragment;->S0(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
  :L2
    return-void
.end method

.method T1(Landroid/view/View;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Landroidx/fragment/app/Fragment;->A()Landroidx/fragment/app/Fragment$h;
    move-result-object v0
    iput-object p1, v0, Landroidx/fragment/app/Fragment$h;->v:Landroid/view/View;
    return-void
.end method

.method public U0(Z)V
  .registers 2
    return-void
.end method

.method U1(Z)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Landroidx/fragment/app/Fragment;->A()Landroidx/fragment/app/Fragment$h;
    move-result-object v0
    iput-boolean p1, v0, Landroidx/fragment/app/Fragment$h;->y:Z
    return-void
.end method

.method V()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->L:Landroidx/fragment/app/Fragment$h;
    if-nez v0, :L0
    const/4 v0, 0
    return v0
  :L0
  .line 2
    iget v0, v0, Landroidx/fragment/app/Fragment$h;->h:I
    return v0
.end method

.method public V0(Landroid/view/MenuItem;)Z
  .registers 2
    const/4 p1, 0
    return p1
.end method

.method V1(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->L:Landroidx/fragment/app/Fragment$h;
    if-nez v0, :L0
    if-nez p1, :L0
    return-void
  :L0
  .line 2
    invoke-direct { p0 }, Landroidx/fragment/app/Fragment;->A()Landroidx/fragment/app/Fragment$h;
  .line 3
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->L:Landroidx/fragment/app/Fragment$h;
    iput p1, v0, Landroidx/fragment/app/Fragment$h;->h:I
    return-void
.end method

.method public final W()Landroidx/fragment/app/Fragment;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->w:Landroidx/fragment/app/Fragment;
    return-object v0
.end method

.method public W0(Landroid/view/Menu;)V
  .registers 2
    return-void
.end method

.method W1(Landroidx/fragment/app/Fragment$k;)V
  .registers 4
  .line 1
    invoke-direct { p0 }, Landroidx/fragment/app/Fragment;->A()Landroidx/fragment/app/Fragment$h;
  .line 2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->L:Landroidx/fragment/app/Fragment$h;
    iget-object v0, v0, Landroidx/fragment/app/Fragment$h;->x:Landroidx/fragment/app/Fragment$k;
    if-ne p1, v0, :L0
    return-void
  :L0
    if-eqz p1, :L2
    if-nez v0, :L1
    goto :L2
  :L1
  .line 3
    new-instance p1, Ljava/lang/IllegalStateException;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Trying to set a replacement startPostponedEnterTransition on "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { p1, v0 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
  :L2
  .line 4
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->L:Landroidx/fragment/app/Fragment$h;
    iget-boolean v1, v0, Landroidx/fragment/app/Fragment$h;->w:Z
    if-eqz v1, :L3
  .line 5
    iput-object p1, v0, Landroidx/fragment/app/Fragment$h;->x:Landroidx/fragment/app/Fragment$k;
  :L3
    if-eqz p1, :L4
  .line 6
    invoke-interface { p1 }, Landroidx/fragment/app/Fragment$k;->b()V
  :L4
    return-void
.end method

.method public final X()Landroidx/fragment/app/n;
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/n;
    if-eqz v0, :L0
    return-object v0
  :L0
  .line 2
    new-instance v0, Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Fragment "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v2, " not associated with a fragment manager."
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public X0()V
  .registers 2
    const/4 v0, 1
  .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->G:Z
    return-void
.end method

.method X1(Z)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->L:Landroidx/fragment/app/Fragment$h;
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    invoke-direct { p0 }, Landroidx/fragment/app/Fragment;->A()Landroidx/fragment/app/Fragment$h;
    move-result-object v0
    iput-boolean p1, v0, Landroidx/fragment/app/Fragment$h;->c:Z
    return-void
.end method

.method Y()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->L:Landroidx/fragment/app/Fragment$h;
    if-nez v0, :L0
    const/4 v0, 0
    return v0
  :L0
  .line 2
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment$h;->c:Z
    return v0
.end method

.method public Y0(Z)V
  .registers 2
    return-void
.end method

.method Y1(F)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Landroidx/fragment/app/Fragment;->A()Landroidx/fragment/app/Fragment$h;
    move-result-object v0
    iput p1, v0, Landroidx/fragment/app/Fragment$h;->u:F
    return-void
.end method

.method Z()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->L:Landroidx/fragment/app/Fragment$h;
    if-nez v0, :L0
    const/4 v0, 0
    return v0
  :L0
  .line 2
    iget v0, v0, Landroidx/fragment/app/Fragment$h;->f:I
    return v0
.end method

.method public Z0(Landroid/view/Menu;)V
  .registers 2
    return-void
.end method

.method Z1(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/ArrayList<",
      "Ljava/lang/String;",
      ">;",
      "Ljava/util/ArrayList<",
      "Ljava/lang/String;",
      ">;)V"
    }
  .end annotation
  .registers 4
  .line 1
    invoke-direct { p0 }, Landroidx/fragment/app/Fragment;->A()Landroidx/fragment/app/Fragment$h;
  .line 2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->L:Landroidx/fragment/app/Fragment$h;
    iput-object p1, v0, Landroidx/fragment/app/Fragment$h;->i:Ljava/util/ArrayList;
  .line 3
    iput-object p2, v0, Landroidx/fragment/app/Fragment$h;->j:Ljava/util/ArrayList;
    return-void
.end method

.method a0()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->L:Landroidx/fragment/app/Fragment$h;
    if-nez v0, :L0
    const/4 v0, 0
    return v0
  :L0
  .line 2
    iget v0, v0, Landroidx/fragment/app/Fragment$h;->g:I
    return v0
.end method

.method public a1(Z)V
  .registers 2
    return-void
.end method

.method public a2(Landroid/content/Intent;)V
  .parameter # Landroid/content/Intent;
    .annotation build Landroid/annotation/SuppressLint;
      value = {
        "UnknownNullness"
      }
    .end annotation
  .end parameter
  .registers 3
    const/4 v0, 0
  .line 1
    invoke-virtual { p0, p1, v0 }, Landroidx/fragment/app/Fragment;->b2(Landroid/content/Intent;Landroid/os/Bundle;)V
    return-void
.end method

.method b0()F
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->L:Landroidx/fragment/app/Fragment$h;
    if-nez v0, :L0
    const/high16 v0, 16256
    return v0
  :L0
  .line 2
    iget v0, v0, Landroidx/fragment/app/Fragment$h;->u:F
    return v0
.end method

.method public b1(I[Ljava/lang/String;[I)V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 4
    return-void
.end method

.method public b2(Landroid/content/Intent;Landroid/os/Bundle;)V
  .parameter # Landroid/content/Intent;
    .annotation build Landroid/annotation/SuppressLint;
      value = {
        "UnknownNullness"
      }
    .end annotation
  .end parameter
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/k;
    if-eqz v0, :L0
    const/4 v1, -1
  .line 2
    invoke-virtual { v0, p0, p1, v1, p2 }, Landroidx/fragment/app/k;->k(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    return-void
  :L0
  .line 3
    new-instance p1, Ljava/lang/IllegalStateException;
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "Fragment "
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v0, " not attached to Activity"
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public c0()Ljava/lang/Object;
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->L:Landroidx/fragment/app/Fragment$h;
    if-nez v0, :L0
    const/4 v0, 0
    return-object v0
  :L0
  .line 2
    iget-object v0, v0, Landroidx/fragment/app/Fragment$h;->n:Ljava/lang/Object;
    sget-object v1, Landroidx/fragment/app/Fragment;->Z:Ljava/lang/Object;
    if-ne v0, v1, :L1
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->P()Ljava/lang/Object;
    move-result-object v0
  :L1
    return-object v0
.end method

.method public c1()V
  .registers 2
    const/4 v0, 1
  .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->G:Z
    return-void
.end method

.method public c2(Landroid/content/Intent;I)V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .parameter # Landroid/content/Intent;
    .annotation build Landroid/annotation/SuppressLint;
      value = {
        "UnknownNullness"
      }
    .end annotation
  .end parameter
  .registers 4
    const/4 v0, 0
  .line 1
    invoke-virtual { p0, p1, p2, v0 }, Landroidx/fragment/app/Fragment;->d2(Landroid/content/Intent;ILandroid/os/Bundle;)V
    return-void
.end method

.method public final d0()Landroid/content/res/Resources;
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    return-object v0
.end method

.method public d1(Landroid/os/Bundle;)V
  .registers 2
    return-void
.end method

.method public d2(Landroid/content/Intent;ILandroid/os/Bundle;)V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .parameter # Landroid/content/Intent;
    .annotation build Landroid/annotation/SuppressLint;
      value = {
        "UnknownNullness"
      }
    .end annotation
  .end parameter
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/k;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->X()Landroidx/fragment/app/n;
    move-result-object v0
    invoke-virtual { v0, p0, p1, p2, p3 }, Landroidx/fragment/app/n;->K0(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    return-void
  :L0
  .line 3
    new-instance p1, Ljava/lang/IllegalStateException;
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p3, "Fragment "
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string p3, " not attached to Activity"
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public e0()Ljava/lang/Object;
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->L:Landroidx/fragment/app/Fragment$h;
    if-nez v0, :L0
    const/4 v0, 0
    return-object v0
  :L0
  .line 2
    iget-object v0, v0, Landroidx/fragment/app/Fragment$h;->l:Ljava/lang/Object;
    sget-object v1, Landroidx/fragment/app/Fragment;->Z:Ljava/lang/Object;
    if-ne v0, v1, :L1
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->M()Ljava/lang/Object;
    move-result-object v0
  :L1
    return-object v0
.end method

.method public e1()V
  .registers 2
    const/4 v0, 1
  .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->G:Z
    return-void
.end method

.method public e2(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .parameter # Landroid/content/IntentSender;
    .annotation build Landroid/annotation/SuppressLint;
      value = {
        "UnknownNullness"
      }
    .end annotation
  .end parameter
  .registers 18
    move-object v9, p0
  .line 1
    iget-object v0, v9, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/k;
    const-string v1, "Fragment "
    if-eqz v0, :L2
    const/4 v0, 2
  .line 2
    invoke-static { v0 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result v0
    if-eqz v0, :L0
  .line 3
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v1, " received the following in startIntentSenderForResult() requestCode: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move v3, p2
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, " IntentSender: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-object v2, p1
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v1, " fillInIntent: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-object v4, p3
    invoke-virtual { v0, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v1, " options: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-object/from16 v8, p7
    invoke-virtual { v0, v8 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    goto :L1
  :L0
    move-object v2, p1
    move v3, p2
    move-object v4, p3
    move-object/from16 v8, p7
  :L1
  .line 4
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->X()Landroidx/fragment/app/n;
    move-result-object v0
    move-object v1, p0
    move-object v2, p1
    move v3, p2
    move-object v4, p3
    move v5, p4
    move v6, p5
    move/from16 v7, p6
    move-object/from16 v8, p7
    invoke-virtual/range { v0 .. v8 }, Landroidx/fragment/app/n;->L0(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    return-void
  :L2
  .line 5
    new-instance v0, Ljava/lang/IllegalStateException;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v1, " not attached to Activity"
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result p1
    return p1
.end method

.method public f0()Ljava/lang/Object;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->L:Landroidx/fragment/app/Fragment$h;
    if-nez v0, :L0
    const/4 v0, 0
    return-object v0
  :L0
  .line 2
    iget-object v0, v0, Landroidx/fragment/app/Fragment$h;->o:Ljava/lang/Object;
    return-object v0
.end method

.method public f1()V
  .registers 2
    const/4 v0, 1
  .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->G:Z
    return-void
.end method

.method public f2()V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->L:Landroidx/fragment/app/Fragment$h;
    if-eqz v0, :L3
    invoke-direct { p0 }, Landroidx/fragment/app/Fragment;->A()Landroidx/fragment/app/Fragment$h;
    move-result-object v0
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment$h;->w:Z
    if-nez v0, :L0
    goto :L3
  :L0
  .line 2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/k;
    if-nez v0, :L1
  .line 3
    invoke-direct { p0 }, Landroidx/fragment/app/Fragment;->A()Landroidx/fragment/app/Fragment$h;
    move-result-object v0
    const/4 v1, 0
    iput-boolean v1, v0, Landroidx/fragment/app/Fragment$h;->w:Z
    goto :L3
  :L1
  .line 4
    invoke-static { }, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
    move-result-object v0
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/k;
    invoke-virtual { v1 }, Landroidx/fragment/app/k;->g()Landroid/os/Handler;
    move-result-object v1
    invoke-virtual { v1 }, Landroid/os/Handler;->getLooper()Landroid/os/Looper;
    move-result-object v1
    if-eq v0, v1, :L2
  .line 5
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/k;
    invoke-virtual { v0 }, Landroidx/fragment/app/k;->g()Landroid/os/Handler;
    move-result-object v0
    new-instance v1, Landroidx/fragment/app/Fragment$b;
    invoke-direct { v1, p0 }, Landroidx/fragment/app/Fragment$b;-><init>(Landroidx/fragment/app/Fragment;)V
    invoke-virtual { v0, v1 }, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    goto :L3
  :L2
    const/4 v0, 1
  .line 6
    invoke-virtual { p0, v0 }, Landroidx/fragment/app/Fragment;->w(Z)V
  :L3
    return-void
.end method

.method public g0()Ljava/lang/Object;
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->L:Landroidx/fragment/app/Fragment$h;
    if-nez v0, :L0
    const/4 v0, 0
    return-object v0
  :L0
  .line 2
    iget-object v0, v0, Landroidx/fragment/app/Fragment$h;->p:Ljava/lang/Object;
    sget-object v1, Landroidx/fragment/app/Fragment;->Z:Ljava/lang/Object;
    if-ne v0, v1, :L1
  .line 3
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->f0()Ljava/lang/Object;
    move-result-object v0
  :L1
    return-object v0
.end method

.method public g1(Landroid/view/View;Landroid/os/Bundle;)V
  .registers 3
    return-void
.end method

.method public getLifecycle()Landroidx/lifecycle/f;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/lifecycle/k;
    return-object v0
.end method

.method public final getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->V:Landroidx/savedstate/b;
    invoke-virtual { v0 }, Landroidx/savedstate/b;->b()Landroidx/savedstate/SavedStateRegistry;
    move-result-object v0
    return-object v0
.end method

.method public getViewModelStore()Landroidx/lifecycle/x;
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/n;
    if-eqz v0, :L1
  .line 2
    invoke-direct { p0 }, Landroidx/fragment/app/Fragment;->U()I
    move-result v0
    sget-object v1, Landroidx/lifecycle/f$c;->c:Landroidx/lifecycle/f$c;
    invoke-virtual { v1 }, Ljava/lang/Enum;->ordinal()I
    move-result v1
    if-eq v0, v1, :L0
  .line 3
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/n;
    invoke-virtual { v0, p0 }, Landroidx/fragment/app/n;->z0(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/x;
    move-result-object v0
    return-object v0
  :L0
  .line 4
    new-instance v0, Ljava/lang/IllegalStateException;
    const-string v1, "Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported"
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
  :L1
  .line 5
    new-instance v0, Ljava/lang/IllegalStateException;
    const-string v1, "Can't access ViewModels from detached fragment"
    invoke-direct { v0, v1 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method h0()Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/ArrayList<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->L:Landroidx/fragment/app/Fragment$h;
    if-eqz v0, :L1
    iget-object v0, v0, Landroidx/fragment/app/Fragment$h;->i:Ljava/util/ArrayList;
    if-nez v0, :L0
    goto :L1
  :L0
    return-object v0
  :L1
  .line 2
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    return-object v0
.end method

.method public h1(Landroid/os/Bundle;)V
  .registers 2
    const/4 p1, 1
  .line 1
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->G:Z
    return-void
.end method

.method public final hashCode()I
  .registers 2
  .line 1
    invoke-super { p0 }, Ljava/lang/Object;->hashCode()I
    move-result v0
    return v0
.end method

.method i0()Ljava/util/ArrayList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/ArrayList<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->L:Landroidx/fragment/app/Fragment$h;
    if-eqz v0, :L1
    iget-object v0, v0, Landroidx/fragment/app/Fragment$h;->j:Ljava/util/ArrayList;
    if-nez v0, :L0
    goto :L1
  :L0
    return-object v0
  :L1
  .line 2
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    return-object v0
.end method

.method i1(Landroid/os/Bundle;)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->v:Landroidx/fragment/app/n;
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->R0()V
    const/4 v0, 3
  .line 2
    iput v0, p0, Landroidx/fragment/app/Fragment;->b:I
    const/4 v0, 0
  .line 3
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->G:Z
  .line 4
    invoke-virtual { p0, p1 }, Landroidx/fragment/app/Fragment;->B0(Landroid/os/Bundle;)V
  .line 5
    iget-boolean p1, p0, Landroidx/fragment/app/Fragment;->G:Z
    if-eqz p1, :L0
  .line 6
    invoke-direct { p0 }, Landroidx/fragment/app/Fragment;->N1()V
  .line 7
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->v:Landroidx/fragment/app/n;
    invoke-virtual { p1 }, Landroidx/fragment/app/n;->y()V
    return-void
  :L0
  .line 8
    new-instance p1, Landroidx/fragment/app/e0;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Fragment "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v1, " did not call through to super.onActivityCreated()"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { p1, v0 }, Landroidx/fragment/app/e0;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public final j0(I)Ljava/lang/String;
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->d0()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual { v0, p1 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object p1
    return-object p1
.end method

.method j1()V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->Y:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/fragment/app/Fragment$j;
  .line 2
    invoke-virtual { v1 }, Landroidx/fragment/app/Fragment$j;->a()V
    goto :L0
  :L1
  .line 3
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->Y:Ljava/util/ArrayList;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->clear()V
  .line 4
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->v:Landroidx/fragment/app/n;
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/k;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->y()Landroidx/fragment/app/g;
    move-result-object v2
    invoke-virtual { v0, v1, v2, p0 }, Landroidx/fragment/app/n;->j(Landroidx/fragment/app/k;Landroidx/fragment/app/g;Landroidx/fragment/app/Fragment;)V
    const/4 v0, 0
  .line 5
    iput v0, p0, Landroidx/fragment/app/Fragment;->b:I
  .line 6
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->G:Z
  .line 7
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/k;
    invoke-virtual { v0 }, Landroidx/fragment/app/k;->f()Landroid/content/Context;
    move-result-object v0
    invoke-virtual { p0, v0 }, Landroidx/fragment/app/Fragment;->E0(Landroid/content/Context;)V
  .line 8
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->G:Z
    if-eqz v0, :L2
  .line 9
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/n;
    invoke-virtual { v0, p0 }, Landroidx/fragment/app/n;->I(Landroidx/fragment/app/Fragment;)V
  .line 10
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->v:Landroidx/fragment/app/n;
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->z()V
    return-void
  :L2
  .line 11
    new-instance v0, Landroidx/fragment/app/e0;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Fragment "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v2, " did not call through to super.onAttach()"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Landroidx/fragment/app/e0;-><init>(Ljava/lang/String;)V
    goto :L4
  :L3
    throw v0
  :L4
    goto :L3
.end method

.method public final k0()Landroidx/fragment/app/Fragment;
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->i:Landroidx/fragment/app/Fragment;
    if-eqz v0, :L0
    return-object v0
  :L0
  .line 2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/n;
    if-eqz v0, :L1
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->j:Ljava/lang/String;
    if-eqz v1, :L1
  .line 3
    invoke-virtual { v0, v1 }, Landroidx/fragment/app/n;->f0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    move-result-object v0
    return-object v0
  :L1
    const/4 v0, 0
    return-object v0
.end method

.method k1(Landroid/content/res/Configuration;)V
  .registers 3
  .line 1
    invoke-virtual { p0, p1 }, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V
  .line 2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->v:Landroidx/fragment/app/n;
    invoke-virtual { v0, p1 }, Landroidx/fragment/app/n;->A(Landroid/content/res/Configuration;)V
    return-void
.end method

.method public l0()Landroid/view/View;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    return-object v0
.end method

.method l1(Landroid/view/MenuItem;)Z
  .registers 3
  .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->A:Z
    if-nez v0, :L1
  .line 2
    invoke-virtual { p0, p1 }, Landroidx/fragment/app/Fragment;->G0(Landroid/view/MenuItem;)Z
    move-result v0
    if-eqz v0, :L0
    const/4 p1, 1
    return p1
  :L0
  .line 3
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->v:Landroidx/fragment/app/n;
    invoke-virtual { v0, p1 }, Landroidx/fragment/app/n;->B(Landroid/view/MenuItem;)Z
    move-result p1
    return p1
  :L1
    const/4 p1, 0
    return p1
.end method

.method public m0()Landroidx/lifecycle/LiveData;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Landroidx/lifecycle/LiveData<",
      "Landroidx/lifecycle/j;",
      ">;"
    }
  .end annotation
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->U:Landroidx/lifecycle/o;
    return-object v0
.end method

.method m1(Landroid/os/Bundle;)V
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->v:Landroidx/fragment/app/n;
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->R0()V
    const/4 v0, 1
  .line 2
    iput v0, p0, Landroidx/fragment/app/Fragment;->b:I
    const/4 v1, 0
  .line 3
    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->G:Z
  .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 19
    if-lt v1, v2, :L0
  .line 5
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/lifecycle/k;
    new-instance v2, Landroidx/fragment/app/Fragment$5;
    invoke-direct { v2, p0 }, Landroidx/fragment/app/Fragment$5;-><init>(Landroidx/fragment/app/Fragment;)V
    invoke-virtual { v1, v2 }, Landroidx/lifecycle/k;->a(Landroidx/lifecycle/i;)V
  :L0
  .line 6
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->V:Landroidx/savedstate/b;
    invoke-virtual { v1, p1 }, Landroidx/savedstate/b;->c(Landroid/os/Bundle;)V
  .line 7
    invoke-virtual { p0, p1 }, Landroidx/fragment/app/Fragment;->H0(Landroid/os/Bundle;)V
  .line 8
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->Q:Z
  .line 9
    iget-boolean p1, p0, Landroidx/fragment/app/Fragment;->G:Z
    if-eqz p1, :L1
  .line 10
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/lifecycle/k;
    sget-object v0, Landroidx/lifecycle/f$b;->ON_CREATE:Landroidx/lifecycle/f$b;
    invoke-virtual { p1, v0 }, Landroidx/lifecycle/k;->h(Landroidx/lifecycle/f$b;)V
    return-void
  :L1
  .line 11
    new-instance p1, Landroidx/fragment/app/e0;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Fragment "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v1, " did not call through to super.onCreate()"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { p1, v0 }, Landroidx/fragment/app/e0;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method n1(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
  .registers 5
  .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->A:Z
    const/4 v1, 0
    if-nez v0, :L1
  .line 2
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->E:Z
    if-eqz v0, :L0
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->F:Z
    if-eqz v0, :L0
    const/4 v1, 1
  .line 3
    invoke-virtual { p0, p1, p2 }, Landroidx/fragment/app/Fragment;->K0(Landroid/view/Menu;Landroid/view/MenuInflater;)V
  :L0
  .line 4
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->v:Landroidx/fragment/app/n;
    invoke-virtual { v0, p1, p2 }, Landroidx/fragment/app/n;->D(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    move-result p1
    or-int/2addr v1, p1
  :L1
    return v1
.end method

.method o0()V
  .registers 4
  .line 1
    invoke-direct { p0 }, Landroidx/fragment/app/Fragment;->n0()V
  .line 2
    invoke-static { }, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/util/UUID;->toString()Ljava/lang/String;
    move-result-object v0
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->g:Ljava/lang/String;
    const/4 v0, 0
  .line 3
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->m:Z
  .line 4
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->n:Z
  .line 5
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->o:Z
  .line 6
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->p:Z
  .line 7
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->q:Z
  .line 8
    iput v0, p0, Landroidx/fragment/app/Fragment;->s:I
    const/4 v1, 0
  .line 9
    iput-object v1, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/n;
  .line 10
    new-instance v2, Landroidx/fragment/app/o;
    invoke-direct { v2 }, Landroidx/fragment/app/o;-><init>()V
    iput-object v2, p0, Landroidx/fragment/app/Fragment;->v:Landroidx/fragment/app/n;
  .line 11
    iput-object v1, p0, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/k;
  .line 12
    iput v0, p0, Landroidx/fragment/app/Fragment;->x:I
  .line 13
    iput v0, p0, Landroidx/fragment/app/Fragment;->y:I
  .line 14
    iput-object v1, p0, Landroidx/fragment/app/Fragment;->z:Ljava/lang/String;
  .line 15
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->A:Z
  .line 16
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->B:Z
    return-void
.end method

.method o1(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->v:Landroidx/fragment/app/n;
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->R0()V
    const/4 v0, 1
  .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->r:Z
  .line 3
    new-instance v0, Landroidx/fragment/app/a0;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->getViewModelStore()Landroidx/lifecycle/x;
    move-result-object v1
    invoke-direct { v0, p0, v1 }, Landroidx/fragment/app/a0;-><init>(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/x;)V
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->T:Landroidx/fragment/app/a0;
  .line 4
    invoke-virtual { p0, p1, p2, p3 }, Landroidx/fragment/app/Fragment;->L0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    move-result-object p1
    iput-object p1, p0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    if-eqz p1, :L0
  .line 5
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->T:Landroidx/fragment/app/a0;
    invoke-virtual { p1 }, Landroidx/fragment/app/a0;->b()V
  .line 6
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    iget-object p2, p0, Landroidx/fragment/app/Fragment;->T:Landroidx/fragment/app/a0;
    invoke-static { p1, p2 }, Landroidx/lifecycle/z;->a(Landroid/view/View;Landroidx/lifecycle/j;)V
  .line 7
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    iget-object p2, p0, Landroidx/fragment/app/Fragment;->T:Landroidx/fragment/app/a0;
    invoke-static { p1, p2 }, Landroidx/lifecycle/a0;->a(Landroid/view/View;Landroidx/lifecycle/y;)V
  .line 8
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    iget-object p2, p0, Landroidx/fragment/app/Fragment;->T:Landroidx/fragment/app/a0;
    invoke-static { p1, p2 }, Landroidx/savedstate/d;->a(Landroid/view/View;Landroidx/savedstate/c;)V
  .line 9
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->U:Landroidx/lifecycle/o;
    iget-object p2, p0, Landroidx/fragment/app/Fragment;->T:Landroidx/fragment/app/a0;
    invoke-virtual { p1, p2 }, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V
    goto :L1
  :L0
  .line 10
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->T:Landroidx/fragment/app/a0;
    invoke-virtual { p1 }, Landroidx/fragment/app/a0;->c()Z
    move-result p1
    if-nez p1, :L2
    const/4 p1, 0
  .line 11
    iput-object p1, p0, Landroidx/fragment/app/Fragment;->T:Landroidx/fragment/app/a0;
  :L1
    return-void
  :L2
  .line 12
    new-instance p1, Ljava/lang/IllegalStateException;
    const-string p2, "Called getViewLifecycleOwner() but onCreateView() returned null"
    invoke-direct { p1, p2 }, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
  .registers 2
    const/4 p1, 1
  .line 1
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->G:Z
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
  .registers 5
  .line 1
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->J1()Landroidx/fragment/app/e;
    move-result-object v0
    invoke-virtual { v0, p1, p2, p3 }, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    return-void
.end method

.method public onLowMemory()V
  .registers 2
    const/4 v0, 1
  .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->G:Z
    return-void
.end method

.method p1()V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->v:Landroidx/fragment/app/n;
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->E()V
  .line 2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/lifecycle/k;
    sget-object v1, Landroidx/lifecycle/f$b;->ON_DESTROY:Landroidx/lifecycle/f$b;
    invoke-virtual { v0, v1 }, Landroidx/lifecycle/k;->h(Landroidx/lifecycle/f$b;)V
    const/4 v0, 0
  .line 3
    iput v0, p0, Landroidx/fragment/app/Fragment;->b:I
  .line 4
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->G:Z
  .line 5
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->Q:Z
  .line 6
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->M0()V
  .line 7
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->G:Z
    if-eqz v0, :L0
    return-void
  :L0
  .line 8
    new-instance v0, Landroidx/fragment/app/e0;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Fragment "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v2, " did not call through to super.onDestroy()"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Landroidx/fragment/app/e0;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public final q0()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/k;
    if-eqz v0, :L0
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->m:Z
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method q1()V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->v:Landroidx/fragment/app/n;
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->F()V
  .line 2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    if-eqz v0, :L0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->T:Landroidx/fragment/app/a0;
    invoke-virtual { v0 }, Landroidx/fragment/app/a0;->getLifecycle()Landroidx/lifecycle/f;
    move-result-object v0
    invoke-virtual { v0 }, Landroidx/lifecycle/f;->b()Landroidx/lifecycle/f$c;
    move-result-object v0
    sget-object v1, Landroidx/lifecycle/f$c;->d:Landroidx/lifecycle/f$c;
  .line 3
    invoke-virtual { v0, v1 }, Landroidx/lifecycle/f$c;->a(Landroidx/lifecycle/f$c;)Z
    move-result v0
    if-eqz v0, :L0
  .line 4
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->T:Landroidx/fragment/app/a0;
    sget-object v1, Landroidx/lifecycle/f$b;->ON_DESTROY:Landroidx/lifecycle/f$b;
    invoke-virtual { v0, v1 }, Landroidx/fragment/app/a0;->a(Landroidx/lifecycle/f$b;)V
  :L0
    const/4 v0, 1
  .line 5
    iput v0, p0, Landroidx/fragment/app/Fragment;->b:I
    const/4 v0, 0
  .line 6
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->G:Z
  .line 7
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->O0()V
  .line 8
    iget-boolean v1, p0, Landroidx/fragment/app/Fragment;->G:Z
    if-eqz v1, :L1
  .line 9
    invoke-static { p0 }, Lc/l/a/a;->b(Landroidx/lifecycle/j;)Lc/l/a/a;
    move-result-object v1
    invoke-virtual { v1 }, Lc/l/a/a;->c()V
  .line 10
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->r:Z
    return-void
  :L1
  .line 11
    new-instance v0, Landroidx/fragment/app/e0;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Fragment "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v2, " did not call through to super.onDestroyView()"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Landroidx/fragment/app/e0;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public final r0()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->A:Z
    return v0
.end method

.method r1()V
  .registers 4
    const/4 v0, -1
  .line 1
    iput v0, p0, Landroidx/fragment/app/Fragment;->b:I
    const/4 v0, 0
  .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->G:Z
  .line 3
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->P0()V
    const/4 v0, 0
  .line 4
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->P:Landroid/view/LayoutInflater;
  .line 5
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->G:Z
    if-eqz v0, :L1
  .line 6
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->v:Landroidx/fragment/app/n;
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->D0()Z
    move-result v0
    if-nez v0, :L0
  .line 7
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->v:Landroidx/fragment/app/n;
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->E()V
  .line 8
    new-instance v0, Landroidx/fragment/app/o;
    invoke-direct { v0 }, Landroidx/fragment/app/o;-><init>()V
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->v:Landroidx/fragment/app/n;
  :L0
    return-void
  :L1
  .line 9
    new-instance v0, Landroidx/fragment/app/e0;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Fragment "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v2, " did not call through to super.onDetach()"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Landroidx/fragment/app/e0;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method s0()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->L:Landroidx/fragment/app/Fragment$h;
    if-nez v0, :L0
    const/4 v0, 0
    return v0
  :L0
  .line 2
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment$h;->y:Z
    return v0
.end method

.method s1(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Landroidx/fragment/app/Fragment;->Q0(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    move-result-object p1
    iput-object p1, p0, Landroidx/fragment/app/Fragment;->P:Landroid/view/LayoutInflater;
    return-object p1
.end method

.method final t0()Z
  .registers 2
  .line 1
    iget v0, p0, Landroidx/fragment/app/Fragment;->s:I
    if-lez v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method t1()V
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->onLowMemory()V
  .line 2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->v:Landroidx/fragment/app/n;
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->G()V
    return-void
.end method

.method public toString()Ljava/lang/String;
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    const/16 v1, 128
    invoke-direct { v0, v1 }, Ljava/lang/StringBuilder;-><init>(I)V
  .line 2
    invoke-virtual { p0 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v1
  .line 3
    invoke-virtual { v1 }, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "{"
  .line 4
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 5
    invoke-static { p0 }, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I
    move-result v1
    invoke-static { v1 }, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "}"
  .line 6
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, " ("
  .line 7
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 8
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->g:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 9
    iget v1, p0, Landroidx/fragment/app/Fragment;->x:I
    if-eqz v1, :L0
    const-string v1, " id=0x"
  .line 10
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 11
    iget v1, p0, Landroidx/fragment/app/Fragment;->x:I
    invoke-static { v1 }, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L0
  .line 12
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->z:Ljava/lang/String;
    if-eqz v1, :L1
    const-string v1, " tag="
  .line 13
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 14
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->z:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L1
    const-string v1, ")"
  .line 15
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 16
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public final u0()Z
  .registers 3
  .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->F:Z
    if-eqz v0, :L1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/n;
    if-eqz v0, :L0
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->w:Landroidx/fragment/app/Fragment;
  .line 2
    invoke-virtual { v0, v1 }, Landroidx/fragment/app/n;->G0(Landroidx/fragment/app/Fragment;)Z
    move-result v0
    if-eqz v0, :L1
  :L0
    const/4 v0, 1
    goto :L2
  :L1
    const/4 v0, 0
  :L2
    return v0
.end method

.method u1(Z)V
  .registers 3
  .line 1
    invoke-virtual { p0, p1 }, Landroidx/fragment/app/Fragment;->U0(Z)V
  .line 2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->v:Landroidx/fragment/app/n;
    invoke-virtual { v0, p1 }, Landroidx/fragment/app/n;->H(Z)V
    return-void
.end method

.method v0()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->L:Landroidx/fragment/app/Fragment$h;
    if-nez v0, :L0
    const/4 v0, 0
    return v0
  :L0
  .line 2
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment$h;->w:Z
    return v0
.end method

.method v1(Landroid/view/MenuItem;)Z
  .registers 3
  .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->A:Z
    if-nez v0, :L1
  .line 2
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->E:Z
    if-eqz v0, :L0
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->F:Z
    if-eqz v0, :L0
  .line 3
    invoke-virtual { p0, p1 }, Landroidx/fragment/app/Fragment;->V0(Landroid/view/MenuItem;)Z
    move-result v0
    if-eqz v0, :L0
    const/4 p1, 1
    return p1
  :L0
  .line 4
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->v:Landroidx/fragment/app/n;
    invoke-virtual { v0, p1 }, Landroidx/fragment/app/n;->J(Landroid/view/MenuItem;)Z
    move-result p1
    return p1
  :L1
    const/4 p1, 0
    return p1
.end method

.method w(Z)V
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->L:Landroidx/fragment/app/Fragment$h;
    const/4 v1, 0
    if-nez v0, :L0
    goto :L1
  :L0
    const/4 v2, 0
  .line 2
    iput-boolean v2, v0, Landroidx/fragment/app/Fragment$h;->w:Z
  .line 3
    iget-object v2, v0, Landroidx/fragment/app/Fragment$h;->x:Landroidx/fragment/app/Fragment$k;
  .line 4
    iput-object v1, v0, Landroidx/fragment/app/Fragment$h;->x:Landroidx/fragment/app/Fragment$k;
    move-object v1, v2
  :L1
    if-eqz v1, :L2
  .line 5
    invoke-interface { v1 }, Landroidx/fragment/app/Fragment$k;->a()V
    goto :L4
  :L2
  .line 6
    sget-boolean v0, Landroidx/fragment/app/n;->P:Z
    if-eqz v0, :L4
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    if-eqz v0, :L4
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->H:Landroid/view/ViewGroup;
    if-eqz v0, :L4
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/n;
    if-eqz v1, :L4
  .line 7
    invoke-static { v0, v1 }, Landroidx/fragment/app/c0;->n(Landroid/view/ViewGroup;Landroidx/fragment/app/n;)Landroidx/fragment/app/c0;
    move-result-object v0
  .line 8
    invoke-virtual { v0 }, Landroidx/fragment/app/c0;->p()V
    if-eqz p1, :L3
  .line 9
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/k;
    invoke-virtual { p1 }, Landroidx/fragment/app/k;->g()Landroid/os/Handler;
    move-result-object p1
    new-instance v1, Landroidx/fragment/app/Fragment$c;
    invoke-direct { v1, p0, v0 }, Landroidx/fragment/app/Fragment$c;-><init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/c0;)V
    invoke-virtual { p1, v1 }, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    goto :L4
  :L3
  .line 10
    invoke-virtual { v0 }, Landroidx/fragment/app/c0;->g()V
  :L4
    return-void
.end method

.method public final w0()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->n:Z
    return v0
.end method

.method w1(Landroid/view/Menu;)V
  .registers 3
  .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->A:Z
    if-nez v0, :L1
  .line 2
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->E:Z
    if-eqz v0, :L0
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->F:Z
    if-eqz v0, :L0
  .line 3
    invoke-virtual { p0, p1 }, Landroidx/fragment/app/Fragment;->W0(Landroid/view/Menu;)V
  :L0
  .line 4
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->v:Landroidx/fragment/app/n;
    invoke-virtual { v0, p1 }, Landroidx/fragment/app/n;->K(Landroid/view/Menu;)V
  :L1
    return-void
.end method

.method final x0()Z
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->W()Landroidx/fragment/app/Fragment;
    move-result-object v0
    if-eqz v0, :L1
  .line 2
    invoke-virtual { v0 }, Landroidx/fragment/app/Fragment;->w0()Z
    move-result v1
    if-nez v1, :L0
    invoke-virtual { v0 }, Landroidx/fragment/app/Fragment;->x0()Z
    move-result v0
    if-eqz v0, :L1
  :L0
    const/4 v0, 1
    goto :L2
  :L1
    const/4 v0, 0
  :L2
    return v0
.end method

.method x1()V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->v:Landroidx/fragment/app/n;
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->M()V
  .line 2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    if-eqz v0, :L0
  .line 3
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->T:Landroidx/fragment/app/a0;
    sget-object v1, Landroidx/lifecycle/f$b;->ON_PAUSE:Landroidx/lifecycle/f$b;
    invoke-virtual { v0, v1 }, Landroidx/fragment/app/a0;->a(Landroidx/lifecycle/f$b;)V
  :L0
  .line 4
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/lifecycle/k;
    sget-object v1, Landroidx/lifecycle/f$b;->ON_PAUSE:Landroidx/lifecycle/f$b;
    invoke-virtual { v0, v1 }, Landroidx/lifecycle/k;->h(Landroidx/lifecycle/f$b;)V
    const/4 v0, 6
  .line 5
    iput v0, p0, Landroidx/fragment/app/Fragment;->b:I
    const/4 v0, 0
  .line 6
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->G:Z
  .line 7
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->X0()V
  .line 8
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->G:Z
    if-eqz v0, :L1
    return-void
  :L1
  .line 9
    new-instance v0, Landroidx/fragment/app/e0;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Fragment "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v2, " did not call through to super.onPause()"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Landroidx/fragment/app/e0;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method y()Landroidx/fragment/app/g;
  .registers 2
  .line 1
    new-instance v0, Landroidx/fragment/app/Fragment$d;
    invoke-direct { v0, p0 }, Landroidx/fragment/app/Fragment$d;-><init>(Landroidx/fragment/app/Fragment;)V
    return-object v0
.end method

.method public final y0()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/n;
    if-nez v0, :L0
    const/4 v0, 0
    return v0
  :L0
  .line 2
    invoke-virtual { v0 }, Landroidx/fragment/app/n;->J0()Z
    move-result v0
    return v0
.end method

.method y1(Z)V
  .registers 3
  .line 1
    invoke-virtual { p0, p1 }, Landroidx/fragment/app/Fragment;->Y0(Z)V
  .line 2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->v:Landroidx/fragment/app/n;
    invoke-virtual { v0, p1 }, Landroidx/fragment/app/n;->N(Z)V
    return-void
.end method

.method public z(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
  .registers 7
  .line 1
    invoke-virtual { p3, p1 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    const-string v0, "mFragmentId=#"
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
  .line 2
    iget v0, p0, Landroidx/fragment/app/Fragment;->x:I
    invoke-static { v0 }, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    const-string v0, " mContainerId=#"
  .line 3
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
  .line 4
    iget v0, p0, Landroidx/fragment/app/Fragment;->y:I
    invoke-static { v0 }, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    const-string v0, " mTag="
  .line 5
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->z:Ljava/lang/String;
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
  .line 6
    invoke-virtual { p3, p1 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    const-string v0, "mState="
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    iget v0, p0, Landroidx/fragment/app/Fragment;->b:I
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->print(I)V
    const-string v0, " mWho="
  .line 7
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->g:Ljava/lang/String;
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    const-string v0, " mBackStackNesting="
  .line 8
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    iget v0, p0, Landroidx/fragment/app/Fragment;->s:I
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->println(I)V
  .line 9
    invoke-virtual { p3, p1 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    const-string v0, "mAdded="
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->m:Z
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->print(Z)V
    const-string v0, " mRemoving="
  .line 10
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->n:Z
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->print(Z)V
    const-string v0, " mFromLayout="
  .line 11
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->o:Z
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->print(Z)V
    const-string v0, " mInLayout="
  .line 12
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->p:Z
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->println(Z)V
  .line 13
    invoke-virtual { p3, p1 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    const-string v0, "mHidden="
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->A:Z
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->print(Z)V
    const-string v0, " mDetached="
  .line 14
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->B:Z
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->print(Z)V
    const-string v0, " mMenuVisible="
  .line 15
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->F:Z
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->print(Z)V
    const-string v0, " mHasMenu="
  .line 16
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->E:Z
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->println(Z)V
  .line 17
    invoke-virtual { p3, p1 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    const-string v0, "mRetainInstance="
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->C:Z
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->print(Z)V
    const-string v0, " mUserVisibleHint="
  .line 18
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->K:Z
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->println(Z)V
  .line 19
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/n;
    if-eqz v0, :L0
  .line 20
    invoke-virtual { p3, p1 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    const-string v0, "mFragmentManager="
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
  .line 21
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/n;
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
  :L0
  .line 22
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/k;
    if-eqz v0, :L1
  .line 23
    invoke-virtual { p3, p1 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    const-string v0, "mHost="
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
  .line 24
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/k;
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
  :L1
  .line 25
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->w:Landroidx/fragment/app/Fragment;
    if-eqz v0, :L2
  .line 26
    invoke-virtual { p3, p1 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    const-string v0, "mParentFragment="
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
  .line 27
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->w:Landroidx/fragment/app/Fragment;
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
  :L2
  .line 28
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->h:Landroid/os/Bundle;
    if-eqz v0, :L3
  .line 29
    invoke-virtual { p3, p1 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    const-string v0, "mArguments="
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->h:Landroid/os/Bundle;
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
  :L3
  .line 30
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;
    if-eqz v0, :L4
  .line 31
    invoke-virtual { p3, p1 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    const-string v0, "mSavedFragmentState="
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
  .line 32
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
  :L4
  .line 33
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->d:Landroid/util/SparseArray;
    if-eqz v0, :L5
  .line 34
    invoke-virtual { p3, p1 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    const-string v0, "mSavedViewState="
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
  .line 35
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->d:Landroid/util/SparseArray;
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
  :L5
  .line 36
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->e:Landroid/os/Bundle;
    if-eqz v0, :L6
  .line 37
    invoke-virtual { p3, p1 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    const-string v0, "mSavedViewRegistryState="
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
  .line 38
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->e:Landroid/os/Bundle;
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
  :L6
  .line 39
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->k0()Landroidx/fragment/app/Fragment;
    move-result-object v0
    if-eqz v0, :L7
  .line 40
    invoke-virtual { p3, p1 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    const-string v1, "mTarget="
    invoke-virtual { p3, v1 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V
    const-string v0, " mTargetRequestCode="
  .line 41
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
  .line 42
    iget v0, p0, Landroidx/fragment/app/Fragment;->k:I
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->println(I)V
  :L7
  .line 43
    invoke-virtual { p3, p1 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    const-string v0, "mPopDirection="
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->Y()Z
    move-result v0
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->println(Z)V
  .line 44
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->L()I
    move-result v0
    if-eqz v0, :L8
  .line 45
    invoke-virtual { p3, p1 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    const-string v0, "getEnterAnim="
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->L()I
    move-result v0
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->println(I)V
  :L8
  .line 46
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->O()I
    move-result v0
    if-eqz v0, :L9
  .line 47
    invoke-virtual { p3, p1 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    const-string v0, "getExitAnim="
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->O()I
    move-result v0
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->println(I)V
  :L9
  .line 48
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->Z()I
    move-result v0
    if-eqz v0, :L10
  .line 49
    invoke-virtual { p3, p1 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    const-string v0, "getPopEnterAnim="
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
  .line 50
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->Z()I
    move-result v0
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->println(I)V
  :L10
  .line 51
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->a0()I
    move-result v0
    if-eqz v0, :L11
  .line 52
    invoke-virtual { p3, p1 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    const-string v0, "getPopExitAnim="
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->a0()I
    move-result v0
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->println(I)V
  :L11
  .line 53
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->H:Landroid/view/ViewGroup;
    if-eqz v0, :L12
  .line 54
    invoke-virtual { p3, p1 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    const-string v0, "mContainer="
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->H:Landroid/view/ViewGroup;
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
  :L12
  .line 55
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    if-eqz v0, :L13
  .line 56
    invoke-virtual { p3, p1 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    const-string v0, "mView="
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
  :L13
  .line 57
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->G()Landroid/view/View;
    move-result-object v0
    if-eqz v0, :L14
  .line 58
    invoke-virtual { p3, p1 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    const-string v0, "mAnimatingAway="
  .line 59
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
  .line 60
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->G()Landroid/view/View;
    move-result-object v0
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
  :L14
  .line 61
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;
    move-result-object v0
    if-eqz v0, :L15
  .line 62
    invoke-static { p0 }, Lc/l/a/a;->b(Landroidx/lifecycle/j;)Lc/l/a/a;
    move-result-object v0
    invoke-virtual { v0, p1, p2, p3, p4 }, Lc/l/a/a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
  :L15
  .line 63
    invoke-virtual { p3, p1 }, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
  .line 64
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Child "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->v:Landroidx/fragment/app/n;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v1, ":"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p3, v0 }, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
  .line 65
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->v:Landroidx/fragment/app/n;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p1, "  "
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v0, p1, p2, p3, p4 }, Landroidx/fragment/app/n;->W(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    return-void
.end method

.method public final z0()Z
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->q0()Z
    move-result v0
    if-eqz v0, :L0
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->r0()Z
    move-result v0
    if-nez v0, :L0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;
    move-result-object v0
    if-eqz v0, :L0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    invoke-virtual { v0 }, Landroid/view/View;->getVisibility()I
    move-result v0
    if-nez v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method z1(Landroid/view/Menu;)Z
  .registers 4
  .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->A:Z
    const/4 v1, 0
    if-nez v0, :L1
  .line 2
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->E:Z
    if-eqz v0, :L0
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->F:Z
    if-eqz v0, :L0
    const/4 v1, 1
  .line 3
    invoke-virtual { p0, p1 }, Landroidx/fragment/app/Fragment;->Z0(Landroid/view/Menu;)V
  :L0
  .line 4
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->v:Landroidx/fragment/app/n;
    invoke-virtual { v0, p1 }, Landroidx/fragment/app/n;->O(Landroid/view/Menu;)Z
    move-result p1
    or-int/2addr v1, p1
  :L1
    return v1
.end method
