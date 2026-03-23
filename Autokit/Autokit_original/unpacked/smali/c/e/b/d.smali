.class public Lc/e/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lc/e/b/d$a;,
    Lc/e/b/d$b;
  }
.end annotation

.field public static r:Z = false

.field public static s:Z = true

.field public static t:Z = true

.field public static u:Z = true

.field public static v:Z = false

.field private static w:I = 1000

.field public static x:Lc/e/b/e;

.field public static y:J

.field public static z:J

.field public a:Z

.field b:I

.field private c:Ljava/util/HashMap;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/HashMap<",
      "Ljava/lang/String;",
      "Lc/e/b/i;",
      ">;"
    }
  .end annotation
.end field

.field private d:Lc/e/b/d$a;

.field private e:I

.field private f:I

.field g:[Lc/e/b/b;

.field public h:Z

.field public i:Z

.field private j:[Z

.field k:I

.field l:I

.field private m:I

.field final n:Lc/e/b/c;

.field private o:[Lc/e/b/i;

.field private p:I

.field private q:Lc/e/b/d$a;

.method static constructor <clinit>()V
  .registers 2
    return-void
.end method

.method public constructor <init>()V
  .registers 4
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 0
  .line 2
    iput-boolean v0, p0, Lc/e/b/d;->a:Z
  .line 3
    iput v0, p0, Lc/e/b/d;->b:I
    const/4 v1, 0
  .line 4
    iput-object v1, p0, Lc/e/b/d;->c:Ljava/util/HashMap;
    const/16 v2, 32
  .line 5
    iput v2, p0, Lc/e/b/d;->e:I
  .line 6
    iput v2, p0, Lc/e/b/d;->f:I
  .line 7
    iput-object v1, p0, Lc/e/b/d;->g:[Lc/e/b/b;
  .line 8
    iput-boolean v0, p0, Lc/e/b/d;->h:Z
  .line 9
    iput-boolean v0, p0, Lc/e/b/d;->i:Z
    new-array v1, v2, [Z
  .line 10
    iput-object v1, p0, Lc/e/b/d;->j:[Z
    const/4 v1, 1
  .line 11
    iput v1, p0, Lc/e/b/d;->k:I
  .line 12
    iput v0, p0, Lc/e/b/d;->l:I
  .line 13
    iput v2, p0, Lc/e/b/d;->m:I
  .line 14
    sget v1, Lc/e/b/d;->w:I
    new-array v1, v1, [Lc/e/b/i;
    iput-object v1, p0, Lc/e/b/d;->o:[Lc/e/b/i;
  .line 15
    iput v0, p0, Lc/e/b/d;->p:I
    new-array v0, v2, [Lc/e/b/b;
  .line 16
    iput-object v0, p0, Lc/e/b/d;->g:[Lc/e/b/b;
  .line 17
    invoke-direct { p0 }, Lc/e/b/d;->C()V
  .line 18
    new-instance v0, Lc/e/b/c;
    invoke-direct { v0 }, Lc/e/b/c;-><init>()V
    iput-object v0, p0, Lc/e/b/d;->n:Lc/e/b/c;
  .line 19
    new-instance v1, Lc/e/b/h;
    invoke-direct { v1, v0 }, Lc/e/b/h;-><init>(Lc/e/b/c;)V
    iput-object v1, p0, Lc/e/b/d;->d:Lc/e/b/d$a;
  .line 20
    sget-boolean v0, Lc/e/b/d;->v:Z
    if-eqz v0, :L0
  .line 21
    new-instance v0, Lc/e/b/d$b;
    iget-object v1, p0, Lc/e/b/d;->n:Lc/e/b/c;
    invoke-direct { v0, p0, v1 }, Lc/e/b/d$b;-><init>(Lc/e/b/d;Lc/e/b/c;)V
    iput-object v0, p0, Lc/e/b/d;->q:Lc/e/b/d$a;
    goto :L1
  :L0
  .line 22
    new-instance v0, Lc/e/b/b;
    iget-object v1, p0, Lc/e/b/d;->n:Lc/e/b/c;
    invoke-direct { v0, v1 }, Lc/e/b/b;-><init>(Lc/e/b/c;)V
    iput-object v0, p0, Lc/e/b/d;->q:Lc/e/b/d$a;
  :L1
    return-void
.end method

.method private final B(Lc/e/b/d$a;Z)I
  .registers 15
  .line 1
    sget-object p2, Lc/e/b/d;->x:Lc/e/b/e;
    const-wide/16 v0, 1
    if-eqz p2, :L0
  .line 2
    iget-wide v2, p2, Lc/e/b/e;->h:J
    add-long/2addr v2, v0
    iput-wide v2, p2, Lc/e/b/e;->h:J
  :L0
    const/4 p2, 0
    const/4 v2, 0
  :L1
  .line 3
    iget v3, p0, Lc/e/b/d;->k:I
    if-ge v2, v3, :L2
  .line 4
    iget-object v3, p0, Lc/e/b/d;->j:[Z
    aput-boolean p2, v3, v2
    add-int/lit8 v2, v2, 1
    goto :L1
  :L2
    const/4 v2, 0
    const/4 v3, 0
  :L3
    if-nez v2, :L16
  .line 5
    sget-object v4, Lc/e/b/d;->x:Lc/e/b/e;
    if-eqz v4, :L4
  .line 6
    iget-wide v5, v4, Lc/e/b/e;->i:J
    add-long/2addr v5, v0
    iput-wide v5, v4, Lc/e/b/e;->i:J
  :L4
    add-int/lit8 v3, v3, 1
  .line 7
    iget v4, p0, Lc/e/b/d;->k:I
    mul-int/lit8 v4, v4, 2
    if-lt v3, v4, :L5
    return v3
  :L5
  .line 8
    invoke-interface { p1 }, Lc/e/b/d$a;->getKey()Lc/e/b/i;
    move-result-object v4
    const/4 v5, 1
    if-eqz v4, :L6
  .line 9
    iget-object v4, p0, Lc/e/b/d;->j:[Z
    invoke-interface { p1 }, Lc/e/b/d$a;->getKey()Lc/e/b/i;
    move-result-object v6
    iget v6, v6, Lc/e/b/i;->c:I
    aput-boolean v5, v4, v6
  :L6
  .line 10
    iget-object v4, p0, Lc/e/b/d;->j:[Z
    invoke-interface { p1, p0, v4 }, Lc/e/b/d$a;->c(Lc/e/b/d;[Z)Lc/e/b/i;
    move-result-object v4
    if-eqz v4, :L8
  .line 11
    iget-object v6, p0, Lc/e/b/d;->j:[Z
    iget v7, v4, Lc/e/b/i;->c:I
    aget-boolean v8, v6, v7
    if-eqz v8, :L7
    return v3
  :L7
  .line 12
    aput-boolean v5, v6, v7
  :L8
    if-eqz v4, :L15
    const v5, 2139095039
    const/4 v6, -1
    const/4 v7, 0
    const/4 v8, -1
  :L9
  .line 13
    iget v9, p0, Lc/e/b/d;->l:I
    if-ge v7, v9, :L13
  .line 14
    iget-object v9, p0, Lc/e/b/d;->g:[Lc/e/b/b;
    aget-object v9, v9, v7
  .line 15
    iget-object v10, v9, Lc/e/b/b;->a:Lc/e/b/i;
  .line 16
    iget-object v10, v10, Lc/e/b/i;->j:Lc/e/b/i$a;
    sget-object v11, Lc/e/b/i$a;->b:Lc/e/b/i$a;
    if-ne v10, v11, :L10
    goto :L12
  :L10
  .line 17
    iget-boolean v10, v9, Lc/e/b/b;->f:Z
    if-eqz v10, :L11
    goto :L12
  :L11
  .line 18
    invoke-virtual { v9, v4 }, Lc/e/b/b;->t(Lc/e/b/i;)Z
    move-result v10
    if-eqz v10, :L12
  .line 19
    iget-object v10, v9, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { v10, v4 }, Lc/e/b/b$a;->g(Lc/e/b/i;)F
    move-result v10
    const/4 v11, 0
    cmpg-float v11, v10, v11
    if-gez v11, :L12
  .line 20
    iget v9, v9, Lc/e/b/b;->b:F
    neg-float v9, v9
    div-float/2addr v9, v10
    cmpg-float v10, v9, v5
    if-gez v10, :L12
    move v8, v7
    move v5, v9
  :L12
    add-int/lit8 v7, v7, 1
    goto :L9
  :L13
    if-le v8, v6, :L3
  .line 21
    iget-object v5, p0, Lc/e/b/d;->g:[Lc/e/b/b;
    aget-object v5, v5, v8
  .line 22
    iget-object v7, v5, Lc/e/b/b;->a:Lc/e/b/i;
    iput v6, v7, Lc/e/b/i;->d:I
  .line 23
    sget-object v6, Lc/e/b/d;->x:Lc/e/b/e;
    if-eqz v6, :L14
  .line 24
    iget-wide v9, v6, Lc/e/b/e;->j:J
    add-long/2addr v9, v0
    iput-wide v9, v6, Lc/e/b/e;->j:J
  :L14
  .line 25
    invoke-virtual { v5, v4 }, Lc/e/b/b;->x(Lc/e/b/i;)V
  .line 26
    iget-object v4, v5, Lc/e/b/b;->a:Lc/e/b/i;
    iput v8, v4, Lc/e/b/i;->d:I
  .line 27
    invoke-virtual { v4, p0, v5 }, Lc/e/b/i;->g(Lc/e/b/d;Lc/e/b/b;)V
    goto/16 :L3
  :L15
    const/4 v2, 1
    goto/16 :L3
  :L16
    return v3
.end method

.method private C()V
  .registers 5
  .line 1
    sget-boolean v0, Lc/e/b/d;->v:Z
    const/4 v1, 0
    const/4 v2, 0
    if-eqz v0, :L2
  :L0
  .line 2
    iget v0, p0, Lc/e/b/d;->l:I
    if-ge v2, v0, :L4
  .line 3
    iget-object v0, p0, Lc/e/b/d;->g:[Lc/e/b/b;
    aget-object v0, v0, v2
    if-eqz v0, :L1
  .line 4
    iget-object v3, p0, Lc/e/b/d;->n:Lc/e/b/c;
    iget-object v3, v3, Lc/e/b/c;->a:Lc/e/b/f;
    invoke-interface { v3, v0 }, Lc/e/b/f;->a(Ljava/lang/Object;)Z
  :L1
  .line 5
    iget-object v0, p0, Lc/e/b/d;->g:[Lc/e/b/b;
    aput-object v1, v0, v2
    add-int/lit8 v2, v2, 1
    goto :L0
  :L2
  .line 6
    iget v0, p0, Lc/e/b/d;->l:I
    if-ge v2, v0, :L4
  .line 7
    iget-object v0, p0, Lc/e/b/d;->g:[Lc/e/b/b;
    aget-object v0, v0, v2
    if-eqz v0, :L3
  .line 8
    iget-object v3, p0, Lc/e/b/d;->n:Lc/e/b/c;
    iget-object v3, v3, Lc/e/b/c;->b:Lc/e/b/f;
    invoke-interface { v3, v0 }, Lc/e/b/f;->a(Ljava/lang/Object;)Z
  :L3
  .line 9
    iget-object v0, p0, Lc/e/b/d;->g:[Lc/e/b/b;
    aput-object v1, v0, v2
    add-int/lit8 v2, v2, 1
    goto :L2
  :L4
    return-void
.end method

.method private a(Lc/e/b/i$a;Ljava/lang/String;)Lc/e/b/i;
  .registers 5
  .line 1
    iget-object v0, p0, Lc/e/b/d;->n:Lc/e/b/c;
    iget-object v0, v0, Lc/e/b/c;->c:Lc/e/b/f;
    invoke-interface { v0 }, Lc/e/b/f;->b()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lc/e/b/i;
    if-nez v0, :L0
  .line 2
    new-instance v0, Lc/e/b/i;
    invoke-direct { v0, p1, p2 }, Lc/e/b/i;-><init>(Lc/e/b/i$a;Ljava/lang/String;)V
  .line 3
    invoke-virtual { v0, p1, p2 }, Lc/e/b/i;->f(Lc/e/b/i$a;Ljava/lang/String;)V
    goto :L1
  :L0
  .line 4
    invoke-virtual { v0 }, Lc/e/b/i;->d()V
  .line 5
    invoke-virtual { v0, p1, p2 }, Lc/e/b/i;->f(Lc/e/b/i$a;Ljava/lang/String;)V
  :L1
  .line 6
    iget p1, p0, Lc/e/b/d;->p:I
    sget p2, Lc/e/b/d;->w:I
    if-lt p1, p2, :L2
    mul-int/lit8 p2, p2, 2
  .line 7
    sput p2, Lc/e/b/d;->w:I
  .line 8
    iget-object p1, p0, Lc/e/b/d;->o:[Lc/e/b/i;
    invoke-static { p1, p2 }, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
    move-result-object p1
    check-cast p1, [Lc/e/b/i;
    iput-object p1, p0, Lc/e/b/d;->o:[Lc/e/b/i;
  :L2
  .line 9
    iget-object p1, p0, Lc/e/b/d;->o:[Lc/e/b/i;
    iget p2, p0, Lc/e/b/d;->p:I
    add-int/lit8 v1, p2, 1
    iput v1, p0, Lc/e/b/d;->p:I
    aput-object v0, p1, p2
    return-object v0
.end method

.method private final l(Lc/e/b/b;)V
  .registers 9
  .line 1
    sget-boolean v0, Lc/e/b/d;->t:Z
    if-eqz v0, :L0
    iget-boolean v0, p1, Lc/e/b/b;->f:Z
    if-eqz v0, :L0
  .line 2
    iget-object v0, p1, Lc/e/b/b;->a:Lc/e/b/i;
    iget p1, p1, Lc/e/b/b;->b:F
    invoke-virtual { v0, p0, p1 }, Lc/e/b/i;->e(Lc/e/b/d;F)V
    goto :L1
  :L0
  .line 3
    iget-object v0, p0, Lc/e/b/d;->g:[Lc/e/b/b;
    iget v1, p0, Lc/e/b/d;->l:I
    aput-object p1, v0, v1
  .line 4
    iget-object v0, p1, Lc/e/b/b;->a:Lc/e/b/i;
    iput v1, v0, Lc/e/b/i;->d:I
    add-int/lit8 v1, v1, 1
  .line 5
    iput v1, p0, Lc/e/b/d;->l:I
  .line 6
    invoke-virtual { v0, p0, p1 }, Lc/e/b/i;->g(Lc/e/b/d;Lc/e/b/b;)V
  :L1
  .line 7
    sget-boolean p1, Lc/e/b/d;->t:Z
    if-eqz p1, :L12
    iget-boolean p1, p0, Lc/e/b/d;->a:Z
    if-eqz p1, :L12
    const/4 p1, 0
    const/4 v0, 0
  :L2
  .line 8
    iget v1, p0, Lc/e/b/d;->l:I
    if-ge v0, v1, :L11
  .line 9
    iget-object v1, p0, Lc/e/b/d;->g:[Lc/e/b/b;
    aget-object v1, v1, v0
    if-nez v1, :L3
  .line 10
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;
    const-string v2, "WTF"
    invoke-virtual { v1, v2 }, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
  :L3
  .line 11
    iget-object v1, p0, Lc/e/b/d;->g:[Lc/e/b/b;
    aget-object v2, v1, v0
    if-eqz v2, :L10
    aget-object v2, v1, v0
    iget-boolean v2, v2, Lc/e/b/b;->f:Z
    if-eqz v2, :L10
  .line 12
    aget-object v1, v1, v0
  .line 13
    iget-object v2, v1, Lc/e/b/b;->a:Lc/e/b/i;
    iget v3, v1, Lc/e/b/b;->b:F
    invoke-virtual { v2, p0, v3 }, Lc/e/b/i;->e(Lc/e/b/d;F)V
  .line 14
    sget-boolean v2, Lc/e/b/d;->v:Z
    if-eqz v2, :L4
  .line 15
    iget-object v2, p0, Lc/e/b/d;->n:Lc/e/b/c;
    iget-object v2, v2, Lc/e/b/c;->a:Lc/e/b/f;
    invoke-interface { v2, v1 }, Lc/e/b/f;->a(Ljava/lang/Object;)Z
    goto :L5
  :L4
  .line 16
    iget-object v2, p0, Lc/e/b/d;->n:Lc/e/b/c;
    iget-object v2, v2, Lc/e/b/c;->b:Lc/e/b/f;
    invoke-interface { v2, v1 }, Lc/e/b/f;->a(Ljava/lang/Object;)Z
  :L5
  .line 17
    iget-object v1, p0, Lc/e/b/d;->g:[Lc/e/b/b;
    const/4 v2, 0
    aput-object v2, v1, v0
    add-int/lit8 v1, v0, 1
    move v3, v1
  :L6
  .line 18
    iget v4, p0, Lc/e/b/d;->l:I
    if-ge v1, v4, :L8
  .line 19
    iget-object v3, p0, Lc/e/b/d;->g:[Lc/e/b/b;
    add-int/lit8 v4, v1, -1
    aget-object v5, v3, v1
    aput-object v5, v3, v4
  .line 20
    aget-object v5, v3, v4
    iget-object v5, v5, Lc/e/b/b;->a:Lc/e/b/i;
    iget v5, v5, Lc/e/b/i;->d:I
    if-ne v5, v1, :L7
  .line 21
    aget-object v3, v3, v4
    iget-object v3, v3, Lc/e/b/b;->a:Lc/e/b/i;
    iput v4, v3, Lc/e/b/i;->d:I
  :L7
    add-int/lit8 v3, v1, 1
    move v6, v3
    move v3, v1
    move v1, v6
    goto :L6
  :L8
    if-ge v3, v4, :L9
  .line 22
    iget-object v1, p0, Lc/e/b/d;->g:[Lc/e/b/b;
    aput-object v2, v1, v3
  :L9
  .line 23
    iget v1, p0, Lc/e/b/d;->l:I
    add-int/lit8 v1, v1, -1
    iput v1, p0, Lc/e/b/d;->l:I
    add-int/lit8 v0, v0, -1
  :L10
    add-int/lit8 v0, v0, 1
    goto :L2
  :L11
  .line 24
    iput-boolean p1, p0, Lc/e/b/d;->a:Z
  :L12
    return-void
.end method

.method private n()V
  .registers 4
    const/4 v0, 0
  :L0
  .line 1
    iget v1, p0, Lc/e/b/d;->l:I
    if-ge v0, v1, :L1
  .line 2
    iget-object v1, p0, Lc/e/b/d;->g:[Lc/e/b/b;
    aget-object v1, v1, v0
  .line 3
    iget-object v2, v1, Lc/e/b/b;->a:Lc/e/b/i;
    iget v1, v1, Lc/e/b/b;->b:F
    iput v1, v2, Lc/e/b/i;->f:F
    add-int/lit8 v0, v0, 1
    goto :L0
  :L1
    return-void
.end method

.method public static s(Lc/e/b/d;Lc/e/b/i;Lc/e/b/i;F)Lc/e/b/b;
  .registers 4
  .line 1
    invoke-virtual { p0 }, Lc/e/b/d;->r()Lc/e/b/b;
    move-result-object p0
  .line 2
    invoke-virtual { p0, p1, p2, p3 }, Lc/e/b/b;->j(Lc/e/b/i;Lc/e/b/i;F)Lc/e/b/b;
    return-object p0
.end method

.method private u(Lc/e/b/d$a;)I
  .registers 21
    move-object/from16 v0, p0
    const/4 v2, 0
  :L0
  .line 1
    iget v3, v0, Lc/e/b/d;->l:I
    const/4 v4, 0
    if-ge v2, v3, :L3
  .line 2
    iget-object v3, v0, Lc/e/b/d;->g:[Lc/e/b/b;
    aget-object v6, v3, v2
    iget-object v6, v6, Lc/e/b/b;->a:Lc/e/b/i;
  .line 3
    iget-object v6, v6, Lc/e/b/i;->j:Lc/e/b/i$a;
    sget-object v7, Lc/e/b/i$a;->b:Lc/e/b/i$a;
    if-ne v6, v7, :L1
    goto :L2
  :L1
  .line 4
    aget-object v3, v3, v2
    iget v3, v3, Lc/e/b/b;->b:F
    cmpg-float v3, v3, v4
    if-gez v3, :L2
    const/4 v2, 1
    goto :L4
  :L2
    add-int/lit8 v2, v2, 1
    goto :L0
  :L3
    const/4 v2, 0
  :L4
    if-eqz v2, :L31
    const/4 v2, 0
    const/4 v3, 0
  :L5
    if-nez v2, :L30
  .line 5
    sget-object v6, Lc/e/b/d;->x:Lc/e/b/e;
    const-wide/16 v7, 1
    if-eqz v6, :L6
  .line 6
    iget-wide v9, v6, Lc/e/b/e;->k:J
    add-long/2addr v9, v7
    iput-wide v9, v6, Lc/e/b/e;->k:J
  :L6
    add-int/lit8 v3, v3, 1
    const v6, 2139095039
    const/4 v10, 0
    const/4 v11, -1
    const/4 v12, -1
    const/4 v13, 0
  :L7
  .line 7
    iget v14, v0, Lc/e/b/d;->l:I
    if-ge v10, v14, :L26
  .line 8
    iget-object v14, v0, Lc/e/b/d;->g:[Lc/e/b/b;
    aget-object v14, v14, v10
  .line 9
    iget-object v15, v14, Lc/e/b/b;->a:Lc/e/b/i;
  .line 10
    iget-object v15, v15, Lc/e/b/i;->j:Lc/e/b/i$a;
    sget-object v1, Lc/e/b/i$a;->b:Lc/e/b/i$a;
    if-ne v15, v1, :L8
    goto/16 :L25
  :L8
  .line 11
    iget-boolean v1, v14, Lc/e/b/b;->f:Z
    if-eqz v1, :L9
    goto/16 :L25
  :L9
  .line 12
    iget v1, v14, Lc/e/b/b;->b:F
    cmpg-float v1, v1, v4
    if-gez v1, :L25
  .line 13
    sget-boolean v1, Lc/e/b/d;->u:Z
    const/16 v15, 9
    if-eqz v1, :L17
  .line 14
    iget-object v1, v14, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { v1 }, Lc/e/b/b$a;->k()I
    move-result v1
    const/4 v5, 0
  :L10
    if-ge v5, v1, :L25
  .line 15
    iget-object v7, v14, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { v7, v5 }, Lc/e/b/b$a;->f(I)Lc/e/b/i;
    move-result-object v7
  .line 16
    iget-object v8, v14, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { v8, v7 }, Lc/e/b/b$a;->g(Lc/e/b/i;)F
    move-result v8
    cmpg-float v16, v8, v4
    if-gtz v16, :L11
    goto :L16
  :L11
    const/4 v9, 0
  :L12
    if-ge v9, v15, :L16
  .line 17
    iget-object v15, v7, Lc/e/b/i;->h:[F
    aget v15, v15, v9
    div-float/2addr v15, v8
    cmpg-float v18, v15, v6
    if-gez v18, :L13
    if-eq v9, v13, :L14
  :L13
    if-le v9, v13, :L15
  :L14
  .line 18
    iget v12, v7, Lc/e/b/i;->c:I
    move v13, v9
    move v11, v10
    move v6, v15
  :L15
    add-int/lit8 v9, v9, 1
    const/16 v15, 9
    goto :L12
  :L16
    add-int/lit8 v5, v5, 1
    const-wide/16 v7, 1
    const/16 v15, 9
    goto :L10
  :L17
    const/4 v1, 1
  :L18
  .line 19
    iget v5, v0, Lc/e/b/d;->k:I
    if-ge v1, v5, :L25
  .line 20
    iget-object v5, v0, Lc/e/b/d;->n:Lc/e/b/c;
    iget-object v5, v5, Lc/e/b/c;->d:[Lc/e/b/i;
    aget-object v5, v5, v1
  .line 21
    iget-object v7, v14, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { v7, v5 }, Lc/e/b/b$a;->g(Lc/e/b/i;)F
    move-result v7
    cmpg-float v8, v7, v4
    if-gtz v8, :L19
    const/16 v9, 9
    goto :L24
  :L19
    const/4 v8, 0
    const/16 v9, 9
  :L20
    if-ge v8, v9, :L24
  .line 22
    iget-object v15, v5, Lc/e/b/i;->h:[F
    aget v15, v15, v8
    div-float/2addr v15, v7
    cmpg-float v17, v15, v6
    if-gez v17, :L21
    if-eq v8, v13, :L22
  :L21
    if-le v8, v13, :L23
  :L22
    move v12, v1
    move v13, v8
    move v11, v10
    move v6, v15
  :L23
    add-int/lit8 v8, v8, 1
    goto :L20
  :L24
    add-int/lit8 v1, v1, 1
    goto :L18
  :L25
    add-int/lit8 v10, v10, 1
    const-wide/16 v7, 1
    goto/16 :L7
  :L26
    const/4 v1, -1
    if-eq v11, v1, :L28
  .line 23
    iget-object v5, v0, Lc/e/b/d;->g:[Lc/e/b/b;
    aget-object v5, v5, v11
  .line 24
    iget-object v6, v5, Lc/e/b/b;->a:Lc/e/b/i;
    iput v1, v6, Lc/e/b/i;->d:I
  .line 25
    sget-object v1, Lc/e/b/d;->x:Lc/e/b/e;
    if-eqz v1, :L27
  .line 26
    iget-wide v6, v1, Lc/e/b/e;->j:J
    const-wide/16 v8, 1
    add-long/2addr v6, v8
    iput-wide v6, v1, Lc/e/b/e;->j:J
  :L27
  .line 27
    iget-object v1, v0, Lc/e/b/d;->n:Lc/e/b/c;
    iget-object v1, v1, Lc/e/b/c;->d:[Lc/e/b/i;
    aget-object v1, v1, v12
    invoke-virtual { v5, v1 }, Lc/e/b/b;->x(Lc/e/b/i;)V
  .line 28
    iget-object v1, v5, Lc/e/b/b;->a:Lc/e/b/i;
    iput v11, v1, Lc/e/b/i;->d:I
  .line 29
    invoke-virtual { v1, v0, v5 }, Lc/e/b/i;->g(Lc/e/b/d;Lc/e/b/b;)V
    goto :L29
  :L28
    const/4 v2, 1
  :L29
  .line 30
    iget v1, v0, Lc/e/b/d;->k:I
    div-int/lit8 v1, v1, 2
    if-le v3, v1, :L5
    const/4 v2, 1
    goto/16 :L5
  :L30
    move v1, v3
    goto :L32
  :L31
    const/4 v1, 0
  :L32
    return v1
.end method

.method public static w()Lc/e/b/e;
  .registers 1
  .line 1
    sget-object v0, Lc/e/b/d;->x:Lc/e/b/e;
    return-object v0
.end method

.method private y()V
  .registers 7
  .line 1
    iget v0, p0, Lc/e/b/d;->e:I
    mul-int/lit8 v0, v0, 2
    iput v0, p0, Lc/e/b/d;->e:I
  .line 2
    iget-object v1, p0, Lc/e/b/d;->g:[Lc/e/b/b;
    invoke-static { v1, v0 }, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
    move-result-object v0
    check-cast v0, [Lc/e/b/b;
    iput-object v0, p0, Lc/e/b/d;->g:[Lc/e/b/b;
  .line 3
    iget-object v0, p0, Lc/e/b/d;->n:Lc/e/b/c;
    iget-object v1, v0, Lc/e/b/c;->d:[Lc/e/b/i;
    iget v2, p0, Lc/e/b/d;->e:I
    invoke-static { v1, v2 }, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
    move-result-object v1
    check-cast v1, [Lc/e/b/i;
    iput-object v1, v0, Lc/e/b/c;->d:[Lc/e/b/i;
  .line 4
    iget v0, p0, Lc/e/b/d;->e:I
    new-array v1, v0, [Z
    iput-object v1, p0, Lc/e/b/d;->j:[Z
  .line 5
    iput v0, p0, Lc/e/b/d;->f:I
  .line 6
    iput v0, p0, Lc/e/b/d;->m:I
  .line 7
    sget-object v1, Lc/e/b/d;->x:Lc/e/b/e;
    if-eqz v1, :L0
  .line 8
    iget-wide v2, v1, Lc/e/b/e;->d:J
    const-wide/16 v4, 1
    add-long/2addr v2, v4
    iput-wide v2, v1, Lc/e/b/e;->d:J
  .line 9
    iget-wide v2, v1, Lc/e/b/e;->o:J
    int-to-long v4, v0
    invoke-static { v2, v3, v4, v5 }, Ljava/lang/Math;->max(JJ)J
    move-result-wide v2
    iput-wide v2, v1, Lc/e/b/e;->o:J
  .line 10
    sget-object v0, Lc/e/b/d;->x:Lc/e/b/e;
    iget-wide v1, v0, Lc/e/b/e;->o:J
    iput-wide v1, v0, Lc/e/b/e;->x:J
  :L0
    return-void
.end method

.method A(Lc/e/b/d$a;)V
  .registers 7
  .line 1
    sget-object v0, Lc/e/b/d;->x:Lc/e/b/e;
    if-eqz v0, :L0
  .line 2
    iget-wide v1, v0, Lc/e/b/e;->t:J
    const-wide/16 v3, 1
    add-long/2addr v1, v3
    iput-wide v1, v0, Lc/e/b/e;->t:J
  .line 3
    iget-wide v1, v0, Lc/e/b/e;->u:J
    iget v3, p0, Lc/e/b/d;->k:I
    int-to-long v3, v3
    invoke-static { v1, v2, v3, v4 }, Ljava/lang/Math;->max(JJ)J
    move-result-wide v1
    iput-wide v1, v0, Lc/e/b/e;->u:J
  .line 4
    sget-object v0, Lc/e/b/d;->x:Lc/e/b/e;
    iget-wide v1, v0, Lc/e/b/e;->v:J
    iget v3, p0, Lc/e/b/d;->l:I
    int-to-long v3, v3
    invoke-static { v1, v2, v3, v4 }, Ljava/lang/Math;->max(JJ)J
    move-result-wide v1
    iput-wide v1, v0, Lc/e/b/e;->v:J
  :L0
  .line 5
    invoke-direct { p0, p1 }, Lc/e/b/d;->u(Lc/e/b/d$a;)I
    const/4 v0, 0
  .line 6
    invoke-direct { p0, p1, v0 }, Lc/e/b/d;->B(Lc/e/b/d$a;Z)I
  .line 7
    invoke-direct { p0 }, Lc/e/b/d;->n()V
    return-void
.end method

.method public D()V
  .registers 6
    const/4 v0, 0
    const/4 v1, 0
  :L0
  .line 1
    iget-object v2, p0, Lc/e/b/d;->n:Lc/e/b/c;
    iget-object v3, v2, Lc/e/b/c;->d:[Lc/e/b/i;
    array-length v4, v3
    if-ge v1, v4, :L2
  .line 2
    aget-object v2, v3, v1
    if-eqz v2, :L1
  .line 3
    invoke-virtual { v2 }, Lc/e/b/i;->d()V
  :L1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
  .line 4
    iget-object v1, v2, Lc/e/b/c;->c:Lc/e/b/f;
    iget-object v2, p0, Lc/e/b/d;->o:[Lc/e/b/i;
    iget v3, p0, Lc/e/b/d;->p:I
    invoke-interface { v1, v2, v3 }, Lc/e/b/f;->c([Ljava/lang/Object;I)V
  .line 5
    iput v0, p0, Lc/e/b/d;->p:I
  .line 6
    iget-object v1, p0, Lc/e/b/d;->n:Lc/e/b/c;
    iget-object v1, v1, Lc/e/b/c;->d:[Lc/e/b/i;
    const/4 v2, 0
    invoke-static { v1, v2 }, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V
  .line 7
    iget-object v1, p0, Lc/e/b/d;->c:Ljava/util/HashMap;
    if-eqz v1, :L3
  .line 8
    invoke-virtual { v1 }, Ljava/util/HashMap;->clear()V
  :L3
  .line 9
    iput v0, p0, Lc/e/b/d;->b:I
  .line 10
    iget-object v1, p0, Lc/e/b/d;->d:Lc/e/b/d$a;
    invoke-interface { v1 }, Lc/e/b/d$a;->clear()V
    const/4 v1, 1
  .line 11
    iput v1, p0, Lc/e/b/d;->k:I
    const/4 v1, 0
  :L4
  .line 12
    iget v2, p0, Lc/e/b/d;->l:I
    if-ge v1, v2, :L6
  .line 13
    iget-object v2, p0, Lc/e/b/d;->g:[Lc/e/b/b;
    aget-object v3, v2, v1
    if-eqz v3, :L5
  .line 14
    aget-object v2, v2, v1
    iput-boolean v0, v2, Lc/e/b/b;->c:Z
  :L5
    add-int/lit8 v1, v1, 1
    goto :L4
  :L6
  .line 15
    invoke-direct { p0 }, Lc/e/b/d;->C()V
  .line 16
    iput v0, p0, Lc/e/b/d;->l:I
  .line 17
    sget-boolean v0, Lc/e/b/d;->v:Z
    if-eqz v0, :L7
  .line 18
    new-instance v0, Lc/e/b/d$b;
    iget-object v1, p0, Lc/e/b/d;->n:Lc/e/b/c;
    invoke-direct { v0, p0, v1 }, Lc/e/b/d$b;-><init>(Lc/e/b/d;Lc/e/b/c;)V
    iput-object v0, p0, Lc/e/b/d;->q:Lc/e/b/d$a;
    goto :L8
  :L7
  .line 19
    new-instance v0, Lc/e/b/b;
    iget-object v1, p0, Lc/e/b/d;->n:Lc/e/b/c;
    invoke-direct { v0, v1 }, Lc/e/b/b;-><init>(Lc/e/b/c;)V
    iput-object v0, p0, Lc/e/b/d;->q:Lc/e/b/d$a;
  :L8
    return-void
.end method

.method public b(Lc/e/b/k/e;Lc/e/b/k/e;FI)V
  .registers 23
    move-object/from16 v0, p0
    move-object/from16 v1, p1
    move-object/from16 v2, p2
  .line 1
    sget-object v3, Lc/e/b/k/d$b;->c:Lc/e/b/k/d$b;
    invoke-virtual { v1, v3 }, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;
    move-result-object v3
    invoke-virtual { v0, v3 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
    move-result-object v5
  .line 2
    sget-object v3, Lc/e/b/k/d$b;->d:Lc/e/b/k/d$b;
    invoke-virtual { v1, v3 }, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;
    move-result-object v3
    invoke-virtual { v0, v3 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
    move-result-object v7
  .line 3
    sget-object v3, Lc/e/b/k/d$b;->e:Lc/e/b/k/d$b;
    invoke-virtual { v1, v3 }, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;
    move-result-object v3
    invoke-virtual { v0, v3 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
    move-result-object v3
  .line 4
    sget-object v4, Lc/e/b/k/d$b;->f:Lc/e/b/k/d$b;
    invoke-virtual { v1, v4 }, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;
    move-result-object v1
    invoke-virtual { v0, v1 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
    move-result-object v8
  .line 5
    sget-object v1, Lc/e/b/k/d$b;->c:Lc/e/b/k/d$b;
    invoke-virtual { v2, v1 }, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;
    move-result-object v1
    invoke-virtual { v0, v1 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
    move-result-object v1
  .line 6
    sget-object v4, Lc/e/b/k/d$b;->d:Lc/e/b/k/d$b;
    invoke-virtual { v2, v4 }, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;
    move-result-object v4
    invoke-virtual { v0, v4 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
    move-result-object v9
  .line 7
    sget-object v4, Lc/e/b/k/d$b;->e:Lc/e/b/k/d$b;
    invoke-virtual { v2, v4 }, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;
    move-result-object v4
    invoke-virtual { v0, v4 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
    move-result-object v12
  .line 8
    sget-object v4, Lc/e/b/k/d$b;->f:Lc/e/b/k/d$b;
    invoke-virtual { v2, v4 }, Lc/e/b/k/e;->m(Lc/e/b/k/d$b;)Lc/e/b/k/d;
    move-result-object v2
    invoke-virtual { v0, v2 }, Lc/e/b/d;->q(Ljava/lang/Object;)Lc/e/b/i;
    move-result-object v10
  .line 9
    invoke-virtual/range { p0 .. p0 }, Lc/e/b/d;->r()Lc/e/b/b;
    move-result-object v2
    move/from16 v4, p3
    float-to-double v13, v4
  .line 10
    invoke-static { v13, v14 }, Ljava/lang/Math;->sin(D)D
    move-result-wide v15
    move/from16 v4, p4
    move-object/from16 v17, v3
    int-to-double v3, v4
    invoke-static { v3, v4 }, Ljava/lang/Double;->isNaN(D)Z
    move-object/from16 p1, v12
    mul-double v11, v15, v3
    double-to-float v11, v11
    move-object v6, v2
  .line 11
    invoke-virtual/range { v6 .. v11 }, Lc/e/b/b;->q(Lc/e/b/i;Lc/e/b/i;Lc/e/b/i;Lc/e/b/i;F)Lc/e/b/b;
  .line 12
    invoke-virtual { v0, v2 }, Lc/e/b/d;->d(Lc/e/b/b;)V
  .line 13
    invoke-virtual/range { p0 .. p0 }, Lc/e/b/d;->r()Lc/e/b/b;
    move-result-object v2
  .line 14
    invoke-static { v13, v14 }, Ljava/lang/Math;->cos(D)D
    move-result-wide v6
    invoke-static { v3, v4 }, Ljava/lang/Double;->isNaN(D)Z
    mul-double v6, v6, v3
    double-to-float v9, v6
    move-object v4, v2
    move-object/from16 v6, v17
    move-object v7, v1
    move-object/from16 v8, p1
  .line 15
    invoke-virtual/range { v4 .. v9 }, Lc/e/b/b;->q(Lc/e/b/i;Lc/e/b/i;Lc/e/b/i;Lc/e/b/i;F)Lc/e/b/b;
  .line 16
    invoke-virtual { v0, v2 }, Lc/e/b/d;->d(Lc/e/b/b;)V
    return-void
.end method

.method public c(Lc/e/b/i;Lc/e/b/i;IFLc/e/b/i;Lc/e/b/i;II)V
  .registers 20
    move-object v0, p0
    move/from16 v1, p8
  .line 1
    invoke-virtual { p0 }, Lc/e/b/d;->r()Lc/e/b/b;
    move-result-object v10
    move-object v2, v10
    move-object v3, p1
    move-object v4, p2
    move v5, p3
    move v6, p4
    move-object/from16 v7, p5
    move-object/from16 v8, p6
    move/from16 v9, p7
  .line 2
    invoke-virtual/range { v2 .. v9 }, Lc/e/b/b;->h(Lc/e/b/i;Lc/e/b/i;IFLc/e/b/i;Lc/e/b/i;I)Lc/e/b/b;
    const/16 v2, 8
    if-eq v1, v2, :L0
  .line 3
    invoke-virtual { v10, p0, v1 }, Lc/e/b/b;->d(Lc/e/b/d;I)Lc/e/b/b;
  :L0
  .line 4
    invoke-virtual { p0, v10 }, Lc/e/b/d;->d(Lc/e/b/b;)V
    return-void
.end method

.method public d(Lc/e/b/b;)V
  .registers 9
    if-nez p1, :L0
    return-void
  :L0
  .line 1
    sget-object v0, Lc/e/b/d;->x:Lc/e/b/e;
    const-wide/16 v1, 1
    if-eqz v0, :L1
  .line 2
    iget-wide v3, v0, Lc/e/b/e;->f:J
    add-long/2addr v3, v1
    iput-wide v3, v0, Lc/e/b/e;->f:J
  .line 3
    iget-boolean v3, p1, Lc/e/b/b;->f:Z
    if-eqz v3, :L1
  .line 4
    iget-wide v3, v0, Lc/e/b/e;->g:J
    add-long/2addr v3, v1
    iput-wide v3, v0, Lc/e/b/e;->g:J
  :L1
  .line 5
    iget v0, p0, Lc/e/b/d;->l:I
    const/4 v3, 1
    add-int/2addr v0, v3
    iget v4, p0, Lc/e/b/d;->m:I
    if-ge v0, v4, :L2
    iget v0, p0, Lc/e/b/d;->k:I
    add-int/2addr v0, v3
    iget v4, p0, Lc/e/b/d;->f:I
    if-lt v0, v4, :L3
  :L2
  .line 6
    invoke-direct { p0 }, Lc/e/b/d;->y()V
  :L3
    const/4 v0, 0
  .line 7
    iget-boolean v4, p1, Lc/e/b/b;->f:Z
    if-nez v4, :L13
  .line 8
    invoke-virtual { p1, p0 }, Lc/e/b/b;->D(Lc/e/b/d;)V
  .line 9
    invoke-virtual { p1 }, Lc/e/b/b;->isEmpty()Z
    move-result v4
    if-eqz v4, :L4
    return-void
  :L4
  .line 10
    invoke-virtual { p1 }, Lc/e/b/b;->r()V
  .line 11
    invoke-virtual { p1, p0 }, Lc/e/b/b;->f(Lc/e/b/d;)Z
    move-result v4
    if-eqz v4, :L10
  .line 12
    invoke-virtual { p0 }, Lc/e/b/d;->p()Lc/e/b/i;
    move-result-object v4
  .line 13
    iput-object v4, p1, Lc/e/b/b;->a:Lc/e/b/i;
  .line 14
    iget v5, p0, Lc/e/b/d;->l:I
  .line 15
    invoke-direct { p0, p1 }, Lc/e/b/d;->l(Lc/e/b/b;)V
  .line 16
    iget v6, p0, Lc/e/b/d;->l:I
    add-int/2addr v5, v3
    if-ne v6, v5, :L10
  .line 17
    iget-object v0, p0, Lc/e/b/d;->q:Lc/e/b/d$a;
    invoke-interface { v0, p1 }, Lc/e/b/d$a;->a(Lc/e/b/d$a;)V
  .line 18
    iget-object v0, p0, Lc/e/b/d;->q:Lc/e/b/d$a;
    invoke-direct { p0, v0, v3 }, Lc/e/b/d;->B(Lc/e/b/d$a;Z)I
  .line 19
    iget v0, v4, Lc/e/b/i;->d:I
    const/4 v5, -1
    if-ne v0, v5, :L11
  .line 20
    iget-object v0, p1, Lc/e/b/b;->a:Lc/e/b/i;
    if-ne v0, v4, :L6
  .line 21
    invoke-virtual { p1, v4 }, Lc/e/b/b;->v(Lc/e/b/i;)Lc/e/b/i;
    move-result-object v0
    if-eqz v0, :L6
  .line 22
    sget-object v4, Lc/e/b/d;->x:Lc/e/b/e;
    if-eqz v4, :L5
  .line 23
    iget-wide v5, v4, Lc/e/b/e;->j:J
    add-long/2addr v5, v1
    iput-wide v5, v4, Lc/e/b/e;->j:J
  :L5
  .line 24
    invoke-virtual { p1, v0 }, Lc/e/b/b;->x(Lc/e/b/i;)V
  :L6
  .line 25
    iget-boolean v0, p1, Lc/e/b/b;->f:Z
    if-nez v0, :L7
  .line 26
    iget-object v0, p1, Lc/e/b/b;->a:Lc/e/b/i;
    invoke-virtual { v0, p0, p1 }, Lc/e/b/i;->g(Lc/e/b/d;Lc/e/b/b;)V
  :L7
  .line 27
    sget-boolean v0, Lc/e/b/d;->v:Z
    if-eqz v0, :L8
  .line 28
    iget-object v0, p0, Lc/e/b/d;->n:Lc/e/b/c;
    iget-object v0, v0, Lc/e/b/c;->a:Lc/e/b/f;
    invoke-interface { v0, p1 }, Lc/e/b/f;->a(Ljava/lang/Object;)Z
    goto :L9
  :L8
  .line 29
    iget-object v0, p0, Lc/e/b/d;->n:Lc/e/b/c;
    iget-object v0, v0, Lc/e/b/c;->b:Lc/e/b/f;
    invoke-interface { v0, p1 }, Lc/e/b/f;->a(Ljava/lang/Object;)Z
  :L9
  .line 30
    iget v0, p0, Lc/e/b/d;->l:I
    sub-int/2addr v0, v3
    iput v0, p0, Lc/e/b/d;->l:I
    goto :L11
  :L10
    const/4 v3, 0
  :L11
  .line 31
    invoke-virtual { p1 }, Lc/e/b/b;->s()Z
    move-result v0
    if-nez v0, :L12
    return-void
  :L12
    move v0, v3
  :L13
    if-nez v0, :L14
  .line 32
    invoke-direct { p0, p1 }, Lc/e/b/d;->l(Lc/e/b/b;)V
  :L14
    return-void
.end method

.method public e(Lc/e/b/i;Lc/e/b/i;II)Lc/e/b/b;
  .registers 8
  .line 1
    sget-boolean v0, Lc/e/b/d;->s:Z
    const/16 v1, 8
    if-eqz v0, :L0
    if-ne p4, v1, :L0
    iget-boolean v0, p2, Lc/e/b/i;->g:Z
    if-eqz v0, :L0
    iget v0, p1, Lc/e/b/i;->d:I
    const/4 v2, -1
    if-ne v0, v2, :L0
  .line 2
    iget p2, p2, Lc/e/b/i;->f:F
    int-to-float p3, p3
    add-float/2addr p2, p3
    invoke-virtual { p1, p0, p2 }, Lc/e/b/i;->e(Lc/e/b/d;F)V
    const/4 p1, 0
    return-object p1
  :L0
  .line 3
    invoke-virtual { p0 }, Lc/e/b/d;->r()Lc/e/b/b;
    move-result-object v0
  .line 4
    invoke-virtual { v0, p1, p2, p3 }, Lc/e/b/b;->n(Lc/e/b/i;Lc/e/b/i;I)Lc/e/b/b;
    if-eq p4, v1, :L1
  .line 5
    invoke-virtual { v0, p0, p4 }, Lc/e/b/b;->d(Lc/e/b/d;I)Lc/e/b/b;
  :L1
  .line 6
    invoke-virtual { p0, v0 }, Lc/e/b/d;->d(Lc/e/b/b;)V
    return-object v0
.end method

.method public f(Lc/e/b/i;I)V
  .registers 8
  .line 1
    sget-boolean v0, Lc/e/b/d;->s:Z
    const/4 v1, -1
    const/4 v2, 1
    if-eqz v0, :L3
    iget v0, p1, Lc/e/b/i;->d:I
    if-ne v0, v1, :L3
    int-to-float p2, p2
  .line 2
    invoke-virtual { p1, p0, p2 }, Lc/e/b/i;->e(Lc/e/b/d;F)V
    const/4 v0, 0
  :L0
  .line 3
    iget v1, p0, Lc/e/b/d;->b:I
    add-int/2addr v1, v2
    if-ge v0, v1, :L2
  .line 4
    iget-object v1, p0, Lc/e/b/d;->n:Lc/e/b/c;
    iget-object v1, v1, Lc/e/b/c;->d:[Lc/e/b/i;
    aget-object v1, v1, v0
    if-eqz v1, :L1
  .line 5
    iget-boolean v3, v1, Lc/e/b/i;->n:Z
    if-eqz v3, :L1
    iget v3, v1, Lc/e/b/i;->o:I
    iget v4, p1, Lc/e/b/i;->c:I
    if-ne v3, v4, :L1
  .line 6
    iget v3, v1, Lc/e/b/i;->p:F
    add-float/2addr v3, p2
    invoke-virtual { v1, p0, v3 }, Lc/e/b/i;->e(Lc/e/b/d;F)V
  :L1
    add-int/lit8 v0, v0, 1
    goto :L0
  :L2
    return-void
  :L3
  .line 7
    iget v0, p1, Lc/e/b/i;->d:I
    if-eq v0, v1, :L6
  .line 8
    iget-object v1, p0, Lc/e/b/d;->g:[Lc/e/b/b;
    aget-object v0, v1, v0
  .line 9
    iget-boolean v1, v0, Lc/e/b/b;->f:Z
    if-eqz v1, :L4
    int-to-float p1, p2
  .line 10
    iput p1, v0, Lc/e/b/b;->b:F
    goto :L7
  :L4
  .line 11
    iget-object v1, v0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { v1 }, Lc/e/b/b$a;->k()I
    move-result v1
    if-nez v1, :L5
  .line 12
    iput-boolean v2, v0, Lc/e/b/b;->f:Z
    int-to-float p1, p2
  .line 13
    iput p1, v0, Lc/e/b/b;->b:F
    goto :L7
  :L5
  .line 14
    invoke-virtual { p0 }, Lc/e/b/d;->r()Lc/e/b/b;
    move-result-object v0
  .line 15
    invoke-virtual { v0, p1, p2 }, Lc/e/b/b;->m(Lc/e/b/i;I)Lc/e/b/b;
  .line 16
    invoke-virtual { p0, v0 }, Lc/e/b/d;->d(Lc/e/b/b;)V
    goto :L7
  :L6
  .line 17
    invoke-virtual { p0 }, Lc/e/b/d;->r()Lc/e/b/b;
    move-result-object v0
  .line 18
    invoke-virtual { v0, p1, p2 }, Lc/e/b/b;->i(Lc/e/b/i;I)Lc/e/b/b;
  .line 19
    invoke-virtual { p0, v0 }, Lc/e/b/d;->d(Lc/e/b/b;)V
  :L7
    return-void
.end method

.method public g(Lc/e/b/i;Lc/e/b/i;IZ)V
  .registers 7
  .line 1
    invoke-virtual { p0 }, Lc/e/b/d;->r()Lc/e/b/b;
    move-result-object p4
  .line 2
    invoke-virtual { p0 }, Lc/e/b/d;->t()Lc/e/b/i;
    move-result-object v0
    const/4 v1, 0
  .line 3
    iput v1, v0, Lc/e/b/i;->e:I
  .line 4
    invoke-virtual { p4, p1, p2, v0, p3 }, Lc/e/b/b;->o(Lc/e/b/i;Lc/e/b/i;Lc/e/b/i;I)Lc/e/b/b;
  .line 5
    invoke-virtual { p0, p4 }, Lc/e/b/d;->d(Lc/e/b/b;)V
    return-void
.end method

.method public h(Lc/e/b/i;Lc/e/b/i;II)V
  .registers 8
  .line 1
    invoke-virtual { p0 }, Lc/e/b/d;->r()Lc/e/b/b;
    move-result-object v0
  .line 2
    invoke-virtual { p0 }, Lc/e/b/d;->t()Lc/e/b/i;
    move-result-object v1
    const/4 v2, 0
  .line 3
    iput v2, v1, Lc/e/b/i;->e:I
  .line 4
    invoke-virtual { v0, p1, p2, v1, p3 }, Lc/e/b/b;->o(Lc/e/b/i;Lc/e/b/i;Lc/e/b/i;I)Lc/e/b/b;
    const/16 p1, 8
    if-eq p4, p1, :L0
  .line 5
    iget-object p1, v0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { p1, v1 }, Lc/e/b/b$a;->g(Lc/e/b/i;)F
    move-result p1
    const/high16 p2, -16512
    mul-float p1, p1, p2
    float-to-int p1, p1
  .line 6
    invoke-virtual { p0, v0, p1, p4 }, Lc/e/b/d;->m(Lc/e/b/b;II)V
  :L0
  .line 7
    invoke-virtual { p0, v0 }, Lc/e/b/d;->d(Lc/e/b/b;)V
    return-void
.end method

.method public i(Lc/e/b/i;Lc/e/b/i;IZ)V
  .registers 7
  .line 1
    invoke-virtual { p0 }, Lc/e/b/d;->r()Lc/e/b/b;
    move-result-object p4
  .line 2
    invoke-virtual { p0 }, Lc/e/b/d;->t()Lc/e/b/i;
    move-result-object v0
    const/4 v1, 0
  .line 3
    iput v1, v0, Lc/e/b/i;->e:I
  .line 4
    invoke-virtual { p4, p1, p2, v0, p3 }, Lc/e/b/b;->p(Lc/e/b/i;Lc/e/b/i;Lc/e/b/i;I)Lc/e/b/b;
  .line 5
    invoke-virtual { p0, p4 }, Lc/e/b/d;->d(Lc/e/b/b;)V
    return-void
.end method

.method public j(Lc/e/b/i;Lc/e/b/i;II)V
  .registers 8
  .line 1
    invoke-virtual { p0 }, Lc/e/b/d;->r()Lc/e/b/b;
    move-result-object v0
  .line 2
    invoke-virtual { p0 }, Lc/e/b/d;->t()Lc/e/b/i;
    move-result-object v1
    const/4 v2, 0
  .line 3
    iput v2, v1, Lc/e/b/i;->e:I
  .line 4
    invoke-virtual { v0, p1, p2, v1, p3 }, Lc/e/b/b;->p(Lc/e/b/i;Lc/e/b/i;Lc/e/b/i;I)Lc/e/b/b;
    const/16 p1, 8
    if-eq p4, p1, :L0
  .line 5
    iget-object p1, v0, Lc/e/b/b;->e:Lc/e/b/b$a;
    invoke-interface { p1, v1 }, Lc/e/b/b$a;->g(Lc/e/b/i;)F
    move-result p1
    const/high16 p2, -16512
    mul-float p1, p1, p2
    float-to-int p1, p1
  .line 6
    invoke-virtual { p0, v0, p1, p4 }, Lc/e/b/d;->m(Lc/e/b/b;II)V
  :L0
  .line 7
    invoke-virtual { p0, v0 }, Lc/e/b/d;->d(Lc/e/b/b;)V
    return-void
.end method

.method public k(Lc/e/b/i;Lc/e/b/i;Lc/e/b/i;Lc/e/b/i;FI)V
  .registers 14
  .line 1
    invoke-virtual { p0 }, Lc/e/b/d;->r()Lc/e/b/b;
    move-result-object v6
    move-object v0, v6
    move-object v1, p1
    move-object v2, p2
    move-object v3, p3
    move-object v4, p4
    move v5, p5
  .line 2
    invoke-virtual/range { v0 .. v5 }, Lc/e/b/b;->k(Lc/e/b/i;Lc/e/b/i;Lc/e/b/i;Lc/e/b/i;F)Lc/e/b/b;
    const/16 p1, 8
    if-eq p6, p1, :L0
  .line 3
    invoke-virtual { v6, p0, p6 }, Lc/e/b/b;->d(Lc/e/b/d;I)Lc/e/b/b;
  :L0
  .line 4
    invoke-virtual { p0, v6 }, Lc/e/b/d;->d(Lc/e/b/b;)V
    return-void
.end method

.method m(Lc/e/b/b;II)V
  .registers 5
    const/4 v0, 0
  .line 1
    invoke-virtual { p0, p3, v0 }, Lc/e/b/d;->o(ILjava/lang/String;)Lc/e/b/i;
    move-result-object p3
  .line 2
    invoke-virtual { p1, p3, p2 }, Lc/e/b/b;->e(Lc/e/b/i;I)Lc/e/b/b;
    return-void
.end method

.method public o(ILjava/lang/String;)Lc/e/b/i;
  .registers 8
  .line 1
    sget-object v0, Lc/e/b/d;->x:Lc/e/b/e;
    if-eqz v0, :L0
  .line 2
    iget-wide v1, v0, Lc/e/b/e;->l:J
    const-wide/16 v3, 1
    add-long/2addr v1, v3
    iput-wide v1, v0, Lc/e/b/e;->l:J
  :L0
  .line 3
    iget v0, p0, Lc/e/b/d;->k:I
    add-int/lit8 v0, v0, 1
    iget v1, p0, Lc/e/b/d;->f:I
    if-lt v0, v1, :L1
  .line 4
    invoke-direct { p0 }, Lc/e/b/d;->y()V
  :L1
  .line 5
    sget-object v0, Lc/e/b/i$a;->e:Lc/e/b/i$a;
    invoke-direct { p0, v0, p2 }, Lc/e/b/d;->a(Lc/e/b/i$a;Ljava/lang/String;)Lc/e/b/i;
    move-result-object p2
  .line 6
    iget v0, p0, Lc/e/b/d;->b:I
    add-int/lit8 v0, v0, 1
    iput v0, p0, Lc/e/b/d;->b:I
  .line 7
    iget v1, p0, Lc/e/b/d;->k:I
    add-int/lit8 v1, v1, 1
    iput v1, p0, Lc/e/b/d;->k:I
  .line 8
    iput v0, p2, Lc/e/b/i;->c:I
  .line 9
    iput p1, p2, Lc/e/b/i;->e:I
  .line 10
    iget-object p1, p0, Lc/e/b/d;->n:Lc/e/b/c;
    iget-object p1, p1, Lc/e/b/c;->d:[Lc/e/b/i;
    aput-object p2, p1, v0
  .line 11
    iget-object p1, p0, Lc/e/b/d;->d:Lc/e/b/d$a;
    invoke-interface { p1, p2 }, Lc/e/b/d$a;->b(Lc/e/b/i;)V
    return-object p2
.end method

.method public p()Lc/e/b/i;
  .registers 6
  .line 1
    sget-object v0, Lc/e/b/d;->x:Lc/e/b/e;
    if-eqz v0, :L0
  .line 2
    iget-wide v1, v0, Lc/e/b/e;->n:J
    const-wide/16 v3, 1
    add-long/2addr v1, v3
    iput-wide v1, v0, Lc/e/b/e;->n:J
  :L0
  .line 3
    iget v0, p0, Lc/e/b/d;->k:I
    add-int/lit8 v0, v0, 1
    iget v1, p0, Lc/e/b/d;->f:I
    if-lt v0, v1, :L1
  .line 4
    invoke-direct { p0 }, Lc/e/b/d;->y()V
  :L1
  .line 5
    sget-object v0, Lc/e/b/i$a;->d:Lc/e/b/i$a;
    const/4 v1, 0
    invoke-direct { p0, v0, v1 }, Lc/e/b/d;->a(Lc/e/b/i$a;Ljava/lang/String;)Lc/e/b/i;
    move-result-object v0
  .line 6
    iget v1, p0, Lc/e/b/d;->b:I
    add-int/lit8 v1, v1, 1
    iput v1, p0, Lc/e/b/d;->b:I
  .line 7
    iget v2, p0, Lc/e/b/d;->k:I
    add-int/lit8 v2, v2, 1
    iput v2, p0, Lc/e/b/d;->k:I
  .line 8
    iput v1, v0, Lc/e/b/i;->c:I
  .line 9
    iget-object v2, p0, Lc/e/b/d;->n:Lc/e/b/c;
    iget-object v2, v2, Lc/e/b/c;->d:[Lc/e/b/i;
    aput-object v0, v2, v1
    return-object v0
.end method

.method public q(Ljava/lang/Object;)Lc/e/b/i;
  .registers 5
    const/4 v0, 0
    if-nez p1, :L0
    return-object v0
  :L0
  .line 1
    iget v1, p0, Lc/e/b/d;->k:I
    add-int/lit8 v1, v1, 1
    iget v2, p0, Lc/e/b/d;->f:I
    if-lt v1, v2, :L1
  .line 2
    invoke-direct { p0 }, Lc/e/b/d;->y()V
  :L1
  .line 3
    instance-of v1, p1, Lc/e/b/k/d;
    if-eqz v1, :L5
  .line 4
    check-cast p1, Lc/e/b/k/d;
    invoke-virtual { p1 }, Lc/e/b/k/d;->h()Lc/e/b/i;
    move-result-object v0
    if-nez v0, :L2
  .line 5
    iget-object v0, p0, Lc/e/b/d;->n:Lc/e/b/c;
    invoke-virtual { p1, v0 }, Lc/e/b/k/d;->r(Lc/e/b/c;)V
  .line 6
    invoke-virtual { p1 }, Lc/e/b/k/d;->h()Lc/e/b/i;
    move-result-object p1
    move-object v0, p1
  :L2
  .line 7
    iget p1, v0, Lc/e/b/i;->c:I
    const/4 v1, -1
    if-eq p1, v1, :L3
    iget v2, p0, Lc/e/b/d;->b:I
    if-gt p1, v2, :L3
    iget-object v2, p0, Lc/e/b/d;->n:Lc/e/b/c;
    iget-object v2, v2, Lc/e/b/c;->d:[Lc/e/b/i;
    aget-object p1, v2, p1
    if-nez p1, :L5
  :L3
  .line 8
    iget p1, v0, Lc/e/b/i;->c:I
    if-eq p1, v1, :L4
  .line 9
    invoke-virtual { v0 }, Lc/e/b/i;->d()V
  :L4
  .line 10
    iget p1, p0, Lc/e/b/d;->b:I
    add-int/lit8 p1, p1, 1
    iput p1, p0, Lc/e/b/d;->b:I
  .line 11
    iget v1, p0, Lc/e/b/d;->k:I
    add-int/lit8 v1, v1, 1
    iput v1, p0, Lc/e/b/d;->k:I
  .line 12
    iput p1, v0, Lc/e/b/i;->c:I
  .line 13
    sget-object v1, Lc/e/b/i$a;->b:Lc/e/b/i$a;
    iput-object v1, v0, Lc/e/b/i;->j:Lc/e/b/i$a;
  .line 14
    iget-object v1, p0, Lc/e/b/d;->n:Lc/e/b/c;
    iget-object v1, v1, Lc/e/b/c;->d:[Lc/e/b/i;
    aput-object v0, v1, p1
  :L5
    return-object v0
.end method

.method public r()Lc/e/b/b;
  .registers 6
  .line 1
    sget-boolean v0, Lc/e/b/d;->v:Z
    const-wide/16 v1, 1
    if-eqz v0, :L1
  .line 2
    iget-object v0, p0, Lc/e/b/d;->n:Lc/e/b/c;
    iget-object v0, v0, Lc/e/b/c;->a:Lc/e/b/f;
    invoke-interface { v0 }, Lc/e/b/f;->b()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lc/e/b/b;
    if-nez v0, :L0
  .line 3
    new-instance v0, Lc/e/b/d$b;
    iget-object v3, p0, Lc/e/b/d;->n:Lc/e/b/c;
    invoke-direct { v0, p0, v3 }, Lc/e/b/d$b;-><init>(Lc/e/b/d;Lc/e/b/c;)V
  .line 4
    sget-wide v3, Lc/e/b/d;->z:J
    add-long/2addr v3, v1
    sput-wide v3, Lc/e/b/d;->z:J
    goto :L3
  :L0
  .line 5
    invoke-virtual { v0 }, Lc/e/b/b;->y()V
    goto :L3
  :L1
  .line 6
    iget-object v0, p0, Lc/e/b/d;->n:Lc/e/b/c;
    iget-object v0, v0, Lc/e/b/c;->b:Lc/e/b/f;
    invoke-interface { v0 }, Lc/e/b/f;->b()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lc/e/b/b;
    if-nez v0, :L2
  .line 7
    new-instance v0, Lc/e/b/b;
    iget-object v3, p0, Lc/e/b/d;->n:Lc/e/b/c;
    invoke-direct { v0, v3 }, Lc/e/b/b;-><init>(Lc/e/b/c;)V
  .line 8
    sget-wide v3, Lc/e/b/d;->y:J
    add-long/2addr v3, v1
    sput-wide v3, Lc/e/b/d;->y:J
    goto :L3
  :L2
  .line 9
    invoke-virtual { v0 }, Lc/e/b/b;->y()V
  :L3
  .line 10
    invoke-static { }, Lc/e/b/i;->b()V
    return-object v0
.end method

.method public t()Lc/e/b/i;
  .registers 6
  .line 1
    sget-object v0, Lc/e/b/d;->x:Lc/e/b/e;
    if-eqz v0, :L0
  .line 2
    iget-wide v1, v0, Lc/e/b/e;->m:J
    const-wide/16 v3, 1
    add-long/2addr v1, v3
    iput-wide v1, v0, Lc/e/b/e;->m:J
  :L0
  .line 3
    iget v0, p0, Lc/e/b/d;->k:I
    add-int/lit8 v0, v0, 1
    iget v1, p0, Lc/e/b/d;->f:I
    if-lt v0, v1, :L1
  .line 4
    invoke-direct { p0 }, Lc/e/b/d;->y()V
  :L1
  .line 5
    sget-object v0, Lc/e/b/i$a;->d:Lc/e/b/i$a;
    const/4 v1, 0
    invoke-direct { p0, v0, v1 }, Lc/e/b/d;->a(Lc/e/b/i$a;Ljava/lang/String;)Lc/e/b/i;
    move-result-object v0
  .line 6
    iget v1, p0, Lc/e/b/d;->b:I
    add-int/lit8 v1, v1, 1
    iput v1, p0, Lc/e/b/d;->b:I
  .line 7
    iget v2, p0, Lc/e/b/d;->k:I
    add-int/lit8 v2, v2, 1
    iput v2, p0, Lc/e/b/d;->k:I
  .line 8
    iput v1, v0, Lc/e/b/i;->c:I
  .line 9
    iget-object v2, p0, Lc/e/b/d;->n:Lc/e/b/c;
    iget-object v2, v2, Lc/e/b/c;->d:[Lc/e/b/i;
    aput-object v0, v2, v1
    return-object v0
.end method

.method public v()Lc/e/b/c;
  .registers 2
  .line 1
    iget-object v0, p0, Lc/e/b/d;->n:Lc/e/b/c;
    return-object v0
.end method

.method public x(Ljava/lang/Object;)I
  .registers 3
  .line 1
    check-cast p1, Lc/e/b/k/d;
  .line 2
    invoke-virtual { p1 }, Lc/e/b/k/d;->h()Lc/e/b/i;
    move-result-object p1
    if-eqz p1, :L0
  .line 3
    iget p1, p1, Lc/e/b/i;->f:F
    const/high16 v0, 16128
    add-float/2addr p1, v0
    float-to-int p1, p1
    return p1
  :L0
    const/4 p1, 0
    return p1
.end method

.method public z()V
  .registers 6
  .line 1
    sget-object v0, Lc/e/b/d;->x:Lc/e/b/e;
    const-wide/16 v1, 1
    if-eqz v0, :L0
  .line 2
    iget-wide v3, v0, Lc/e/b/e;->e:J
    add-long/2addr v3, v1
    iput-wide v3, v0, Lc/e/b/e;->e:J
  :L0
  .line 3
    iget-object v0, p0, Lc/e/b/d;->d:Lc/e/b/d$a;
    invoke-interface { v0 }, Lc/e/b/d$a;->isEmpty()Z
    move-result v0
    if-eqz v0, :L1
  .line 4
    invoke-direct { p0 }, Lc/e/b/d;->n()V
    return-void
  :L1
  .line 5
    iget-boolean v0, p0, Lc/e/b/d;->h:Z
    if-nez v0, :L3
    iget-boolean v0, p0, Lc/e/b/d;->i:Z
    if-eqz v0, :L2
    goto :L3
  :L2
  .line 6
    iget-object v0, p0, Lc/e/b/d;->d:Lc/e/b/d$a;
    invoke-virtual { p0, v0 }, Lc/e/b/d;->A(Lc/e/b/d$a;)V
    goto :L11
  :L3
  .line 7
    sget-object v0, Lc/e/b/d;->x:Lc/e/b/e;
    if-eqz v0, :L4
  .line 8
    iget-wide v3, v0, Lc/e/b/e;->q:J
    add-long/2addr v3, v1
    iput-wide v3, v0, Lc/e/b/e;->q:J
  :L4
    const/4 v0, 0
    const/4 v3, 0
  :L5
  .line 9
    iget v4, p0, Lc/e/b/d;->l:I
    if-ge v3, v4, :L7
  .line 10
    iget-object v4, p0, Lc/e/b/d;->g:[Lc/e/b/b;
    aget-object v4, v4, v3
  .line 11
    iget-boolean v4, v4, Lc/e/b/b;->f:Z
    if-nez v4, :L6
    goto :L8
  :L6
    add-int/lit8 v3, v3, 1
    goto :L5
  :L7
    const/4 v0, 1
  :L8
    if-nez v0, :L9
  .line 12
    iget-object v0, p0, Lc/e/b/d;->d:Lc/e/b/d$a;
    invoke-virtual { p0, v0 }, Lc/e/b/d;->A(Lc/e/b/d$a;)V
    goto :L11
  :L9
  .line 13
    sget-object v0, Lc/e/b/d;->x:Lc/e/b/e;
    if-eqz v0, :L10
  .line 14
    iget-wide v3, v0, Lc/e/b/e;->p:J
    add-long/2addr v3, v1
    iput-wide v3, v0, Lc/e/b/e;->p:J
  :L10
  .line 15
    invoke-direct { p0 }, Lc/e/b/d;->n()V
  :L11
    return-void
.end method
