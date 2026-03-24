.class Landroidx/appcompat/app/g;
.super Landroidx/appcompat/app/f;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/g$a;
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/g$n;,
        Landroidx/appcompat/app/g$m;,
        Landroidx/appcompat/app/g$l;,
        Landroidx/appcompat/app/g$k;,
        Landroidx/appcompat/app/g$h;,
        Landroidx/appcompat/app/g$p;,
        Landroidx/appcompat/app/g$r;,
        Landroidx/appcompat/app/g$q;,
        Landroidx/appcompat/app/g$o;,
        Landroidx/appcompat/app/g$t;,
        Landroidx/appcompat/app/g$u;,
        Landroidx/appcompat/app/g$i;,
        Landroidx/appcompat/app/g$v;,
        Landroidx/appcompat/app/g$j;,
        Landroidx/appcompat/app/g$s;
    }
.end annotation


# static fields
.field private static final c0:Lc/d/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/g<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final d0:Z

.field private static final e0:[I

.field private static final f0:Z

.field private static final g0:Z

.field private static h0:Z


# instance fields
.field private A:Z

.field B:Z

.field C:Z

.field D:Z

.field E:Z

.field F:Z

.field private G:Z

.field private H:[Landroidx/appcompat/app/g$u;

.field private I:Landroidx/appcompat/app/g$u;

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:Z

.field N:Z

.field private O:I

.field private P:I

.field private Q:Z

.field private R:Z

.field private S:Landroidx/appcompat/app/g$q;

.field private T:Landroidx/appcompat/app/g$q;

.field U:Z

.field V:I

.field private final W:Ljava/lang/Runnable;

.field private X:Z

.field private Y:Landroid/graphics/Rect;

.field private Z:Landroid/graphics/Rect;

.field private a0:Landroidx/appcompat/app/i;

.field private b0:Landroidx/appcompat/app/j;

.field final e:Ljava/lang/Object;

.field final f:Landroid/content/Context;

.field g:Landroid/view/Window;

.field private h:Landroidx/appcompat/app/g$o;

.field final i:Landroidx/appcompat/app/e;

.field j:Landroidx/appcompat/app/a;

.field k:Landroid/view/MenuInflater;

.field private l:Ljava/lang/CharSequence;

.field private m:Landroidx/appcompat/widget/a0;

.field private n:Landroidx/appcompat/app/g$i;

.field private o:Landroidx/appcompat/app/g$v;

.field p:Lc/a/o/b;

.field q:Landroidx/appcompat/widget/ActionBarContextView;

.field r:Landroid/widget/PopupWindow;

.field s:Ljava/lang/Runnable;

.field t:Landroidx/core/view/z;

.field private u:Z

.field private v:Z

.field w:Landroid/view/ViewGroup;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/view/View;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lc/d/g;

    invoke-direct {v0}, Lc/d/g;-><init>()V

    sput-object v0, Landroidx/appcompat/app/g;->c0:Lc/d/g;

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x15

    if-ge v0, v3, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    sput-boolean v0, Landroidx/appcompat/app/g;->d0:Z

    new-array v0, v2, [I

    const v3, 0x1010054

    aput v3, v0, v1

    .line 3
    sput-object v0, Landroidx/appcompat/app/g;->e0:[I

    .line 4
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v3, "robolectric"

    .line 5
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    sput-boolean v0, Landroidx/appcompat/app/g;->f0:Z

    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v0, v3, :cond_2f

    const/4 v1, 0x1

    :cond_2f
    sput-boolean v1, Landroidx/appcompat/app/g;->g0:Z

    .line 7
    sget-boolean v0, Landroidx/appcompat/app/g;->d0:Z

    if-eqz v0, :cond_47

    sget-boolean v0, Landroidx/appcompat/app/g;->h0:Z

    if-nez v0, :cond_47

    .line 8
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 9
    new-instance v1, Landroidx/appcompat/app/g$a;

    invoke-direct {v1, v0}, Landroidx/appcompat/app/g$a;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 10
    sput-boolean v2, Landroidx/appcompat/app/g;->h0:Z

    :cond_47
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Landroidx/appcompat/app/e;)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, p2, p1}, Landroidx/appcompat/app/g;-><init>(Landroid/content/Context;Landroid/view/Window;Landroidx/appcompat/app/e;Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Landroid/app/Dialog;Landroidx/appcompat/app/e;)V
    .registers 5

    .line 2
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p1}, Landroidx/appcompat/app/g;-><init>(Landroid/content/Context;Landroid/view/Window;Landroidx/appcompat/app/e;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroidx/appcompat/app/e;Ljava/lang/Object;)V
    .registers 7

    .line 3
    invoke-direct {p0}, Landroidx/appcompat/app/f;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Landroidx/appcompat/app/g;->t:Landroidx/core/view/z;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/appcompat/app/g;->u:Z

    const/16 v0, -0x64

    .line 6
    iput v0, p0, Landroidx/appcompat/app/g;->O:I

    .line 7
    new-instance v1, Landroidx/appcompat/app/g$b;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/g$b;-><init>(Landroidx/appcompat/app/g;)V

    iput-object v1, p0, Landroidx/appcompat/app/g;->W:Ljava/lang/Runnable;

    .line 8
    iput-object p1, p0, Landroidx/appcompat/app/g;->f:Landroid/content/Context;

    .line 9
    iput-object p3, p0, Landroidx/appcompat/app/g;->i:Landroidx/appcompat/app/e;

    .line 10
    iput-object p4, p0, Landroidx/appcompat/app/g;->e:Ljava/lang/Object;

    .line 11
    iget p1, p0, Landroidx/appcompat/app/g;->O:I

    if-ne p1, v0, :cond_32

    instance-of p1, p4, Landroid/app/Dialog;

    if-eqz p1, :cond_32

    .line 12
    invoke-direct {p0}, Landroidx/appcompat/app/g;->N0()Landroidx/appcompat/app/d;

    move-result-object p1

    if-eqz p1, :cond_32

    .line 13
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->getDelegate()Landroidx/appcompat/app/f;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/f;->n()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/app/g;->O:I

    .line 14
    :cond_32
    iget p1, p0, Landroidx/appcompat/app/g;->O:I

    if-ne p1, v0, :cond_5f

    .line 15
    sget-object p1, Landroidx/appcompat/app/g;->c0:Lc/d/g;

    iget-object p3, p0, Landroidx/appcompat/app/g;->e:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lc/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_5f

    .line 16
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/app/g;->O:I

    .line 17
    sget-object p1, Landroidx/appcompat/app/g;->c0:Lc/d/g;

    iget-object p3, p0, Landroidx/appcompat/app/g;->e:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lc/d/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5f
    if-eqz p2, :cond_64

    .line 18
    invoke-direct {p0, p2}, Landroidx/appcompat/app/g;->O(Landroid/view/Window;)V

    .line 19
    :cond_64
    invoke-static {}, Landroidx/appcompat/widget/i;->h()V

    return-void
.end method

.method private D0(Landroidx/appcompat/app/g$u;Landroid/view/KeyEvent;)V
    .registers 16

    .line 1
    iget-boolean v0, p1, Landroidx/appcompat/app/g$u;->o:Z

    if-nez v0, :cond_f3

    iget-boolean v0, p0, Landroidx/appcompat/app/g;->N:Z

    if-eqz v0, :cond_a

    goto/16 :goto_f3

    .line 2
    :cond_a
    iget v0, p1, Landroidx/appcompat/app/g$u;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_27

    .line 3
    iget-object v0, p0, Landroidx/appcompat/app/g;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 4
    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x4

    if-ne v0, v3, :cond_23

    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    if-eqz v0, :cond_27

    return-void

    .line 5
    :cond_27
    invoke-virtual {p0}, Landroidx/appcompat/app/g;->l0()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 6
    iget v3, p1, Landroidx/appcompat/app/g$u;->a:I

    iget-object v4, p1, Landroidx/appcompat/app/g$u;->j:Landroidx/appcompat/view/menu/g;

    invoke-interface {v0, v3, v4}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 7
    invoke-virtual {p0, p1, v2}, Landroidx/appcompat/app/g;->U(Landroidx/appcompat/app/g$u;Z)V

    return-void

    .line 8
    :cond_3b
    iget-object v0, p0, Landroidx/appcompat/app/g;->f:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-nez v0, :cond_48

    return-void

    .line 9
    :cond_48
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/g;->G0(Landroidx/appcompat/app/g$u;Landroid/view/KeyEvent;)Z

    move-result p2

    if-nez p2, :cond_4f

    return-void

    .line 10
    :cond_4f
    iget-object p2, p1, Landroidx/appcompat/app/g$u;->g:Landroid/view/ViewGroup;

    const/4 v3, -0x1

    const/4 v4, -0x2

    if-eqz p2, :cond_6a

    iget-boolean p2, p1, Landroidx/appcompat/app/g$u;->q:Z

    if-eqz p2, :cond_5a

    goto :goto_6a

    .line 11
    :cond_5a
    iget-object p2, p1, Landroidx/appcompat/app/g$u;->i:Landroid/view/View;

    if-eqz p2, :cond_ce

    .line 12
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_ce

    .line 13
    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne p2, v3, :cond_ce

    const/4 v6, -0x1

    goto :goto_cf

    .line 14
    :cond_6a
    :goto_6a
    iget-object p2, p1, Landroidx/appcompat/app/g$u;->g:Landroid/view/ViewGroup;

    if-nez p2, :cond_79

    .line 15
    invoke-direct {p0, p1}, Landroidx/appcompat/app/g;->o0(Landroidx/appcompat/app/g$u;)Z

    move-result p2

    if-eqz p2, :cond_78

    iget-object p2, p1, Landroidx/appcompat/app/g$u;->g:Landroid/view/ViewGroup;

    if-nez p2, :cond_88

    :cond_78
    return-void

    .line 16
    :cond_79
    iget-boolean v3, p1, Landroidx/appcompat/app/g$u;->q:Z

    if-eqz v3, :cond_88

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_88

    .line 17
    iget-object p2, p1, Landroidx/appcompat/app/g$u;->g:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 18
    :cond_88
    invoke-direct {p0, p1}, Landroidx/appcompat/app/g;->n0(Landroidx/appcompat/app/g$u;)Z

    move-result p2

    if-eqz p2, :cond_f1

    invoke-virtual {p1}, Landroidx/appcompat/app/g$u;->b()Z

    move-result p2

    if-nez p2, :cond_95

    goto :goto_f1

    .line 19
    :cond_95
    iget-object p2, p1, Landroidx/appcompat/app/g$u;->h:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-nez p2, :cond_a2

    .line 20
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 21
    :cond_a2
    iget v3, p1, Landroidx/appcompat/app/g$u;->b:I

    .line 22
    iget-object v5, p1, Landroidx/appcompat/app/g$u;->g:Landroid/view/ViewGroup;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 23
    iget-object v3, p1, Landroidx/appcompat/app/g$u;->h:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 24
    instance-of v5, v3, Landroid/view/ViewGroup;

    if-eqz v5, :cond_ba

    .line 25
    check-cast v3, Landroid/view/ViewGroup;

    iget-object v5, p1, Landroidx/appcompat/app/g$u;->h:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 26
    :cond_ba
    iget-object v3, p1, Landroidx/appcompat/app/g$u;->g:Landroid/view/ViewGroup;

    iget-object v5, p1, Landroidx/appcompat/app/g$u;->h:Landroid/view/View;

    invoke-virtual {v3, v5, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    iget-object p2, p1, Landroidx/appcompat/app/g$u;->h:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-nez p2, :cond_ce

    .line 28
    iget-object p2, p1, Landroidx/appcompat/app/g$u;->h:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    :cond_ce
    const/4 v6, -0x2

    .line 29
    :goto_cf
    iput-boolean v1, p1, Landroidx/appcompat/app/g$u;->n:Z

    .line 30
    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    const/4 v7, -0x2

    iget v8, p1, Landroidx/appcompat/app/g$u;->d:I

    iget v9, p1, Landroidx/appcompat/app/g$u;->e:I

    const/16 v10, 0x3ea

    const/high16 v11, 0x820000

    const/4 v12, -0x3

    move-object v5, p2

    invoke-direct/range {v5 .. v12}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 31
    iget v1, p1, Landroidx/appcompat/app/g$u;->c:I

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 32
    iget v1, p1, Landroidx/appcompat/app/g$u;->f:I

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 33
    iget-object v1, p1, Landroidx/appcompat/app/g$u;->g:Landroid/view/ViewGroup;

    invoke-interface {v0, v1, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    iput-boolean v2, p1, Landroidx/appcompat/app/g$u;->o:Z

    return-void

    .line 35
    :cond_f1
    :goto_f1
    iput-boolean v2, p1, Landroidx/appcompat/app/g$u;->q:Z

    :cond_f3
    :goto_f3
    return-void
.end method

.method private F0(Landroidx/appcompat/app/g$u;ILandroid/view/KeyEvent;I)Z
    .registers 7

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 2
    :cond_8
    iget-boolean v0, p1, Landroidx/appcompat/app/g$u;->m:Z

    if-nez v0, :cond_12

    invoke-direct {p0, p1, p3}, Landroidx/appcompat/app/g;->G0(Landroidx/appcompat/app/g$u;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_12
    iget-object v0, p1, Landroidx/appcompat/app/g$u;->j:Landroidx/appcompat/view/menu/g;

    if-eqz v0, :cond_1a

    .line 3
    invoke-virtual {v0, p2, p3, p4}, Landroidx/appcompat/view/menu/g;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v1

    :cond_1a
    if-eqz v1, :cond_28

    const/4 p2, 0x1

    and-int/lit8 p3, p4, 0x1

    if-nez p3, :cond_28

    .line 4
    iget-object p3, p0, Landroidx/appcompat/app/g;->m:Landroidx/appcompat/widget/a0;

    if-nez p3, :cond_28

    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/app/g;->U(Landroidx/appcompat/app/g$u;Z)V

    :cond_28
    return v1
.end method

.method private G0(Landroidx/appcompat/app/g$u;Landroid/view/KeyEvent;)Z
    .registers 11

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/g;->N:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 2
    :cond_6
    iget-boolean v0, p1, Landroidx/appcompat/app/g$u;->m:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    return v2

    .line 3
    :cond_c
    iget-object v0, p0, Landroidx/appcompat/app/g;->I:Landroidx/appcompat/app/g$u;

    if-eqz v0, :cond_15

    if-eq v0, p1, :cond_15

    .line 4
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/g;->U(Landroidx/appcompat/app/g$u;Z)V

    .line 5
    :cond_15
    invoke-virtual {p0}, Landroidx/appcompat/app/g;->l0()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 6
    iget v3, p1, Landroidx/appcompat/app/g$u;->a:I

    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p1, Landroidx/appcompat/app/g$u;->i:Landroid/view/View;

    .line 7
    :cond_23
    iget v3, p1, Landroidx/appcompat/app/g$u;->a:I

    if-eqz v3, :cond_2e

    const/16 v4, 0x6c

    if-ne v3, v4, :cond_2c

    goto :goto_2e

    :cond_2c
    const/4 v3, 0x0

    goto :goto_2f

    :cond_2e
    :goto_2e
    const/4 v3, 0x1

    :goto_2f
    if-eqz v3, :cond_38

    .line 8
    iget-object v4, p0, Landroidx/appcompat/app/g;->m:Landroidx/appcompat/widget/a0;

    if-eqz v4, :cond_38

    .line 9
    invoke-interface {v4}, Landroidx/appcompat/widget/a0;->f()V

    .line 10
    :cond_38
    iget-object v4, p1, Landroidx/appcompat/app/g$u;->i:Landroid/view/View;

    if-nez v4, :cond_e4

    if-eqz v3, :cond_46

    .line 11
    invoke-virtual {p0}, Landroidx/appcompat/app/g;->E0()Landroidx/appcompat/app/a;

    move-result-object v4

    instance-of v4, v4, Landroidx/appcompat/app/l;

    if-nez v4, :cond_e4

    .line 12
    :cond_46
    iget-object v4, p1, Landroidx/appcompat/app/g$u;->j:Landroidx/appcompat/view/menu/g;

    const/4 v5, 0x0

    if-eqz v4, :cond_4f

    iget-boolean v4, p1, Landroidx/appcompat/app/g$u;->r:Z

    if-eqz v4, :cond_98

    .line 13
    :cond_4f
    iget-object v4, p1, Landroidx/appcompat/app/g$u;->j:Landroidx/appcompat/view/menu/g;

    if-nez v4, :cond_5e

    .line 14
    invoke-direct {p0, p1}, Landroidx/appcompat/app/g;->p0(Landroidx/appcompat/app/g$u;)Z

    move-result v4

    if-eqz v4, :cond_5d

    iget-object v4, p1, Landroidx/appcompat/app/g$u;->j:Landroidx/appcompat/view/menu/g;

    if-nez v4, :cond_5e

    :cond_5d
    return v1

    :cond_5e
    if-eqz v3, :cond_78

    .line 15
    iget-object v4, p0, Landroidx/appcompat/app/g;->m:Landroidx/appcompat/widget/a0;

    if-eqz v4, :cond_78

    .line 16
    iget-object v4, p0, Landroidx/appcompat/app/g;->n:Landroidx/appcompat/app/g$i;

    if-nez v4, :cond_6f

    .line 17
    new-instance v4, Landroidx/appcompat/app/g$i;

    invoke-direct {v4, p0}, Landroidx/appcompat/app/g$i;-><init>(Landroidx/appcompat/app/g;)V

    iput-object v4, p0, Landroidx/appcompat/app/g;->n:Landroidx/appcompat/app/g$i;

    .line 18
    :cond_6f
    iget-object v4, p0, Landroidx/appcompat/app/g;->m:Landroidx/appcompat/widget/a0;

    iget-object v6, p1, Landroidx/appcompat/app/g$u;->j:Landroidx/appcompat/view/menu/g;

    iget-object v7, p0, Landroidx/appcompat/app/g;->n:Landroidx/appcompat/app/g$i;

    invoke-interface {v4, v6, v7}, Landroidx/appcompat/widget/a0;->a(Landroid/view/Menu;Landroidx/appcompat/view/menu/m$a;)V

    .line 19
    :cond_78
    iget-object v4, p1, Landroidx/appcompat/app/g$u;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/g;->d0()V

    .line 20
    iget v4, p1, Landroidx/appcompat/app/g$u;->a:I

    iget-object v6, p1, Landroidx/appcompat/app/g$u;->j:Landroidx/appcompat/view/menu/g;

    invoke-interface {v0, v4, v6}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_96

    .line 21
    invoke-virtual {p1, v5}, Landroidx/appcompat/app/g$u;->c(Landroidx/appcompat/view/menu/g;)V

    if-eqz v3, :cond_95

    .line 22
    iget-object p1, p0, Landroidx/appcompat/app/g;->m:Landroidx/appcompat/widget/a0;

    if-eqz p1, :cond_95

    .line 23
    iget-object p2, p0, Landroidx/appcompat/app/g;->n:Landroidx/appcompat/app/g$i;

    invoke-interface {p1, v5, p2}, Landroidx/appcompat/widget/a0;->a(Landroid/view/Menu;Landroidx/appcompat/view/menu/m$a;)V

    :cond_95
    return v1

    .line 24
    :cond_96
    iput-boolean v1, p1, Landroidx/appcompat/app/g$u;->r:Z

    .line 25
    :cond_98
    iget-object v4, p1, Landroidx/appcompat/app/g$u;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/g;->d0()V

    .line 26
    iget-object v4, p1, Landroidx/appcompat/app/g$u;->s:Landroid/os/Bundle;

    if-eqz v4, :cond_a8

    .line 27
    iget-object v6, p1, Landroidx/appcompat/app/g$u;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v6, v4}, Landroidx/appcompat/view/menu/g;->P(Landroid/os/Bundle;)V

    .line 28
    iput-object v5, p1, Landroidx/appcompat/app/g$u;->s:Landroid/os/Bundle;

    .line 29
    :cond_a8
    iget-object v4, p1, Landroidx/appcompat/app/g$u;->i:Landroid/view/View;

    iget-object v6, p1, Landroidx/appcompat/app/g$u;->j:Landroidx/appcompat/view/menu/g;

    invoke-interface {v0, v1, v4, v6}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_c3

    if-eqz v3, :cond_bd

    .line 30
    iget-object p2, p0, Landroidx/appcompat/app/g;->m:Landroidx/appcompat/widget/a0;

    if-eqz p2, :cond_bd

    .line 31
    iget-object v0, p0, Landroidx/appcompat/app/g;->n:Landroidx/appcompat/app/g$i;

    invoke-interface {p2, v5, v0}, Landroidx/appcompat/widget/a0;->a(Landroid/view/Menu;Landroidx/appcompat/view/menu/m$a;)V

    .line 32
    :cond_bd
    iget-object p1, p1, Landroidx/appcompat/app/g$u;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->c0()V

    return v1

    :cond_c3
    if-eqz p2, :cond_ca

    .line 33
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p2

    goto :goto_cb

    :cond_ca
    const/4 p2, -0x1

    .line 34
    :goto_cb
    invoke-static {p2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object p2

    .line 35
    invoke-virtual {p2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result p2

    if-eq p2, v2, :cond_d7

    const/4 p2, 0x1

    goto :goto_d8

    :cond_d7
    const/4 p2, 0x0

    :goto_d8
    iput-boolean p2, p1, Landroidx/appcompat/app/g$u;->p:Z

    .line 36
    iget-object v0, p1, Landroidx/appcompat/app/g$u;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, p2}, Landroidx/appcompat/view/menu/g;->setQwertyMode(Z)V

    .line 37
    iget-object p2, p1, Landroidx/appcompat/app/g$u;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/g;->c0()V

    .line 38
    :cond_e4
    iput-boolean v2, p1, Landroidx/appcompat/app/g$u;->m:Z

    .line 39
    iput-boolean v1, p1, Landroidx/appcompat/app/g$u;->n:Z

    .line 40
    iput-object p1, p0, Landroidx/appcompat/app/g;->I:Landroidx/appcompat/app/g$u;

    return v2
.end method

.method private H0(Z)V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g;->m:Landroidx/appcompat/widget/a0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_82

    invoke-interface {v0}, Landroidx/appcompat/widget/a0;->g()Z

    move-result v0

    if-eqz v0, :cond_82

    iget-object v0, p0, Landroidx/appcompat/app/g;->f:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroidx/appcompat/app/g;->m:Landroidx/appcompat/widget/a0;

    .line 3
    invoke-interface {v0}, Landroidx/appcompat/widget/a0;->b()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 4
    :cond_20
    invoke-virtual {p0}, Landroidx/appcompat/app/g;->l0()Landroid/view/Window$Callback;

    move-result-object v0

    .line 5
    iget-object v3, p0, Landroidx/appcompat/app/g;->m:Landroidx/appcompat/widget/a0;

    invoke-interface {v3}, Landroidx/appcompat/widget/a0;->c()Z

    move-result v3

    const/16 v4, 0x6c

    if-eqz v3, :cond_44

    if-nez p1, :cond_31

    goto :goto_44

    .line 6
    :cond_31
    iget-object p1, p0, Landroidx/appcompat/app/g;->m:Landroidx/appcompat/widget/a0;

    invoke-interface {p1}, Landroidx/appcompat/widget/a0;->d()Z

    .line 7
    iget-boolean p1, p0, Landroidx/appcompat/app/g;->N:Z

    if-nez p1, :cond_81

    .line 8
    invoke-virtual {p0, v2, v1}, Landroidx/appcompat/app/g;->j0(IZ)Landroidx/appcompat/app/g$u;

    move-result-object p1

    .line 9
    iget-object p1, p1, Landroidx/appcompat/app/g$u;->j:Landroidx/appcompat/view/menu/g;

    invoke-interface {v0, v4, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_81

    :cond_44
    :goto_44
    if-eqz v0, :cond_81

    .line 10
    iget-boolean p1, p0, Landroidx/appcompat/app/g;->N:Z

    if-nez p1, :cond_81

    .line 11
    iget-boolean p1, p0, Landroidx/appcompat/app/g;->U:Z

    if-eqz p1, :cond_63

    iget p1, p0, Landroidx/appcompat/app/g;->V:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_63

    .line 12
    iget-object p1, p0, Landroidx/appcompat/app/g;->g:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v3, p0, Landroidx/appcompat/app/g;->W:Ljava/lang/Runnable;

    invoke-virtual {p1, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 13
    iget-object p1, p0, Landroidx/appcompat/app/g;->W:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 14
    :cond_63
    invoke-virtual {p0, v2, v1}, Landroidx/appcompat/app/g;->j0(IZ)Landroidx/appcompat/app/g$u;

    move-result-object p1

    .line 15
    iget-object v1, p1, Landroidx/appcompat/app/g$u;->j:Landroidx/appcompat/view/menu/g;

    if-eqz v1, :cond_81

    iget-boolean v3, p1, Landroidx/appcompat/app/g$u;->r:Z

    if-nez v3, :cond_81

    iget-object v3, p1, Landroidx/appcompat/app/g$u;->i:Landroid/view/View;

    .line 16
    invoke-interface {v0, v2, v3, v1}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 17
    iget-object p1, p1, Landroidx/appcompat/app/g$u;->j:Landroidx/appcompat/view/menu/g;

    invoke-interface {v0, v4, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 18
    iget-object p1, p0, Landroidx/appcompat/app/g;->m:Landroidx/appcompat/widget/a0;

    invoke-interface {p1}, Landroidx/appcompat/widget/a0;->e()Z

    :cond_81
    :goto_81
    return-void

    .line 19
    :cond_82
    invoke-virtual {p0, v2, v1}, Landroidx/appcompat/app/g;->j0(IZ)Landroidx/appcompat/app/g$u;

    move-result-object p1

    .line 20
    iput-boolean v1, p1, Landroidx/appcompat/app/g$u;->q:Z

    .line 21
    invoke-virtual {p0, p1, v2}, Landroidx/appcompat/app/g;->U(Landroidx/appcompat/app/g$u;Z)V

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/g;->D0(Landroidx/appcompat/app/g$u;Landroid/view/KeyEvent;)V

    return-void
.end method

.method private I0(I)I
    .registers 3

    const/16 v0, 0x8

    if-ne p1, v0, :cond_7

    const/16 p1, 0x6c

    return p1

    :cond_7
    const/16 v0, 0x9

    if-ne p1, v0, :cond_d

    const/16 p1, 0x6d

    :cond_d
    return p1
.end method

.method private K0(Landroid/view/ViewParent;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1
    :cond_4
    iget-object v1, p0, Landroidx/appcompat/app/g;->g:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    :goto_a
    if-nez p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    if-eq p1, v1, :cond_23

    .line 2
    instance-of v2, p1, Landroid/view/View;

    if-eqz v2, :cond_23

    move-object v2, p1

    check-cast v2, Landroid/view/View;

    .line 3
    invoke-static {v2}, Landroidx/core/view/v;->S(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_23

    .line 4
    :cond_1e
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_a

    :cond_23
    :goto_23
    return v0
.end method

.method private M(Z)Z
    .registers 4

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/g;->N:Z

    if-eqz v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_6
    invoke-direct {p0}, Landroidx/appcompat/app/g;->P()I

    move-result v0

    .line 3
    iget-object v1, p0, Landroidx/appcompat/app/g;->f:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/app/g;->t0(Landroid/content/Context;I)I

    move-result v1

    .line 4
    invoke-direct {p0, v1, p1}, Landroidx/appcompat/app/g;->O0(IZ)Z

    move-result p1

    if-nez v0, :cond_20

    .line 5
    iget-object v1, p0, Landroidx/appcompat/app/g;->f:Landroid/content/Context;

    invoke-direct {p0, v1}, Landroidx/appcompat/app/g;->i0(Landroid/content/Context;)Landroidx/appcompat/app/g$q;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/g$q;->e()V

    goto :goto_27

    .line 6
    :cond_20
    iget-object v1, p0, Landroidx/appcompat/app/g;->S:Landroidx/appcompat/app/g$q;

    if-eqz v1, :cond_27

    .line 7
    invoke-virtual {v1}, Landroidx/appcompat/app/g$q;->a()V

    :cond_27
    :goto_27
    const/4 v1, 0x3

    if-ne v0, v1, :cond_34

    .line 8
    iget-object v0, p0, Landroidx/appcompat/app/g;->f:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroidx/appcompat/app/g;->h0(Landroid/content/Context;)Landroidx/appcompat/app/g$q;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/g$q;->e()V

    goto :goto_3b

    .line 9
    :cond_34
    iget-object v0, p0, Landroidx/appcompat/app/g;->T:Landroidx/appcompat/app/g$q;

    if-eqz v0, :cond_3b

    .line 10
    invoke-virtual {v0}, Landroidx/appcompat/app/g$q;->a()V

    :cond_3b
    :goto_3b
    return p1
.end method

.method private M0()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/g;->v:Z

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Window feature must be requested before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private N()V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g;->w:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ContentFrameLayout;

    .line 2
    iget-object v1, p0, Landroidx/appcompat/app/g;->g:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 6
    invoke-virtual {v0, v2, v3, v4, v1}, Landroidx/appcompat/widget/ContentFrameLayout;->b(IIII)V

    .line 7
    iget-object v1, p0, Landroidx/appcompat/app/g;->f:Landroid/content/Context;

    sget-object v2, Lc/a/j;->AppCompatTheme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 8
    sget v2, Lc/a/j;->AppCompatTheme_windowMinWidthMajor:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 9
    sget v2, Lc/a/j;->AppCompatTheme_windowMinWidthMinor:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 10
    sget v2, Lc/a/j;->AppCompatTheme_windowFixedWidthMajor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 11
    sget v2, Lc/a/j;->AppCompatTheme_windowFixedWidthMajor:I

    .line 12
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v3

    .line 13
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 14
    :cond_4f
    sget v2, Lc/a/j;->AppCompatTheme_windowFixedWidthMinor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 15
    sget v2, Lc/a/j;->AppCompatTheme_windowFixedWidthMinor:I

    .line 16
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v3

    .line 17
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 18
    :cond_60
    sget v2, Lc/a/j;->AppCompatTheme_windowFixedHeightMajor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 19
    sget v2, Lc/a/j;->AppCompatTheme_windowFixedHeightMajor:I

    .line 20
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v3

    .line 21
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 22
    :cond_71
    sget v2, Lc/a/j;->AppCompatTheme_windowFixedHeightMinor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 23
    sget v2, Lc/a/j;->AppCompatTheme_windowFixedHeightMinor:I

    .line 24
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v3

    .line 25
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 26
    :cond_82
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 27
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method private N0()Landroidx/appcompat/app/d;
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g;->f:Landroid/content/Context;

    :goto_2
    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 2
    instance-of v2, v0, Landroidx/appcompat/app/d;

    if-eqz v2, :cond_c

    .line 3
    check-cast v0, Landroidx/appcompat/app/d;

    return-object v0

    .line 4
    :cond_c
    instance-of v2, v0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_17

    .line 5
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_2

    :cond_17
    return-object v1
.end method

.method private O(Landroid/view/Window;)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g;->g:Landroid/view/Window;

    const-string v1, "AppCompat has already installed itself into the Window"

    if-nez v0, :cond_37

    .line 2
    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 3
    instance-of v2, v0, Landroidx/appcompat/app/g$o;

    if-nez v2, :cond_31

    .line 4
    new-instance v1, Landroidx/appcompat/app/g$o;

    invoke-direct {v1, p0, v0}, Landroidx/appcompat/app/g$o;-><init>(Landroidx/appcompat/app/g;Landroid/view/Window$Callback;)V

    iput-object v1, p0, Landroidx/appcompat/app/g;->h:Landroidx/appcompat/app/g$o;

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 6
    iget-object v0, p0, Landroidx/appcompat/app/g;->f:Landroid/content/Context;

    const/4 v1, 0x0

    sget-object v2, Landroidx/appcompat/app/g;->e0:[I

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/u0;->u(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/u0;

    move-result-object v0

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/u0;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 8
    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    :cond_2b
    invoke-virtual {v0}, Landroidx/appcompat/widget/u0;->w()V

    .line 10
    iput-object p1, p0, Landroidx/appcompat/app/g;->g:Landroid/view/Window;

    return-void

    .line 11
    :cond_31
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_37
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private O0(IZ)Z
    .registers 9

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g;->f:Landroid/content/Context;

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, v0, p1, v1}, Landroidx/appcompat/app/g;->V(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v0

    .line 3
    invoke-direct {p0}, Landroidx/appcompat/app/g;->r0()Z

    move-result v2

    .line 4
    iget-object v3, p0, Landroidx/appcompat/app/g;->f:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0x30

    .line 5
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/4 v4, 0x1

    if-eq v3, v0, :cond_47

    if-eqz p2, :cond_47

    if-nez v2, :cond_47

    .line 6
    iget-boolean p2, p0, Landroidx/appcompat/app/g;->K:Z

    if-eqz p2, :cond_47

    sget-boolean p2, Landroidx/appcompat/app/g;->f0:Z

    if-nez p2, :cond_30

    iget-boolean p2, p0, Landroidx/appcompat/app/g;->L:Z

    if-eqz p2, :cond_47

    :cond_30
    iget-object p2, p0, Landroidx/appcompat/app/g;->e:Ljava/lang/Object;

    instance-of v5, p2, Landroid/app/Activity;

    if-eqz v5, :cond_47

    check-cast p2, Landroid/app/Activity;

    .line 7
    invoke-virtual {p2}, Landroid/app/Activity;->isChild()Z

    move-result p2

    if-nez p2, :cond_47

    .line 8
    iget-object p2, p0, Landroidx/appcompat/app/g;->e:Ljava/lang/Object;

    check-cast p2, Landroid/app/Activity;

    invoke-static {p2}, Landroidx/core/app/a;->l(Landroid/app/Activity;)V

    const/4 p2, 0x1

    goto :goto_48

    :cond_47
    const/4 p2, 0x0

    :goto_48
    if-nez p2, :cond_50

    if-eq v3, v0, :cond_50

    .line 9
    invoke-direct {p0, v0, v2, v1}, Landroidx/appcompat/app/g;->P0(IZLandroid/content/res/Configuration;)V

    goto :goto_51

    :cond_50
    move v4, p2

    :goto_51
    if-eqz v4, :cond_5e

    .line 10
    iget-object p2, p0, Landroidx/appcompat/app/g;->e:Ljava/lang/Object;

    instance-of v0, p2, Landroidx/appcompat/app/d;

    if-eqz v0, :cond_5e

    .line 11
    check-cast p2, Landroidx/appcompat/app/d;

    invoke-virtual {p2, p1}, Landroidx/appcompat/app/d;->onNightModeChanged(I)V

    :cond_5e
    return v4
.end method

.method private P()I
    .registers 3

    .line 1
    iget v0, p0, Landroidx/appcompat/app/g;->O:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_7

    goto :goto_b

    :cond_7
    invoke-static {}, Landroidx/appcompat/app/f;->l()I

    move-result v0

    :goto_b
    return v0
.end method

.method private P0(IZLandroid/content/res/Configuration;)V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    if-eqz p3, :cond_14

    .line 3
    invoke-virtual {v1, p3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 4
    :cond_14
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p3, p3, -0x31

    or-int/2addr p1, p3

    iput p1, v1, Landroid/content/res/Configuration;->uiMode:I

    const/4 p1, 0x0

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 6
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-ge p1, p3, :cond_2c

    .line 7
    invoke-static {v0}, Landroidx/appcompat/app/k;->a(Landroid/content/res/Resources;)V

    .line 8
    :cond_2c
    iget p1, p0, Landroidx/appcompat/app/g;->P:I

    if-eqz p1, :cond_47

    .line 9
    iget-object p3, p0, Landroidx/appcompat/app/g;->f:Landroid/content/Context;

    invoke-virtual {p3, p1}, Landroid/content/Context;->setTheme(I)V

    .line 10
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x17

    if-lt p1, p3, :cond_47

    .line 11
    iget-object p1, p0, Landroidx/appcompat/app/g;->f:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    iget p3, p0, Landroidx/appcompat/app/g;->P:I

    const/4 v0, 0x1

    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_47
    if-eqz p2, :cond_73

    .line 12
    iget-object p1, p0, Landroidx/appcompat/app/g;->e:Ljava/lang/Object;

    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_73

    .line 13
    check-cast p1, Landroid/app/Activity;

    .line 14
    instance-of p2, p1, Landroidx/lifecycle/j;

    if-eqz p2, :cond_6c

    .line 15
    move-object p2, p1

    check-cast p2, Landroidx/lifecycle/j;

    invoke-interface {p2}, Landroidx/lifecycle/j;->getLifecycle()Landroidx/lifecycle/f;

    move-result-object p2

    .line 16
    invoke-virtual {p2}, Landroidx/lifecycle/f;->b()Landroidx/lifecycle/f$c;

    move-result-object p2

    sget-object p3, Landroidx/lifecycle/f$c;->e:Landroidx/lifecycle/f$c;

    invoke-virtual {p2, p3}, Landroidx/lifecycle/f$c;->a(Landroidx/lifecycle/f$c;)Z

    move-result p2

    if-eqz p2, :cond_73

    .line 17
    invoke-virtual {p1, v1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_73

    .line 18
    :cond_6c
    iget-boolean p2, p0, Landroidx/appcompat/app/g;->M:Z

    if-eqz p2, :cond_73

    .line 19
    invoke-virtual {p1, v1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_73
    :goto_73
    return-void
.end method

.method private R0(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-static {p1}, Landroidx/core/view/v;->M(Landroid/view/View;)I

    move-result v0

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_16

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/g;->f:Landroid/content/Context;

    sget v1, Lc/a/c;->abc_decor_view_status_guard_light:I

    invoke-static {v0, v1}, Landroidx/core/content/a;->b(Landroid/content/Context;I)I

    move-result v0

    goto :goto_1e

    .line 3
    :cond_16
    iget-object v0, p0, Landroidx/appcompat/app/g;->f:Landroid/content/Context;

    sget v1, Lc/a/c;->abc_decor_view_status_guard:I

    invoke-static {v0, v1}, Landroidx/core/content/a;->b(Landroid/content/Context;I)I

    move-result v0

    .line 4
    :goto_1e
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private S()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g;->S:Landroidx/appcompat/app/g$q;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Landroidx/appcompat/app/g$q;->a()V

    .line 3
    :cond_7
    iget-object v0, p0, Landroidx/appcompat/app/g;->T:Landroidx/appcompat/app/g$q;

    if-eqz v0, :cond_e

    .line 4
    invoke-virtual {v0}, Landroidx/appcompat/app/g$q;->a()V

    :cond_e
    return-void
.end method

.method private V(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .registers 5

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1a

    const/4 v0, 0x2

    if-eq p2, v0, :cond_17

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 2
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    goto :goto_1c

    :cond_17
    const/16 p1, 0x20

    goto :goto_1c

    :cond_1a
    const/16 p1, 0x10

    .line 3
    :goto_1c
    new-instance p2, Landroid/content/res/Configuration;

    invoke-direct {p2}, Landroid/content/res/Configuration;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p2, Landroid/content/res/Configuration;->fontScale:F

    if-eqz p3, :cond_29

    .line 5
    invoke-virtual {p2, p3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 6
    :cond_29
    iget p3, p2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p3, p3, -0x31

    or-int/2addr p1, p3

    iput p1, p2, Landroid/content/res/Configuration;->uiMode:I

    return-object p2
.end method

.method private W()Landroid/view/ViewGroup;
    .registers 8

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g;->f:Landroid/content/Context;

    sget-object v1, Lc/a/j;->AppCompatTheme:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2
    sget v1, Lc/a/j;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1a6

    .line 3
    sget v1, Lc/a/j;->AppCompatTheme_windowNoTitle:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1e

    .line 4
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/g;->C(I)Z

    goto :goto_2b

    .line 5
    :cond_1e
    sget v1, Lc/a/j;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_2b

    const/16 v1, 0x6c

    .line 6
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/g;->C(I)Z

    .line 7
    :cond_2b
    :goto_2b
    sget v1, Lc/a/j;->AppCompatTheme_windowActionBarOverlay:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/16 v4, 0x6d

    if-eqz v1, :cond_38

    .line 8
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/g;->C(I)Z

    .line 9
    :cond_38
    sget v1, Lc/a/j;->AppCompatTheme_windowActionModeOverlay:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_45

    const/16 v1, 0xa

    .line 10
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/g;->C(I)Z

    .line 11
    :cond_45
    sget v1, Lc/a/j;->AppCompatTheme_android_windowIsFloating:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/appcompat/app/g;->E:Z

    .line 12
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 13
    invoke-direct {p0}, Landroidx/appcompat/app/g;->d0()V

    .line 14
    iget-object v0, p0, Landroidx/appcompat/app/g;->g:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 15
    iget-object v0, p0, Landroidx/appcompat/app/g;->f:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 16
    iget-boolean v1, p0, Landroidx/appcompat/app/g;->F:Z

    const/4 v5, 0x0

    if-nez v1, :cond_d6

    .line 17
    iget-boolean v1, p0, Landroidx/appcompat/app/g;->E:Z

    if-eqz v1, :cond_75

    .line 18
    sget v1, Lc/a/g;->abc_dialog_title_material:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 19
    iput-boolean v2, p0, Landroidx/appcompat/app/g;->C:Z

    iput-boolean v2, p0, Landroidx/appcompat/app/g;->B:Z

    goto/16 :goto_eb

    .line 20
    :cond_75
    iget-boolean v0, p0, Landroidx/appcompat/app/g;->B:Z

    if-eqz v0, :cond_d4

    .line 21
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 22
    iget-object v1, p0, Landroidx/appcompat/app/g;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v6, Lc/a/a;->actionBarTheme:I

    invoke-virtual {v1, v6, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 23
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_97

    .line 24
    new-instance v1, Lc/a/o/d;

    iget-object v3, p0, Landroidx/appcompat/app/g;->f:Landroid/content/Context;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v1, v3, v0}, Lc/a/o/d;-><init>(Landroid/content/Context;I)V

    goto :goto_99

    .line 25
    :cond_97
    iget-object v1, p0, Landroidx/appcompat/app/g;->f:Landroid/content/Context;

    .line 26
    :goto_99
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lc/a/g;->abc_screen_toolbar:I

    .line 27
    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 28
    sget v1, Lc/a/f;->decor_content_parent:I

    .line 29
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/a0;

    iput-object v1, p0, Landroidx/appcompat/app/g;->m:Landroidx/appcompat/widget/a0;

    .line 30
    invoke-virtual {p0}, Landroidx/appcompat/app/g;->l0()Landroid/view/Window$Callback;

    move-result-object v3

    invoke-interface {v1, v3}, Landroidx/appcompat/widget/a0;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 31
    iget-boolean v1, p0, Landroidx/appcompat/app/g;->C:Z

    if-eqz v1, :cond_bf

    .line 32
    iget-object v1, p0, Landroidx/appcompat/app/g;->m:Landroidx/appcompat/widget/a0;

    invoke-interface {v1, v4}, Landroidx/appcompat/widget/a0;->k(I)V

    .line 33
    :cond_bf
    iget-boolean v1, p0, Landroidx/appcompat/app/g;->z:Z

    if-eqz v1, :cond_c9

    .line 34
    iget-object v1, p0, Landroidx/appcompat/app/g;->m:Landroidx/appcompat/widget/a0;

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroidx/appcompat/widget/a0;->k(I)V

    .line 35
    :cond_c9
    iget-boolean v1, p0, Landroidx/appcompat/app/g;->A:Z

    if-eqz v1, :cond_eb

    .line 36
    iget-object v1, p0, Landroidx/appcompat/app/g;->m:Landroidx/appcompat/widget/a0;

    const/4 v3, 0x5

    invoke-interface {v1, v3}, Landroidx/appcompat/widget/a0;->k(I)V

    goto :goto_eb

    :cond_d4
    move-object v0, v5

    goto :goto_eb

    .line 37
    :cond_d6
    iget-boolean v1, p0, Landroidx/appcompat/app/g;->D:Z

    if-eqz v1, :cond_e3

    .line 38
    sget v1, Lc/a/g;->abc_screen_simple_overlay_action_mode:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_eb

    .line 39
    :cond_e3
    sget v1, Lc/a/g;->abc_screen_simple:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :cond_eb
    :goto_eb
    if-eqz v0, :cond_160

    .line 40
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_fc

    .line 41
    new-instance v1, Landroidx/appcompat/app/g$c;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/g$c;-><init>(Landroidx/appcompat/app/g;)V

    invoke-static {v0, v1}, Landroidx/core/view/v;->z0(Landroid/view/View;Landroidx/core/view/q;)V

    goto :goto_10b

    .line 42
    :cond_fc
    instance-of v1, v0, Landroidx/appcompat/widget/e0;

    if-eqz v1, :cond_10b

    .line 43
    move-object v1, v0

    check-cast v1, Landroidx/appcompat/widget/e0;

    new-instance v3, Landroidx/appcompat/app/g$d;

    invoke-direct {v3, p0}, Landroidx/appcompat/app/g$d;-><init>(Landroidx/appcompat/app/g;)V

    invoke-interface {v1, v3}, Landroidx/appcompat/widget/e0;->setOnFitSystemWindowsListener(Landroidx/appcompat/widget/e0$a;)V

    .line 44
    :cond_10b
    :goto_10b
    iget-object v1, p0, Landroidx/appcompat/app/g;->m:Landroidx/appcompat/widget/a0;

    if-nez v1, :cond_119

    .line 45
    sget v1, Lc/a/f;->title:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroidx/appcompat/app/g;->x:Landroid/widget/TextView;

    .line 46
    :cond_119
    invoke-static {v0}, Landroidx/appcompat/widget/a1;->c(Landroid/view/View;)V

    .line 47
    sget v1, Lc/a/f;->action_bar_activity_content:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/ContentFrameLayout;

    .line 48
    iget-object v3, p0, Landroidx/appcompat/app/g;->g:Landroid/view/Window;

    const v4, 0x1020002

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_152

    .line 49
    :goto_131
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-lez v6, :cond_142

    .line 50
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 51
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 52
    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_131

    :cond_142
    const/4 v2, -0x1

    .line 53
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setId(I)V

    .line 54
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setId(I)V

    .line 55
    instance-of v2, v3, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_152

    .line 56
    check-cast v3, Landroid/widget/FrameLayout;

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 57
    :cond_152
    iget-object v2, p0, Landroidx/appcompat/app/g;->g:Landroid/view/Window;

    invoke-virtual {v2, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 58
    new-instance v2, Landroidx/appcompat/app/g$e;

    invoke-direct {v2, p0}, Landroidx/appcompat/app/g$e;-><init>(Landroidx/appcompat/app/g;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ContentFrameLayout;->setAttachListener(Landroidx/appcompat/widget/ContentFrameLayout$a;)V

    return-object v0

    .line 59
    :cond_160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroidx/appcompat/app/g;->B:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionBarOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroidx/appcompat/app/g;->C:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", android:windowIsFloating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroidx/appcompat/app/g;->E:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionModeOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroidx/appcompat/app/g;->D:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowNoTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroidx/appcompat/app/g;->F:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1a6
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_1b2

    :goto_1b1
    throw v0

    :goto_1b2
    goto :goto_1b1
.end method

.method private c0()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/g;->v:Z

    if-nez v0, :cond_50

    .line 2
    invoke-direct {p0}, Landroidx/appcompat/app/g;->W()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/app/g;->w:Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/app/g;->k0()Ljava/lang/CharSequence;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 5
    iget-object v1, p0, Landroidx/appcompat/app/g;->m:Landroidx/appcompat/widget/a0;

    if-eqz v1, :cond_1c

    .line 6
    invoke-interface {v1, v0}, Landroidx/appcompat/widget/a0;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_31

    .line 7
    :cond_1c
    invoke-virtual {p0}, Landroidx/appcompat/app/g;->E0()Landroidx/appcompat/app/a;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 8
    invoke-virtual {p0}, Landroidx/appcompat/app/g;->E0()Landroidx/appcompat/app/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/a;->v(Ljava/lang/CharSequence;)V

    goto :goto_31

    .line 9
    :cond_2a
    iget-object v1, p0, Landroidx/appcompat/app/g;->x:Landroid/widget/TextView;

    if-eqz v1, :cond_31

    .line 10
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :cond_31
    :goto_31
    invoke-direct {p0}, Landroidx/appcompat/app/g;->N()V

    .line 12
    iget-object v0, p0, Landroidx/appcompat/app/g;->w:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/g;->C0(Landroid/view/ViewGroup;)V

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Landroidx/appcompat/app/g;->v:Z

    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0, v0}, Landroidx/appcompat/app/g;->j0(IZ)Landroidx/appcompat/app/g$u;

    move-result-object v0

    .line 15
    iget-boolean v1, p0, Landroidx/appcompat/app/g;->N:Z

    if-nez v1, :cond_50

    if-eqz v0, :cond_4b

    iget-object v0, v0, Landroidx/appcompat/app/g$u;->j:Landroidx/appcompat/view/menu/g;

    if-nez v0, :cond_50

    :cond_4b
    const/16 v0, 0x6c

    .line 16
    invoke-direct {p0, v0}, Landroidx/appcompat/app/g;->q0(I)V

    :cond_50
    return-void
.end method

.method private d0()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g;->g:Landroid/view/Window;

    if-nez v0, :cond_13

    iget-object v0, p0, Landroidx/appcompat/app/g;->e:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_13

    .line 2
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/appcompat/app/g;->O(Landroid/view/Window;)V

    .line 3
    :cond_13
    iget-object v0, p0, Landroidx/appcompat/app/g;->g:Landroid/view/Window;

    if-eqz v0, :cond_18

    return-void

    .line 4
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "We have not been given a Window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static f0(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .registers 6

    .line 1
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    if-eqz p1, :cond_104

    .line 3
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_104

    .line 4
    :cond_12
    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1c

    .line 5
    iput v2, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 6
    :cond_1c
    iget v1, p0, Landroid/content/res/Configuration;->mcc:I

    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    if-eq v1, v2, :cond_24

    .line 7
    iput v2, v0, Landroid/content/res/Configuration;->mcc:I

    .line 8
    :cond_24
    iget v1, p0, Landroid/content/res/Configuration;->mnc:I

    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    if-eq v1, v2, :cond_2c

    .line 9
    iput v2, v0, Landroid/content/res/Configuration;->mnc:I

    .line 10
    :cond_2c
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_36

    .line 11
    invoke-static {p0, p1, v0}, Landroidx/appcompat/app/g$m;->a(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    goto :goto_44

    .line 12
    :cond_36
    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1, v2}, Lc/g/j/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    .line 13
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 14
    :cond_44
    :goto_44
    iget v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v1, v2, :cond_4c

    .line 15
    iput v2, v0, Landroid/content/res/Configuration;->touchscreen:I

    .line 16
    :cond_4c
    iget v1, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v2, :cond_54

    .line 17
    iput v2, v0, Landroid/content/res/Configuration;->keyboard:I

    .line 18
    :cond_54
    iget v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v1, v2, :cond_5c

    .line 19
    iput v2, v0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 20
    :cond_5c
    iget v1, p0, Landroid/content/res/Configuration;->navigation:I

    iget v2, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v1, v2, :cond_64

    .line 21
    iput v2, v0, Landroid/content/res/Configuration;->navigation:I

    .line 22
    :cond_64
    iget v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v1, v2, :cond_6c

    .line 23
    iput v2, v0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 24
    :cond_6c
    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_74

    .line 25
    iput v2, v0, Landroid/content/res/Configuration;->orientation:I

    .line 26
    :cond_74
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v2, 0xf

    if-eq v1, v3, :cond_85

    .line 27
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 28
    :cond_85
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0xc0

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v3, v2, 0xc0

    if-eq v1, v3, :cond_96

    .line 29
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0xc0

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 30
    :cond_96
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0x30

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v2, 0x30

    if-eq v1, v3, :cond_a7

    .line 31
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0x30

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 32
    :cond_a7
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0x300

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v3, v2, 0x300

    if-eq v1, v3, :cond_b8

    .line 33
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0x300

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 34
    :cond_b8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_c1

    .line 35
    invoke-static {p0, p1, v0}, Landroidx/appcompat/app/g$n;->a(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 36
    :cond_c1
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v2, 0xf

    if-eq v1, v3, :cond_d2

    .line 37
    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 38
    :cond_d2
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v2, 0x30

    if-eq v1, v3, :cond_e3

    .line 39
    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 40
    :cond_e3
    iget v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v1, v2, :cond_eb

    .line 41
    iput v2, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 42
    :cond_eb
    iget v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v1, v2, :cond_f3

    .line 43
    iput v2, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 44
    :cond_f3
    iget v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v1, v2, :cond_fb

    .line 45
    iput v2, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 46
    :cond_fb
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_104

    .line 47
    invoke-static {p0, p1, v0}, Landroidx/appcompat/app/g$k;->b(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    :cond_104
    :goto_104
    return-object v0
.end method

.method private h0(Landroid/content/Context;)Landroidx/appcompat/app/g$q;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g;->T:Landroidx/appcompat/app/g$q;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Landroidx/appcompat/app/g$p;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/app/g$p;-><init>(Landroidx/appcompat/app/g;Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/app/g;->T:Landroidx/appcompat/app/g$q;

    .line 3
    :cond_b
    iget-object p1, p0, Landroidx/appcompat/app/g;->T:Landroidx/appcompat/app/g$q;

    return-object p1
.end method

.method private i0(Landroid/content/Context;)Landroidx/appcompat/app/g$q;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g;->S:Landroidx/appcompat/app/g$q;

    if-nez v0, :cond_f

    .line 2
    new-instance v0, Landroidx/appcompat/app/g$r;

    .line 3
    invoke-static {p1}, Landroidx/appcompat/app/n;->a(Landroid/content/Context;)Landroidx/appcompat/app/n;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/app/g$r;-><init>(Landroidx/appcompat/app/g;Landroidx/appcompat/app/n;)V

    iput-object v0, p0, Landroidx/appcompat/app/g;->S:Landroidx/appcompat/app/g$q;

    .line 4
    :cond_f
    iget-object p1, p0, Landroidx/appcompat/app/g;->S:Landroidx/appcompat/app/g$q;

    return-object p1
.end method

.method private m0()V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/g;->c0()V

    .line 2
    iget-boolean v0, p0, Landroidx/appcompat/app/g;->B:Z

    if-eqz v0, :cond_38

    iget-object v0, p0, Landroidx/appcompat/app/g;->j:Landroidx/appcompat/app/a;

    if-eqz v0, :cond_c

    goto :goto_38

    .line 3
    :cond_c
    iget-object v0, p0, Landroidx/appcompat/app/g;->e:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_20

    .line 4
    new-instance v0, Landroidx/appcompat/app/o;

    iget-object v1, p0, Landroidx/appcompat/app/g;->e:Ljava/lang/Object;

    check-cast v1, Landroid/app/Activity;

    iget-boolean v2, p0, Landroidx/appcompat/app/g;->C:Z

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/app/o;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Landroidx/appcompat/app/g;->j:Landroidx/appcompat/app/a;

    goto :goto_2f

    .line 5
    :cond_20
    instance-of v0, v0, Landroid/app/Dialog;

    if-eqz v0, :cond_2f

    .line 6
    new-instance v0, Landroidx/appcompat/app/o;

    iget-object v1, p0, Landroidx/appcompat/app/g;->e:Ljava/lang/Object;

    check-cast v1, Landroid/app/Dialog;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/o;-><init>(Landroid/app/Dialog;)V

    iput-object v0, p0, Landroidx/appcompat/app/g;->j:Landroidx/appcompat/app/a;

    .line 7
    :cond_2f
    :goto_2f
    iget-object v0, p0, Landroidx/appcompat/app/g;->j:Landroidx/appcompat/app/a;

    if-eqz v0, :cond_38

    .line 8
    iget-boolean v1, p0, Landroidx/appcompat/app/g;->X:Z

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->s(Z)V

    :cond_38
    :goto_38
    return-void
.end method

.method private n0(Landroidx/appcompat/app/g$u;)Z
    .registers 5

    .line 1
    iget-object v0, p1, Landroidx/appcompat/app/g$u;->i:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 2
    iput-object v0, p1, Landroidx/appcompat/app/g$u;->h:Landroid/view/View;

    return v1

    .line 3
    :cond_8
    iget-object v0, p1, Landroidx/appcompat/app/g$u;->j:Landroidx/appcompat/view/menu/g;

    const/4 v2, 0x0

    if-nez v0, :cond_e

    return v2

    .line 4
    :cond_e
    iget-object v0, p0, Landroidx/appcompat/app/g;->o:Landroidx/appcompat/app/g$v;

    if-nez v0, :cond_19

    .line 5
    new-instance v0, Landroidx/appcompat/app/g$v;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/g$v;-><init>(Landroidx/appcompat/app/g;)V

    iput-object v0, p0, Landroidx/appcompat/app/g;->o:Landroidx/appcompat/app/g$v;

    .line 6
    :cond_19
    iget-object v0, p0, Landroidx/appcompat/app/g;->o:Landroidx/appcompat/app/g$v;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/g$u;->a(Landroidx/appcompat/view/menu/m$a;)Landroidx/appcompat/view/menu/n;

    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    iput-object v0, p1, Landroidx/appcompat/app/g$u;->h:Landroid/view/View;

    if-eqz v0, :cond_26

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    :goto_27
    return v1
.end method

.method private o0(Landroidx/appcompat/app/g$u;)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/g;->g0()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/g$u;->d(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroidx/appcompat/app/g$t;

    iget-object v1, p1, Landroidx/appcompat/app/g$u;->l:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/app/g$t;-><init>(Landroidx/appcompat/app/g;Landroid/content/Context;)V

    iput-object v0, p1, Landroidx/appcompat/app/g$u;->g:Landroid/view/ViewGroup;

    const/16 v0, 0x51

    .line 3
    iput v0, p1, Landroidx/appcompat/app/g$u;->c:I

    const/4 p1, 0x1

    return p1
.end method

.method private p0(Landroidx/appcompat/app/g$u;)Z
    .registers 8

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g;->f:Landroid/content/Context;

    .line 2
    iget v1, p1, Landroidx/appcompat/app/g$u;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_b

    const/16 v3, 0x6c

    if-ne v1, v3, :cond_63

    :cond_b
    iget-object v1, p0, Landroidx/appcompat/app/g;->m:Landroidx/appcompat/widget/a0;

    if-eqz v1, :cond_63

    .line 3
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 5
    sget v4, Lc/a/a;->actionBarTheme:I

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    const/4 v4, 0x0

    .line 6
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_38

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 8
    invoke-virtual {v4, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 9
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 10
    sget v5, Lc/a/a;->actionBarWidgetTheme:I

    invoke-virtual {v4, v5, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_3d

    .line 11
    :cond_38
    sget v5, Lc/a/a;->actionBarWidgetTheme:I

    invoke-virtual {v3, v5, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 12
    :goto_3d
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_53

    if-nez v4, :cond_4e

    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 14
    invoke-virtual {v4, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 15
    :cond_4e
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_53
    if-eqz v4, :cond_63

    .line 16
    new-instance v1, Lc/a/o/d;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Lc/a/o/d;-><init>(Landroid/content/Context;I)V

    .line 17
    invoke-virtual {v1}, Lc/a/o/d;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v0, v1

    .line 18
    :cond_63
    new-instance v1, Landroidx/appcompat/view/menu/g;

    invoke-direct {v1, v0}, Landroidx/appcompat/view/menu/g;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-virtual {v1, p0}, Landroidx/appcompat/view/menu/g;->R(Landroidx/appcompat/view/menu/g$a;)V

    .line 20
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/g$u;->c(Landroidx/appcompat/view/menu/g;)V

    return v2
.end method

.method private q0(I)V
    .registers 4

    .line 1
    iget v0, p0, Landroidx/appcompat/app/g;->V:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/appcompat/app/g;->V:I

    .line 2
    iget-boolean p1, p0, Landroidx/appcompat/app/g;->U:Z

    if-nez p1, :cond_19

    .line 3
    iget-object p1, p0, Landroidx/appcompat/app/g;->g:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/app/g;->W:Ljava/lang/Runnable;

    invoke-static {p1, v0}, Landroidx/core/view/v;->g0(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 4
    iput-boolean v1, p0, Landroidx/appcompat/app/g;->U:Z

    :cond_19
    return-void
.end method

.method private r0()Z
    .registers 8

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/g;->R:Z

    const/4 v1, 0x1

    if-nez v0, :cond_49

    iget-object v0, p0, Landroidx/appcompat/app/g;->e:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_49

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/g;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_15

    return v2

    .line 3
    :cond_15
    :try_start_15
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_1e

    const/high16 v3, 0x100c0000

    goto :goto_28

    .line 4
    :cond_1e
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_27

    const/high16 v3, 0xc0000

    goto :goto_28

    :cond_27
    const/4 v3, 0x0

    .line 5
    :goto_28
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p0, Landroidx/appcompat/app/g;->f:Landroid/content/Context;

    iget-object v6, p0, Landroidx/appcompat/app/g;->e:Ljava/lang/Object;

    .line 6
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7
    invoke-virtual {v0, v4, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 8
    iget v0, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_43

    const/4 v0, 0x1

    goto :goto_44

    :cond_43
    const/4 v0, 0x0

    :goto_44
    iput-boolean v0, p0, Landroidx/appcompat/app/g;->Q:Z
    :try_end_46
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15 .. :try_end_46} :catch_47

    goto :goto_49

    .line 9
    :catch_47
    iput-boolean v2, p0, Landroidx/appcompat/app/g;->Q:Z

    .line 10
    :cond_49
    :goto_49
    iput-boolean v1, p0, Landroidx/appcompat/app/g;->R:Z

    .line 11
    iget-boolean v0, p0, Landroidx/appcompat/app/g;->Q:Z

    return v0
.end method

.method private w0(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/g;->j0(IZ)Landroidx/appcompat/app/g$u;

    move-result-object p1

    .line 3
    iget-boolean v0, p1, Landroidx/appcompat/app/g$u;->o:Z

    if-nez v0, :cond_14

    .line 4
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/g;->G0(Landroidx/appcompat/app/g$u;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method private z0(ILandroid/view/KeyEvent;)Z
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g;->p:Lc/a/o/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/g;->j0(IZ)Landroidx/appcompat/app/g$u;

    move-result-object v2

    if-nez p1, :cond_43

    .line 3
    iget-object p1, p0, Landroidx/appcompat/app/g;->m:Landroidx/appcompat/widget/a0;

    if-eqz p1, :cond_43

    .line 4
    invoke-interface {p1}, Landroidx/appcompat/widget/a0;->g()Z

    move-result p1

    if-eqz p1, :cond_43

    iget-object p1, p0, Landroidx/appcompat/app/g;->f:Landroid/content/Context;

    .line 5
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p1

    if-nez p1, :cond_43

    .line 6
    iget-object p1, p0, Landroidx/appcompat/app/g;->m:Landroidx/appcompat/widget/a0;

    invoke-interface {p1}, Landroidx/appcompat/widget/a0;->c()Z

    move-result p1

    if-nez p1, :cond_3c

    .line 7
    iget-boolean p1, p0, Landroidx/appcompat/app/g;->N:Z

    if-nez p1, :cond_62

    invoke-direct {p0, v2, p2}, Landroidx/appcompat/app/g;->G0(Landroidx/appcompat/app/g$u;Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_62

    .line 8
    iget-object p1, p0, Landroidx/appcompat/app/g;->m:Landroidx/appcompat/widget/a0;

    invoke-interface {p1}, Landroidx/appcompat/widget/a0;->e()Z

    move-result v0

    goto :goto_6a

    .line 9
    :cond_3c
    iget-object p1, p0, Landroidx/appcompat/app/g;->m:Landroidx/appcompat/widget/a0;

    invoke-interface {p1}, Landroidx/appcompat/widget/a0;->d()Z

    move-result v0

    goto :goto_6a

    .line 10
    :cond_43
    iget-boolean p1, v2, Landroidx/appcompat/app/g$u;->o:Z

    if-nez p1, :cond_64

    iget-boolean p1, v2, Landroidx/appcompat/app/g$u;->n:Z

    if-eqz p1, :cond_4c

    goto :goto_64

    .line 11
    :cond_4c
    iget-boolean p1, v2, Landroidx/appcompat/app/g$u;->m:Z

    if-eqz p1, :cond_62

    .line 12
    iget-boolean p1, v2, Landroidx/appcompat/app/g$u;->r:Z

    if-eqz p1, :cond_5b

    .line 13
    iput-boolean v1, v2, Landroidx/appcompat/app/g$u;->m:Z

    .line 14
    invoke-direct {p0, v2, p2}, Landroidx/appcompat/app/g;->G0(Landroidx/appcompat/app/g$u;Landroid/view/KeyEvent;)Z

    move-result p1

    goto :goto_5c

    :cond_5b
    const/4 p1, 0x1

    :goto_5c
    if-eqz p1, :cond_62

    .line 15
    invoke-direct {p0, v2, p2}, Landroidx/appcompat/app/g;->D0(Landroidx/appcompat/app/g$u;Landroid/view/KeyEvent;)V

    goto :goto_6a

    :cond_62
    const/4 v0, 0x0

    goto :goto_6a

    .line 16
    :cond_64
    :goto_64
    iget-boolean p1, v2, Landroidx/appcompat/app/g$u;->o:Z

    .line 17
    invoke-virtual {p0, v2, v0}, Landroidx/appcompat/app/g;->U(Landroidx/appcompat/app/g$u;Z)V

    move v0, p1

    :goto_6a
    if-eqz v0, :cond_7f

    .line 18
    iget-object p1, p0, Landroidx/appcompat/app/g;->f:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "audio"

    .line 19
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-eqz p1, :cond_7f

    .line 20
    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    :cond_7f
    return v0
.end method


# virtual methods
.method A0(I)V
    .registers 3

    const/16 v0, 0x6c

    if-ne p1, v0, :cond_e

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/g;->p()Landroidx/appcompat/app/a;

    move-result-object p1

    if-eqz p1, :cond_e

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a;->i(Z)V

    :cond_e
    return-void
.end method

.method B0(I)V
    .registers 4

    const/4 v0, 0x0

    const/16 v1, 0x6c

    if-ne p1, v1, :cond_f

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/g;->p()Landroidx/appcompat/app/a;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 2
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a;->i(Z)V

    goto :goto_1d

    :cond_f
    if-nez p1, :cond_1d

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/app/g;->j0(IZ)Landroidx/appcompat/app/g$u;

    move-result-object p1

    .line 4
    iget-boolean v1, p1, Landroidx/appcompat/app/g$u;->o:Z

    if-eqz v1, :cond_1d

    .line 5
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/g;->U(Landroidx/appcompat/app/g$u;Z)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public C(I)Z
    .registers 6

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/app/g;->I0(I)I

    move-result p1

    .line 2
    iget-boolean v0, p0, Landroidx/appcompat/app/g;->F:Z

    const/4 v1, 0x0

    const/16 v2, 0x6c

    if-eqz v0, :cond_e

    if-ne p1, v2, :cond_e

    return v1

    .line 3
    :cond_e
    iget-boolean v0, p0, Landroidx/appcompat/app/g;->B:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_17

    if-ne p1, v3, :cond_17

    .line 4
    iput-boolean v1, p0, Landroidx/appcompat/app/g;->B:Z

    :cond_17
    if-eq p1, v3, :cond_4e

    const/4 v0, 0x2

    if-eq p1, v0, :cond_48

    const/4 v0, 0x5

    if-eq p1, v0, :cond_42

    const/16 v0, 0xa

    if-eq p1, v0, :cond_3c

    if-eq p1, v2, :cond_36

    const/16 v0, 0x6d

    if-eq p1, v0, :cond_30

    .line 5
    iget-object v0, p0, Landroidx/appcompat/app/g;->g:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result p1

    return p1

    .line 6
    :cond_30
    invoke-direct {p0}, Landroidx/appcompat/app/g;->M0()V

    .line 7
    iput-boolean v3, p0, Landroidx/appcompat/app/g;->C:Z

    return v3

    .line 8
    :cond_36
    invoke-direct {p0}, Landroidx/appcompat/app/g;->M0()V

    .line 9
    iput-boolean v3, p0, Landroidx/appcompat/app/g;->B:Z

    return v3

    .line 10
    :cond_3c
    invoke-direct {p0}, Landroidx/appcompat/app/g;->M0()V

    .line 11
    iput-boolean v3, p0, Landroidx/appcompat/app/g;->D:Z

    return v3

    .line 12
    :cond_42
    invoke-direct {p0}, Landroidx/appcompat/app/g;->M0()V

    .line 13
    iput-boolean v3, p0, Landroidx/appcompat/app/g;->A:Z

    return v3

    .line 14
    :cond_48
    invoke-direct {p0}, Landroidx/appcompat/app/g;->M0()V

    .line 15
    iput-boolean v3, p0, Landroidx/appcompat/app/g;->z:Z

    return v3

    .line 16
    :cond_4e
    invoke-direct {p0}, Landroidx/appcompat/app/g;->M0()V

    .line 17
    iput-boolean v3, p0, Landroidx/appcompat/app/g;->F:Z

    return v3
.end method

.method C0(Landroid/view/ViewGroup;)V
    .registers 2

    return-void
.end method

.method public E(I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/g;->c0()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/g;->w:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    iget-object v1, p0, Landroidx/appcompat/app/g;->f:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 5
    iget-object p1, p0, Landroidx/appcompat/app/g;->h:Landroidx/appcompat/app/g$o;

    invoke-virtual {p1}, Lc/a/o/i;->a()Landroid/view/Window$Callback;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method final E0()Landroidx/appcompat/app/a;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g;->j:Landroidx/appcompat/app/a;

    return-object v0
.end method

.method public F(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/g;->c0()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/g;->w:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 5
    iget-object p1, p0, Landroidx/appcompat/app/g;->h:Landroidx/appcompat/app/g$o;

    invoke-virtual {p1}, Lc/a/o/i;->a()Landroid/view/Window$Callback;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public G(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/g;->c0()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/g;->w:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget-object p1, p0, Landroidx/appcompat/app/g;->h:Landroidx/appcompat/app/g$o;

    invoke-virtual {p1}, Lc/a/o/i;->a()Landroid/view/Window$Callback;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public I(Landroidx/appcompat/widget/Toolbar;)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g;->e:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_7

    return-void

    .line 2
    :cond_7
    invoke-virtual {p0}, Landroidx/appcompat/app/g;->p()Landroidx/appcompat/app/a;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroidx/appcompat/app/o;

    if-nez v1, :cond_3d

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Landroidx/appcompat/app/g;->k:Landroid/view/MenuInflater;

    if-eqz v0, :cond_17

    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/app/a;->o()V

    :cond_17
    if-eqz p1, :cond_30

    .line 6
    new-instance v0, Landroidx/appcompat/app/l;

    invoke-virtual {p0}, Landroidx/appcompat/app/g;->k0()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/app/g;->h:Landroidx/appcompat/app/g$o;

    invoke-direct {v0, p1, v1, v2}, Landroidx/appcompat/app/l;-><init>(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V

    .line 7
    iput-object v0, p0, Landroidx/appcompat/app/g;->j:Landroidx/appcompat/app/a;

    .line 8
    iget-object p1, p0, Landroidx/appcompat/app/g;->g:Landroid/view/Window;

    invoke-virtual {v0}, Landroidx/appcompat/app/l;->y()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    goto :goto_39

    .line 9
    :cond_30
    iput-object v1, p0, Landroidx/appcompat/app/g;->j:Landroidx/appcompat/app/a;

    .line 10
    iget-object p1, p0, Landroidx/appcompat/app/g;->g:Landroid/view/Window;

    iget-object v0, p0, Landroidx/appcompat/app/g;->h:Landroidx/appcompat/app/g$o;

    invoke-virtual {p1, v0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 11
    :goto_39
    invoke-virtual {p0}, Landroidx/appcompat/app/g;->r()V

    return-void

    .line 12
    :cond_3d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public J(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/appcompat/app/g;->P:I

    return-void
.end method

.method final J0()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/g;->v:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroidx/appcompat/app/g;->w:Landroid/view/ViewGroup;

    if-eqz v0, :cond_10

    invoke-static {v0}, Landroidx/core/view/v;->T(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public final K(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/g;->l:Ljava/lang/CharSequence;

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/g;->m:Landroidx/appcompat/widget/a0;

    if-eqz v0, :cond_a

    .line 3
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/a0;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_1f

    .line 4
    :cond_a
    invoke-virtual {p0}, Landroidx/appcompat/app/g;->E0()Landroidx/appcompat/app/a;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/app/g;->E0()Landroidx/appcompat/app/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/a;->v(Ljava/lang/CharSequence;)V

    goto :goto_1f

    .line 6
    :cond_18
    iget-object v0, p0, Landroidx/appcompat/app/g;->x:Landroid/widget/TextView;

    if-eqz v0, :cond_1f

    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method public L(Lc/a/o/b$a;)Lc/a/o/b;
    .registers 4

    if-eqz p1, :cond_30

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g;->p:Lc/a/o/b;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Lc/a/o/b;->c()V

    .line 3
    :cond_9
    new-instance v0, Landroidx/appcompat/app/g$j;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/app/g$j;-><init>(Landroidx/appcompat/app/g;Lc/a/o/b$a;)V

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/g;->p()Landroidx/appcompat/app/a;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 5
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a;->w(Lc/a/o/b$a;)Lc/a/o/b;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/g;->p:Lc/a/o/b;

    if-eqz p1, :cond_23

    .line 6
    iget-object v1, p0, Landroidx/appcompat/app/g;->i:Landroidx/appcompat/app/e;

    if-eqz v1, :cond_23

    .line 7
    invoke-interface {v1, p1}, Landroidx/appcompat/app/e;->onSupportActionModeStarted(Lc/a/o/b;)V

    .line 8
    :cond_23
    iget-object p1, p0, Landroidx/appcompat/app/g;->p:Lc/a/o/b;

    if-nez p1, :cond_2d

    .line 9
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/g;->L0(Lc/a/o/b$a;)Lc/a/o/b;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/g;->p:Lc/a/o/b;

    .line 10
    :cond_2d
    iget-object p1, p0, Landroidx/appcompat/app/g;->p:Lc/a/o/b;

    return-object p1

    .line 11
    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ActionMode callback can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method L0(Lc/a/o/b$a;)Lc/a/o/b;
    .registers 9

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/g;->b0()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/g;->p:Lc/a/o/b;

    if-eqz v0, :cond_a

    .line 3
    invoke-virtual {v0}, Lc/a/o/b;->c()V

    .line 4
    :cond_a
    instance-of v0, p1, Landroidx/appcompat/app/g$j;

    if-nez v0, :cond_14

    .line 5
    new-instance v0, Landroidx/appcompat/app/g$j;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/app/g$j;-><init>(Landroidx/appcompat/app/g;Lc/a/o/b$a;)V

    move-object p1, v0

    .line 6
    :cond_14
    iget-object v0, p0, Landroidx/appcompat/app/g;->i:Landroidx/appcompat/app/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    iget-boolean v2, p0, Landroidx/appcompat/app/g;->N:Z

    if-nez v2, :cond_22

    .line 7
    :try_start_1d
    invoke-interface {v0, p1}, Landroidx/appcompat/app/e;->onWindowStartingSupportActionMode(Lc/a/o/b$a;)Lc/a/o/b;

    move-result-object v0
    :try_end_21
    .catch Ljava/lang/AbstractMethodError; {:try_start_1d .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    :cond_22
    move-object v0, v1

    :goto_23
    if-eqz v0, :cond_29

    .line 8
    iput-object v0, p0, Landroidx/appcompat/app/g;->p:Lc/a/o/b;

    goto/16 :goto_161

    .line 9
    :cond_29
    iget-object v0, p0, Landroidx/appcompat/app/g;->q:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_d4

    .line 10
    iget-boolean v0, p0, Landroidx/appcompat/app/g;->E:Z

    if-eqz v0, :cond_b5

    .line 11
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 12
    iget-object v4, p0, Landroidx/appcompat/app/g;->f:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 13
    sget v5, Lc/a/a;->actionBarTheme:I

    invoke-virtual {v4, v5, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 14
    iget v5, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_68

    .line 15
    iget-object v5, p0, Landroidx/appcompat/app/g;->f:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 16
    invoke-virtual {v5, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 17
    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v4, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 18
    new-instance v4, Lc/a/o/d;

    iget-object v6, p0, Landroidx/appcompat/app/g;->f:Landroid/content/Context;

    invoke-direct {v4, v6, v2}, Lc/a/o/d;-><init>(Landroid/content/Context;I)V

    .line 19
    invoke-virtual {v4}, Lc/a/o/d;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    goto :goto_6a

    .line 20
    :cond_68
    iget-object v4, p0, Landroidx/appcompat/app/g;->f:Landroid/content/Context;

    .line 21
    :goto_6a
    new-instance v5, Landroidx/appcompat/widget/ActionBarContextView;

    invoke-direct {v5, v4}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Landroidx/appcompat/app/g;->q:Landroidx/appcompat/widget/ActionBarContextView;

    .line 22
    new-instance v5, Landroid/widget/PopupWindow;

    sget v6, Lc/a/a;->actionModePopupWindowStyle:I

    invoke-direct {v5, v4, v1, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v5, p0, Landroidx/appcompat/app/g;->r:Landroid/widget/PopupWindow;

    const/4 v6, 0x2

    .line 23
    invoke-static {v5, v6}, Landroidx/core/widget/h;->b(Landroid/widget/PopupWindow;I)V

    .line 24
    iget-object v5, p0, Landroidx/appcompat/app/g;->r:Landroid/widget/PopupWindow;

    iget-object v6, p0, Landroidx/appcompat/app/g;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 25
    iget-object v5, p0, Landroidx/appcompat/app/g;->r:Landroid/widget/PopupWindow;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 26
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    sget v6, Lc/a/a;->actionBarSize:I

    invoke-virtual {v5, v6, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 27
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 28
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 29
    invoke-static {v0, v4}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    .line 30
    iget-object v4, p0, Landroidx/appcompat/app/g;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v4, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setContentHeight(I)V

    .line 31
    iget-object v0, p0, Landroidx/appcompat/app/g;->r:Landroid/widget/PopupWindow;

    const/4 v4, -0x2

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 32
    new-instance v0, Landroidx/appcompat/app/g$f;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/g$f;-><init>(Landroidx/appcompat/app/g;)V

    iput-object v0, p0, Landroidx/appcompat/app/g;->s:Ljava/lang/Runnable;

    goto :goto_d4

    .line 33
    :cond_b5
    iget-object v0, p0, Landroidx/appcompat/app/g;->w:Landroid/view/ViewGroup;

    sget v4, Lc/a/f;->action_mode_bar_stub:I

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ViewStubCompat;

    if-eqz v0, :cond_d4

    .line 34
    invoke-virtual {p0}, Landroidx/appcompat/app/g;->g0()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 35
    invoke-virtual {v0}, Landroidx/appcompat/widget/ViewStubCompat;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v0, p0, Landroidx/appcompat/app/g;->q:Landroidx/appcompat/widget/ActionBarContextView;

    .line 36
    :cond_d4
    :goto_d4
    iget-object v0, p0, Landroidx/appcompat/app/g;->q:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v0, :cond_161

    .line 37
    invoke-virtual {p0}, Landroidx/appcompat/app/g;->b0()V

    .line 38
    iget-object v0, p0, Landroidx/appcompat/app/g;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->k()V

    .line 39
    new-instance v0, Lc/a/o/e;

    iget-object v4, p0, Landroidx/appcompat/app/g;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Landroidx/appcompat/app/g;->q:Landroidx/appcompat/widget/ActionBarContextView;

    iget-object v6, p0, Landroidx/appcompat/app/g;->r:Landroid/widget/PopupWindow;

    if-nez v6, :cond_ef

    goto :goto_f0

    :cond_ef
    const/4 v3, 0x0

    :goto_f0
    invoke-direct {v0, v4, v5, p1, v3}, Lc/a/o/e;-><init>(Landroid/content/Context;Landroidx/appcompat/widget/ActionBarContextView;Lc/a/o/b$a;Z)V

    .line 40
    invoke-virtual {v0}, Lc/a/o/e;->e()Landroid/view/Menu;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Lc/a/o/b$a;->c(Lc/a/o/b;Landroid/view/Menu;)Z

    move-result p1

    if-eqz p1, :cond_15f

    .line 41
    invoke-virtual {v0}, Lc/a/o/e;->k()V

    .line 42
    iget-object p1, p0, Landroidx/appcompat/app/g;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->h(Lc/a/o/b;)V

    .line 43
    iput-object v0, p0, Landroidx/appcompat/app/g;->p:Lc/a/o/b;

    .line 44
    invoke-virtual {p0}, Landroidx/appcompat/app/g;->J0()Z

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_129

    .line 45
    iget-object p1, p0, Landroidx/appcompat/app/g;->q:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 46
    iget-object p1, p0, Landroidx/appcompat/app/g;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {p1}, Landroidx/core/view/v;->d(Landroid/view/View;)Landroidx/core/view/z;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/core/view/z;->a(F)Landroidx/core/view/z;

    iput-object p1, p0, Landroidx/appcompat/app/g;->t:Landroidx/core/view/z;

    .line 47
    new-instance v0, Landroidx/appcompat/app/g$g;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/g$g;-><init>(Landroidx/appcompat/app/g;)V

    invoke-virtual {p1, v0}, Landroidx/core/view/z;->f(Landroidx/core/view/a0;)Landroidx/core/view/z;

    goto :goto_14f

    .line 48
    :cond_129
    iget-object p1, p0, Landroidx/appcompat/app/g;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 49
    iget-object p1, p0, Landroidx/appcompat/app/g;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 50
    iget-object p1, p0, Landroidx/appcompat/app/g;->q:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 51
    iget-object p1, p0, Landroidx/appcompat/app/g;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_14f

    .line 52
    iget-object p1, p0, Landroidx/appcompat/app/g;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/v;->l0(Landroid/view/View;)V

    .line 53
    :cond_14f
    :goto_14f
    iget-object p1, p0, Landroidx/appcompat/app/g;->r:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_161

    .line 54
    iget-object p1, p0, Landroidx/appcompat/app/g;->g:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/app/g;->s:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_161

    .line 55
    :cond_15f
    iput-object v1, p0, Landroidx/appcompat/app/g;->p:Lc/a/o/b;

    .line 56
    :cond_161
    :goto_161
    iget-object p1, p0, Landroidx/appcompat/app/g;->p:Lc/a/o/b;

    if-eqz p1, :cond_16c

    iget-object v0, p0, Landroidx/appcompat/app/g;->i:Landroidx/appcompat/app/e;

    if-eqz v0, :cond_16c

    .line 57
    invoke-interface {v0, p1}, Landroidx/appcompat/app/e;->onSupportActionModeStarted(Lc/a/o/b;)V

    .line 58
    :cond_16c
    iget-object p1, p0, Landroidx/appcompat/app/g;->p:Lc/a/o/b;

    return-object p1
.end method

.method Q(ILandroidx/appcompat/app/g$u;Landroid/view/Menu;)V
    .registers 6

    if-nez p3, :cond_11

    if-nez p2, :cond_d

    if-ltz p1, :cond_d

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g;->H:[Landroidx/appcompat/app/g$u;

    array-length v1, v0

    if-ge p1, v1, :cond_d

    .line 2
    aget-object p2, v0, p1

    :cond_d
    if-eqz p2, :cond_11

    .line 3
    iget-object p3, p2, Landroidx/appcompat/app/g$u;->j:Landroidx/appcompat/view/menu/g;

    :cond_11
    if-eqz p2, :cond_18

    .line 4
    iget-boolean p2, p2, Landroidx/appcompat/app/g$u;->o:Z

    if-nez p2, :cond_18

    return-void

    .line 5
    :cond_18
    iget-boolean p2, p0, Landroidx/appcompat/app/g;->N:Z

    if-nez p2, :cond_25

    .line 6
    iget-object p2, p0, Landroidx/appcompat/app/g;->h:Landroidx/appcompat/app/g$o;

    invoke-virtual {p2}, Lc/a/o/i;->a()Landroid/view/Window$Callback;

    move-result-object p2

    invoke-interface {p2, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_25
    return-void
.end method

.method final Q0(Landroidx/core/view/d0;Landroid/graphics/Rect;)I
    .registers 13

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 1
    invoke-virtual {p1}, Landroidx/core/view/d0;->i()I

    move-result v1

    goto :goto_e

    :cond_8
    if-eqz p2, :cond_d

    .line 2
    iget v1, p2, Landroid/graphics/Rect;->top:I

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    .line 3
    :goto_e
    iget-object v2, p0, Landroidx/appcompat/app/g;->q:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v3, 0x8

    if-eqz v2, :cond_111

    .line 4
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_111

    .line 5
    iget-object v2, p0, Landroidx/appcompat/app/g;->q:Landroidx/appcompat/widget/ActionBarContextView;

    .line 6
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 7
    iget-object v4, p0, Landroidx/appcompat/app/g;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->isShown()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_ff

    .line 8
    iget-object v4, p0, Landroidx/appcompat/app/g;->Y:Landroid/graphics/Rect;

    if-nez v4, :cond_3f

    .line 9
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroidx/appcompat/app/g;->Y:Landroid/graphics/Rect;

    .line 10
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroidx/appcompat/app/g;->Z:Landroid/graphics/Rect;

    .line 11
    :cond_3f
    iget-object v4, p0, Landroidx/appcompat/app/g;->Y:Landroid/graphics/Rect;

    .line 12
    iget-object v6, p0, Landroidx/appcompat/app/g;->Z:Landroid/graphics/Rect;

    if-nez p1, :cond_49

    .line 13
    invoke-virtual {v4, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_5c

    .line 14
    :cond_49
    invoke-virtual {p1}, Landroidx/core/view/d0;->g()I

    move-result p2

    .line 15
    invoke-virtual {p1}, Landroidx/core/view/d0;->i()I

    move-result v7

    .line 16
    invoke-virtual {p1}, Landroidx/core/view/d0;->h()I

    move-result v8

    .line 17
    invoke-virtual {p1}, Landroidx/core/view/d0;->f()I

    move-result p1

    .line 18
    invoke-virtual {v4, p2, v7, v8, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 19
    :goto_5c
    iget-object p1, p0, Landroidx/appcompat/app/g;->w:Landroid/view/ViewGroup;

    invoke-static {p1, v4, v6}, Landroidx/appcompat/widget/a1;->a(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 20
    iget p1, v4, Landroid/graphics/Rect;->top:I

    .line 21
    iget p2, v4, Landroid/graphics/Rect;->left:I

    .line 22
    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 23
    iget-object v6, p0, Landroidx/appcompat/app/g;->w:Landroid/view/ViewGroup;

    invoke-static {v6}, Landroidx/core/view/v;->J(Landroid/view/View;)Landroidx/core/view/d0;

    move-result-object v6

    if-nez v6, :cond_71

    const/4 v7, 0x0

    goto :goto_75

    .line 24
    :cond_71
    invoke-virtual {v6}, Landroidx/core/view/d0;->g()I

    move-result v7

    :goto_75
    if-nez v6, :cond_79

    const/4 v6, 0x0

    goto :goto_7d

    .line 25
    :cond_79
    invoke-virtual {v6}, Landroidx/core/view/d0;->h()I

    move-result v6

    .line 26
    :goto_7d
    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v8, p1, :cond_8c

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v8, p2, :cond_8c

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v8, v4, :cond_8a

    goto :goto_8c

    :cond_8a
    const/4 p2, 0x0

    goto :goto_93

    .line 27
    :cond_8c
    :goto_8c
    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 28
    iput p2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 29
    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 p2, 0x1

    :goto_93
    if-lez p1, :cond_bb

    .line 30
    iget-object p1, p0, Landroidx/appcompat/app/g;->y:Landroid/view/View;

    if-nez p1, :cond_bb

    .line 31
    new-instance p1, Landroid/view/View;

    iget-object v4, p0, Landroidx/appcompat/app/g;->f:Landroid/content/Context;

    invoke-direct {p1, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroidx/appcompat/app/g;->y:Landroid/view/View;

    .line 32
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 33
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/16 v8, 0x33

    const/4 v9, -0x1

    invoke-direct {p1, v9, v4, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 34
    iput v7, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 35
    iput v6, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 36
    iget-object v4, p0, Landroidx/appcompat/app/g;->w:Landroid/view/ViewGroup;

    iget-object v6, p0, Landroidx/appcompat/app/g;->y:Landroid/view/View;

    invoke-virtual {v4, v6, v9, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_e0

    .line 37
    :cond_bb
    iget-object p1, p0, Landroidx/appcompat/app/g;->y:Landroid/view/View;

    if-eqz p1, :cond_e0

    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 39
    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v4, v8, :cond_d3

    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v4, v7, :cond_d3

    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v4, v6, :cond_e0

    .line 40
    :cond_d3
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 41
    iput v7, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 42
    iput v6, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 43
    iget-object v4, p0, Landroidx/appcompat/app/g;->y:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    :cond_e0
    :goto_e0
    iget-object p1, p0, Landroidx/appcompat/app/g;->y:Landroid/view/View;

    if-eqz p1, :cond_e5

    goto :goto_e6

    :cond_e5
    const/4 v5, 0x0

    :goto_e6
    if-eqz v5, :cond_f5

    .line 45
    iget-object p1, p0, Landroidx/appcompat/app/g;->y:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_f5

    .line 46
    iget-object p1, p0, Landroidx/appcompat/app/g;->y:Landroid/view/View;

    invoke-direct {p0, p1}, Landroidx/appcompat/app/g;->R0(Landroid/view/View;)V

    .line 47
    :cond_f5
    iget-boolean p1, p0, Landroidx/appcompat/app/g;->D:Z

    if-nez p1, :cond_fc

    if-eqz v5, :cond_fc

    const/4 v1, 0x0

    :cond_fc
    move p1, v5

    move v5, p2

    goto :goto_109

    .line 48
    :cond_ff
    iget p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz p1, :cond_107

    .line 49
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 p1, 0x0

    goto :goto_109

    :cond_107
    const/4 p1, 0x0

    const/4 v5, 0x0

    :goto_109
    if-eqz v5, :cond_112

    .line 50
    iget-object p2, p0, Landroidx/appcompat/app/g;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_112

    :cond_111
    const/4 p1, 0x0

    .line 51
    :cond_112
    :goto_112
    iget-object p2, p0, Landroidx/appcompat/app/g;->y:Landroid/view/View;

    if-eqz p2, :cond_11e

    if-eqz p1, :cond_119

    goto :goto_11b

    :cond_119
    const/16 v0, 0x8

    .line 52
    :goto_11b
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_11e
    return v1
.end method

.method R(Landroidx/appcompat/view/menu/g;)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/g;->G:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/appcompat/app/g;->G:Z

    .line 3
    iget-object v0, p0, Landroidx/appcompat/app/g;->m:Landroidx/appcompat/widget/a0;

    invoke-interface {v0}, Landroidx/appcompat/widget/a0;->l()V

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/g;->l0()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 5
    iget-boolean v1, p0, Landroidx/appcompat/app/g;->N:Z

    if-nez v1, :cond_1c

    const/16 v1, 0x6c

    .line 6
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_1c
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Landroidx/appcompat/app/g;->G:Z

    return-void
.end method

.method T(I)V
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/g;->j0(IZ)Landroidx/appcompat/app/g$u;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/g;->U(Landroidx/appcompat/app/g$u;Z)V

    return-void
.end method

.method U(Landroidx/appcompat/app/g$u;Z)V
    .registers 6

    if-eqz p2, :cond_16

    .line 1
    iget v0, p1, Landroidx/appcompat/app/g$u;->a:I

    if-nez v0, :cond_16

    iget-object v0, p0, Landroidx/appcompat/app/g;->m:Landroidx/appcompat/widget/a0;

    if-eqz v0, :cond_16

    .line 2
    invoke-interface {v0}, Landroidx/appcompat/widget/a0;->c()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3
    iget-object p1, p1, Landroidx/appcompat/app/g$u;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/g;->R(Landroidx/appcompat/view/menu/g;)V

    return-void

    .line 4
    :cond_16
    iget-object v0, p0, Landroidx/appcompat/app/g;->f:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    .line 5
    iget-boolean v2, p1, Landroidx/appcompat/app/g$u;->o:Z

    if-eqz v2, :cond_35

    iget-object v2, p1, Landroidx/appcompat/app/g$u;->g:Landroid/view/ViewGroup;

    if-eqz v2, :cond_35

    .line 6
    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    if-eqz p2, :cond_35

    .line 7
    iget p2, p1, Landroidx/appcompat/app/g$u;->a:I

    invoke-virtual {p0, p2, p1, v1}, Landroidx/appcompat/app/g;->Q(ILandroidx/appcompat/app/g$u;Landroid/view/Menu;)V

    :cond_35
    const/4 p2, 0x0

    .line 8
    iput-boolean p2, p1, Landroidx/appcompat/app/g$u;->m:Z

    .line 9
    iput-boolean p2, p1, Landroidx/appcompat/app/g$u;->n:Z

    .line 10
    iput-boolean p2, p1, Landroidx/appcompat/app/g$u;->o:Z

    .line 11
    iput-object v1, p1, Landroidx/appcompat/app/g$u;->h:Landroid/view/View;

    const/4 p2, 0x1

    .line 12
    iput-boolean p2, p1, Landroidx/appcompat/app/g$u;->q:Z

    .line 13
    iget-object p2, p0, Landroidx/appcompat/app/g;->I:Landroidx/appcompat/app/g$u;

    if-ne p2, p1, :cond_47

    .line 14
    iput-object v1, p0, Landroidx/appcompat/app/g;->I:Landroidx/appcompat/app/g$u;

    :cond_47
    return-void
.end method

.method public X(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 16

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g;->a0:Landroidx/appcompat/app/i;

    const/4 v1, 0x0

    if-nez v0, :cond_4e

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/g;->f:Landroid/content/Context;

    sget-object v2, Lc/a/j;->AppCompatTheme:[I

    invoke-virtual {v0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3
    sget v2, Lc/a/j;->AppCompatTheme_viewInflaterClass:I

    .line 4
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 5
    new-instance v0, Landroidx/appcompat/app/i;

    invoke-direct {v0}, Landroidx/appcompat/app/i;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/g;->a0:Landroidx/appcompat/app/i;

    goto :goto_4e

    .line 6
    :cond_1d
    :try_start_1d
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Class;

    .line 7
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    .line 8
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/app/i;

    iput-object v2, p0, Landroidx/appcompat/app/g;->a0:Landroidx/appcompat/app/i;
    :try_end_31
    .catchall {:try_start_1d .. :try_end_31} :catchall_32

    goto :goto_4e

    .line 9
    :catchall_32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to instantiate custom view inflater "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Falling back to default."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 10
    new-instance v0, Landroidx/appcompat/app/i;

    invoke-direct {v0}, Landroidx/appcompat/app/i;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/g;->a0:Landroidx/appcompat/app/i;

    .line 11
    :cond_4e
    :goto_4e
    sget-boolean v0, Landroidx/appcompat/app/g;->d0:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_81

    .line 12
    iget-object v0, p0, Landroidx/appcompat/app/g;->b0:Landroidx/appcompat/app/j;

    if-nez v0, :cond_5e

    .line 13
    new-instance v0, Landroidx/appcompat/app/j;

    invoke-direct {v0}, Landroidx/appcompat/app/j;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/g;->b0:Landroidx/appcompat/app/j;

    .line 14
    :cond_5e
    iget-object v0, p0, Landroidx/appcompat/app/g;->b0:Landroidx/appcompat/app/j;

    invoke-virtual {v0, p4}, Landroidx/appcompat/app/j;->a(Landroid/util/AttributeSet;)Z

    move-result v0

    if-eqz v0, :cond_68

    const/4 v7, 0x1

    goto :goto_82

    .line 15
    :cond_68
    instance-of v0, p4, Lorg/xmlpull/v1/XmlPullParser;

    if-eqz v0, :cond_77

    .line 16
    move-object v0, p4

    check-cast v0, Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-le v0, v2, :cond_7f

    const/4 v1, 0x1

    goto :goto_7f

    .line 17
    :cond_77
    move-object v0, p1

    check-cast v0, Landroid/view/ViewParent;

    invoke-direct {p0, v0}, Landroidx/appcompat/app/g;->K0(Landroid/view/ViewParent;)Z

    move-result v0

    move v1, v0

    :cond_7f
    :goto_7f
    move v7, v1

    goto :goto_82

    :cond_81
    const/4 v7, 0x0

    .line 18
    :goto_82
    iget-object v2, p0, Landroidx/appcompat/app/g;->a0:Landroidx/appcompat/app/i;

    sget-boolean v8, Landroidx/appcompat/app/g;->d0:Z

    const/4 v9, 0x1

    .line 19
    invoke-static {}, Landroidx/appcompat/widget/z0;->c()Z

    move-result v10

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 20
    invoke-virtual/range {v2 .. v10}, Landroidx/appcompat/app/i;->q(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method Y()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g;->m:Landroidx/appcompat/widget/a0;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0}, Landroidx/appcompat/widget/a0;->l()V

    .line 3
    :cond_7
    iget-object v0, p0, Landroidx/appcompat/app/g;->r:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_26

    .line 4
    iget-object v0, p0, Landroidx/appcompat/app/g;->g:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/g;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5
    iget-object v0, p0, Landroidx/appcompat/app/g;->r:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 6
    :try_start_1e
    iget-object v0, p0, Landroidx/appcompat/app/g;->r:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_23
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_23} :catch_23

    :catch_23
    :cond_23
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Landroidx/appcompat/app/g;->r:Landroid/widget/PopupWindow;

    .line 8
    :cond_26
    invoke-virtual {p0}, Landroidx/appcompat/app/g;->b0()V

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0, v0}, Landroidx/appcompat/app/g;->j0(IZ)Landroidx/appcompat/app/g$u;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 10
    iget-object v0, v0, Landroidx/appcompat/app/g$u;->j:Landroidx/appcompat/view/menu/g;

    if-eqz v0, :cond_37

    .line 11
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->close()V

    :cond_37
    return-void
.end method

.method Z(Landroid/view/KeyEvent;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g;->e:Ljava/lang/Object;

    instance-of v1, v0, Landroidx/core/view/f$a;

    const/4 v2, 0x1

    if-nez v1, :cond_b

    instance-of v0, v0, Landroidx/appcompat/app/h;

    if-eqz v0, :cond_1a

    .line 2
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/app/g;->g:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 3
    invoke-static {v0, p1}, Landroidx/core/view/f;->d(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1a

    return v2

    .line 4
    :cond_1a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_2f

    .line 5
    iget-object v0, p0, Landroidx/appcompat/app/g;->h:Landroidx/appcompat/app/g$o;

    invoke-virtual {v0}, Lc/a/o/i;->a()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2f

    return v2

    .line 6
    :cond_2f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3a

    goto :goto_3b

    :cond_3a
    const/4 v2, 0x0

    :goto_3b
    if-eqz v2, :cond_42

    .line 8
    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/app/g;->v0(ILandroid/view/KeyEvent;)Z

    move-result p1

    goto :goto_46

    :cond_42
    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/app/g;->y0(ILandroid/view/KeyEvent;)Z

    move-result p1

    :goto_46
    return p1
.end method

.method public a(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/g;->l0()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 2
    iget-boolean v1, p0, Landroidx/appcompat/app/g;->N:Z

    if-nez v1, :cond_1b

    .line 3
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->D()Landroidx/appcompat/view/menu/g;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/g;->e0(Landroid/view/Menu;)Landroidx/appcompat/app/g$u;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 4
    iget p1, p1, Landroidx/appcompat/app/g$u;->a:I

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_1b
    const/4 p1, 0x0

    return p1
.end method

.method a0(I)V
    .registers 6

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/g;->j0(IZ)Landroidx/appcompat/app/g$u;

    move-result-object v1

    .line 2
    iget-object v2, v1, Landroidx/appcompat/app/g$u;->j:Landroidx/appcompat/view/menu/g;

    if-eqz v2, :cond_25

    .line 3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 4
    iget-object v3, v1, Landroidx/appcompat/app/g$u;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v3, v2}, Landroidx/appcompat/view/menu/g;->Q(Landroid/os/Bundle;)V

    .line 5
    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v3

    if-lez v3, :cond_1b

    .line 6
    iput-object v2, v1, Landroidx/appcompat/app/g$u;->s:Landroid/os/Bundle;

    .line 7
    :cond_1b
    iget-object v2, v1, Landroidx/appcompat/app/g$u;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/g;->d0()V

    .line 8
    iget-object v2, v1, Landroidx/appcompat/app/g$u;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/g;->clear()V

    .line 9
    :cond_25
    iput-boolean v0, v1, Landroidx/appcompat/app/g$u;->r:Z

    .line 10
    iput-boolean v0, v1, Landroidx/appcompat/app/g$u;->q:Z

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_2f

    if-nez p1, :cond_40

    .line 11
    :cond_2f
    iget-object p1, p0, Landroidx/appcompat/app/g;->m:Landroidx/appcompat/widget/a0;

    if-eqz p1, :cond_40

    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1, p1}, Landroidx/appcompat/app/g;->j0(IZ)Landroidx/appcompat/app/g$u;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 13
    iput-boolean p1, v0, Landroidx/appcompat/app/g$u;->m:Z

    const/4 p1, 0x0

    .line 14
    invoke-direct {p0, v0, p1}, Landroidx/appcompat/app/g;->G0(Landroidx/appcompat/app/g$u;Landroid/view/KeyEvent;)Z

    :cond_40
    return-void
.end method

.method public b(Landroidx/appcompat/view/menu/g;)V
    .registers 2

    const/4 p1, 0x1

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/app/g;->H0(Z)V

    return-void
.end method

.method b0()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g;->t:Landroidx/core/view/z;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Landroidx/core/view/z;->b()V

    :cond_7
    return-void
.end method

.method public d(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/g;->c0()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/g;->w:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Landroidx/appcompat/app/g;->h:Landroidx/appcompat/app/g$o;

    invoke-virtual {p1}, Lc/a/o/i;->a()Landroid/view/Window$Callback;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public e()Z
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Landroidx/appcompat/app/g;->M(Z)Z

    move-result v0

    return v0
.end method

.method e0(Landroid/view/Menu;)Landroidx/appcompat/app/g$u;
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g;->H:[Landroidx/appcompat/app/g$u;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 2
    array-length v2, v0

    goto :goto_8

    :cond_7
    const/4 v2, 0x0

    :goto_8
    if-ge v1, v2, :cond_16

    .line 3
    aget-object v3, v0, v1

    if-eqz v3, :cond_13

    .line 4
    iget-object v4, v3, Landroidx/appcompat/app/g$u;->j:Landroidx/appcompat/view/menu/g;

    if-ne v4, p1, :cond_13

    return-object v3

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_16
    const/4 p1, 0x0

    return-object p1
.end method

.method final g0()Landroid/content/Context;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/g;->p()Landroidx/appcompat/app/a;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2
    invoke-virtual {v0}, Landroidx/appcompat/app/a;->k()Landroid/content/Context;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-nez v0, :cond_10

    .line 3
    iget-object v0, p0, Landroidx/appcompat/app/g;->f:Landroid/content/Context;

    :cond_10
    return-object v0
.end method

.method public h(Landroid/content/Context;)Landroid/content/Context;
    .registers 8

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/appcompat/app/g;->K:Z

    .line 2
    invoke-direct {p0}, Landroidx/appcompat/app/g;->P()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/app/g;->t0(Landroid/content/Context;I)I

    move-result v1

    .line 3
    sget-boolean v2, Landroidx/appcompat/app/g;->g0:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_20

    instance-of v2, p1, Landroid/view/ContextThemeWrapper;

    if-eqz v2, :cond_20

    .line 4
    invoke-direct {p0, p1, v1, v3}, Landroidx/appcompat/app/g;->V(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v2

    .line 5
    :try_start_18
    move-object v4, p1

    check-cast v4, Landroid/view/ContextThemeWrapper;

    invoke-static {v4, v2}, Landroidx/appcompat/app/g$s;->a(Landroid/view/ContextThemeWrapper;Landroid/content/res/Configuration;)V
    :try_end_1e
    .catch Ljava/lang/IllegalStateException; {:try_start_18 .. :try_end_1e} :catch_1f

    return-object p1

    :catch_1f
    nop

    .line 6
    :cond_20
    instance-of v2, p1, Lc/a/o/d;

    if-eqz v2, :cond_30

    .line 7
    invoke-direct {p0, p1, v1, v3}, Landroidx/appcompat/app/g;->V(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v2

    .line 8
    :try_start_28
    move-object v4, p1

    check-cast v4, Lc/a/o/d;

    invoke-virtual {v4, v2}, Lc/a/o/d;->a(Landroid/content/res/Configuration;)V
    :try_end_2e
    .catch Ljava/lang/IllegalStateException; {:try_start_28 .. :try_end_2e} :catch_2f

    return-object p1

    :catch_2f
    nop

    .line 9
    :cond_30
    sget-boolean v2, Landroidx/appcompat/app/g;->f0:Z

    if-nez v2, :cond_38

    .line 10
    invoke-super {p0, p1}, Landroidx/appcompat/app/f;->h(Landroid/content/Context;)Landroid/content/Context;

    return-object p1

    .line 11
    :cond_38
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v2, v4, :cond_6b

    .line 12
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    const/4 v4, -0x1

    .line 13
    iput v4, v2, Landroid/content/res/Configuration;->uiMode:I

    const/4 v4, 0x0

    .line 14
    iput v4, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 15
    invoke-static {p1, v2}, Landroidx/appcompat/app/g$k;->a(Landroid/content/Context;Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v2

    .line 16
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 18
    iget v5, v4, Landroid/content/res/Configuration;->uiMode:I

    iput v5, v2, Landroid/content/res/Configuration;->uiMode:I

    .line 19
    invoke-virtual {v2, v4}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v5

    if-nez v5, :cond_6b

    .line 20
    invoke-static {v2, v4}, Landroidx/appcompat/app/g;->f0(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v3

    .line 21
    :cond_6b
    invoke-direct {p0, p1, v1, v3}, Landroidx/appcompat/app/g;->V(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v1

    .line 22
    new-instance v2, Lc/a/o/d;

    sget v3, Lc/a/i;->Theme_AppCompat_Empty:I

    invoke-direct {v2, p1, v3}, Lc/a/o/d;-><init>(Landroid/content/Context;I)V

    .line 23
    invoke-virtual {v2, v1}, Lc/a/o/d;->a(Landroid/content/res/Configuration;)V

    const/4 v1, 0x0

    .line 24
    :try_start_7a
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1
    :try_end_7e
    .catch Ljava/lang/NullPointerException; {:try_start_7a .. :try_end_7e} :catch_84

    if-eqz p1, :cond_81

    goto :goto_82

    :cond_81
    const/4 v0, 0x0

    :goto_82
    move v1, v0

    goto :goto_85

    :catch_84
    nop

    :goto_85
    if-eqz v1, :cond_8e

    .line 25
    invoke-virtual {v2}, Lc/a/o/d;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/content/c/f$b;->a(Landroid/content/res/Resources$Theme;)V

    .line 26
    :cond_8e
    invoke-super {p0, v2}, Landroidx/appcompat/app/f;->h(Landroid/content/Context;)Landroid/content/Context;

    return-object v2
.end method

.method protected j0(IZ)Landroidx/appcompat/app/g$u;
    .registers 6

    .line 1
    iget-object p2, p0, Landroidx/appcompat/app/g;->H:[Landroidx/appcompat/app/g$u;

    if-eqz p2, :cond_7

    array-length v0, p2

    if-gt v0, p1, :cond_15

    :cond_7
    add-int/lit8 v0, p1, 0x1

    .line 2
    new-array v0, v0, [Landroidx/appcompat/app/g$u;

    if-eqz p2, :cond_12

    .line 3
    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    :cond_12
    iput-object v0, p0, Landroidx/appcompat/app/g;->H:[Landroidx/appcompat/app/g$u;

    move-object p2, v0

    .line 5
    :cond_15
    aget-object v0, p2, p1

    if-nez v0, :cond_20

    .line 6
    new-instance v0, Landroidx/appcompat/app/g$u;

    invoke-direct {v0, p1}, Landroidx/appcompat/app/g$u;-><init>(I)V

    aput-object v0, p2, p1

    :cond_20
    return-object v0
.end method

.method public k(I)Landroid/view/View;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/g;->c0()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/g;->g:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method final k0()Ljava/lang/CharSequence;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g;->e:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_d

    .line 2
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 3
    :cond_d
    iget-object v0, p0, Landroidx/appcompat/app/g;->l:Ljava/lang/CharSequence;

    return-object v0
.end method

.method final l0()Landroid/view/Window$Callback;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g;->g:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    return-object v0
.end method

.method public final m()Landroidx/appcompat/app/b;
    .registers 2

    .line 1
    new-instance v0, Landroidx/appcompat/app/g$h;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/g$h;-><init>(Landroidx/appcompat/app/g;)V

    return-object v0
.end method

.method public n()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/appcompat/app/g;->O:I

    return v0
.end method

.method public o()Landroid/view/MenuInflater;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g;->k:Landroid/view/MenuInflater;

    if-nez v0, :cond_19

    .line 2
    invoke-direct {p0}, Landroidx/appcompat/app/g;->m0()V

    .line 3
    new-instance v0, Lc/a/o/g;

    .line 4
    iget-object v1, p0, Landroidx/appcompat/app/g;->j:Landroidx/appcompat/app/a;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Landroidx/appcompat/app/a;->k()Landroid/content/Context;

    move-result-object v1

    goto :goto_14

    :cond_12
    iget-object v1, p0, Landroidx/appcompat/app/g;->f:Landroid/content/Context;

    :goto_14
    invoke-direct {v0, v1}, Lc/a/o/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/app/g;->k:Landroid/view/MenuInflater;

    .line 5
    :cond_19
    iget-object v0, p0, Landroidx/appcompat/app/g;->k:Landroid/view/MenuInflater;

    return-object v0
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 5

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/app/g;->X(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 5

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/appcompat/app/g;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public p()Landroidx/appcompat/app/a;
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/g;->m0()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/g;->j:Landroidx/appcompat/app/a;

    return-object v0
.end method

.method public q()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g;->f:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_10

    .line 3
    invoke-static {v0, p0}, Landroidx/core/view/LayoutInflaterCompat;->setFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_16

    .line 4
    :cond_10
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    instance-of v0, v0, Landroidx/appcompat/app/g;

    :goto_16
    return-void
.end method

.method public r()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/g;->p()Landroidx/appcompat/app/a;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 2
    invoke-virtual {v0}, Landroidx/appcompat/app/a;->m()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Landroidx/appcompat/app/g;->q0(I)V

    return-void
.end method

.method public s(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/g;->B:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Landroidx/appcompat/app/g;->v:Z

    if-eqz v0, :cond_11

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/g;->p()Landroidx/appcompat/app/a;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 3
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/a;->n(Landroid/content/res/Configuration;)V

    .line 4
    :cond_11
    invoke-static {}, Landroidx/appcompat/widget/i;->b()Landroidx/appcompat/widget/i;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/app/g;->f:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/i;->g(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 5
    invoke-direct {p0, p1}, Landroidx/appcompat/app/g;->M(Z)Z

    return-void
.end method

.method public s0()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/g;->u:Z

    return v0
.end method

.method public t(Landroid/os/Bundle;)V
    .registers 4

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/app/g;->K:Z

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroidx/appcompat/app/g;->M(Z)Z

    .line 3
    invoke-direct {p0}, Landroidx/appcompat/app/g;->d0()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/app/g;->e:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2a

    const/4 v1, 0x0

    .line 5
    :try_start_11
    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Landroidx/core/app/g;->c(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_17} :catch_18

    goto :goto_19

    :catch_18
    nop

    :goto_19
    if-eqz v1, :cond_27

    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/app/g;->E0()Landroidx/appcompat/app/a;

    move-result-object v0

    if-nez v0, :cond_24

    .line 7
    iput-boolean p1, p0, Landroidx/appcompat/app/g;->X:Z

    goto :goto_27

    .line 8
    :cond_24
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/a;->s(Z)V

    .line 9
    :cond_27
    :goto_27
    invoke-static {p0}, Landroidx/appcompat/app/f;->c(Landroidx/appcompat/app/f;)V

    .line 10
    :cond_2a
    iput-boolean p1, p0, Landroidx/appcompat/app/g;->L:Z

    return-void
.end method

.method t0(Landroid/content/Context;I)I
    .registers 5

    const/16 v0, -0x64

    const/4 v1, -0x1

    if-eq p2, v0, :cond_46

    if-eq p2, v1, :cond_45

    if-eqz p2, :cond_23

    const/4 v0, 0x1

    if-eq p2, v0, :cond_45

    const/4 v0, 0x2

    if-eq p2, v0, :cond_45

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1b

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/app/g;->h0(Landroid/content/Context;)Landroidx/appcompat/app/g$q;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/g$q;->c()I

    move-result p1

    return p1

    .line 2
    :cond_1b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_23
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p2, v0, :cond_3c

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "uimode"

    .line 5
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/UiModeManager;

    .line 6
    invoke-virtual {p2}, Landroid/app/UiModeManager;->getNightMode()I

    move-result p2

    if-nez p2, :cond_3c

    return v1

    .line 7
    :cond_3c
    invoke-direct {p0, p1}, Landroidx/appcompat/app/g;->i0(Landroid/content/Context;)Landroidx/appcompat/app/g$q;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/g$q;->c()I

    move-result p1

    return p1

    :cond_45
    return p2

    :cond_46
    return v1
.end method

.method public u()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g;->e:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_9

    .line 2
    invoke-static {p0}, Landroidx/appcompat/app/f;->A(Landroidx/appcompat/app/f;)V

    .line 3
    :cond_9
    iget-boolean v0, p0, Landroidx/appcompat/app/g;->U:Z

    if-eqz v0, :cond_18

    .line 4
    iget-object v0, p0, Landroidx/appcompat/app/g;->g:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/g;->W:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_18
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/appcompat/app/g;->M:Z

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroidx/appcompat/app/g;->N:Z

    .line 7
    iget v0, p0, Landroidx/appcompat/app/g;->O:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_48

    iget-object v0, p0, Landroidx/appcompat/app/g;->e:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_48

    check-cast v0, Landroid/app/Activity;

    .line 8
    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 9
    sget-object v0, Landroidx/appcompat/app/g;->c0:Lc/d/g;

    iget-object v1, p0, Landroidx/appcompat/app/g;->e:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroidx/appcompat/app/g;->O:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_57

    .line 10
    :cond_48
    sget-object v0, Landroidx/appcompat/app/g;->c0:Lc/d/g;

    iget-object v1, p0, Landroidx/appcompat/app/g;->e:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/d/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :goto_57
    iget-object v0, p0, Landroidx/appcompat/app/g;->j:Landroidx/appcompat/app/a;

    if-eqz v0, :cond_5e

    .line 12
    invoke-virtual {v0}, Landroidx/appcompat/app/a;->o()V

    .line 13
    :cond_5e
    invoke-direct {p0}, Landroidx/appcompat/app/g;->S()V

    return-void
.end method

.method u0()Z
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/g;->p:Lc/a/o/b;

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Lc/a/o/b;->c()V

    return v1

    .line 3
    :cond_9
    invoke-virtual {p0}, Landroidx/appcompat/app/g;->p()Landroidx/appcompat/app/a;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 4
    invoke-virtual {v0}, Landroidx/appcompat/app/a;->h()Z

    move-result v0

    if-eqz v0, :cond_16

    return v1

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public v(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/g;->c0()V

    return-void
.end method

.method v0(ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_e

    const/16 v0, 0x52

    if-eq p1, v0, :cond_a

    goto :goto_1a

    .line 1
    :cond_a
    invoke-direct {p0, v2, p2}, Landroidx/appcompat/app/g;->w0(ILandroid/view/KeyEvent;)Z

    return v1

    .line 2
    :cond_e
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_17

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    iput-boolean v1, p0, Landroidx/appcompat/app/g;->J:Z

    :goto_1a
    return v2
.end method

.method public w()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/g;->p()Landroidx/appcompat/app/a;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->u(Z)V

    :cond_a
    return-void
.end method

.method public x(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method x0(ILandroid/view/KeyEvent;)Z
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/g;->p()Landroidx/appcompat/app/a;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    .line 2
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/a;->p(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_e

    return v1

    .line 3
    :cond_e
    iget-object p1, p0, Landroidx/appcompat/app/g;->I:Landroidx/appcompat/app/g$u;

    if-eqz p1, :cond_23

    .line 4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-direct {p0, p1, v0, p2, v1}, Landroidx/appcompat/app/g;->F0(Landroidx/appcompat/app/g$u;ILandroid/view/KeyEvent;I)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 5
    iget-object p1, p0, Landroidx/appcompat/app/g;->I:Landroidx/appcompat/app/g$u;

    if-eqz p1, :cond_22

    .line 6
    iput-boolean v1, p1, Landroidx/appcompat/app/g$u;->n:Z

    :cond_22
    return v1

    .line 7
    :cond_23
    iget-object p1, p0, Landroidx/appcompat/app/g;->I:Landroidx/appcompat/app/g$u;

    const/4 v0, 0x0

    if-nez p1, :cond_3c

    .line 8
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/g;->j0(IZ)Landroidx/appcompat/app/g$u;

    move-result-object p1

    .line 9
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/g;->G0(Landroidx/appcompat/app/g$u;Landroid/view/KeyEvent;)Z

    .line 10
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-direct {p0, p1, v2, p2, v1}, Landroidx/appcompat/app/g;->F0(Landroidx/appcompat/app/g$u;ILandroid/view/KeyEvent;I)Z

    move-result p2

    .line 11
    iput-boolean v0, p1, Landroidx/appcompat/app/g$u;->m:Z

    if-eqz p2, :cond_3c

    return v1

    :cond_3c
    return v0
.end method

.method public y()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/appcompat/app/g;->M:Z

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/g;->e()Z

    return-void
.end method

.method y0(ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_e

    const/16 v0, 0x52

    if-eq p1, v0, :cond_a

    goto :goto_29

    .line 1
    :cond_a
    invoke-direct {p0, v2, p2}, Landroidx/appcompat/app/g;->z0(ILandroid/view/KeyEvent;)Z

    return v1

    .line 2
    :cond_e
    iget-boolean p1, p0, Landroidx/appcompat/app/g;->J:Z

    .line 3
    iput-boolean v2, p0, Landroidx/appcompat/app/g;->J:Z

    .line 4
    invoke-virtual {p0, v2, v2}, Landroidx/appcompat/app/g;->j0(IZ)Landroidx/appcompat/app/g$u;

    move-result-object p2

    if-eqz p2, :cond_22

    .line 5
    iget-boolean v0, p2, Landroidx/appcompat/app/g$u;->o:Z

    if-eqz v0, :cond_22

    if-nez p1, :cond_21

    .line 6
    invoke-virtual {p0, p2, v1}, Landroidx/appcompat/app/g;->U(Landroidx/appcompat/app/g$u;Z)V

    :cond_21
    return v1

    .line 7
    :cond_22
    invoke-virtual {p0}, Landroidx/appcompat/app/g;->u0()Z

    move-result p1

    if-eqz p1, :cond_29

    return v1

    :cond_29
    :goto_29
    return v2
.end method

.method public z()V
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/appcompat/app/g;->M:Z

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/g;->p()Landroidx/appcompat/app/a;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 3
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/a;->u(Z)V

    :cond_c
    return-void
.end method
