.class Landroidx/fragment/app/c;
.super Landroidx/fragment/app/c0;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/fragment/app/c$m;,
    Landroidx/fragment/app/c$k;,
    Landroidx/fragment/app/c$l;
  }
.end annotation

.method constructor <init>(Landroid/view/ViewGroup;)V
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Landroidx/fragment/app/c0;-><init>(Landroid/view/ViewGroup;)V
    return-void
.end method

.method private w(Ljava/util/List;Ljava/util/List;ZLjava/util/Map;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/List<",
      "Landroidx/fragment/app/c$k;",
      ">;",
      "Ljava/util/List<",
      "Landroidx/fragment/app/c0$e;",
      ">;Z",
      "Ljava/util/Map<",
      "Landroidx/fragment/app/c0$e;",
      "Ljava/lang/Boolean;",
      ">;)V"
    }
  .end annotation
  .registers 22
    move-object/from16 v7, p0
  .line 1
    invoke-virtual/range { p0 .. p0 }, Landroidx/fragment/app/c0;->m()Landroid/view/ViewGroup;
    move-result-object v8
  .line 2
    invoke-virtual { v8 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v9
  .line 3
    new-instance v10, Ljava/util/ArrayList;
    invoke-direct { v10 }, Ljava/util/ArrayList;-><init>()V
  .line 4
    invoke-interface/range { p1 .. p1 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v11
    const/4 v13, 0
    const/4 v0, 0
  :L0
    invoke-interface { v11 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    const/4 v2, 2
    if-eqz v1, :L10
    invoke-interface { v11 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    move-object v14, v1
    check-cast v14, Landroidx/fragment/app/c$k;
  .line 5
    invoke-virtual { v14 }, Landroidx/fragment/app/c$l;->d()Z
    move-result v1
    if-eqz v1, :L2
  .line 6
    invoke-virtual { v14 }, Landroidx/fragment/app/c$l;->a()V
  :L1
    move-object/from16 v6, p4
    goto :L0
  :L2
  .line 7
    invoke-virtual { v14, v9 }, Landroidx/fragment/app/c$k;->e(Landroid/content/Context;)Landroidx/fragment/app/f$d;
    move-result-object v1
    if-nez v1, :L3
  .line 8
    invoke-virtual { v14 }, Landroidx/fragment/app/c$l;->a()V
    goto :L1
  :L3
  .line 9
    iget-object v15, v1, Landroidx/fragment/app/f$d;->b:Landroid/animation/Animator;
    if-nez v15, :L4
  .line 10
    invoke-virtual { v10, v14 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto :L1
  :L4
  .line 11
    invoke-virtual { v14 }, Landroidx/fragment/app/c$l;->b()Landroidx/fragment/app/c0$e;
    move-result-object v5
  .line 12
    invoke-virtual { v5 }, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;
    move-result-object v1
  .line 13
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    move-object/from16 v6, p4
    invoke-interface { v6, v5 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v4
    invoke-virtual { v3, v4 }, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :L6
  .line 14
    invoke-static { v2 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result v2
    if-eqz v2, :L5
  .line 15
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "Ignoring Animator set on "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v1, " as this Fragment was involved in a Transition."
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L5
  .line 16
    invoke-virtual { v14 }, Landroidx/fragment/app/c$l;->a()V
    goto :L0
  :L6
  .line 17
    invoke-virtual { v5 }, Landroidx/fragment/app/c0$e;->e()Landroidx/fragment/app/c0$e$c;
    move-result-object v0
    sget-object v2, Landroidx/fragment/app/c0$e$c;->d:Landroidx/fragment/app/c0$e$c;
    if-ne v0, v2, :L7
    const/4 v4, 1
    goto :L8
  :L7
    const/4 v4, 0
  :L8
    move-object/from16 v3, p2
    if-eqz v4, :L9
  .line 18
    invoke-interface { v3, v5 }, Ljava/util/List;->remove(Ljava/lang/Object;)Z
  :L9
  .line 19
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
  .line 20
    invoke-virtual { v8, v2 }, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V
  .line 21
    new-instance v1, Landroidx/fragment/app/c$c;
    move-object v0, v1
    move-object v12, v1
    move-object/from16 v1, p0
    move-object/from16 v16, v2
    move-object v2, v8
    move-object/from16 v3, v16
    move-object v6, v14
    invoke-direct/range { v0 .. v6 }, Landroidx/fragment/app/c$c;-><init>(Landroidx/fragment/app/c;Landroid/view/ViewGroup;Landroid/view/View;ZLandroidx/fragment/app/c0$e;Landroidx/fragment/app/c$k;)V
    invoke-virtual { v15, v12 }, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V
    move-object/from16 v0, v16
  .line 22
    invoke-virtual { v15, v0 }, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V
  .line 23
    invoke-virtual { v15 }, Landroid/animation/Animator;->start()V
  .line 24
    invoke-virtual { v14 }, Landroidx/fragment/app/c$l;->c()Lc/g/g/b;
    move-result-object v0
  .line 25
    new-instance v1, Landroidx/fragment/app/c$d;
    invoke-direct { v1, v7, v15 }, Landroidx/fragment/app/c$d;-><init>(Landroidx/fragment/app/c;Landroid/animation/Animator;)V
    invoke-virtual { v0, v1 }, Lc/g/g/b;->c(Lc/g/g/b$a;)V
    const/4 v0, 1
    goto/16 :L0
  :L10
  .line 26
    invoke-virtual { v10 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v1
  :L11
    invoke-interface { v1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v3
    if-eqz v3, :L18
    invoke-interface { v1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Landroidx/fragment/app/c$k;
  .line 27
    invoke-virtual { v3 }, Landroidx/fragment/app/c$l;->b()Landroidx/fragment/app/c0$e;
    move-result-object v4
  .line 28
    invoke-virtual { v4 }, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;
    move-result-object v5
    const-string v6, "Ignoring Animation set on "
    if-eqz p3, :L13
  .line 29
    invoke-static { v2 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result v4
    if-eqz v4, :L12
  .line 30
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v4, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v5, " as Animations cannot run alongside Transitions."
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L12
  .line 31
    invoke-virtual { v3 }, Landroidx/fragment/app/c$l;->a()V
    goto :L11
  :L13
    if-eqz v0, :L15
  .line 32
    invoke-static { v2 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result v4
    if-eqz v4, :L14
  .line 33
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v4, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v5, " as Animations cannot run alongside Animators."
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L14
  .line 34
    invoke-virtual { v3 }, Landroidx/fragment/app/c$l;->a()V
    goto :L11
  :L15
  .line 35
    iget-object v5, v5, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
  .line 36
    invoke-virtual { v3, v9 }, Landroidx/fragment/app/c$k;->e(Landroid/content/Context;)Landroidx/fragment/app/f$d;
    move-result-object v6
    invoke-static { v6 }, Lc/g/j/h;->e(Ljava/lang/Object;)Ljava/lang/Object;
    check-cast v6, Landroidx/fragment/app/f$d;
    iget-object v6, v6, Landroidx/fragment/app/f$d;->a:Landroid/view/animation/Animation;
  .line 37
    invoke-static { v6 }, Lc/g/j/h;->e(Ljava/lang/Object;)Ljava/lang/Object;
    check-cast v6, Landroid/view/animation/Animation;
  .line 38
    invoke-virtual { v4 }, Landroidx/fragment/app/c0$e;->e()Landroidx/fragment/app/c0$e$c;
    move-result-object v4
  .line 39
    sget-object v10, Landroidx/fragment/app/c0$e$c;->b:Landroidx/fragment/app/c0$e$c;
    if-eq v4, v10, :L16
  .line 40
    invoke-virtual { v5, v6 }, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
  .line 41
    invoke-virtual { v3 }, Landroidx/fragment/app/c$l;->a()V
    goto :L17
  :L16
  .line 42
    invoke-virtual { v8, v5 }, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V
  .line 43
    new-instance v4, Landroidx/fragment/app/f$e;
    invoke-direct { v4, v6, v8, v5 }, Landroidx/fragment/app/f$e;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V
  .line 44
    new-instance v6, Landroidx/fragment/app/c$e;
    invoke-direct { v6, v7, v8, v5, v3 }, Landroidx/fragment/app/c$e;-><init>(Landroidx/fragment/app/c;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/c$k;)V
    invoke-virtual { v4, v6 }, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
  .line 45
    invoke-virtual { v5, v4 }, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
  :L17
  .line 46
    invoke-virtual { v3 }, Landroidx/fragment/app/c$l;->c()Lc/g/g/b;
    move-result-object v4
  .line 47
    new-instance v6, Landroidx/fragment/app/c$f;
    invoke-direct { v6, v7, v5, v8, v3 }, Landroidx/fragment/app/c$f;-><init>(Landroidx/fragment/app/c;Landroid/view/View;Landroid/view/ViewGroup;Landroidx/fragment/app/c$k;)V
    invoke-virtual { v4, v6 }, Lc/g/g/b;->c(Lc/g/g/b$a;)V
    goto/16 :L11
  :L18
    return-void
.end method

.method private x(Ljava/util/List;Ljava/util/List;ZLandroidx/fragment/app/c0$e;Landroidx/fragment/app/c0$e;)Ljava/util/Map;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/List<",
      "Landroidx/fragment/app/c$m;",
      ">;",
      "Ljava/util/List<",
      "Landroidx/fragment/app/c0$e;",
      ">;Z",
      "Landroidx/fragment/app/c0$e;",
      "Landroidx/fragment/app/c0$e;",
      ")",
      "Ljava/util/Map<",
      "Landroidx/fragment/app/c0$e;",
      "Ljava/lang/Boolean;",
      ">;"
    }
  .end annotation
  .registers 37
    move-object/from16 v6, p0
    move/from16 v7, p3
    move-object/from16 v8, p4
    move-object/from16 v9, p5
  .line 1
    new-instance v10, Ljava/util/HashMap;
    invoke-direct { v10 }, Ljava/util/HashMap;-><init>()V
  .line 2
    invoke-interface/range { p1 .. p1 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
    const/4 v15, 0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L4
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/fragment/app/c$m;
  .line 3
    invoke-virtual { v1 }, Landroidx/fragment/app/c$l;->d()Z
    move-result v2
    if-eqz v2, :L1
    goto :L0
  :L1
  .line 4
    invoke-virtual { v1 }, Landroidx/fragment/app/c$m;->e()Landroidx/fragment/app/z;
    move-result-object v2
    if-nez v15, :L2
    move-object v15, v2
    goto :L0
  :L2
    if-eqz v2, :L0
    if-ne v15, v2, :L3
    goto :L0
  :L3
  .line 5
    new-instance v0, Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "Mixing framework transitions and AndroidX transitions is not allowed. Fragment "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 6
    invoke-virtual { v1 }, Landroidx/fragment/app/c$l;->b()Landroidx/fragment/app/c0$e;
    move-result-object v3
    invoke-virtual { v3 }, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;
    move-result-object v3
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v3, " returned Transition "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 7
    invoke-virtual { v1 }, Landroidx/fragment/app/c$m;->h()Ljava/lang/Object;
    move-result-object v1
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v1, " which uses a different Transition  type than other Fragments."
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v0
  :L4
    if-nez v15, :L7
  .line 8
    invoke-interface/range { p1 .. p1 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L5
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L6
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/fragment/app/c$m;
  .line 9
    invoke-virtual { v1 }, Landroidx/fragment/app/c$l;->b()Landroidx/fragment/app/c0$e;
    move-result-object v2
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    invoke-interface { v10, v2, v3 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 10
    invoke-virtual { v1 }, Landroidx/fragment/app/c$l;->a()V
    goto :L5
  :L6
    return-object v10
  :L7
  .line 11
    new-instance v14, Landroid/view/View;
    invoke-virtual/range { p0 .. p0 }, Landroidx/fragment/app/c0;->m()Landroid/view/ViewGroup;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-direct { v14, v0 }, Landroid/view/View;-><init>(Landroid/content/Context;)V
  .line 12
    new-instance v13, Landroid/graphics/Rect;
    invoke-direct { v13 }, Landroid/graphics/Rect;-><init>()V
  .line 13
    new-instance v12, Ljava/util/ArrayList;
    invoke-direct { v12 }, Ljava/util/ArrayList;-><init>()V
  .line 14
    new-instance v5, Ljava/util/ArrayList;
    invoke-direct { v5 }, Ljava/util/ArrayList;-><init>()V
  .line 15
    new-instance v4, Lc/d/a;
    invoke-direct { v4 }, Lc/d/a;-><init>()V
  .line 16
    invoke-interface/range { p1 .. p1 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v20
    const/4 v0, 0
    const/4 v2, 0
    const/16 v21, 0
  :L8
    invoke-interface/range { v20 .. v20 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L38
    invoke-interface/range { v20 .. v20 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/fragment/app/c$m;
  .line 17
    invoke-virtual { v1 }, Landroidx/fragment/app/c$m;->i()Z
    move-result v16
    if-eqz v16, :L36
    if-eqz v8, :L36
    if-eqz v9, :L36
  .line 18
    invoke-virtual { v1 }, Landroidx/fragment/app/c$m;->g()Ljava/lang/Object;
    move-result-object v0
  .line 19
    invoke-virtual { v15, v0 }, Landroidx/fragment/app/z;->g(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
  .line 20
    invoke-virtual { v15, v0 }, Landroidx/fragment/app/z;->B(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
  .line 21
    invoke-virtual/range { p5 .. p5 }, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;
    move-result-object v0
  .line 22
    invoke-virtual { v0 }, Landroidx/fragment/app/Fragment;->h0()Ljava/util/ArrayList;
    move-result-object v0
  .line 23
    invoke-virtual/range { p4 .. p4 }, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;
    move-result-object v16
  .line 24
    invoke-virtual/range { v16 .. v16 }, Landroidx/fragment/app/Fragment;->h0()Ljava/util/ArrayList;
    move-result-object v3
  .line 25
    invoke-virtual/range { p4 .. p4 }, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;
    move-result-object v16
  .line 26
    invoke-virtual/range { v16 .. v16 }, Landroidx/fragment/app/Fragment;->i0()Ljava/util/ArrayList;
    move-result-object v11
    move-object/from16 v16, v1
    move-object/from16 v18, v2
    const/4 v1, 0
  :L9
  .line 27
    invoke-virtual { v11 }, Ljava/util/ArrayList;->size()I
    move-result v2
    if-ge v1, v2, :L11
  .line 28
    invoke-virtual { v11, v1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v2
    invoke-virtual { v0, v2 }, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I
    move-result v2
    move-object/from16 v19, v11
    const/4 v11, -1
    if-eq v2, v11, :L10
  .line 29
    invoke-virtual { v3, v1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v11
    invoke-virtual { v0, v2, v11 }, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
  :L10
    add-int/lit8 v1, v1, 1
    move-object/from16 v11, v19
    goto :L9
  :L11
  .line 30
    invoke-virtual/range { p5 .. p5 }, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;
    move-result-object v1
  .line 31
    invoke-virtual { v1 }, Landroidx/fragment/app/Fragment;->i0()Ljava/util/ArrayList;
    move-result-object v11
    if-nez v7, :L12
  .line 32
    invoke-virtual/range { p4 .. p4 }, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;
    move-result-object v1
    invoke-virtual { v1 }, Landroidx/fragment/app/Fragment;->Q()Landroidx/core/app/h;
    move-result-object v1
  .line 33
    invoke-virtual/range { p5 .. p5 }, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;
    move-result-object v2
    invoke-virtual { v2 }, Landroidx/fragment/app/Fragment;->N()Landroidx/core/app/h;
    move-result-object v2
    goto :L13
  :L12
  .line 34
    invoke-virtual/range { p4 .. p4 }, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;
    move-result-object v1
    invoke-virtual { v1 }, Landroidx/fragment/app/Fragment;->N()Landroidx/core/app/h;
    move-result-object v1
  .line 35
    invoke-virtual/range { p5 .. p5 }, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;
    move-result-object v2
    invoke-virtual { v2 }, Landroidx/fragment/app/Fragment;->Q()Landroidx/core/app/h;
    move-result-object v2
  :L13
  .line 36
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v3
    const/4 v9, 0
  :L14
    if-ge v9, v3, :L15
  .line 37
    invoke-virtual { v0, v9 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v19
    move/from16 v23, v3
    move-object/from16 v3, v19
    check-cast v3, Ljava/lang/String;
  .line 38
    invoke-virtual { v11, v9 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v19
    move-object/from16 v8, v19
    check-cast v8, Ljava/lang/String;
  .line 39
    invoke-virtual { v4, v3, v8 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    add-int/lit8 v9, v9, 1
    move-object/from16 v8, p4
    move/from16 v3, v23
    goto :L14
  :L15
  .line 40
    new-instance v8, Lc/d/a;
    invoke-direct { v8 }, Lc/d/a;-><init>()V
  .line 41
    invoke-virtual/range { p4 .. p4 }, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;
    move-result-object v3
    iget-object v3, v3, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    invoke-virtual { v6, v8, v3 }, Landroidx/fragment/app/c;->u(Ljava/util/Map;Landroid/view/View;)V
  .line 42
    invoke-virtual { v8, v0 }, Lc/d/a;->o(Ljava/util/Collection;)Z
    if-eqz v1, :L20
  .line 43
    invoke-virtual { v1, v0, v8 }, Landroidx/core/app/h;->c(Ljava/util/List;Ljava/util/Map;)V
  .line 44
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v1
    const/4 v3, 1
    sub-int/2addr v1, v3
  :L16
    if-ltz v1, :L19
  .line 45
    invoke-virtual { v0, v1 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/lang/String;
  .line 46
    invoke-virtual { v8, v3 }, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v9
    check-cast v9, Landroid/view/View;
    if-nez v9, :L17
  .line 47
    invoke-virtual { v4, v3 }, Lc/d/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    move-object/from16 v19, v0
    goto :L18
  :L17
    move-object/from16 v19, v0
  .line 48
    invoke-static { v9 }, Landroidx/core/view/v;->L(Landroid/view/View;)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v3, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L18
  .line 49
    invoke-virtual { v4, v3 }, Lc/d/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/String;
  .line 50
    invoke-static { v9 }, Landroidx/core/view/v;->L(Landroid/view/View;)Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v4, v3, v0 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L18
    add-int/lit8 v1, v1, -1
    move-object/from16 v0, v19
    goto :L16
  :L19
    move-object/from16 v19, v0
    goto :L21
  :L20
    move-object/from16 v19, v0
  .line 51
    invoke-virtual { v8 }, Lc/d/a;->keySet()Ljava/util/Set;
    move-result-object v0
    invoke-virtual { v4, v0 }, Lc/d/a;->o(Ljava/util/Collection;)Z
  :L21
  .line 52
    new-instance v9, Lc/d/a;
    invoke-direct { v9 }, Lc/d/a;-><init>()V
  .line 53
    invoke-virtual/range { p5 .. p5 }, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;
    move-result-object v0
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    invoke-virtual { v6, v9, v0 }, Landroidx/fragment/app/c;->u(Ljava/util/Map;Landroid/view/View;)V
  .line 54
    invoke-virtual { v9, v11 }, Lc/d/a;->o(Ljava/util/Collection;)Z
  .line 55
    invoke-virtual { v4 }, Lc/d/a;->values()Ljava/util/Collection;
    move-result-object v0
    invoke-virtual { v9, v0 }, Lc/d/a;->o(Ljava/util/Collection;)Z
    if-eqz v2, :L25
  .line 56
    invoke-virtual { v2, v11, v9 }, Landroidx/core/app/h;->c(Ljava/util/List;Ljava/util/Map;)V
  .line 57
    invoke-virtual { v11 }, Ljava/util/ArrayList;->size()I
    move-result v0
    const/4 v1, 1
    sub-int/2addr v0, v1
  :L22
    if-ltz v0, :L26
  .line 58
    invoke-virtual { v11, v0 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/String;
  .line 59
    invoke-virtual { v9, v1 }, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroid/view/View;
    if-nez v2, :L23
  .line 60
    invoke-static { v4, v1 }, Landroidx/fragment/app/x;->q(Lc/d/a;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    if-eqz v1, :L24
  .line 61
    invoke-virtual { v4, v1 }, Lc/d/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    goto :L24
  :L23
  .line 62
    invoke-static { v2 }, Landroidx/core/view/v;->L(Landroid/view/View;)Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v1, v3 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-nez v3, :L24
  .line 63
    invoke-static { v4, v1 }, Landroidx/fragment/app/x;->q(Lc/d/a;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    if-eqz v1, :L24
  .line 64
    invoke-static { v2 }, Landroidx/core/view/v;->L(Landroid/view/View;)Ljava/lang/String;
    move-result-object v2
  .line 65
    invoke-virtual { v4, v1, v2 }, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L24
    add-int/lit8 v0, v0, -1
    goto :L22
  :L25
  .line 66
    invoke-static { v4, v9 }, Landroidx/fragment/app/x;->y(Lc/d/a;Lc/d/a;)V
  :L26
  .line 67
    invoke-virtual { v4 }, Lc/d/a;->keySet()Ljava/util/Set;
    move-result-object v0
    invoke-virtual { v6, v8, v0 }, Landroidx/fragment/app/c;->v(Lc/d/a;Ljava/util/Collection;)V
  .line 68
    invoke-virtual { v4 }, Lc/d/a;->values()Ljava/util/Collection;
    move-result-object v0
    invoke-virtual { v6, v9, v0 }, Landroidx/fragment/app/c;->v(Lc/d/a;Ljava/util/Collection;)V
  .line 69
    invoke-virtual { v4 }, Lc/d/g;->isEmpty()Z
    move-result v0
    if-eqz v0, :L27
  .line 70
    invoke-virtual { v12 }, Ljava/util/ArrayList;->clear()V
  .line 71
    invoke-virtual { v5 }, Ljava/util/ArrayList;->clear()V
    move-object/from16 v1, p4
    move-object/from16 v26, v4
    move-object v3, v5
    move-object v4, v12
    move-object v5, v13
    move-object v9, v14
    move-object v11, v15
    move-object/from16 v2, v18
    const/4 v0, 0
    const/4 v8, 0
    move-object/from16 v15, p5
    goto/16 :L37
  :L27
  .line 72
    invoke-virtual/range { p5 .. p5 }, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;
    move-result-object v0
    invoke-virtual/range { p4 .. p4 }, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;
    move-result-object v1
    const/4 v3, 1
  .line 73
    invoke-static { v0, v1, v7, v8, v3 }, Landroidx/fragment/app/x;->f(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLc/d/a;Z)V
  .line 74
    invoke-virtual/range { p0 .. p0 }, Landroidx/fragment/app/c0;->m()Landroid/view/ViewGroup;
    move-result-object v2
    new-instance v1, Landroidx/fragment/app/c$g;
    move-object/from16 v22, v19
    move-object v0, v1
    move-object/from16 v23, v10
    move-object/from16 v7, v16
    move-object v10, v1
    move-object/from16 v1, p0
    move-object/from16 v16, v14
    move-object/from16 v24, v18
    move-object v14, v2
    move-object/from16 v2, p5
    move-object/from16 v18, v13
    const/4 v13, 0
    const/16 v25, 1
    move-object/from16 v3, p4
    move-object/from16 v26, v4
    move/from16 v4, p3
    move-object/from16 v27, v5
    move-object v5, v9
    invoke-direct/range { v0 .. v5 }, Landroidx/fragment/app/c$g;-><init>(Landroidx/fragment/app/c;Landroidx/fragment/app/c0$e;Landroidx/fragment/app/c0$e;ZLc/d/a;)V
    invoke-static { v14, v10 }, Landroidx/core/view/t;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/t;
  .line 75
    invoke-virtual { v8 }, Lc/d/a;->values()Ljava/util/Collection;
    move-result-object v0
    invoke-interface { v0 }, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L28
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L29
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroid/view/View;
  .line 76
    invoke-virtual { v6, v12, v1 }, Landroidx/fragment/app/c;->t(Ljava/util/ArrayList;Landroid/view/View;)V
    goto :L28
  :L29
  .line 77
    invoke-virtual/range { v22 .. v22 }, Ljava/util/ArrayList;->isEmpty()Z
    move-result v0
    if-nez v0, :L30
    move-object/from16 v0, v22
  .line 78
    invoke-virtual { v0, v13 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/String;
  .line 79
    invoke-virtual { v8, v0 }, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/view/View;
  .line 80
    invoke-virtual { v15, v7, v0 }, Landroidx/fragment/app/z;->v(Ljava/lang/Object;Landroid/view/View;)V
    move-object v2, v0
    goto :L31
  :L30
    move-object/from16 v2, v24
  :L31
  .line 81
    invoke-virtual { v9 }, Lc/d/a;->values()Ljava/util/Collection;
    move-result-object v0
    invoke-interface { v0 }, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L32
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L33
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroid/view/View;
    move-object/from16 v3, v27
  .line 82
    invoke-virtual { v6, v3, v1 }, Landroidx/fragment/app/c;->t(Ljava/util/ArrayList;Landroid/view/View;)V
    goto :L32
  :L33
    move-object/from16 v3, v27
  .line 83
    invoke-virtual { v11 }, Ljava/util/ArrayList;->isEmpty()Z
    move-result v0
    if-nez v0, :L34
  .line 84
    invoke-virtual { v11, v13 }, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/String;
  .line 85
    invoke-virtual { v9, v0 }, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/view/View;
    if-eqz v0, :L34
  .line 86
    invoke-virtual/range { p0 .. p0 }, Landroidx/fragment/app/c0;->m()Landroid/view/ViewGroup;
    move-result-object v1
    new-instance v4, Landroidx/fragment/app/c$h;
    move-object/from16 v5, v18
    invoke-direct { v4, v6, v15, v0, v5 }, Landroidx/fragment/app/c$h;-><init>(Landroidx/fragment/app/c;Landroidx/fragment/app/z;Landroid/view/View;Landroid/graphics/Rect;)V
    invoke-static { v1, v4 }, Landroidx/core/view/t;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/t;
    move-object/from16 v0, v16
    const/16 v21, 1
    goto :L35
  :L34
    move-object/from16 v5, v18
    move-object/from16 v0, v16
  :L35
  .line 87
    invoke-virtual { v15, v7, v0, v12 }, Landroidx/fragment/app/z;->z(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    const/4 v14, 0
    const/4 v1, 0
    const/16 v16, 0
    const/16 v17, 0
    move-object v4, v12
    move-object v12, v15
    const/4 v8, 0
    move-object v13, v7
    move-object v9, v0
    move-object v11, v15
    move-object v15, v1
    move-object/from16 v18, v7
    move-object/from16 v19, v3
  .line 88
    invoke-virtual/range { v12 .. v19 }, Landroidx/fragment/app/z;->t(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
  .line 89
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    move-object/from16 v1, p4
    move-object/from16 v10, v23
    invoke-interface { v10, v1, v0 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 90
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    move-object/from16 v15, p5
    invoke-interface { v10, v15, v0 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    move-object v0, v7
    goto :L37
  :L36
    move-object/from16 v24, v2
    move-object/from16 v26, v4
    move-object v3, v5
    move-object v1, v8
    move-object v4, v12
    move-object v5, v13
    move-object v11, v15
    const/4 v8, 0
    move-object v15, v9
    move-object v9, v14
    move-object/from16 v2, v24
  :L37
    move/from16 v7, p3
    move-object v8, v1
    move-object v12, v4
    move-object v13, v5
    move-object v14, v9
    move-object v9, v15
    move-object/from16 v4, v26
    move-object v5, v3
    move-object v15, v11
    goto/16 :L8
  :L38
    move-object/from16 v24, v2
    move-object/from16 v26, v4
    move-object v3, v5
    move-object v1, v8
    move-object v4, v12
    move-object v5, v13
    move-object v11, v15
    const/4 v8, 0
    const/16 v25, 1
    move-object v15, v9
    move-object v9, v14
  .line 91
    new-instance v2, Ljava/util/ArrayList;
    invoke-direct { v2 }, Ljava/util/ArrayList;-><init>()V
  .line 92
    invoke-interface/range { p1 .. p1 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v7
    const/4 v13, 0
    const/4 v14, 0
  :L39
    invoke-interface { v7 }, Ljava/util/Iterator;->hasNext()Z
    move-result v12
    if-eqz v12, :L56
    invoke-interface { v7 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v12
    move-object/from16 v20, v12
    check-cast v20, Landroidx/fragment/app/c$m;
  .line 93
    invoke-virtual/range { v20 .. v20 }, Landroidx/fragment/app/c$l;->d()Z
    move-result v12
    if-eqz v12, :L40
  .line 94
    invoke-virtual/range { v20 .. v20 }, Landroidx/fragment/app/c$l;->b()Landroidx/fragment/app/c0$e;
    move-result-object v12
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    invoke-interface { v10, v12, v8 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 95
    invoke-virtual/range { v20 .. v20 }, Landroidx/fragment/app/c$l;->a()V
    const/4 v8, 0
    goto :L39
  :L40
  .line 96
    invoke-virtual/range { v20 .. v20 }, Landroidx/fragment/app/c$m;->h()Ljava/lang/Object;
    move-result-object v8
    invoke-virtual { v11, v8 }, Landroidx/fragment/app/z;->g(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v8
  .line 97
    invoke-virtual/range { v20 .. v20 }, Landroidx/fragment/app/c$l;->b()Landroidx/fragment/app/c0$e;
    move-result-object v12
    if-eqz v0, :L42
    if-eq v12, v1, :L41
    if-ne v12, v15, :L42
  :L41
    const/16 v16, 1
    goto :L43
  :L42
    const/16 v16, 0
  :L43
    if-nez v8, :L45
    if-nez v16, :L44
  .line 98
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    invoke-interface { v10, v12, v8 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 99
    invoke-virtual/range { v20 .. v20 }, Landroidx/fragment/app/c$l;->a()V
  :L44
    move-object/from16 v12, p2
    move-object/from16 v30, v3
    move-object/from16 v29, v4
    move-object/from16 p3, v7
    move-object/from16 v27, v9
    move-object v8, v13
    move-object v3, v15
    move-object/from16 v7, v24
    const/4 v13, 0
    goto/16 :L55
  :L45
    move-object/from16 p3, v7
  .line 100
    new-instance v7, Ljava/util/ArrayList;
    invoke-direct { v7 }, Ljava/util/ArrayList;-><init>()V
    move-object/from16 v17, v13
  .line 101
    invoke-virtual { v12 }, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;
    move-result-object v13
    iget-object v13, v13, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
  .line 102
    invoke-virtual { v6, v7, v13 }, Landroidx/fragment/app/c;->t(Ljava/util/ArrayList;Landroid/view/View;)V
    if-eqz v16, :L47
    if-ne v12, v1, :L46
  .line 103
    invoke-virtual { v7, v4 }, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z
    goto :L47
  :L46
  .line 104
    invoke-virtual { v7, v3 }, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z
  :L47
  .line 105
    invoke-virtual { v7 }, Ljava/util/ArrayList;->isEmpty()Z
    move-result v13
    if-eqz v13, :L48
  .line 106
    invoke-virtual { v11, v8, v9 }, Landroidx/fragment/app/z;->a(Ljava/lang/Object;Landroid/view/View;)V
    move-object/from16 v30, v3
    move-object/from16 v29, v4
    move-object/from16 v27, v9
    move-object v13, v12
    move-object v4, v14
    move-object v3, v15
    move-object/from16 v9, v17
    move-object/from16 v12, p2
    goto :L50
  :L48
  .line 107
    invoke-virtual { v11, v8, v7 }, Landroidx/fragment/app/z;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V
    const/16 v16, 0
    const/16 v18, 0
    const/16 v19, 0
    const/16 v23, 0
    move-object v13, v12
    move-object v12, v11
    move-object/from16 v27, v9
    move-object/from16 v28, v13
    move-object/from16 v9, v17
    move-object v13, v8
    move-object/from16 v29, v4
    move-object v4, v14
    move-object v14, v8
    move-object/from16 v30, v3
    move-object v3, v15
    move-object v15, v7
    move-object/from16 v17, v18
    move-object/from16 v18, v19
    move-object/from16 v19, v23
  .line 108
    invoke-virtual/range { v12 .. v19 }, Landroidx/fragment/app/z;->t(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
  .line 109
    invoke-virtual/range { v28 .. v28 }, Landroidx/fragment/app/c0$e;->e()Landroidx/fragment/app/c0$e$c;
    move-result-object v12
    sget-object v13, Landroidx/fragment/app/c0$e$c;->d:Landroidx/fragment/app/c0$e$c;
    if-ne v12, v13, :L49
    move-object/from16 v12, p2
    move-object/from16 v13, v28
  .line 110
    invoke-interface { v12, v13 }, Ljava/util/List;->remove(Ljava/lang/Object;)Z
  .line 111
    invoke-virtual { v13 }, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;
    move-result-object v14
    iget-object v14, v14, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
  .line 112
    invoke-virtual { v11, v8, v14, v7 }, Landroidx/fragment/app/z;->r(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
  .line 113
    invoke-virtual/range { p0 .. p0 }, Landroidx/fragment/app/c0;->m()Landroid/view/ViewGroup;
    move-result-object v14
    new-instance v15, Landroidx/fragment/app/c$i;
    invoke-direct { v15, v6, v7 }, Landroidx/fragment/app/c$i;-><init>(Landroidx/fragment/app/c;Ljava/util/ArrayList;)V
    invoke-static { v14, v15 }, Landroidx/core/view/t;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/t;
    goto :L50
  :L49
    move-object/from16 v12, p2
    move-object/from16 v13, v28
  :L50
  .line 114
    invoke-virtual { v13 }, Landroidx/fragment/app/c0$e;->e()Landroidx/fragment/app/c0$e$c;
    move-result-object v14
    sget-object v15, Landroidx/fragment/app/c0$e$c;->c:Landroidx/fragment/app/c0$e$c;
    if-ne v14, v15, :L52
  .line 115
    invoke-virtual { v2, v7 }, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    if-eqz v21, :L51
  .line 116
    invoke-virtual { v11, v8, v5 }, Landroidx/fragment/app/z;->u(Ljava/lang/Object;Landroid/graphics/Rect;)V
  :L51
    move-object/from16 v7, v24
    goto :L53
  :L52
    move-object/from16 v7, v24
  .line 117
    invoke-virtual { v11, v8, v7 }, Landroidx/fragment/app/z;->v(Ljava/lang/Object;Landroid/view/View;)V
  :L53
  .line 118
    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    invoke-interface { v10, v13, v14 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 119
    invoke-virtual/range { v20 .. v20 }, Landroidx/fragment/app/c$m;->j()Z
    move-result v13
    if-eqz v13, :L54
    const/4 v13, 0
  .line 120
    invoke-virtual { v11, v4, v8, v13 }, Landroidx/fragment/app/z;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v4
    move-object v14, v4
    move-object v8, v9
    goto :L55
  :L54
    const/4 v13, 0
  .line 121
    invoke-virtual { v11, v9, v8, v13 }, Landroidx/fragment/app/z;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v8
    move-object v14, v4
  :L55
    move-object v15, v3
    move-object/from16 v24, v7
    move-object v13, v8
    move-object/from16 v9, v27
    move-object/from16 v4, v29
    move-object/from16 v3, v30
    const/4 v8, 0
    move-object/from16 v7, p3
    goto/16 :L39
  :L56
    move-object/from16 v30, v3
    move-object/from16 v29, v4
    move-object v9, v13
    move-object v4, v14
    move-object v3, v15
  .line 122
    invoke-virtual { v11, v4, v9, v0 }, Landroidx/fragment/app/z;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v4
  .line 123
    invoke-interface/range { p1 .. p1 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v5
  :L57
    invoke-interface { v5 }, Ljava/util/Iterator;->hasNext()Z
    move-result v7
    if-eqz v7, :L65
    invoke-interface { v5 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v7
    check-cast v7, Landroidx/fragment/app/c$m;
  .line 124
    invoke-virtual { v7 }, Landroidx/fragment/app/c$l;->d()Z
    move-result v8
    if-eqz v8, :L58
    goto :L57
  :L58
  .line 125
    invoke-virtual { v7 }, Landroidx/fragment/app/c$m;->h()Ljava/lang/Object;
    move-result-object v8
  .line 126
    invoke-virtual { v7 }, Landroidx/fragment/app/c$l;->b()Landroidx/fragment/app/c0$e;
    move-result-object v9
    if-eqz v0, :L60
    if-eq v9, v1, :L59
    if-ne v9, v3, :L60
  :L59
    const/4 v12, 1
    goto :L61
  :L60
    const/4 v12, 0
  :L61
    if-nez v8, :L62
    if-eqz v12, :L57
  :L62
  .line 127
    invoke-virtual/range { p0 .. p0 }, Landroidx/fragment/app/c0;->m()Landroid/view/ViewGroup;
    move-result-object v8
    invoke-static { v8 }, Landroidx/core/view/v;->T(Landroid/view/View;)Z
    move-result v8
    if-nez v8, :L64
    const/4 v8, 2
  .line 128
    invoke-static { v8 }, Landroidx/fragment/app/n;->E0(I)Z
    move-result v8
    if-eqz v8, :L63
  .line 129
    new-instance v8, Ljava/lang/StringBuilder;
    invoke-direct { v8 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v12, "SpecialEffectsController: Container "
    invoke-virtual { v8, v12 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 130
    invoke-virtual/range { p0 .. p0 }, Landroidx/fragment/app/c0;->m()Landroid/view/ViewGroup;
    move-result-object v12
    invoke-virtual { v8, v12 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v12, " has not been laid out. Completing operation "
    invoke-virtual { v8, v12 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v8, v9 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v8 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L63
  .line 131
    invoke-virtual { v7 }, Landroidx/fragment/app/c$l;->a()V
    goto :L57
  :L64
  .line 132
    invoke-virtual { v7 }, Landroidx/fragment/app/c$l;->b()Landroidx/fragment/app/c0$e;
    move-result-object v8
    invoke-virtual { v8 }, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;
    move-result-object v8
  .line 133
    invoke-virtual { v7 }, Landroidx/fragment/app/c$l;->c()Lc/g/g/b;
    move-result-object v9
    new-instance v12, Landroidx/fragment/app/c$j;
    invoke-direct { v12, v6, v7 }, Landroidx/fragment/app/c$j;-><init>(Landroidx/fragment/app/c;Landroidx/fragment/app/c$m;)V
  .line 134
    invoke-virtual { v11, v8, v4, v9, v12 }, Landroidx/fragment/app/z;->w(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Lc/g/g/b;Ljava/lang/Runnable;)V
    goto :L57
  :L65
  .line 135
    invoke-virtual/range { p0 .. p0 }, Landroidx/fragment/app/c0;->m()Landroid/view/ViewGroup;
    move-result-object v1
    invoke-static { v1 }, Landroidx/core/view/v;->T(Landroid/view/View;)Z
    move-result v1
    if-nez v1, :L66
    return-object v10
  :L66
    const/4 v1, 4
  .line 136
    invoke-static { v2, v1 }, Landroidx/fragment/app/x;->B(Ljava/util/ArrayList;I)V
    move-object/from16 v1, v30
  .line 137
    invoke-virtual { v11, v1 }, Landroidx/fragment/app/z;->o(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    move-result-object v16
  .line 138
    invoke-virtual/range { p0 .. p0 }, Landroidx/fragment/app/c0;->m()Landroid/view/ViewGroup;
    move-result-object v3
    invoke-virtual { v11, v3, v4 }, Landroidx/fragment/app/z;->c(Landroid/view/ViewGroup;Ljava/lang/Object;)V
  .line 139
    invoke-virtual/range { p0 .. p0 }, Landroidx/fragment/app/c0;->m()Landroid/view/ViewGroup;
    move-result-object v13
    move-object v12, v11
    move-object/from16 v14, v29
    move-object v15, v1
    move-object/from16 v17, v26
    invoke-virtual/range { v12 .. v17 }, Landroidx/fragment/app/z;->y(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V
    const/4 v3, 0
  .line 140
    invoke-static { v2, v3 }, Landroidx/fragment/app/x;->B(Ljava/util/ArrayList;I)V
    move-object/from16 v2, v29
  .line 141
    invoke-virtual { v11, v0, v2, v1 }, Landroidx/fragment/app/z;->A(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    return-object v10
.end method

.method f(Ljava/util/List;Z)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/List<",
      "Landroidx/fragment/app/c0$e;",
      ">;Z)V"
    }
  .end annotation
  .registers 13
  .line 1
    invoke-interface { p1 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
    const/4 v1, 0
    move-object v6, v1
    move-object v7, v6
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    const/4 v2, 1
    if-eqz v1, :L3
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/fragment/app/c0$e;
  .line 2
    invoke-virtual { v1 }, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;
    move-result-object v3
    iget-object v3, v3, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
    invoke-static { v3 }, Landroidx/fragment/app/c0$e$c;->c(Landroid/view/View;)Landroidx/fragment/app/c0$e$c;
    move-result-object v3
  .line 3
    sget-object v4, Landroidx/fragment/app/c$a;->a:[I
    invoke-virtual { v1 }, Landroidx/fragment/app/c0$e;->e()Landroidx/fragment/app/c0$e$c;
    move-result-object v5
    invoke-virtual { v5 }, Ljava/lang/Enum;->ordinal()I
    move-result v5
    aget v4, v4, v5
    if-eq v4, v2, :L2
    const/4 v2, 2
    if-eq v4, v2, :L2
    const/4 v2, 3
    if-eq v4, v2, :L2
    const/4 v2, 4
    if-eq v4, v2, :L1
    goto :L0
  :L1
  .line 4
    sget-object v2, Landroidx/fragment/app/c0$e$c;->c:Landroidx/fragment/app/c0$e$c;
    if-eq v3, v2, :L0
    move-object v7, v1
    goto :L0
  :L2
  .line 5
    sget-object v2, Landroidx/fragment/app/c0$e$c;->c:Landroidx/fragment/app/c0$e$c;
    if-ne v3, v2, :L0
    if-nez v6, :L0
    move-object v6, v1
    goto :L0
  :L3
  .line 6
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
  .line 7
    new-instance v3, Ljava/util/ArrayList;
    invoke-direct { v3 }, Ljava/util/ArrayList;-><init>()V
  .line 8
    new-instance v1, Ljava/util/ArrayList;
    invoke-direct { v1, p1 }, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
  .line 9
    invoke-interface { p1 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object p1
  :L4
    invoke-interface { p1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v4
    if-eqz v4, :L8
    invoke-interface { p1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Landroidx/fragment/app/c0$e;
  .line 10
    new-instance v5, Lc/g/g/b;
    invoke-direct { v5 }, Lc/g/g/b;-><init>()V
  .line 11
    invoke-virtual { v4, v5 }, Landroidx/fragment/app/c0$e;->j(Lc/g/g/b;)V
  .line 12
    new-instance v8, Landroidx/fragment/app/c$k;
    invoke-direct { v8, v4, v5, p2 }, Landroidx/fragment/app/c$k;-><init>(Landroidx/fragment/app/c0$e;Lc/g/g/b;Z)V
    invoke-interface { v0, v8 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 13
    new-instance v5, Lc/g/g/b;
    invoke-direct { v5 }, Lc/g/g/b;-><init>()V
  .line 14
    invoke-virtual { v4, v5 }, Landroidx/fragment/app/c0$e;->j(Lc/g/g/b;)V
  .line 15
    new-instance v8, Landroidx/fragment/app/c$m;
    const/4 v9, 0
    if-eqz p2, :L5
    if-ne v4, v6, :L7
    goto :L6
  :L5
    if-ne v4, v7, :L7
  :L6
    const/4 v9, 1
  :L7
  .line 16
    invoke-direct { v8, v4, v5, p2, v9 }, Landroidx/fragment/app/c$m;-><init>(Landroidx/fragment/app/c0$e;Lc/g/g/b;ZZ)V
  .line 17
    invoke-interface { v3, v8 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 18
    new-instance v5, Landroidx/fragment/app/c$b;
    invoke-direct { v5, p0, v1, v4 }, Landroidx/fragment/app/c$b;-><init>(Landroidx/fragment/app/c;Ljava/util/List;Landroidx/fragment/app/c0$e;)V
    invoke-virtual { v4, v5 }, Landroidx/fragment/app/c0$e;->a(Ljava/lang/Runnable;)V
    goto :L4
  :L8
    move-object v2, p0
    move-object v4, v1
    move v5, p2
  .line 19
    invoke-direct/range { v2 .. v7 }, Landroidx/fragment/app/c;->x(Ljava/util/List;Ljava/util/List;ZLandroidx/fragment/app/c0$e;Landroidx/fragment/app/c0$e;)Ljava/util/Map;
    move-result-object p1
  .line 20
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    invoke-interface { p1, p2 }, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z
    move-result p2
  .line 21
    invoke-direct { p0, v0, v1, p2, p1 }, Landroidx/fragment/app/c;->w(Ljava/util/List;Ljava/util/List;ZLjava/util/Map;)V
  .line 22
    invoke-interface { v1 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object p1
  :L9
    invoke-interface { p1 }, Ljava/util/Iterator;->hasNext()Z
    move-result p2
    if-eqz p2, :L10
    invoke-interface { p1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object p2
    check-cast p2, Landroidx/fragment/app/c0$e;
  .line 23
    invoke-virtual { p0, p2 }, Landroidx/fragment/app/c;->s(Landroidx/fragment/app/c0$e;)V
    goto :L9
  :L10
  .line 24
    invoke-interface { v1 }, Ljava/util/List;->clear()V
    return-void
.end method

.method s(Landroidx/fragment/app/c0$e;)V
  .registers 3
  .line 1
    invoke-virtual { p1 }, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;
    move-result-object v0
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;
  .line 2
    invoke-virtual { p1 }, Landroidx/fragment/app/c0$e;->e()Landroidx/fragment/app/c0$e$c;
    move-result-object p1
    invoke-virtual { p1, v0 }, Landroidx/fragment/app/c0$e$c;->a(Landroid/view/View;)V
    return-void
.end method

.method t(Ljava/util/ArrayList;Landroid/view/View;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/ArrayList<",
      "Landroid/view/View;",
      ">;",
      "Landroid/view/View;",
      ")V"
    }
  .end annotation
  .registers 7
  .line 1
    instance-of v0, p2, Landroid/view/ViewGroup;
    if-eqz v0, :L3
  .line 2
    invoke-virtual { p1, p2 }, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L0
  .line 3
    invoke-static { p2 }, Landroidx/core/view/v;->L(Landroid/view/View;)Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :L0
  .line 4
    invoke-virtual { p1, p2 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  :L0
  .line 5
    check-cast p2, Landroid/view/ViewGroup;
  .line 6
    invoke-virtual { p2 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v0
    const/4 v1, 0
  :L1
    if-ge v1, v0, :L4
  .line 7
    invoke-virtual { p2, v1 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v2
  .line 8
    invoke-virtual { v2 }, Landroid/view/View;->getVisibility()I
    move-result v3
    if-nez v3, :L2
  .line 9
    invoke-virtual { p0, p1, v2 }, Landroidx/fragment/app/c;->t(Ljava/util/ArrayList;Landroid/view/View;)V
  :L2
    add-int/lit8 v1, v1, 1
    goto :L1
  :L3
  .line 10
    invoke-virtual { p1, p2 }, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L4
  .line 11
    invoke-virtual { p1, p2 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  :L4
    return-void
.end method

.method u(Ljava/util/Map;Landroid/view/View;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/Map<",
      "Ljava/lang/String;",
      "Landroid/view/View;",
      ">;",
      "Landroid/view/View;",
      ")V"
    }
  .end annotation
  .registers 7
  .line 1
    invoke-static { p2 }, Landroidx/core/view/v;->L(Landroid/view/View;)Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    invoke-interface { p1, v0, p2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L0
  .line 3
    instance-of v0, p2, Landroid/view/ViewGroup;
    if-eqz v0, :L3
  .line 4
    check-cast p2, Landroid/view/ViewGroup;
  .line 5
    invoke-virtual { p2 }, Landroid/view/ViewGroup;->getChildCount()I
    move-result v0
    const/4 v1, 0
  :L1
    if-ge v1, v0, :L3
  .line 6
    invoke-virtual { p2, v1 }, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v2
  .line 7
    invoke-virtual { v2 }, Landroid/view/View;->getVisibility()I
    move-result v3
    if-nez v3, :L2
  .line 8
    invoke-virtual { p0, p1, v2 }, Landroidx/fragment/app/c;->u(Ljava/util/Map;Landroid/view/View;)V
  :L2
    add-int/lit8 v1, v1, 1
    goto :L1
  :L3
    return-void
.end method

.method v(Lc/d/a;Ljava/util/Collection;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Lc/d/a<",
      "Ljava/lang/String;",
      "Landroid/view/View;",
      ">;",
      "Ljava/util/Collection<",
      "Ljava/lang/String;",
      ">;)V"
    }
  .end annotation
  .registers 4
  .line 1
    invoke-virtual { p1 }, Lc/d/a;->entrySet()Ljava/util/Set;
    move-result-object p1
    invoke-interface { p1 }, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object p1
  :L0
  .line 2
    invoke-interface { p1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :L1
  .line 3
    invoke-interface { p1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/util/Map$Entry;
  .line 4
    invoke-interface { v0 }, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/view/View;
    invoke-static { v0 }, Landroidx/core/view/v;->L(Landroid/view/View;)Ljava/lang/String;
    move-result-object v0
    invoke-interface { p2, v0 }, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L0
  .line 5
    invoke-interface { p1 }, Ljava/util/Iterator;->remove()V
    goto :L0
  :L1
    return-void
.end method
