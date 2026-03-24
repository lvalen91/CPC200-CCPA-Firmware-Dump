.class public Lcn/manstep/phonemirrorBox/floatwindow/c;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static q:I

.field public static r:I


# instance fields
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


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 12

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->b:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->c:Z

    const/4 v1, 0x1

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

    const-wide/16 v4, 0xdc

    const-wide/16 v6, 0x14

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcn/manstep/phonemirrorBox/floatwindow/c$a;-><init>(Lcn/manstep/phonemirrorBox/floatwindow/c;JJ)V

    iput-object v8, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->o:Landroid/os/CountDownTimer;

    .line 11
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->b:Ljava/lang/ref/WeakReference;

    .line 12
    new-instance v2, Lcn/manstep/phonemirrorBox/floatwindow/d;

    invoke-direct {v2}, Lcn/manstep/phonemirrorBox/floatwindow/d;-><init>()V

    iput-object v2, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->n:Lcn/manstep/phonemirrorBox/floatwindow/a;

    .line 13
    iput p2, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->p:I

    const v2, 0x800005

    if-ne p2, v2, :cond_4e

    .line 14
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/floatwindow/c;->d()Z

    move-result v3

    if-nez v3, :cond_4e

    .line 15
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v3, 0x7f0c003e

    invoke-virtual {p1, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_58

    .line 16
    :cond_4e
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v3, 0x7f0c003d

    invoke-virtual {p1, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 17
    :goto_58
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->n:Lcn/manstep/phonemirrorBox/floatwindow/a;

    if-ne p2, v2, :cond_64

    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/floatwindow/c;->d()Z

    move-result p2

    if-nez p2, :cond_64

    const/4 p2, 0x1

    goto :goto_65

    :cond_64
    const/4 p2, 0x0

    :goto_65
    invoke-virtual {p1, p2}, Lcn/manstep/phonemirrorBox/floatwindow/a;->c(Z)I

    move-result p1

    iput p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->m:I

    const p1, 0x7f0800d6

    .line 18
    iput p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->i:I

    const p1, 0x7f0800d5

    .line 19
    iput p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->j:I

    const p1, 0x7f0800a6

    .line 20
    iput p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->k:I

    const p1, 0x7f0800bd

    .line 21
    iput p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->l:I

    const p1, 0x7f09006b

    .line 22
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 23
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->n:Lcn/manstep/phonemirrorBox/floatwindow/a;

    invoke-virtual {p2, p1}, Lcn/manstep/phonemirrorBox/floatwindow/a;->d(Landroid/view/View;)V

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    sput p2, Lcn/manstep/phonemirrorBox/floatwindow/c;->q:I

    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sput p1, Lcn/manstep/phonemirrorBox/floatwindow/c;->r:I

    const p1, 0x7f090111

    .line 26
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/manstep/phonemirrorBox/customview/CustomImageView;

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->g:Lcn/manstep/phonemirrorBox/customview/CustomImageView;

    .line 27
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0901c7

    .line 28
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/manstep/phonemirrorBox/customview/CustomImageView;

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->f:Lcn/manstep/phonemirrorBox/customview/CustomImageView;

    .line 29
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0901ae

    .line 30
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/manstep/phonemirrorBox/customview/CustomImageView;

    .line 31
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0901d3

    .line 32
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/manstep/phonemirrorBox/customview/CustomImageView;

    .line 33
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0900cd

    .line 34
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/manstep/phonemirrorBox/customview/CustomImageView;

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->h:Lcn/manstep/phonemirrorBox/customview/CustomImageView;

    .line 35
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    invoke-virtual {p0, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 37
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z

    move-result p1

    if-eqz p1, :cond_ef

    .line 38
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->h:Lcn/manstep/phonemirrorBox/customview/CustomImageView;

    const p2, 0x7f08009a

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    goto :goto_f7

    .line 39
    :cond_ef
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->h:Lcn/manstep/phonemirrorBox/customview/CustomImageView;

    const p2, 0x7f08008e

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 40
    :goto_f7
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->e:Landroid/graphics/Rect;

    .line 41
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 42
    sget-boolean p1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->j:Z

    if-eqz p1, :cond_109

    .line 43
    invoke-virtual {p0, v1}, Lcn/manstep/phonemirrorBox/floatwindow/c;->c(Z)V

    goto :goto_10c

    .line 44
    :cond_109
    invoke-virtual {p0, v0}, Lcn/manstep/phonemirrorBox/floatwindow/c;->c(Z)V

    :goto_10c
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

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 2
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClickHome: bGoHome="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FloatWindowBigView"

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->d:Z

    if-eqz v0, :cond_2b

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    goto :goto_3a

    .line 5
    :cond_2b
    invoke-static {}, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;

    move-result-object v0

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/manstep/phonemirrorBox/u0/c;->j(Landroid/content/Context;)V

    .line 6
    :goto_3a
    invoke-static {}, Lcn/manstep/phonemirrorBox/floatwindow/e;->g()Lcn/manstep/phonemirrorBox/floatwindow/e;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/manstep/phonemirrorBox/floatwindow/e;->u(Landroid/content/Context;)V

    return-void
.end method

.method private g()V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FloatWindowBigView,onClickPause: bMediaPlaying="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcn/manstep/phonemirrorBox/BoxInterface/a;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 3
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/v0/a;->y()Z

    move-result v0

    if-eqz v0, :cond_30

    const/16 v0, 0xca

    .line 4
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcn/manstep/phonemirrorBox/floatwindow/c;->c(Z)V

    goto :goto_39

    :cond_30
    const/16 v0, 0xc9

    .line 6
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Lcn/manstep/phonemirrorBox/floatwindow/c;->c(Z)V

    :cond_39
    :goto_39
    return-void
.end method


# virtual methods
.method public b(Z)V
    .registers 5

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/q;->g()Lcn/manstep/phonemirrorBox/q;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/q;->k()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_d

    const/4 p1, 0x0

    goto :goto_15

    .line 2
    :cond_d
    invoke-static {}, Lcn/manstep/phonemirrorBox/MyApplication;->b()Lcn/manstep/phonemirrorBox/MyApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/MyApplication;->g()Z

    move-result p1

    .line 3
    :goto_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeHomeIcon: b="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FloatWindowBigView"

    invoke-static {v2, v1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3d

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->d:Z

    .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->g:Lcn/manstep/phonemirrorBox/customview/CustomImageView;

    iget v1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->k:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->n:Lcn/manstep/phonemirrorBox/floatwindow/a;

    invoke-virtual {v0, p1}, Lcn/manstep/phonemirrorBox/floatwindow/a;->b(Z)V

    goto :goto_4b

    .line 7
    :cond_3d
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->d:Z

    .line 8
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->g:Lcn/manstep/phonemirrorBox/customview/CustomImageView;

    iget v1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->l:I

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 9
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->n:Lcn/manstep/phonemirrorBox/floatwindow/a;

    invoke-virtual {p1, v0}, Lcn/manstep/phonemirrorBox/floatwindow/a;->b(Z)V

    :goto_4b
    return-void
.end method

.method public c(Z)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->c:Z

    if-eqz v0, :cond_5

    return-void

    .line 2
    :cond_5
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/v0/a;->w()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1a

    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/v0/a;->v()Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_1a
    const/4 p1, 0x0

    :cond_1b
    if-eqz p1, :cond_2a

    .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->f:Lcn/manstep/phonemirrorBox/customview/CustomImageView;

    iget v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->j:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->n:Lcn/manstep/phonemirrorBox/floatwindow/a;

    invoke-virtual {p1, v1}, Lcn/manstep/phonemirrorBox/floatwindow/a;->a(Z)V

    goto :goto_37

    .line 5
    :cond_2a
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->f:Lcn/manstep/phonemirrorBox/customview/CustomImageView;

    iget v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->i:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->n:Lcn/manstep/phonemirrorBox/floatwindow/a;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcn/manstep/phonemirrorBox/floatwindow/a;->a(Z)V

    :goto_37
    return-void
.end method

.method public d()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->n:Lcn/manstep/phonemirrorBox/floatwindow/a;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/floatwindow/a;->e()Z

    move-result v0

    return v0
.end method

.method public e()V
    .registers 3

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    const/16 v1, 0x19

    .line 2
    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->O(II)Z

    .line 3
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->b1()Z

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcn/manstep/phonemirrorBox/floatwindow/c;->c(Z)V

    .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->h:Lcn/manstep/phonemirrorBox/customview/CustomImageView;

    const v1, 0x7f08008e

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    goto :goto_21

    .line 6
    :cond_1e
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/floatwindow/c;->f()V

    .line 7
    :goto_21
    invoke-static {}, Lcn/manstep/phonemirrorBox/floatwindow/e;->g()Lcn/manstep/phonemirrorBox/floatwindow/e;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/manstep/phonemirrorBox/floatwindow/e;->u(Landroid/content/Context;)V

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
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090111

    if-ne p1, v0, :cond_d

    .line 2
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/floatwindow/c;->f()V

    goto :goto_59

    :cond_d
    const v0, 0x7f0901d3

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2b

    .line 3
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z

    move-result p1

    if-eqz p1, :cond_59

    .line 4
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->c:Z

    .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->o:Landroid/os/CountDownTimer;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->o:Landroid/os/CountDownTimer;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    const/16 p1, 0xcd

    .line 7
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    goto :goto_59

    :cond_2b
    const v0, 0x7f0901ae

    if-ne p1, v0, :cond_48

    .line 8
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z

    move-result p1

    if-eqz p1, :cond_59

    .line 9
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->c:Z

    .line 10
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->o:Landroid/os/CountDownTimer;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 11
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->o:Landroid/os/CountDownTimer;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    const/16 p1, 0xcc

    .line 12
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/v0/e;->H(I)V

    goto :goto_59

    :cond_48
    const v0, 0x7f0901c7

    if-ne p1, v0, :cond_51

    .line 13
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/floatwindow/c;->g()V

    goto :goto_59

    :cond_51
    const v0, 0x7f0900cd

    if-ne p1, v0, :cond_59

    .line 14
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/floatwindow/c;->e()V

    :cond_59
    :goto_59
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_8

    goto :goto_13

    .line 2
    :cond_8
    invoke-static {}, Lcn/manstep/phonemirrorBox/floatwindow/e;->g()Lcn/manstep/phonemirrorBox/floatwindow/e;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/manstep/phonemirrorBox/floatwindow/e;->u(Landroid/content/Context;)V

    :goto_13
    const/4 p1, 0x1

    return p1
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_1c

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->G()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->h:Lcn/manstep/phonemirrorBox/customview/CustomImageView;

    const v0, 0x7f08009a

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    goto :goto_1c

    .line 4
    :cond_14
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/floatwindow/c;->h:Lcn/manstep/phonemirrorBox/customview/CustomImageView;

    const v0, 0x7f08008e

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :cond_1c
    :goto_1c
    return-void
.end method
