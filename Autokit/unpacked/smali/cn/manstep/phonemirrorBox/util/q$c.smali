.class public Lcn/manstep/phonemirrorBox/util/q$c;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcn/manstep/phonemirrorBox/util/q;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 9
  name = "c"
.end annotation

.field private final a:Landroid/content/Context;

.field private final b:Landroid/view/View;

.field private final c:Lcn/manstep/phonemirrorBox/d0/g;

.field private d:Lcn/manstep/phonemirrorBox/util/q$d;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/widget/AdapterView$OnItemClickListener;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.method public constructor <init>(Landroid/view/View;Lcn/manstep/phonemirrorBox/d0/g;)V
  .registers 4
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 0
  .line 2
    iput v0, p0, Lcn/manstep/phonemirrorBox/util/q$c;->h:I
  .line 3
    iput v0, p0, Lcn/manstep/phonemirrorBox/util/q$c;->i:I
    const/16 v0, 10
  .line 4
    iput v0, p0, Lcn/manstep/phonemirrorBox/util/q$c;->j:I
    const/16 v0, 50
  .line 5
    iput v0, p0, Lcn/manstep/phonemirrorBox/util/q$c;->k:I
  .line 6
    invoke-virtual { p1 }, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v0
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/util/q$c;->a:Landroid/content/Context;
  .line 7
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/q$c;->b:Landroid/view/View;
  .line 8
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/util/q$c;->c:Lcn/manstep/phonemirrorBox/d0/g;
    return-void
.end method

.method static synthetic a(Lcn/manstep/phonemirrorBox/util/q$c;)Landroid/content/Context;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/util/q$c;->a:Landroid/content/Context;
    return-object p0
.end method

.method static synthetic b(Lcn/manstep/phonemirrorBox/util/q$c;)Landroid/view/View;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/util/q$c;->b:Landroid/view/View;
    return-object p0
.end method

.method static synthetic c(Lcn/manstep/phonemirrorBox/util/q$c;)I
  .registers 1
  .line 1
    iget p0, p0, Lcn/manstep/phonemirrorBox/util/q$c;->j:I
    return p0
.end method

.method static synthetic d(Lcn/manstep/phonemirrorBox/util/q$c;)I
  .registers 1
  .line 1
    iget p0, p0, Lcn/manstep/phonemirrorBox/util/q$c;->k:I
    return p0
.end method

.method static synthetic e(Lcn/manstep/phonemirrorBox/util/q$c;)Lcn/manstep/phonemirrorBox/d0/g;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/util/q$c;->c:Lcn/manstep/phonemirrorBox/d0/g;
    return-object p0
.end method

.method static synthetic f(Lcn/manstep/phonemirrorBox/util/q$c;)I
  .registers 1
  .line 1
    iget p0, p0, Lcn/manstep/phonemirrorBox/util/q$c;->i:I
    return p0
.end method

.method static synthetic g(Lcn/manstep/phonemirrorBox/util/q$c;)I
  .registers 1
  .line 1
    iget p0, p0, Lcn/manstep/phonemirrorBox/util/q$c;->h:I
    return p0
.end method

.method static synthetic h(Lcn/manstep/phonemirrorBox/util/q$c;)I
  .registers 1
  .line 1
    iget p0, p0, Lcn/manstep/phonemirrorBox/util/q$c;->g:I
    return p0
.end method

.method static synthetic i(Lcn/manstep/phonemirrorBox/util/q$c;)Landroid/graphics/drawable/Drawable;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/util/q$c;->e:Landroid/graphics/drawable/Drawable;
    return-object p0
.end method

.method static synthetic j(Lcn/manstep/phonemirrorBox/util/q$c;)Landroid/widget/AdapterView$OnItemClickListener;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/util/q$c;->f:Landroid/widget/AdapterView$OnItemClickListener;
    return-object p0
.end method

.method static synthetic k(Lcn/manstep/phonemirrorBox/util/q$c;)Lcn/manstep/phonemirrorBox/util/q$d;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/util/q$c;->d:Lcn/manstep/phonemirrorBox/util/q$d;
    return-object p0
.end method

.method public l()Lcn/manstep/phonemirrorBox/util/q;
  .registers 2
  .line 1
    new-instance v0, Lcn/manstep/phonemirrorBox/util/q;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/util/q;-><init>(Lcn/manstep/phonemirrorBox/util/q$c;)V
    return-object v0
.end method

.method public m(Landroid/graphics/drawable/Drawable;)Lcn/manstep/phonemirrorBox/util/q$c;
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/q$c;->e:Landroid/graphics/drawable/Drawable;
    return-object p0
.end method

.method public n(I)Lcn/manstep/phonemirrorBox/util/q$c;
  .registers 2
  .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/util/q$c;->h:I
    return-object p0
.end method

.method public o(Landroid/widget/AdapterView$OnItemClickListener;)Lcn/manstep/phonemirrorBox/util/q$c;
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/q$c;->f:Landroid/widget/AdapterView$OnItemClickListener;
    return-object p0
.end method

.method public p(Lcn/manstep/phonemirrorBox/util/q$d;)Lcn/manstep/phonemirrorBox/util/q$c;
  .registers 2
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/q$c;->d:Lcn/manstep/phonemirrorBox/util/q$d;
    return-object p0
.end method

.method public q(I)Lcn/manstep/phonemirrorBox/util/q$c;
  .registers 2
  .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/util/q$c;->g:I
    return-object p0
.end method

.method public r(I)Lcn/manstep/phonemirrorBox/util/q$c;
  .registers 2
  .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/util/q$c;->i:I
    return-object p0
.end method
