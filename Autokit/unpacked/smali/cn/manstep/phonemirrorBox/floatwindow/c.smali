.class public Lcn/manstep/phonemirrorBox/floatwindow/c;
.super Landroid/widget/LinearLayout;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.source "SourceFile"

.field public static q:I

.field public static r:I

.field public b:Ljava/lang/ref/WeakReference;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ref/WeakReference<",
      "Landroid/content/Context;",
      ">;"
    }
  .end annotation
.end field

.field private c:Z

.field private d:Z

.field private e:Landroid/graphics/Rect;

.field private f:Lcn/manstep/phonemirrorBox/customview/CustomImageView;

.field private g:Lcn/manstep/phonemirrorBox/customview/CustomImageView;

.field private h:Lcn/manstep/phonemirrorBox/customview/CustomImageView;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Lcn/manstep/phonemirrorBox/floatwindow/a;

.field private final o:Landroid/os/CountDownTimer;

.field private p:I

.method public constructor <init>(Landroid/content/Context;I)V
  .registers 12
  .line 1
    invoke-direct { p0, p1 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
  .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;
    const/4 v1, 0
    invoke-direct { v0, v1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->b:Ljava/lang/ref/WeakReference;
    const/4 v0, 0
  .line 3
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->c:Z
    const/4 v1, 1
  .line 4
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->d:Z
  .line 5
    iput v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->i:I
  .line 6
    iput v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->j:I
  .line 7
    iput v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->k:I
  .line 8
    iput v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->l:I
  .line 9
    iput v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->m:I
  .line 10
    new-instance v8, Lcn/manstep/phonemirrorBox/floatwindow/c$a;
    const-wide/16 v4, 220
    const-wide/16 v6, 20
    move-object v2, v8
    move-object v3, p0
    invoke-direct/range { v2 .. v7 }, Lcn/manstep/phonemirrorBox/floatwindow/c$a;-><init>(Lcn/manstep/phonemirrorBox/floatwindow/c;JJ)V
    iput-object v8, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->o:Landroid/os/CountDownTimer;
  .line 11
    new-instance v2, Ljava/lang/ref/WeakReference;
    invoke-direct { v2, p1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v2, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->b:Ljava/lang/ref/WeakReference;
  .line 12
    new-instance v2, Lcn/manstep/phonemirrorBox/floatwindow/d;
    invoke-direct { v2 }, Lcn/manstep/phonemirrorBox/floatwindow/d;-><init>()V
    iput-object v2, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->n:Lcn/manstep/phonemirrorBox/floatwindow/a;
  .line 13
    iput p2, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->p:I
    const v2, 8388613
    if-ne p2, v2, :L0
  .line 14
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/floatwindow/c;->d()Z
    move-result v3
    if-nez v3, :L0
  .line 15
    invoke-static { p1 }, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
    move-result-object p1
    const v3, 2131492926
    invoke-virtual { p1, v3, p0 }, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    goto :L1
  :L0
  .line 16
    invoke-static { p1 }, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
    move-result-object p1
    const v3, 2131492925
    invoke-virtual { p1, v3, p0 }, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
  :L1
  .line 17
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->n:Lcn/manstep/phonemirrorBox/floatwindow/a;
    if-ne p2, v2, :L2
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/floatwindow/c;->d()Z
    move-result p2
    if-nez p2, :L2
    const/4 p2, 1
    goto :L3
  :L2
    const/4 p2, 0
  :L3
    invoke-virtual { p1, p2 }, Lcn/manstep/phonemirrorBox/floatwindow/a;->c(Z)I
    move-result p1
    iput p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->m:I
    const p1, 2131230934
  .line 18
    iput p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->i:I
    const p1, 2131230933
  .line 19
    iput p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->j:I
    const p1, 2131230886
  .line 20
    iput p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->k:I
    const p1, 2131230909
  .line 21
    iput p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->l:I
    const p1, 2131296363
  .line 22
    invoke-virtual { p0, p1 }, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
    move-result-object p1
  .line 23
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->n:Lcn/manstep/phonemirrorBox/floatwindow/a;
    invoke-virtual { p2, p1 }, Lcn/manstep/phonemirrorBox/floatwindow/a;->d(Landroid/view/View;)V
  .line 24
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object p2
    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I
    sput p2, Lcn/manstep/phonemirrorBox/floatwindow/c;->q:I
  .line 25
    invoke-virtual { p1 }, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object p1
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I
    sput p1, Lcn/manstep/phonemirrorBox/floatwindow/c;->r:I
    const p1, 2131296529
  .line 26
    invoke-virtual { p0, p1 }, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
    move-result-object p1
    check-cast p1, Lcn/manstep/phonemirrorBox/customview/CustomImageView;
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->g:Lcn/manstep/phonemirrorBox/customview/CustomImageView;
  .line 27
    invoke-virtual { p1, p0 }, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    const p1, 2131296711
  .line 28
    invoke-virtual { p0, p1 }, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
    move-result-object p1
    check-cast p1, Lcn/manstep/phonemirrorBox/customview/CustomImageView;
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->f:Lcn/manstep/phonemirrorBox/customview/CustomImageView;
  .line 29
    invoke-virtual { p1, p0 }, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    const p1, 2131296686
  .line 30
    invoke-virtual { p0, p1 }, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
    move-result-object p1
    check-cast p1, Lcn/manstep/phonemirrorBox/customview/CustomImageView;
  .line 31
    invoke-virtual { p1, p0 }, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    const p1, 2131296723
  .line 32
    invoke-virtual { p0, p1 }, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
    move-result-object p1
    check-cast p1, Lcn/manstep/phonemirrorBox/customview/CustomImageView;
  .line 33
    invoke-virtual { p1, p0 }, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    const p1, 2131296461
  .line 34
    invoke-virtual { p0, p1 }, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
    move-result-object p1
    check-cast p1, Lcn/manstep/phonemirrorBox/customview/CustomImageView;
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->h:Lcn/manstep/phonemirrorBox/customview/CustomImageView;
  .line 35
    invoke-virtual { p1, p0 }, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 36
    invoke-virtual { p0, p0 }, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
  .line 37
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z
    move-result p1
    if-eqz p1, :L4
  .line 38
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->h:Lcn/manstep/phonemirrorBox/customview/CustomImageView;
    const p2, 2131230874
    invoke-virtual { p1, p2 }, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V
    goto :L5
  :L4
  .line 39
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->h:Lcn/manstep/phonemirrorBox/customview/CustomImageView;
    const p2, 2131230862
    invoke-virtual { p1, p2 }, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V
  :L5
  .line 40
    new-instance p1, Landroid/graphics/Rect;
    invoke-direct { p1 }, Landroid/graphics/Rect;-><init>()V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->e:Landroid/graphics/Rect;
  .line 41
    invoke-virtual { p0, p1 }, Landroid/widget/LinearLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z
  .line 42
    sget-boolean p1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->j:Z
    if-eqz p1, :L6
  .line 43
    invoke-virtual { p0, v1 }, Lcn/manstep/phonemirrorBox/floatwindow/c;->c(Z)V
    goto :L7
  :L6
  .line 44
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/floatwindow/c;->c(Z)V
  :L7
    return-void
.end method

.method static synthetic a(Lcn/manstep/phonemirrorBox/floatwindow/c;Z)Z
  .registers 2
  .line 1
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->c:Z
    return p1
.end method

.method private f()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->b:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "onClickHome: bGoHome="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->d:Z
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "FloatWindowBigView"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 3
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->d:Z
    if-eqz v0, :L1
    const/4 v0, 4
    const/4 v1, 0
  .line 4
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
    goto :L2
  :L1
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;
    move-result-object v0
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->b:Ljava/lang/ref/WeakReference;
    invoke-virtual { v1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroid/content/Context;
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/u0/c;->j(Landroid/content/Context;)V
  :L2
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/floatwindow/e;->g()Lcn/manstep/phonemirrorBox/floatwindow/e;
    move-result-object v0
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;
    move-result-object v1
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/floatwindow/e;->u(Landroid/content/Context;)V
    return-void
.end method

.method private g()V
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "FloatWindowBigView,onClickPause: bMediaPlaying="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-boolean v1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->j:Z
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z
    move-result v0
    if-eqz v0, :L1
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/v0/a;->y()Z
    move-result v0
    if-eqz v0, :L0
    const/16 v0, 202
  .line 4
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    const/4 v0, 0
  .line 5
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/floatwindow/c;->c(Z)V
    goto :L1
  :L0
    const/16 v0, 201
  .line 6
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    const/4 v0, 1
  .line 7
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/floatwindow/c;->c(Z)V
  :L1
    return-void
.end method

.method public b(Z)V
  .registers 5
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/q;->g()Lcn/manstep/phonemirrorBox/q;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/q;->k()Z
    move-result p1
    const/4 v0, 0
    if-nez p1, :L0
    const/4 p1, 0
    goto :L1
  :L0
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/MyApplication;->b()Lcn/manstep/phonemirrorBox/MyApplication;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/MyApplication;->g()Z
    move-result p1
  :L1
  .line 3
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "changeHomeIcon: b="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    const-string v2, "FloatWindowBigView"
    invoke-static { v2, v1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    if-eqz p1, :L2
    const/4 p1, 1
  .line 4
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->d:Z
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->g:Lcn/manstep/phonemirrorBox/customview/CustomImageView;
    iget v1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->k:I
    invoke-virtual { v0, v1 }, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->n:Lcn/manstep/phonemirrorBox/floatwindow/a;
    invoke-virtual { v0, p1 }, Lcn/manstep/phonemirrorBox/floatwindow/a;->b(Z)V
    goto :L3
  :L2
  .line 7
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->d:Z
  .line 8
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->g:Lcn/manstep/phonemirrorBox/customview/CustomImageView;
    iget v1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->l:I
    invoke-virtual { p1, v1 }, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V
  .line 9
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->n:Lcn/manstep/phonemirrorBox/floatwindow/a;
    invoke-virtual { p1, v0 }, Lcn/manstep/phonemirrorBox/floatwindow/a;->b(Z)V
  :L3
    return-void
.end method

.method public c(Z)V
  .registers 4
  .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->c:Z
    if-eqz v0, :L0
    return-void
  :L0
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/v0/a;->w()Z
    move-result v0
    const/4 v1, 0
    if-nez v0, :L1
    invoke-static { }, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/v0/a;->v()Z
    move-result v0
    if-eqz v0, :L2
  :L1
    const/4 p1, 0
  :L2
    if-eqz p1, :L3
  .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->f:Lcn/manstep/phonemirrorBox/customview/CustomImageView;
    iget v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->j:I
    invoke-virtual { p1, v0 }, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V
  .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->n:Lcn/manstep/phonemirrorBox/floatwindow/a;
    invoke-virtual { p1, v1 }, Lcn/manstep/phonemirrorBox/floatwindow/a;->a(Z)V
    goto :L4
  :L3
  .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->f:Lcn/manstep/phonemirrorBox/customview/CustomImageView;
    iget v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->i:I
    invoke-virtual { p1, v0 }, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V
  .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->n:Lcn/manstep/phonemirrorBox/floatwindow/a;
    const/4 v0, 1
    invoke-virtual { p1, v0 }, Lcn/manstep/phonemirrorBox/floatwindow/a;->a(Z)V
  :L4
    return-void
.end method

.method public d()Z
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->n:Lcn/manstep/phonemirrorBox/floatwindow/a;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/floatwindow/a;->e()Z
    move-result v0
    return v0
.end method

.method public e()V
  .registers 3
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z
    move-result v0
    if-eqz v0, :L0
    const/4 v0, 1
    const/16 v1, 25
  .line 2
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z
  .line 3
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->b1()Z
    const/4 v0, 0
  .line 4
    invoke-virtual { p0, v0 }, Lcn/manstep/phonemirrorBox/floatwindow/c;->c(Z)V
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->h:Lcn/manstep/phonemirrorBox/customview/CustomImageView;
    const v1, 2131230862
    invoke-virtual { v0, v1 }, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V
    goto :L1
  :L0
  .line 6
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/floatwindow/c;->f()V
  :L1
  .line 7
    invoke-static { }, Lcn/manstep/phonemirrorBox/floatwindow/e;->g()Lcn/manstep/phonemirrorBox/floatwindow/e;
    move-result-object v0
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;
    move-result-object v1
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/floatwindow/e;->u(Landroid/content/Context;)V
    return-void
.end method

.method public getGravity()I
  .registers 2
  .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->p:I
    return v0
.end method

.method public getWindowAnimationStyle()I
  .registers 2
  .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->m:I
    return v0
.end method

.method public onClick(Landroid/view/View;)V
  .registers 4
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getId()I
    move-result p1
    const v0, 2131296529
    if-ne p1, v0, :L0
  .line 2
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/floatwindow/c;->f()V
    goto :L4
  :L0
    const v0, 2131296723
    const/4 v1, 1
    if-ne p1, v0, :L1
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z
    move-result p1
    if-eqz p1, :L4
  .line 4
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->c:Z
  .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->o:Landroid/os/CountDownTimer;
    invoke-virtual { p1 }, Landroid/os/CountDownTimer;->cancel()V
  .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->o:Landroid/os/CountDownTimer;
    invoke-virtual { p1 }, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;
    const/16 p1, 205
  .line 7
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    goto :L4
  :L1
    const v0, 2131296686
    if-ne p1, v0, :L2
  .line 8
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z
    move-result p1
    if-eqz p1, :L4
  .line 9
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->c:Z
  .line 10
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->o:Landroid/os/CountDownTimer;
    invoke-virtual { p1 }, Landroid/os/CountDownTimer;->cancel()V
  .line 11
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->o:Landroid/os/CountDownTimer;
    invoke-virtual { p1 }, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;
    const/16 p1, 204
  .line 12
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V
    goto :L4
  :L2
    const v0, 2131296711
    if-ne p1, v0, :L3
  .line 13
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/floatwindow/c;->g()V
    goto :L4
  :L3
    const v0, 2131296461
    if-ne p1, v0, :L4
  .line 14
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/floatwindow/c;->e()V
  :L4
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
  .registers 3
  .line 1
    invoke-virtual { p2 }, Landroid/view/MotionEvent;->getAction()I
    move-result p1
    const/4 p2, 4
    if-eq p1, p2, :L0
    goto :L1
  :L0
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/floatwindow/e;->g()Lcn/manstep/phonemirrorBox/floatwindow/e;
    move-result-object p1
    invoke-virtual { p0 }, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;
    move-result-object p2
    invoke-virtual { p1, p2 }, Lcn/manstep/phonemirrorBox/floatwindow/e;->u(Landroid/content/Context;)V
  :L1
    const/4 p1, 1
    return p1
.end method

.method protected onWindowVisibilityChanged(I)V
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroid/widget/LinearLayout;->onWindowVisibilityChanged(I)V
    if-nez p1, :L1
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z
    move-result p1
    if-eqz p1, :L0
  .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->h:Lcn/manstep/phonemirrorBox/customview/CustomImageView;
    const v0, 2131230874
    invoke-virtual { p1, v0 }, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V
    goto :L1
  :L0
  .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->h:Lcn/manstep/phonemirrorBox/customview/CustomImageView;
    const v0, 2131230862
    invoke-virtual { p1, v0 }, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V
  :L1
    return-void
.end method
