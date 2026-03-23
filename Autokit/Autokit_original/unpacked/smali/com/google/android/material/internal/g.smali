.class final Lcom/google/android/material/internal/g;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcom/google/android/material/internal/g$a;
  }
.end annotation

.field final static n:I

.field private static o:Z

.field private static p:Ljava/lang/reflect/Constructor;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/reflect/Constructor<",
      "Landroid/text/StaticLayout;",
      ">;"
    }
  .end annotation
.end field

.field private static q:Ljava/lang/Object;

.field private a:Ljava/lang/CharSequence;

.field private final b:Landroid/text/TextPaint;

.field private final c:I

.field private d:I

.field private e:I

.field private f:Landroid/text/Layout$Alignment;

.field private g:I

.field private h:F

.field private i:F

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Landroid/text/TextUtils$TruncateAt;

.method static constructor <clinit>()V
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 23
    if-lt v0, v1, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    sput v0, Lcom/google/android/material/internal/g;->n:I
    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V
  .registers 4
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    iput-object p1, p0, Lcom/google/android/material/internal/g;->a:Ljava/lang/CharSequence;
  .line 3
    iput-object p2, p0, Lcom/google/android/material/internal/g;->b:Landroid/text/TextPaint;
  .line 4
    iput p3, p0, Lcom/google/android/material/internal/g;->c:I
    const/4 p2, 0
  .line 5
    iput p2, p0, Lcom/google/android/material/internal/g;->d:I
  .line 6
    invoke-interface { p1 }, Ljava/lang/CharSequence;->length()I
    move-result p1
    iput p1, p0, Lcom/google/android/material/internal/g;->e:I
  .line 7
    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;
    iput-object p1, p0, Lcom/google/android/material/internal/g;->f:Landroid/text/Layout$Alignment;
    const p1, 2147483647
  .line 8
    iput p1, p0, Lcom/google/android/material/internal/g;->g:I
    const/4 p1, 0
  .line 9
    iput p1, p0, Lcom/google/android/material/internal/g;->h:F
    const/high16 p1, 16256
  .line 10
    iput p1, p0, Lcom/google/android/material/internal/g;->i:F
  .line 11
    sget p1, Lcom/google/android/material/internal/g;->n:I
    iput p1, p0, Lcom/google/android/material/internal/g;->j:I
    const/4 p1, 1
  .line 12
    iput-boolean p1, p0, Lcom/google/android/material/internal/g;->k:Z
    const/4 p1, 0
  .line 13
    iput-object p1, p0, Lcom/google/android/material/internal/g;->m:Landroid/text/TextUtils$TruncateAt;
    return-void
.end method

.method private b()V
  .catch Ljava/lang/Exception; { :L0 .. :L9 } :L10
  .registers 7
  .line 1
    sget-boolean v0, Lcom/google/android/material/internal/g;->o:Z
    if-eqz v0, :L0
    return-void
  :L0
  .line 2
    iget-boolean v0, p0, Lcom/google/android/material/internal/g;->l:Z
    const/4 v1, 0
    const/4 v2, 1
    if-eqz v0, :L1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v3, 23
    if-lt v0, v3, :L1
    const/4 v0, 1
    goto :L2
  :L1
    const/4 v0, 0
  :L2
  .line 3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v4, 18
    if-lt v3, v4, :L5
  .line 4
    const-class v3, Landroid/text/TextDirectionHeuristic;
    if-eqz v0, :L3
  .line 5
    sget-object v0, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;
    goto :L4
  :L3
    sget-object v0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;
  :L4
    sput-object v0, Lcom/google/android/material/internal/g;->q:Ljava/lang/Object;
    goto :L8
  :L5
  .line 6
    const-class v0, Lcom/google/android/material/internal/g;
    invoke-virtual { v0 }, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    move-result-object v0
  .line 7
    iget-boolean v3, p0, Lcom/google/android/material/internal/g;->l:Z
    if-eqz v3, :L6
    const-string v3, "RTL"
    goto :L7
  :L6
    const-string v3, "LTR"
  :L7
    const-string v4, "android.text.TextDirectionHeuristic"
  .line 8
    invoke-virtual { v0, v4 }, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object v4
    const-string v5, "android.text.TextDirectionHeuristics"
  .line 9
    invoke-virtual { v0, v5 }, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object v0
  .line 10
    invoke-virtual { v0, v3 }, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    move-result-object v3
    invoke-virtual { v3, v0 }, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    sput-object v0, Lcom/google/android/material/internal/g;->q:Ljava/lang/Object;
    move-object v3, v4
  :L8
    const/16 v0, 13
    new-array v0, v0, [Ljava/lang/Class;
  .line 11
    const-class v4, Ljava/lang/CharSequence;
    aput-object v4, v0, v1
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    aput-object v1, v0, v2
    const/4 v1, 2
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    aput-object v4, v0, v1
    const/4 v1, 3
    const-class v4, Landroid/text/TextPaint;
    aput-object v4, v0, v1
    const/4 v1, 4
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    aput-object v4, v0, v1
    const/4 v1, 5
    const-class v4, Landroid/text/Layout$Alignment;
    aput-object v4, v0, v1
    const/4 v1, 6
    aput-object v3, v0, v1
    const/4 v1, 7
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;
    aput-object v3, v0, v1
    const/16 v1, 8
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;
    aput-object v3, v0, v1
    const/16 v1, 9
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
    aput-object v3, v0, v1
    const/16 v1, 10
    const-class v3, Landroid/text/TextUtils$TruncateAt;
    aput-object v3, v0, v1
    const/16 v1, 11
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    aput-object v3, v0, v1
    const/16 v1, 12
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    aput-object v3, v0, v1
  .line 12
    const-class v1, Landroid/text/StaticLayout;
    invoke-virtual { v1, v0 }, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    move-result-object v0
    sput-object v0, Lcom/google/android/material/internal/g;->p:Ljava/lang/reflect/Constructor;
  .line 13
    invoke-virtual { v0, v2 }, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
  .line 14
    sput-boolean v2, Lcom/google/android/material/internal/g;->o:Z
  :L9
    return-void
  :L10
    move-exception v0
  .line 15
    new-instance v1, Lcom/google/android/material/internal/g$a;
    invoke-direct { v1, v0 }, Lcom/google/android/material/internal/g$a;-><init>(Ljava/lang/Throwable;)V
    throw v1
.end method

.method public static c(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Lcom/google/android/material/internal/g;
  .registers 4
  .line 1
    new-instance v0, Lcom/google/android/material/internal/g;
    invoke-direct { v0, p0, p1, p2 }, Lcom/google/android/material/internal/g;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V
    return-object v0
.end method

.method public a()Landroid/text/StaticLayout;
  .catch Ljava/lang/Exception; { :L10 .. :L11 } :L12
  .registers 9
  .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/g;->a:Ljava/lang/CharSequence;
    if-nez v0, :L0
    const-string v0, ""
  .line 2
    iput-object v0, p0, Lcom/google/android/material/internal/g;->a:Ljava/lang/CharSequence;
  :L0
  .line 3
    iget v0, p0, Lcom/google/android/material/internal/g;->c:I
    const/4 v1, 0
    invoke-static { v1, v0 }, Ljava/lang/Math;->max(II)I
    move-result v0
  .line 4
    iget-object v2, p0, Lcom/google/android/material/internal/g;->a:Ljava/lang/CharSequence;
  .line 5
    iget v3, p0, Lcom/google/android/material/internal/g;->g:I
    const/4 v4, 1
    if-ne v3, v4, :L1
  .line 6
    iget-object v3, p0, Lcom/google/android/material/internal/g;->b:Landroid/text/TextPaint;
    int-to-float v5, v0
    iget-object v6, p0, Lcom/google/android/material/internal/g;->m:Landroid/text/TextUtils$TruncateAt;
    invoke-static { v2, v3, v5, v6 }, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;
    move-result-object v2
  :L1
  .line 7
    invoke-interface { v2 }, Ljava/lang/CharSequence;->length()I
    move-result v3
    iget v5, p0, Lcom/google/android/material/internal/g;->e:I
    invoke-static { v3, v5 }, Ljava/lang/Math;->min(II)I
    move-result v3
    iput v3, p0, Lcom/google/android/material/internal/g;->e:I
  .line 8
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v5, 23
    const/high16 v6, 16256
    const/4 v7, 0
    if-lt v3, v5, :L9
  .line 9
    iget-boolean v1, p0, Lcom/google/android/material/internal/g;->l:Z
    if-eqz v1, :L2
    iget v1, p0, Lcom/google/android/material/internal/g;->g:I
    if-ne v1, v4, :L2
  .line 10
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;
    iput-object v1, p0, Lcom/google/android/material/internal/g;->f:Landroid/text/Layout$Alignment;
  :L2
  .line 11
    iget v1, p0, Lcom/google/android/material/internal/g;->d:I
    iget v3, p0, Lcom/google/android/material/internal/g;->e:I
    iget-object v5, p0, Lcom/google/android/material/internal/g;->b:Landroid/text/TextPaint;
  .line 12
    invoke-static { v2, v1, v3, v5, v0 }, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;
    move-result-object v0
  .line 13
    iget-object v1, p0, Lcom/google/android/material/internal/g;->f:Landroid/text/Layout$Alignment;
    invoke-virtual { v0, v1 }, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;
  .line 14
    iget-boolean v1, p0, Lcom/google/android/material/internal/g;->k:Z
    invoke-virtual { v0, v1 }, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;
  .line 15
    iget-boolean v1, p0, Lcom/google/android/material/internal/g;->l:Z
    if-eqz v1, :L3
    sget-object v1, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;
    goto :L4
  :L3
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;
  :L4
  .line 16
    invoke-virtual { v0, v1 }, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;
  .line 17
    iget-object v1, p0, Lcom/google/android/material/internal/g;->m:Landroid/text/TextUtils$TruncateAt;
    if-eqz v1, :L5
  .line 18
    invoke-virtual { v0, v1 }, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;
  :L5
  .line 19
    iget v1, p0, Lcom/google/android/material/internal/g;->g:I
    invoke-virtual { v0, v1 }, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;
  .line 20
    iget v1, p0, Lcom/google/android/material/internal/g;->h:F
    cmpl-float v1, v1, v7
    if-nez v1, :L6
    iget v1, p0, Lcom/google/android/material/internal/g;->i:F
    cmpl-float v1, v1, v6
    if-eqz v1, :L7
  :L6
  .line 21
    iget v1, p0, Lcom/google/android/material/internal/g;->h:F
    iget v2, p0, Lcom/google/android/material/internal/g;->i:F
    invoke-virtual { v0, v1, v2 }, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;
  :L7
  .line 22
    iget v1, p0, Lcom/google/android/material/internal/g;->g:I
    if-le v1, v4, :L8
  .line 23
    iget v1, p0, Lcom/google/android/material/internal/g;->j:I
    invoke-virtual { v0, v1 }, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;
  :L8
  .line 24
    invoke-virtual { v0 }, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;
    move-result-object v0
    return-object v0
  :L9
  .line 25
    invoke-direct { p0 }, Lcom/google/android/material/internal/g;->b()V
  :L10
  .line 26
    sget-object v3, Lcom/google/android/material/internal/g;->p:Ljava/lang/reflect/Constructor;
    invoke-static { v3 }, Lc/g/j/h;->e(Ljava/lang/Object;)Ljava/lang/Object;
    check-cast v3, Ljava/lang/reflect/Constructor;
    const/16 v5, 13
    new-array v5, v5, [Ljava/lang/Object;
    aput-object v2, v5, v1
    iget v1, p0, Lcom/google/android/material/internal/g;->d:I
  .line 27
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    aput-object v1, v5, v4
    const/4 v1, 2
    iget v2, p0, Lcom/google/android/material/internal/g;->e:I
  .line 28
    invoke-static { v2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    aput-object v2, v5, v1
    const/4 v1, 3
    iget-object v2, p0, Lcom/google/android/material/internal/g;->b:Landroid/text/TextPaint;
    aput-object v2, v5, v1
    const/4 v1, 4
  .line 29
    invoke-static { v0 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    aput-object v2, v5, v1
    const/4 v1, 5
    iget-object v2, p0, Lcom/google/android/material/internal/g;->f:Landroid/text/Layout$Alignment;
    aput-object v2, v5, v1
    const/4 v1, 6
    sget-object v2, Lcom/google/android/material/internal/g;->q:Ljava/lang/Object;
  .line 30
    invoke-static { v2 }, Lc/g/j/h;->e(Ljava/lang/Object;)Ljava/lang/Object;
    aput-object v2, v5, v1
    const/4 v1, 7
  .line 31
    invoke-static { v6 }, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    move-result-object v2
    aput-object v2, v5, v1
    const/16 v1, 8
  .line 32
    invoke-static { v7 }, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    move-result-object v2
    aput-object v2, v5, v1
    const/16 v1, 9
    iget-boolean v2, p0, Lcom/google/android/material/internal/g;->k:Z
  .line 33
    invoke-static { v2 }, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    move-result-object v2
    aput-object v2, v5, v1
    const/16 v1, 10
    const/4 v2, 0
    aput-object v2, v5, v1
    const/16 v1, 11
  .line 34
    invoke-static { v0 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    aput-object v0, v5, v1
    const/16 v0, 12
    iget v1, p0, Lcom/google/android/material/internal/g;->g:I
  .line 35
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    aput-object v1, v5, v0
  .line 36
    invoke-virtual { v3, v5 }, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/text/StaticLayout;
  :L11
    return-object v0
  :L12
    move-exception v0
  .line 37
    new-instance v1, Lcom/google/android/material/internal/g$a;
    invoke-direct { v1, v0 }, Lcom/google/android/material/internal/g$a;-><init>(Ljava/lang/Throwable;)V
    throw v1
.end method

.method public d(Landroid/text/Layout$Alignment;)Lcom/google/android/material/internal/g;
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/internal/g;->f:Landroid/text/Layout$Alignment;
    return-object p0
.end method

.method public e(Landroid/text/TextUtils$TruncateAt;)Lcom/google/android/material/internal/g;
  .registers 2
  .line 1
    iput-object p1, p0, Lcom/google/android/material/internal/g;->m:Landroid/text/TextUtils$TruncateAt;
    return-object p0
.end method

.method public f(I)Lcom/google/android/material/internal/g;
  .registers 2
  .line 1
    iput p1, p0, Lcom/google/android/material/internal/g;->j:I
    return-object p0
.end method

.method public g(Z)Lcom/google/android/material/internal/g;
  .registers 2
  .line 1
    iput-boolean p1, p0, Lcom/google/android/material/internal/g;->k:Z
    return-object p0
.end method

.method public h(Z)Lcom/google/android/material/internal/g;
  .registers 2
  .line 1
    iput-boolean p1, p0, Lcom/google/android/material/internal/g;->l:Z
    return-object p0
.end method

.method public i(FF)Lcom/google/android/material/internal/g;
  .registers 3
  .line 1
    iput p1, p0, Lcom/google/android/material/internal/g;->h:F
  .line 2
    iput p2, p0, Lcom/google/android/material/internal/g;->i:F
    return-object p0
.end method

.method public j(I)Lcom/google/android/material/internal/g;
  .registers 2
  .line 1
    iput p1, p0, Lcom/google/android/material/internal/g;->g:I
    return-object p0
.end method
