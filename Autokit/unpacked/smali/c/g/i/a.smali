.class public final Lc/g/i/a;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lc/g/i/a$b;,
    Lc/g/i/a$a;
  }
.end annotation

.field final static d:Lc/g/i/d;

.field private final static e:Ljava/lang/String;

.field private final static f:Ljava/lang/String;

.field final static g:Lc/g/i/a;

.field final static h:Lc/g/i/a;

.field private final a:Z

.field private final b:I

.field private final c:Lc/g/i/d;

.method static constructor <clinit>()V
  .registers 6
  .line 1
    sget-object v0, Lc/g/i/e;->c:Lc/g/i/d;
    sput-object v0, Lc/g/i/a;->d:Lc/g/i/d;
    const/16 v0, 8206
  .line 2
    invoke-static { v0 }, Ljava/lang/Character;->toString(C)Ljava/lang/String;
    move-result-object v0
    sput-object v0, Lc/g/i/a;->e:Ljava/lang/String;
    const/16 v0, 8207
  .line 3
    invoke-static { v0 }, Ljava/lang/Character;->toString(C)Ljava/lang/String;
    move-result-object v0
    sput-object v0, Lc/g/i/a;->f:Ljava/lang/String;
  .line 4
    new-instance v0, Lc/g/i/a;
    sget-object v1, Lc/g/i/a;->d:Lc/g/i/d;
    const/4 v2, 0
    const/4 v3, 2
    invoke-direct { v0, v2, v3, v1 }, Lc/g/i/a;-><init>(ZILc/g/i/d;)V
    sput-object v0, Lc/g/i/a;->g:Lc/g/i/a;
  .line 5
    new-instance v0, Lc/g/i/a;
    sget-object v1, Lc/g/i/a;->d:Lc/g/i/d;
    const/4 v2, 1
    invoke-direct { v0, v2, v3, v1 }, Lc/g/i/a;-><init>(ZILc/g/i/d;)V
    sput-object v0, Lc/g/i/a;->h:Lc/g/i/a;
    return-void
.end method

.method constructor <init>(ZILc/g/i/d;)V
  .registers 4
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-boolean p1, p0, Lc/g/i/a;->a:Z
  .line 3
    iput p2, p0, Lc/g/i/a;->b:I
  .line 4
    iput-object p3, p0, Lc/g/i/a;->c:Lc/g/i/d;
    return-void
.end method

.method private static a(Ljava/lang/CharSequence;)I
  .registers 3
  .line 1
    new-instance v0, Lc/g/i/a$b;
    const/4 v1, 0
    invoke-direct { v0, p0, v1 }, Lc/g/i/a$b;-><init>(Ljava/lang/CharSequence;Z)V
    invoke-virtual { v0 }, Lc/g/i/a$b;->d()I
    move-result p0
    return p0
.end method

.method private static b(Ljava/lang/CharSequence;)I
  .registers 3
  .line 1
    new-instance v0, Lc/g/i/a$b;
    const/4 v1, 0
    invoke-direct { v0, p0, v1 }, Lc/g/i/a$b;-><init>(Ljava/lang/CharSequence;Z)V
    invoke-virtual { v0 }, Lc/g/i/a$b;->e()I
    move-result p0
    return p0
.end method

.method public static c()Lc/g/i/a;
  .registers 2
  .line 1
    new-instance v0, Lc/g/i/a$a;
    invoke-direct { v0 }, Lc/g/i/a$a;-><init>()V
    invoke-virtual { v0 }, Lc/g/i/a$a;->a()Lc/g/i/a;
    move-result-object v0
    return-object v0
.end method

.method static e(Ljava/util/Locale;)Z
  .registers 2
  .line 1
    invoke-static { p0 }, Lc/g/i/f;->b(Ljava/util/Locale;)I
    move-result p0
    const/4 v0, 1
    if-ne p0, v0, :L0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method private f(Ljava/lang/CharSequence;Lc/g/i/d;)Ljava/lang/String;
  .registers 5
  .line 1
    invoke-interface { p1 }, Ljava/lang/CharSequence;->length()I
    move-result v0
    const/4 v1, 0
    invoke-interface { p2, p1, v1, v0 }, Lc/g/i/d;->a(Ljava/lang/CharSequence;II)Z
    move-result p2
  .line 2
    iget-boolean v0, p0, Lc/g/i/a;->a:Z
    if-nez v0, :L1
    if-nez p2, :L0
    invoke-static { p1 }, Lc/g/i/a;->b(Ljava/lang/CharSequence;)I
    move-result v0
    const/4 v1, 1
    if-ne v0, v1, :L1
  :L0
  .line 3
    sget-object p1, Lc/g/i/a;->e:Ljava/lang/String;
    return-object p1
  :L1
  .line 4
    iget-boolean v0, p0, Lc/g/i/a;->a:Z
    if-eqz v0, :L3
    if-eqz p2, :L2
    invoke-static { p1 }, Lc/g/i/a;->b(Ljava/lang/CharSequence;)I
    move-result p1
    const/4 p2, -1
    if-ne p1, p2, :L3
  :L2
  .line 5
    sget-object p1, Lc/g/i/a;->f:Ljava/lang/String;
    return-object p1
  :L3
    const-string p1, ""
    return-object p1
.end method

.method private g(Ljava/lang/CharSequence;Lc/g/i/d;)Ljava/lang/String;
  .registers 5
  .line 1
    invoke-interface { p1 }, Ljava/lang/CharSequence;->length()I
    move-result v0
    const/4 v1, 0
    invoke-interface { p2, p1, v1, v0 }, Lc/g/i/d;->a(Ljava/lang/CharSequence;II)Z
    move-result p2
  .line 2
    iget-boolean v0, p0, Lc/g/i/a;->a:Z
    if-nez v0, :L1
    if-nez p2, :L0
    invoke-static { p1 }, Lc/g/i/a;->a(Ljava/lang/CharSequence;)I
    move-result v0
    const/4 v1, 1
    if-ne v0, v1, :L1
  :L0
  .line 3
    sget-object p1, Lc/g/i/a;->e:Ljava/lang/String;
    return-object p1
  :L1
  .line 4
    iget-boolean v0, p0, Lc/g/i/a;->a:Z
    if-eqz v0, :L3
    if-eqz p2, :L2
    invoke-static { p1 }, Lc/g/i/a;->a(Ljava/lang/CharSequence;)I
    move-result p1
    const/4 p2, -1
    if-ne p1, p2, :L3
  :L2
  .line 5
    sget-object p1, Lc/g/i/a;->f:Ljava/lang/String;
    return-object p1
  :L3
    const-string p1, ""
    return-object p1
.end method

.method public d()Z
  .registers 2
  .line 1
    iget v0, p0, Lc/g/i/a;->b:I
    and-int/lit8 v0, v0, 2
    if-eqz v0, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public h(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
  .registers 4
  .line 1
    iget-object v0, p0, Lc/g/i/a;->c:Lc/g/i/d;
    const/4 v1, 1
    invoke-virtual { p0, p1, v0, v1 }, Lc/g/i/a;->i(Ljava/lang/CharSequence;Lc/g/i/d;Z)Ljava/lang/CharSequence;
    move-result-object p1
    return-object p1
.end method

.method public i(Ljava/lang/CharSequence;Lc/g/i/d;Z)Ljava/lang/CharSequence;
  .registers 6
    if-nez p1, :L0
    const/4 p1, 0
    return-object p1
  :L0
    const/4 v0, 0
  .line 1
    invoke-interface { p1 }, Ljava/lang/CharSequence;->length()I
    move-result v1
    invoke-interface { p2, p1, v0, v1 }, Lc/g/i/d;->a(Ljava/lang/CharSequence;II)Z
    move-result p2
  .line 2
    new-instance v0, Landroid/text/SpannableStringBuilder;
    invoke-direct { v0 }, Landroid/text/SpannableStringBuilder;-><init>()V
  .line 3
    invoke-virtual { p0 }, Lc/g/i/a;->d()Z
    move-result v1
    if-eqz v1, :L3
    if-eqz p3, :L3
    if-eqz p2, :L1
  .line 4
    sget-object v1, Lc/g/i/e;->b:Lc/g/i/d;
    goto :L2
  :L1
    sget-object v1, Lc/g/i/e;->a:Lc/g/i/d;
  :L2
  .line 5
    invoke-direct { p0, p1, v1 }, Lc/g/i/a;->g(Ljava/lang/CharSequence;Lc/g/i/d;)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
  :L3
  .line 6
    iget-boolean v1, p0, Lc/g/i/a;->a:Z
    if-eq p2, v1, :L6
    if-eqz p2, :L4
    const/16 v1, 8235
    goto :L5
  :L4
    const/16 v1, 8234
  :L5
  .line 7
    invoke-virtual { v0, v1 }, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;
  .line 8
    invoke-virtual { v0, p1 }, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    const/16 v1, 8236
  .line 9
    invoke-virtual { v0, v1 }, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;
    goto :L7
  :L6
  .line 10
    invoke-virtual { v0, p1 }, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
  :L7
    if-eqz p3, :L10
    if-eqz p2, :L8
  .line 11
    sget-object p2, Lc/g/i/e;->b:Lc/g/i/d;
    goto :L9
  :L8
    sget-object p2, Lc/g/i/e;->a:Lc/g/i/d;
  :L9
  .line 12
    invoke-direct { p0, p1, p2 }, Lc/g/i/a;->f(Ljava/lang/CharSequence;Lc/g/i/d;)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v0, p1 }, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
  :L10
    return-object v0
.end method

.method public j(Ljava/lang/String;)Ljava/lang/String;
  .registers 4
  .line 1
    iget-object v0, p0, Lc/g/i/a;->c:Lc/g/i/d;
    const/4 v1, 1
    invoke-virtual { p0, p1, v0, v1 }, Lc/g/i/a;->k(Ljava/lang/String;Lc/g/i/d;Z)Ljava/lang/String;
    move-result-object p1
    return-object p1
.end method

.method public k(Ljava/lang/String;Lc/g/i/d;Z)Ljava/lang/String;
  .registers 4
    if-nez p1, :L0
    const/4 p1, 0
    return-object p1
  :L0
  .line 1
    invoke-virtual { p0, p1, p2, p3 }, Lc/g/i/a;->i(Ljava/lang/CharSequence;Lc/g/i/d;Z)Ljava/lang/CharSequence;
    move-result-object p1
    invoke-interface { p1 }, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    move-result-object p1
    return-object p1
.end method
