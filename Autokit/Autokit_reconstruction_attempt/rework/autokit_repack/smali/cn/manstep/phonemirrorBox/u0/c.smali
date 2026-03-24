.class public Lcn/manstep/phonemirrorBox/u0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/manstep/phonemirrorBox/u0/b;


# static fields
.field private static volatile b:Lcn/manstep/phonemirrorBox/u0/c;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/manstep/phonemirrorBox/u0/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;

    const/4 v0, 0x7

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "cn.manstep.phonemirrorBox.third.AvdUtil"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "cn.manstep.phonemirrorBox.third.NzUtil"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v4, "cn.manstep.phonemirrorBox.third.YqUtil"

    aput-object v4, v1, v2

    const/4 v2, 0x3

    const-string v4, "cn.manstep.phonemirrorBox.third.YqBtUtil"

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const-string v4, "cn.manstep.phonemirrorBox.third.HsaeAutoSdk"

    aput-object v4, v1, v2

    const/4 v2, 0x5

    const-string v4, "cn.manstep.phonemirrorBox.third.AcoUtil"

    aput-object v4, v1, v2

    const/4 v2, 0x6

    const-string v4, "cn.manstep.phonemirrorBox.third.HySdk"

    aput-object v4, v1, v2

    :goto_30
    if-ge v3, v0, :cond_58

    .line 3
    aget-object v2, v1, v3

    .line 4
    invoke-direct {p0, v2}, Lcn/manstep/phonemirrorBox/u0/c;->f(Ljava/lang/String;)Lcn/manstep/phonemirrorBox/u0/a;

    move-result-object v2

    if-eqz v2, :cond_55

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ThirdSdkUtil: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ThirdSdkUtil"

    invoke-static {v5, v4}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_55
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 7
    :cond_58
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;

    .line 8
    invoke-virtual {v1, p0}, Lcn/manstep/phonemirrorBox/u0/a;->y(Lcn/manstep/phonemirrorBox/u0/b;)V

    goto :goto_5e

    :cond_6e
    return-void
.end method

.method private f(Ljava/lang/String;)Lcn/manstep/phonemirrorBox/u0/a;
    .registers 4

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/manstep/phonemirrorBox/u0/a;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    return-object p1

    :catch_14
    const/4 p1, 0x0

    return-object p1
.end method

.method public static h()Lcn/manstep/phonemirrorBox/u0/c;
    .registers 4

    .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/u0/c;->b:Lcn/manstep/phonemirrorBox/u0/c;

    if-nez v0, :cond_17

    .line 2
    const-class v0, Lcn/manstep/phonemirrorBox/u0/c;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lcn/manstep/phonemirrorBox/u0/c;->b:Lcn/manstep/phonemirrorBox/u0/c;

    if-nez v1, :cond_12

    .line 4
    new-instance v1, Lcn/manstep/phonemirrorBox/u0/c;

    invoke-direct {v1}, Lcn/manstep/phonemirrorBox/u0/c;-><init>()V

    sput-object v1, Lcn/manstep/phonemirrorBox/u0/c;->b:Lcn/manstep/phonemirrorBox/u0/c;

    .line 5
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 6
    :cond_17
    :goto_17
    sget-object v0, Lcn/manstep/phonemirrorBox/u0/c;->b:Lcn/manstep/phonemirrorBox/u0/c;

    return-object v0
.end method


# virtual methods
.method public A(Landroid/content/Context;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;

    .line 2
    invoke-virtual {v1, p1}, Lcn/manstep/phonemirrorBox/u0/a;->A(Landroid/content/Context;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public B(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;

    .line 2
    invoke-virtual {v1, p1, p2, p3, p4}, Lcn/manstep/phonemirrorBox/u0/a;->B(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public C(Ljava/lang/String;II)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;

    .line 2
    invoke-virtual {v1, p1, p2, p3}, Lcn/manstep/phonemirrorBox/u0/a;->C(Ljava/lang/String;II)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public D(Ljava/lang/String;IIIIII)V
    .registers 19

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

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
    invoke-virtual/range {v3 .. v10}, Lcn/manstep/phonemirrorBox/u0/a;->D(Ljava/lang/String;IIIIII)V

    goto :goto_7

    :cond_22
    return-void
.end method

.method public E(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;

    .line 2
    invoke-virtual {v1, p1}, Lcn/manstep/phonemirrorBox/u0/a;->E(I)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public F([B)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;

    .line 2
    invoke-virtual {v1, p1}, Lcn/manstep/phonemirrorBox/u0/a;->F([B)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .registers 23

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

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
    invoke-virtual/range {v3 .. v12}, Lcn/manstep/phonemirrorBox/u0/a;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_28
    return-void
.end method

.method public H()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;

    .line 2
    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/u0/a;->H()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public a()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;

    .line 2
    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/u0/a;->a()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public b()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;

    .line 2
    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/u0/a;->b()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public c(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;

    .line 2
    invoke-virtual {v1, p1}, Lcn/manstep/phonemirrorBox/u0/a;->c(Z)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public d(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;

    .line 2
    invoke-virtual {v1, p1}, Lcn/manstep/phonemirrorBox/u0/a;->d(Z)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public e(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;

    .line 2
    invoke-virtual {v1, p1}, Lcn/manstep/phonemirrorBox/u0/a;->e(Z)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public g()I
    .registers 6

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;

    .line 2
    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/u0/a;->g()I

    move-result v1

    if-eqz v1, :cond_1b

    if-ne v1, v2, :cond_6

    :cond_1b
    return v1

    .line 3
    :cond_1c
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    sparse-switch v3, :sswitch_data_5a

    goto :goto_55

    :sswitch_2e
    const-string v3, "Europe/Moscow"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    const/4 v1, 0x1

    goto :goto_55

    :sswitch_38
    const-string v3, "Asia/Shanghai"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    const/4 v1, 0x2

    goto :goto_55

    :sswitch_42
    const-string v3, "Asia/Dubai"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    const/4 v1, 0x3

    goto :goto_55

    :sswitch_4c
    const-string v3, "Asia/Bangkok"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    const/4 v1, 0x0

    :cond_55
    :goto_55
    if-eqz v1, :cond_58

    return v4

    :cond_58
    return v2

    nop

    :sswitch_data_5a
    .sparse-switch
        -0x67a41df6 -> :sswitch_4c
        -0x63dbdfac -> :sswitch_42
        -0x4a6e4f50 -> :sswitch_38
        0x20f441e7 -> :sswitch_2e
    .end sparse-switch
.end method

.method public i(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 4

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;

    .line 2
    invoke-virtual {v1, p1}, Lcn/manstep/phonemirrorBox/u0/a;->h(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_6

    return-object v1

    :cond_19
    const/4 p1, 0x0

    return-object p1
.end method

.method public j(Landroid/content/Context;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/high16 v1, 0x10000000

    if-eqz v0, :cond_17

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcn/manstep/phonemirrorBox/MainActivity;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4
    :try_start_14
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_17

    .line 5
    :catch_17
    :cond_17
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1d
    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/manstep/phonemirrorBox/u0/a;

    .line 6
    invoke-virtual {v2, p1}, Lcn/manstep/phonemirrorBox/u0/a;->i(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 7
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcn/manstep/phonemirrorBox/MainActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 9
    :try_start_39
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_1d

    :catch_3d
    nop

    goto :goto_1d

    :cond_3f
    return-void
.end method

.method public k()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;

    .line 2
    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/u0/a;->j()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public l()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;

    .line 2
    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/u0/a;->k()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public m()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;

    .line 2
    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/u0/a;->l()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public n()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;

    .line 2
    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/u0/a;->m()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public o()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;

    .line 2
    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/u0/a;->n()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public p()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;

    .line 2
    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/u0/a;->o()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public q()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;

    .line 2
    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/u0/a;->p()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public r()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;

    .line 2
    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/u0/a;->q()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public s()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;

    .line 2
    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/u0/a;->r()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public t(Landroid/content/Context;)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "register: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThirdSdkUtil"

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;

    .line 4
    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/u0/a;->f()V

    .line 5
    invoke-virtual {v1, p1}, Lcn/manstep/phonemirrorBox/u0/a;->s(Landroid/content/Context;)V

    goto :goto_27

    :cond_3a
    return-void
.end method

.method public u(Landroid/content/Context;Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;

    .line 2
    invoke-virtual {v1, p1, p2}, Lcn/manstep/phonemirrorBox/u0/a;->t(Landroid/content/Context;Z)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public v()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;

    .line 2
    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/u0/a;->u()V

    goto :goto_6

    .line 3
    :cond_16
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 4
    sput-object v0, Lcn/manstep/phonemirrorBox/u0/c;->b:Lcn/manstep/phonemirrorBox/u0/c;

    return-void
.end method

.method public w(Landroid/content/Context;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/manstep/phonemirrorBox/u0/a;

    .line 2
    invoke-virtual {v0, p1}, Lcn/manstep/phonemirrorBox/u0/a;->v(Landroid/content/Context;)Z

    move-result p1

    return p1

    :cond_17
    const/4 p1, 0x1

    return p1
.end method

.method public x()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;

    .line 2
    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/u0/a;->w()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public y(Landroid/content/Context;I)I
    .registers 5

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;

    .line 2
    invoke-virtual {v1, p1, p2}, Lcn/manstep/phonemirrorBox/u0/a;->x(Landroid/content/Context;I)I

    move-result v1

    if-ltz v1, :cond_6

    return v1

    :cond_19
    const/4 p1, -0x1

    return p1
.end method

.method public z()V
    .registers 3

    const-string v0, "ThirdSdkUtil"

    const-string v1, "unregister: #####"

    .line 1
    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/u0/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/u0/a;

    .line 3
    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/u0/a;->z()V

    goto :goto_d

    :cond_1d
    return-void
.end method
