.class public Lcn/manstep/phonemirrorBox/u0/c;
.super Ljava/lang/Object;
.implements Lcn/manstep/phonemirrorBox/u0/b;
.source "SourceFile"

.field private static volatile b:Lcn/manstep/phonemirrorBox/u0/c;

.field private final a:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Lcn/manstep/phonemirrorBox/u0/a;",
      ">;"
    }
  .end annotation
.end field

.method private constructor <init>()V
  .registers 7
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Ljava/util/LinkedList;
    invoke-direct { v0 }, Ljava/util/LinkedList;-><init>()V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;
    const/4 v0, 7
    new-array v1, v0, [Ljava/lang/String;
    const-string v2, "cn.manstep.phonemirrorBox.third.AvdUtil"
    const/4 v3, 0
    aput-object v2, v1, v3
    const-string v2, "cn.manstep.phonemirrorBox.third.NzUtil"
    const/4 v4, 1
    aput-object v2, v1, v4
    const/4 v2, 2
    const-string v4, "cn.manstep.phonemirrorBox.third.YqUtil"
    aput-object v4, v1, v2
    const/4 v2, 3
    const-string v4, "cn.manstep.phonemirrorBox.third.YqBtUtil"
    aput-object v4, v1, v2
    const/4 v2, 4
    const-string v4, "cn.manstep.phonemirrorBox.third.HsaeAutoSdk"
    aput-object v4, v1, v2
    const/4 v2, 5
    const-string v4, "cn.manstep.phonemirrorBox.third.AcoUtil"
    aput-object v4, v1, v2
    const/4 v2, 6
    const-string v4, "cn.manstep.phonemirrorBox.third.HySdk"
    aput-object v4, v1, v2
  :L0
    if-ge v3, v0, :L2
  .line 3
    aget-object v2, v1, v3
  .line 4
    invoke-direct { p0, v2 }, Lcn/manstep/phonemirrorBox/u0/c;->f(Ljava/lang/String;)Lcn/manstep/phonemirrorBox/u0/a;
    move-result-object v2
    if-eqz v2, :L1
  .line 5
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "ThirdSdkUtil: "
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    const-string v5, "ThirdSdkUtil"
    invoke-static { v5, v4 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 6
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;
    invoke-interface { v4, v2 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  :L1
    add-int/lit8 v3, v3, 1
    goto :L0
  :L2
  .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L3
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L4
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;
  .line 8
    invoke-virtual { v1, p0 }, Lcn/manstep/phonemirrorBox/u0/a;->y(Lcn/manstep/phonemirrorBox/u0/b;)V
    goto :L3
  :L4
    return-void
.end method

.method private f(Ljava/lang/String;)Lcn/manstep/phonemirrorBox/u0/a;
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L2
  .registers 4
  :L0
  .line 1
    invoke-static { p1 }, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object p1
    const/4 v0, 0
    new-array v1, v0, [Ljava/lang/Class;
  .line 2
    invoke-virtual { p1, v1 }, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    move-result-object p1
    new-array v0, v0, [Ljava/lang/Object;
    invoke-virtual { p1, v0 }, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Lcn/manstep/phonemirrorBox/u0/a;
  :L1
    return-object p1
  :L2
    const/4 p1, 0
    return-object p1
.end method

.method public static h()Lcn/manstep/phonemirrorBox/u0/c;
  .catchall { :L0 .. :L3 } :L2
  .registers 4
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/u0/c;->b:Lcn/manstep/phonemirrorBox/u0/c;
    if-nez v0, :L4
  .line 2
    const-class v0, Lcn/manstep/phonemirrorBox/u0/c;
    monitor-enter v0
  :L0
  .line 3
    sget-object v1, Lcn/manstep/phonemirrorBox/u0/c;->b:Lcn/manstep/phonemirrorBox/u0/c;
    if-nez v1, :L1
  .line 4
    new-instance v1, Lcn/manstep/phonemirrorBox/u0/c;
    invoke-direct { v1 }, Lcn/manstep/phonemirrorBox/u0/c;-><init>()V
    sput-object v1, Lcn/manstep/phonemirrorBox/u0/c;->b:Lcn/manstep/phonemirrorBox/u0/c;
  :L1
  .line 5
    monitor-exit v0
    goto :L4
  :L2
    move-exception v1
    monitor-exit v0
  :L3
    throw v1
  :L4
  .line 6
    sget-object v0, Lcn/manstep/phonemirrorBox/u0/c;->b:Lcn/manstep/phonemirrorBox/u0/c;
    return-object v0
.end method

.method public A(Landroid/content/Context;)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;
  .line 2
    invoke-virtual { v1, p1 }, Lcn/manstep/phonemirrorBox/u0/a;->A(Landroid/content/Context;)V
    goto :L0
  :L1
    return-void
.end method

.method public B(Ljava/lang/String;Ljava/lang/String;II)V
  .registers 7
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;
  .line 2
    invoke-virtual { v1, p1, p2, p3, p4 }, Lcn/manstep/phonemirrorBox/u0/a;->B(Ljava/lang/String;Ljava/lang/String;II)V
    goto :L0
  :L1
    return-void
.end method

.method public C(Ljava/lang/String;II)V
  .registers 6
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;
  .line 2
    invoke-virtual { v1, p1, p2, p3 }, Lcn/manstep/phonemirrorBox/u0/a;->C(Ljava/lang/String;II)V
    goto :L0
  :L1
    return-void
.end method

.method public D(Ljava/lang/String;IIIIII)V
  .registers 19
    move-object v0, p0
  .line 1
    iget-object v1, v0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;
    invoke-interface { v1 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v1
  :L0
    invoke-interface { v1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L1
    invoke-interface { v1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    move-object v3, v2
    check-cast v3, Lcn/manstep/phonemirrorBox/u0/a;
    move-object v4, p1
    move v5, p2
    move v6, p3
    move v7, p4
    move/from16 v8, p5
    move/from16 v9, p6
    move/from16 v10, p7
  .line 2
    invoke-virtual/range { v3 .. v10 }, Lcn/manstep/phonemirrorBox/u0/a;->D(Ljava/lang/String;IIIIII)V
    goto :L0
  :L1
    return-void
.end method

.method public E(I)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;
  .line 2
    invoke-virtual { v1, p1 }, Lcn/manstep/phonemirrorBox/u0/a;->E(I)V
    goto :L0
  :L1
    return-void
.end method

.method public F([B)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;
  .line 2
    invoke-virtual { v1, p1 }, Lcn/manstep/phonemirrorBox/u0/a;->F([B)V
    goto :L0
  :L1
    return-void
.end method

.method public G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
  .registers 23
    move-object v0, p0
  .line 1
    iget-object v1, v0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;
    invoke-interface { v1 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v1
  :L0
    invoke-interface { v1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L1
    invoke-interface { v1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    move-object v3, v2
    check-cast v3, Lcn/manstep/phonemirrorBox/u0/a;
    move-object v4, p1
    move-object v5, p2
    move-object/from16 v6, p3
    move-object/from16 v7, p4
    move/from16 v8, p5
    move/from16 v9, p6
    move/from16 v10, p7
    move-object/from16 v11, p8
    move-object/from16 v12, p9
  .line 2
    invoke-virtual/range { v3 .. v12 }, Lcn/manstep/phonemirrorBox/u0/a;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    goto :L0
  :L1
    return-void
.end method

.method public H()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;
  .line 2
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/u0/a;->H()V
    goto :L0
  :L1
    return-void
.end method

.method public a()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;
  .line 2
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/u0/a;->a()V
    goto :L0
  :L1
    return-void
.end method

.method public b()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;
  .line 2
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/u0/a;->b()V
    goto :L0
  :L1
    return-void
.end method

.method public c(Z)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;
  .line 2
    invoke-virtual { v1, p1 }, Lcn/manstep/phonemirrorBox/u0/a;->c(Z)V
    goto :L0
  :L1
    return-void
.end method

.method public d(Z)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;
  .line 2
    invoke-virtual { v1, p1 }, Lcn/manstep/phonemirrorBox/u0/a;->d(Z)V
    goto :L0
  :L1
    return-void
.end method

.method public e(Z)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;
  .line 2
    invoke-virtual { v1, p1 }, Lcn/manstep/phonemirrorBox/u0/a;->e(Z)V
    goto :L0
  :L1
    return-void
.end method

.method public g()I
  .registers 6
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    const/4 v2, 1
    if-eqz v1, :L2
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;
  .line 2
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/u0/a;->g()I
    move-result v1
    if-eqz v1, :L1
    if-ne v1, v2, :L0
  :L1
    return v1
  :L2
  .line 3
    invoke-static { }, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/util/TimeZone;->getID()Ljava/lang/String;
    move-result-object v0
    const/4 v1, -1
  .line 4
    invoke-virtual { v0 }, Ljava/lang/String;->hashCode()I
    move-result v3
    const/4 v4, 0
    sparse-switch v3, :L9
    goto :L7
  :L3
    const-string v3, "Europe/Moscow"
    invoke-virtual { v0, v3 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L7
    const/4 v1, 1
    goto :L7
  :L4
    const-string v3, "Asia/Shanghai"
    invoke-virtual { v0, v3 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L7
    const/4 v1, 2
    goto :L7
  :L5
    const-string v3, "Asia/Dubai"
    invoke-virtual { v0, v3 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L7
    const/4 v1, 3
    goto :L7
  :L6
    const-string v3, "Asia/Bangkok"
    invoke-virtual { v0, v3 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L7
    const/4 v1, 0
  :L7
    if-eqz v1, :L8
    return v4
  :L8
    return v2
  :L9
  .sparse-switch
    -1738808822 -> :L6
    -1675354028 -> :L5
    -1248743248 -> :L4
    552878567 -> :L3
  .end sparse-switch
.end method

.method public i(Landroid/graphics/Rect;)Landroid/graphics/Rect;
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;
  .line 2
    invoke-virtual { v1, p1 }, Lcn/manstep/phonemirrorBox/u0/a;->h(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    move-result-object v1
    if-eqz v1, :L0
    return-object v1
  :L1
    const/4 p1, 0
    return-object p1
.end method

.method public j(Landroid/content/Context;)V
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L1
  .catch Ljava/lang/Exception; { :L3 .. :L4 } :L5
  .registers 6
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->isEmpty()Z
    move-result v0
    const/high16 v1, 4096
    if-eqz v0, :L1
  .line 2
    new-instance v0, Landroid/content/Intent;
    const-class v2, Lcn/manstep/phonemirrorBox/MainActivity;
    invoke-direct { v0, p1, v2 }, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
  .line 3
    invoke-virtual { v0, v1 }, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
  :L0
  .line 4
    invoke-virtual { p1, v0 }, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
  :L1
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L2
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L6
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lcn/manstep/phonemirrorBox/u0/a;
  .line 6
    invoke-virtual { v2, p1 }, Lcn/manstep/phonemirrorBox/u0/a;->i(Landroid/content/Context;)Z
    move-result v2
    if-eqz v2, :L2
  .line 7
    new-instance v2, Landroid/content/Intent;
    const-class v3, Lcn/manstep/phonemirrorBox/MainActivity;
    invoke-direct { v2, p1, v3 }, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
  .line 8
    invoke-virtual { v2, v1 }, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
  :L3
  .line 9
    invoke-virtual { p1, v2 }, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
  :L4
    goto :L2
  :L5
    nop
    goto :L2
  :L6
    return-void
.end method

.method public k()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;
  .line 2
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/u0/a;->j()V
    goto :L0
  :L1
    return-void
.end method

.method public l()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;
  .line 2
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/u0/a;->k()V
    goto :L0
  :L1
    return-void
.end method

.method public m()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;
  .line 2
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/u0/a;->l()V
    goto :L0
  :L1
    return-void
.end method

.method public n()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;
  .line 2
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/u0/a;->m()V
    goto :L0
  :L1
    return-void
.end method

.method public o()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;
  .line 2
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/u0/a;->n()V
    goto :L0
  :L1
    return-void
.end method

.method public p()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;
  .line 2
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/u0/a;->o()V
    goto :L0
  :L1
    return-void
.end method

.method public q()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;
  .line 2
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/u0/a;->p()V
    goto :L0
  :L1
    return-void
.end method

.method public r()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;
  .line 2
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/u0/a;->q()V
    goto :L0
  :L1
    return-void
.end method

.method public s()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;
  .line 2
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/u0/a;->r()V
    goto :L0
  :L1
    return-void
.end method

.method public t(Landroid/content/Context;)V
  .registers 4
  .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;
    invoke-direct { v0, p1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "register: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;
    invoke-interface { v1 }, Ljava/util/List;->size()I
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "ThirdSdkUtil"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;
  .line 4
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/u0/a;->f()V
  .line 5
    invoke-virtual { v1, p1 }, Lcn/manstep/phonemirrorBox/u0/a;->s(Landroid/content/Context;)V
    goto :L0
  :L1
    return-void
.end method

.method public u(Landroid/content/Context;Z)V
  .registers 5
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;
  .line 2
    invoke-virtual { v1, p1, p2 }, Lcn/manstep/phonemirrorBox/u0/a;->t(Landroid/content/Context;Z)V
    goto :L0
  :L1
    return-void
.end method

.method public v()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;
  .line 2
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/u0/a;->u()V
    goto :L0
  :L1
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->clear()V
    const/4 v0, 0
  .line 4
    sput-object v0, Lcn/manstep/phonemirrorBox/u0/c;->b:Lcn/manstep/phonemirrorBox/u0/c;
    return-void
.end method

.method public w(Landroid/content/Context;)Z
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcn/manstep/phonemirrorBox/u0/a;
  .line 2
    invoke-virtual { v0, p1 }, Lcn/manstep/phonemirrorBox/u0/a;->v(Landroid/content/Context;)Z
    move-result p1
    return p1
  :L0
    const/4 p1, 1
    return p1
.end method

.method public x()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;
  .line 2
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/u0/a;->w()V
    goto :L0
  :L1
    return-void
.end method

.method public y(Landroid/content/Context;I)I
  .registers 5
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;
  .line 2
    invoke-virtual { v1, p1, p2 }, Lcn/manstep/phonemirrorBox/u0/a;->x(Landroid/content/Context;I)I
    move-result v1
    if-ltz v1, :L0
    return v1
  :L1
    const/4 p1, -1
    return p1
.end method

.method public z()V
  .registers 3
    const-string v0, "ThirdSdkUtil"
    const-string v1, "unregister: #####"
  .line 1
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;
    invoke-interface { v0 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L0
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L1
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;
  .line 3
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/u0/a;->z()V
    goto :L0
  :L1
    return-void
.end method
