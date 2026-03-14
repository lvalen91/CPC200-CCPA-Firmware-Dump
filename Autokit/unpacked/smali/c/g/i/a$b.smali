.class Lc/g/i/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lc/g/i/a;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 10
  name = "b"
.end annotation

.field private final static f:[B

.field private final a:Ljava/lang/CharSequence;

.field private final b:Z

.field private final c:I

.field private d:I

.field private e:C

.method static constructor <clinit>()V
  .registers 5
    const/16 v0, 1792
    new-array v1, v0, [B
  .line 1
    sput-object v1, Lc/g/i/a$b;->f:[B
    const/4 v1, 0
  :L0
    if-ge v1, v0, :L1
  .line 2
    sget-object v2, Lc/g/i/a$b;->f:[B
    invoke-static { v1 }, Ljava/lang/Character;->getDirectionality(I)B
    move-result v3
    aput-byte v3, v2, v1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L1
    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;Z)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Lc/g/i/a$b;->a:Ljava/lang/CharSequence;
  .line 3
    iput-boolean p2, p0, Lc/g/i/a$b;->b:Z
  .line 4
    invoke-interface { p1 }, Ljava/lang/CharSequence;->length()I
    move-result p1
    iput p1, p0, Lc/g/i/a$b;->c:I
    return-void
.end method

.method private static c(C)B
  .registers 2
    const/16 v0, 1792
    if-ge p0, v0, :L0
  .line 1
    sget-object v0, Lc/g/i/a$b;->f:[B
    aget-byte p0, v0, p0
    goto :L1
  :L0
    invoke-static { p0 }, Ljava/lang/Character;->getDirectionality(C)B
    move-result p0
  :L1
    return p0
.end method

.method private f()B
  .registers 5
  .line 1
    iget v0, p0, Lc/g/i/a$b;->d:I
  :L0
  .line 2
    iget v1, p0, Lc/g/i/a$b;->d:I
    const/16 v2, 59
    if-lez v1, :L2
  .line 3
    iget-object v3, p0, Lc/g/i/a$b;->a:Ljava/lang/CharSequence;
    add-int/lit8 v1, v1, -1
    iput v1, p0, Lc/g/i/a$b;->d:I
    invoke-interface { v3, v1 }, Ljava/lang/CharSequence;->charAt(I)C
    move-result v1
    iput-char v1, p0, Lc/g/i/a$b;->e:C
    const/16 v3, 38
    if-ne v1, v3, :L1
    const/16 v0, 12
    return v0
  :L1
    if-ne v1, v2, :L0
  :L2
  .line 4
    iput v0, p0, Lc/g/i/a$b;->d:I
  .line 5
    iput-char v2, p0, Lc/g/i/a$b;->e:C
    const/16 v0, 13
    return v0
.end method

.method private g()B
  .registers 4
  :L0
  .line 1
    iget v0, p0, Lc/g/i/a$b;->d:I
    iget v1, p0, Lc/g/i/a$b;->c:I
    if-ge v0, v1, :L1
    iget-object v1, p0, Lc/g/i/a$b;->a:Ljava/lang/CharSequence;
    add-int/lit8 v2, v0, 1
    iput v2, p0, Lc/g/i/a$b;->d:I
    invoke-interface { v1, v0 }, Ljava/lang/CharSequence;->charAt(I)C
    move-result v0
    iput-char v0, p0, Lc/g/i/a$b;->e:C
    const/16 v1, 59
    if-eq v0, v1, :L1
    goto :L0
  :L1
    const/16 v0, 12
    return v0
.end method

.method private h()B
  .registers 5
  .line 1
    iget v0, p0, Lc/g/i/a$b;->d:I
  :L0
  .line 2
    iget v1, p0, Lc/g/i/a$b;->d:I
    const/16 v2, 62
    if-lez v1, :L5
  .line 3
    iget-object v3, p0, Lc/g/i/a$b;->a:Ljava/lang/CharSequence;
    add-int/lit8 v1, v1, -1
    iput v1, p0, Lc/g/i/a$b;->d:I
    invoke-interface { v3, v1 }, Ljava/lang/CharSequence;->charAt(I)C
    move-result v1
    iput-char v1, p0, Lc/g/i/a$b;->e:C
    const/16 v3, 60
    if-ne v1, v3, :L1
    const/16 v0, 12
    return v0
  :L1
    if-ne v1, v2, :L2
    goto :L5
  :L2
    const/16 v2, 34
    if-eq v1, v2, :L3
    const/16 v2, 39
    if-ne v1, v2, :L0
  :L3
  .line 4
    iget-char v1, p0, Lc/g/i/a$b;->e:C
  :L4
  .line 5
    iget v2, p0, Lc/g/i/a$b;->d:I
    if-lez v2, :L0
    iget-object v3, p0, Lc/g/i/a$b;->a:Ljava/lang/CharSequence;
    add-int/lit8 v2, v2, -1
    iput v2, p0, Lc/g/i/a$b;->d:I
    invoke-interface { v3, v2 }, Ljava/lang/CharSequence;->charAt(I)C
    move-result v2
    iput-char v2, p0, Lc/g/i/a$b;->e:C
    if-eq v2, v1, :L0
    goto :L4
  :L5
  .line 6
    iput v0, p0, Lc/g/i/a$b;->d:I
  .line 7
    iput-char v2, p0, Lc/g/i/a$b;->e:C
    const/16 v0, 13
    return v0
.end method

.method private i()B
  .registers 6
  .line 1
    iget v0, p0, Lc/g/i/a$b;->d:I
  :L0
  .line 2
    iget v1, p0, Lc/g/i/a$b;->d:I
    iget v2, p0, Lc/g/i/a$b;->c:I
    if-ge v1, v2, :L4
  .line 3
    iget-object v2, p0, Lc/g/i/a$b;->a:Ljava/lang/CharSequence;
    add-int/lit8 v3, v1, 1
    iput v3, p0, Lc/g/i/a$b;->d:I
    invoke-interface { v2, v1 }, Ljava/lang/CharSequence;->charAt(I)C
    move-result v1
    iput-char v1, p0, Lc/g/i/a$b;->e:C
    const/16 v2, 62
    if-ne v1, v2, :L1
    const/16 v0, 12
    return v0
  :L1
    const/16 v2, 34
    if-eq v1, v2, :L2
    const/16 v2, 39
    if-ne v1, v2, :L0
  :L2
  .line 4
    iget-char v1, p0, Lc/g/i/a$b;->e:C
  :L3
  .line 5
    iget v2, p0, Lc/g/i/a$b;->d:I
    iget v3, p0, Lc/g/i/a$b;->c:I
    if-ge v2, v3, :L0
    iget-object v3, p0, Lc/g/i/a$b;->a:Ljava/lang/CharSequence;
    add-int/lit8 v4, v2, 1
    iput v4, p0, Lc/g/i/a$b;->d:I
    invoke-interface { v3, v2 }, Ljava/lang/CharSequence;->charAt(I)C
    move-result v2
    iput-char v2, p0, Lc/g/i/a$b;->e:C
    if-eq v2, v1, :L0
    goto :L3
  :L4
  .line 6
    iput v0, p0, Lc/g/i/a$b;->d:I
    const/16 v0, 60
  .line 7
    iput-char v0, p0, Lc/g/i/a$b;->e:C
    const/16 v0, 13
    return v0
.end method

.method a()B
  .registers 4
  .line 1
    iget-object v0, p0, Lc/g/i/a$b;->a:Ljava/lang/CharSequence;
    iget v1, p0, Lc/g/i/a$b;->d:I
    add-int/lit8 v1, v1, -1
    invoke-interface { v0, v1 }, Ljava/lang/CharSequence;->charAt(I)C
    move-result v0
    iput-char v0, p0, Lc/g/i/a$b;->e:C
  .line 2
    invoke-static { v0 }, Ljava/lang/Character;->isLowSurrogate(C)Z
    move-result v0
    if-eqz v0, :L0
  .line 3
    iget-object v0, p0, Lc/g/i/a$b;->a:Ljava/lang/CharSequence;
    iget v1, p0, Lc/g/i/a$b;->d:I
    invoke-static { v0, v1 }, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I
    move-result v0
  .line 4
    iget v1, p0, Lc/g/i/a$b;->d:I
    invoke-static { v0 }, Ljava/lang/Character;->charCount(I)I
    move-result v2
    sub-int/2addr v1, v2
    iput v1, p0, Lc/g/i/a$b;->d:I
  .line 5
    invoke-static { v0 }, Ljava/lang/Character;->getDirectionality(I)B
    move-result v0
    return v0
  :L0
  .line 6
    iget v0, p0, Lc/g/i/a$b;->d:I
    add-int/lit8 v0, v0, -1
    iput v0, p0, Lc/g/i/a$b;->d:I
  .line 7
    iget-char v0, p0, Lc/g/i/a$b;->e:C
    invoke-static { v0 }, Lc/g/i/a$b;->c(C)B
    move-result v0
  .line 8
    iget-boolean v1, p0, Lc/g/i/a$b;->b:Z
    if-eqz v1, :L2
  .line 9
    iget-char v1, p0, Lc/g/i/a$b;->e:C
    const/16 v2, 62
    if-ne v1, v2, :L1
  .line 10
    invoke-direct { p0 }, Lc/g/i/a$b;->h()B
    move-result v0
    goto :L2
  :L1
    const/16 v2, 59
    if-ne v1, v2, :L2
  .line 11
    invoke-direct { p0 }, Lc/g/i/a$b;->f()B
    move-result v0
  :L2
    return v0
.end method

.method b()B
  .registers 4
  .line 1
    iget-object v0, p0, Lc/g/i/a$b;->a:Ljava/lang/CharSequence;
    iget v1, p0, Lc/g/i/a$b;->d:I
    invoke-interface { v0, v1 }, Ljava/lang/CharSequence;->charAt(I)C
    move-result v0
    iput-char v0, p0, Lc/g/i/a$b;->e:C
  .line 2
    invoke-static { v0 }, Ljava/lang/Character;->isHighSurrogate(C)Z
    move-result v0
    if-eqz v0, :L0
  .line 3
    iget-object v0, p0, Lc/g/i/a$b;->a:Ljava/lang/CharSequence;
    iget v1, p0, Lc/g/i/a$b;->d:I
    invoke-static { v0, v1 }, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I
    move-result v0
  .line 4
    iget v1, p0, Lc/g/i/a$b;->d:I
    invoke-static { v0 }, Ljava/lang/Character;->charCount(I)I
    move-result v2
    add-int/2addr v1, v2
    iput v1, p0, Lc/g/i/a$b;->d:I
  .line 5
    invoke-static { v0 }, Ljava/lang/Character;->getDirectionality(I)B
    move-result v0
    return v0
  :L0
  .line 6
    iget v0, p0, Lc/g/i/a$b;->d:I
    add-int/lit8 v0, v0, 1
    iput v0, p0, Lc/g/i/a$b;->d:I
  .line 7
    iget-char v0, p0, Lc/g/i/a$b;->e:C
    invoke-static { v0 }, Lc/g/i/a$b;->c(C)B
    move-result v0
  .line 8
    iget-boolean v1, p0, Lc/g/i/a$b;->b:Z
    if-eqz v1, :L2
  .line 9
    iget-char v1, p0, Lc/g/i/a$b;->e:C
    const/16 v2, 60
    if-ne v1, v2, :L1
  .line 10
    invoke-direct { p0 }, Lc/g/i/a$b;->i()B
    move-result v0
    goto :L2
  :L1
    const/16 v2, 38
    if-ne v1, v2, :L2
  .line 11
    invoke-direct { p0 }, Lc/g/i/a$b;->g()B
    move-result v0
  :L2
    return v0
.end method

.method d()I
  .registers 9
    const/4 v0, 0
  .line 1
    iput v0, p0, Lc/g/i/a$b;->d:I
    const/4 v1, -1
    const/4 v2, 1
    const/4 v3, 0
    const/4 v4, 0
    const/4 v5, 0
  :L0
  .line 2
    iget v6, p0, Lc/g/i/a$b;->d:I
    iget v7, p0, Lc/g/i/a$b;->c:I
    if-ge v6, v7, :L7
    if-nez v3, :L7
  .line 3
    invoke-virtual { p0 }, Lc/g/i/a$b;->b()B
    move-result v6
    if-eqz v6, :L5
    if-eq v6, v2, :L4
    const/4 v7, 2
    if-eq v6, v7, :L4
    const/16 v7, 9
    if-eq v6, v7, :L0
    packed-switch v6, :L15
    goto :L6
  :L1
    add-int/lit8 v5, v5, -1
    const/4 v4, 0
    goto :L0
  :L2
    add-int/lit8 v5, v5, 1
    const/4 v4, 1
    goto :L0
  :L3
    add-int/lit8 v5, v5, 1
    const/4 v4, -1
    goto :L0
  :L4
    if-nez v5, :L6
    return v2
  :L5
    if-nez v5, :L6
    return v1
  :L6
    move v3, v5
    goto :L0
  :L7
    if-nez v3, :L8
    return v0
  :L8
    if-eqz v4, :L9
    return v4
  :L9
  .line 4
    iget v4, p0, Lc/g/i/a$b;->d:I
    if-lez v4, :L14
  .line 5
    invoke-virtual { p0 }, Lc/g/i/a$b;->a()B
    move-result v4
    packed-switch v4, :L16
    goto :L9
  :L10
    add-int/lit8 v5, v5, 1
    goto :L9
  :L11
    if-ne v3, v5, :L13
    return v2
  :L12
    if-ne v3, v5, :L13
    return v1
  :L13
    add-int/lit8 v5, v5, -1
    goto :L9
  :L14
    return v0
  :L15
  .packed-switch 14
    :L3
    :L3
    :L2
    :L2
    :L1
  .end packed-switch
  :L16
  .packed-switch 14
    :L12
    :L12
    :L11
    :L11
    :L10
  .end packed-switch
.end method

.method e()I
  .registers 8
  .line 1
    iget v0, p0, Lc/g/i/a$b;->c:I
    iput v0, p0, Lc/g/i/a$b;->d:I
    const/4 v0, 0
    const/4 v1, 0
    const/4 v2, 0
  :L0
  .line 2
    iget v3, p0, Lc/g/i/a$b;->d:I
    if-lez v3, :L10
  .line 3
    invoke-virtual { p0 }, Lc/g/i/a$b;->a()B
    move-result v3
    const/4 v4, -1
    if-eqz v3, :L7
    const/4 v5, 1
    if-eq v3, v5, :L5
    const/4 v6, 2
    if-eq v3, v6, :L5
    const/16 v6, 9
    if-eq v3, v6, :L0
    packed-switch v3, :L11
    if-nez v2, :L0
    goto :L9
  :L1
    add-int/lit8 v1, v1, 1
    goto :L0
  :L2
    if-ne v2, v1, :L4
    return v5
  :L3
    if-ne v2, v1, :L4
    return v4
  :L4
    add-int/lit8 v1, v1, -1
    goto :L0
  :L5
    if-nez v1, :L6
    return v5
  :L6
    if-nez v2, :L0
    goto :L9
  :L7
    if-nez v1, :L8
    return v4
  :L8
    if-nez v2, :L0
  :L9
    move v2, v1
    goto :L0
  :L10
    return v0
  :L11
  .packed-switch 14
    :L3
    :L3
    :L2
    :L2
    :L1
  .end packed-switch
.end method
