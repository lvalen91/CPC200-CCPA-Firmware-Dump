.class public Landroidx/core/view/v;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation build Landroid/annotation/SuppressLint;
  value = {
    "PrivateConstructorForUtilityClass"
  }
.end annotation
.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/core/view/v$j;,
    Landroidx/core/view/v$i;,
    Landroidx/core/view/v$h;,
    Landroidx/core/view/v$l;,
    Landroidx/core/view/v$f;,
    Landroidx/core/view/v$g;,
    Landroidx/core/view/v$k;
  }
.end annotation

.field private final static a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static b:Ljava/lang/reflect/Field;

.field private static c:Z

.field private static d:Ljava/lang/reflect/Field;

.field private static e:Z

.field private static f:Ljava/util/WeakHashMap;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/WeakHashMap<",
      "Landroid/view/View;",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
.end field

.field private static g:Ljava/util/WeakHashMap;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/WeakHashMap<",
      "Landroid/view/View;",
      "Landroidx/core/view/z;",
      ">;"
    }
  .end annotation
.end field

.field private static h:Ljava/lang/reflect/Field;

.field private static i:Z

.field private static j:Ljava/lang/ThreadLocal;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ThreadLocal<",
      "Landroid/graphics/Rect;",
      ">;"
    }
  .end annotation
.end field

.field private final static k:[I

.field private final static l:Landroidx/core/view/s;

.method static constructor <clinit>()V
  .registers 4
  .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;
    const/4 v1, 1
    invoke-direct { v0, v1 }, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V
    sput-object v0, Landroidx/core/view/v;->a:Ljava/util/concurrent/atomic/AtomicInteger;
    const/4 v0, 0
  .line 2
    sput-object v0, Landroidx/core/view/v;->g:Ljava/util/WeakHashMap;
    const/4 v0, 0
  .line 3
    sput-boolean v0, Landroidx/core/view/v;->i:Z
    const/16 v2, 32
    new-array v2, v2, [I
  .line 4
    sget v3, Lc/g/b;->accessibility_custom_action_0:I
    aput v3, v2, v0
    sget v0, Lc/g/b;->accessibility_custom_action_1:I
    aput v0, v2, v1
    sget v0, Lc/g/b;->accessibility_custom_action_2:I
    const/4 v1, 2
    aput v0, v2, v1
    sget v0, Lc/g/b;->accessibility_custom_action_3:I
    const/4 v1, 3
    aput v0, v2, v1
    sget v0, Lc/g/b;->accessibility_custom_action_4:I
    const/4 v1, 4
    aput v0, v2, v1
    sget v0, Lc/g/b;->accessibility_custom_action_5:I
    const/4 v1, 5
    aput v0, v2, v1
    sget v0, Lc/g/b;->accessibility_custom_action_6:I
    const/4 v1, 6
    aput v0, v2, v1
    sget v0, Lc/g/b;->accessibility_custom_action_7:I
    const/4 v1, 7
    aput v0, v2, v1
    sget v0, Lc/g/b;->accessibility_custom_action_8:I
    const/16 v1, 8
    aput v0, v2, v1
    sget v0, Lc/g/b;->accessibility_custom_action_9:I
    const/16 v1, 9
    aput v0, v2, v1
    sget v0, Lc/g/b;->accessibility_custom_action_10:I
    const/16 v1, 10
    aput v0, v2, v1
    sget v0, Lc/g/b;->accessibility_custom_action_11:I
    const/16 v1, 11
    aput v0, v2, v1
    sget v0, Lc/g/b;->accessibility_custom_action_12:I
    const/16 v1, 12
    aput v0, v2, v1
    sget v0, Lc/g/b;->accessibility_custom_action_13:I
    const/16 v1, 13
    aput v0, v2, v1
    sget v0, Lc/g/b;->accessibility_custom_action_14:I
    const/16 v1, 14
    aput v0, v2, v1
    sget v0, Lc/g/b;->accessibility_custom_action_15:I
    const/16 v1, 15
    aput v0, v2, v1
    sget v0, Lc/g/b;->accessibility_custom_action_16:I
    const/16 v1, 16
    aput v0, v2, v1
    sget v0, Lc/g/b;->accessibility_custom_action_17:I
    const/16 v1, 17
    aput v0, v2, v1
    sget v0, Lc/g/b;->accessibility_custom_action_18:I
    const/16 v1, 18
    aput v0, v2, v1
    sget v0, Lc/g/b;->accessibility_custom_action_19:I
    const/16 v1, 19
    aput v0, v2, v1
    sget v0, Lc/g/b;->accessibility_custom_action_20:I
    const/16 v1, 20
    aput v0, v2, v1
    sget v0, Lc/g/b;->accessibility_custom_action_21:I
    const/16 v1, 21
    aput v0, v2, v1
    sget v0, Lc/g/b;->accessibility_custom_action_22:I
    const/16 v1, 22
    aput v0, v2, v1
    sget v0, Lc/g/b;->accessibility_custom_action_23:I
    const/16 v1, 23
    aput v0, v2, v1
    sget v0, Lc/g/b;->accessibility_custom_action_24:I
    const/16 v1, 24
    aput v0, v2, v1
    sget v0, Lc/g/b;->accessibility_custom_action_25:I
    const/16 v1, 25
    aput v0, v2, v1
    sget v0, Lc/g/b;->accessibility_custom_action_26:I
    const/16 v1, 26
    aput v0, v2, v1
    sget v0, Lc/g/b;->accessibility_custom_action_27:I
    const/16 v1, 27
    aput v0, v2, v1
    sget v0, Lc/g/b;->accessibility_custom_action_28:I
    const/16 v1, 28
    aput v0, v2, v1
    sget v0, Lc/g/b;->accessibility_custom_action_29:I
    const/16 v1, 29
    aput v0, v2, v1
    sget v0, Lc/g/b;->accessibility_custom_action_30:I
    const/16 v1, 30
    aput v0, v2, v1
    sget v0, Lc/g/b;->accessibility_custom_action_31:I
    const/16 v1, 31
    aput v0, v2, v1
    sput-object v2, Landroidx/core/view/v;->k:[I
  .line 5
    new-instance v0, Landroidx/core/view/v$a;
    invoke-direct { v0 }, Landroidx/core/view/v$a;-><init>()V
    sput-object v0, Landroidx/core/view/v;->l:Landroidx/core/view/s;
  .line 6
    new-instance v0, Landroidx/core/view/v$f;
    invoke-direct { v0 }, Landroidx/core/view/v$f;-><init>()V
    return-void
.end method

.method public static A(Landroid/view/View;)I
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 16
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/view/View;->getImportantForAccessibility()I
    move-result p0
    return p0
  :L0
    const/4 p0, 0
    return p0
.end method

.method public static A0(Landroid/view/View;IIII)V
  .registers 7
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 17
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0, p1, p2, p3, p4 }, Landroid/view/View;->setPaddingRelative(IIII)V
    goto :L1
  :L0
  .line 3
    invoke-virtual { p0, p1, p2, p3, p4 }, Landroid/view/View;->setPadding(IIII)V
  :L1
    return-void
.end method

.method public static B(Landroid/view/View;)I
  .annotation build Landroid/annotation/SuppressLint;
    value = {
      "InlinedApi"
    }
  .end annotation
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 26
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/view/View;->getImportantForAutofill()I
    move-result p0
    return p0
  :L0
    const/4 p0, 0
    return p0
.end method

.method public static B0(Landroid/view/View;II)V
  .registers 5
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 23
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0, p1, p2 }, Landroid/view/View;->setScrollIndicators(II)V
  :L0
    return-void
.end method

.method public static C(Landroid/view/View;)I
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 17
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/view/View;->getLayoutDirection()I
    move-result p0
    return p0
  :L0
    const/4 p0, 0
    return p0
.end method

.method public static C0(Landroid/view/View;Ljava/lang/CharSequence;)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 19
    if-lt v0, v1, :L0
  .line 2
    invoke-static { }, Landroidx/core/view/v;->F0()Landroidx/core/view/v$g;
    move-result-object v0
    invoke-virtual { v0, p0, p1 }, Landroidx/core/view/v$g;->g(Landroid/view/View;Ljava/lang/Object;)V
  :L0
    return-void
.end method

.method public static D(Landroid/view/View;)I
  .catch Ljava/lang/NoSuchFieldException; { :L1 .. :L2 } :L2
  .catch Ljava/lang/Exception; { :L4 .. :L5 } :L6
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 16
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/view/View;->getMinimumHeight()I
    move-result p0
    return p0
  :L0
  .line 3
    sget-boolean v0, Landroidx/core/view/v;->e:Z
    if-nez v0, :L3
    const/4 v0, 1
  :L1
  .line 4
    const-class v1, Landroid/view/View;
    const-string v2, "mMinHeight"
    invoke-virtual { v1, v2 }, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    move-result-object v1
    sput-object v1, Landroidx/core/view/v;->d:Ljava/lang/reflect/Field;
  .line 5
    invoke-virtual { v1, v0 }, Ljava/lang/reflect/Field;->setAccessible(Z)V
  :L2
  .line 6
    sput-boolean v0, Landroidx/core/view/v;->e:Z
  :L3
  .line 7
    sget-object v0, Landroidx/core/view/v;->d:Ljava/lang/reflect/Field;
    if-eqz v0, :L6
  :L4
  .line 8
    invoke-virtual { v0, p0 }, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p0
    check-cast p0, Ljava/lang/Integer;
    invoke-virtual { p0 }, Ljava/lang/Integer;->intValue()I
    move-result p0
  :L5
    return p0
  :L6
    const/4 p0, 0
    return p0
.end method

.method public static D0(Landroid/view/View;Ljava/lang/String;)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0, p1 }, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V
    goto :L2
  :L0
  .line 3
    sget-object v0, Landroidx/core/view/v;->f:Ljava/util/WeakHashMap;
    if-nez v0, :L1
  .line 4
    new-instance v0, Ljava/util/WeakHashMap;
    invoke-direct { v0 }, Ljava/util/WeakHashMap;-><init>()V
    sput-object v0, Landroidx/core/view/v;->f:Ljava/util/WeakHashMap;
  :L1
  .line 5
    sget-object v0, Landroidx/core/view/v;->f:Ljava/util/WeakHashMap;
    invoke-virtual { v0, p0, p1 }, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L2
    return-void
.end method

.method public static E(Landroid/view/View;)I
  .catch Ljava/lang/NoSuchFieldException; { :L1 .. :L2 } :L2
  .catch Ljava/lang/Exception; { :L4 .. :L5 } :L6
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 16
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/view/View;->getMinimumWidth()I
    move-result p0
    return p0
  :L0
  .line 3
    sget-boolean v0, Landroidx/core/view/v;->c:Z
    if-nez v0, :L3
    const/4 v0, 1
  :L1
  .line 4
    const-class v1, Landroid/view/View;
    const-string v2, "mMinWidth"
    invoke-virtual { v1, v2 }, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    move-result-object v1
    sput-object v1, Landroidx/core/view/v;->b:Ljava/lang/reflect/Field;
  .line 5
    invoke-virtual { v1, v0 }, Ljava/lang/reflect/Field;->setAccessible(Z)V
  :L2
  .line 6
    sput-boolean v0, Landroidx/core/view/v;->c:Z
  :L3
  .line 7
    sget-object v0, Landroidx/core/view/v;->b:Ljava/lang/reflect/Field;
    if-eqz v0, :L6
  :L4
  .line 8
    invoke-virtual { v0, p0 }, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p0
    check-cast p0, Ljava/lang/Integer;
    invoke-virtual { p0 }, Ljava/lang/Integer;->intValue()I
    move-result p0
  :L5
    return p0
  :L6
    const/4 p0, 0
    return p0
.end method

.method private static E0(Landroid/view/View;)V
  .registers 4
  .line 1
    invoke-static { p0 }, Landroidx/core/view/v;->A(Landroid/view/View;)I
    move-result v0
    if-nez v0, :L0
    const/4 v0, 1
  .line 2
    invoke-static { p0, v0 }, Landroidx/core/view/v;->x0(Landroid/view/View;I)V
  :L0
  .line 3
    invoke-virtual { p0 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v0
  :L1
  .line 4
    instance-of v1, v0, Landroid/view/View;
    if-eqz v1, :L3
  .line 5
    move-object v1, v0
    check-cast v1, Landroid/view/View;
    invoke-static { v1 }, Landroidx/core/view/v;->A(Landroid/view/View;)I
    move-result v1
    const/4 v2, 4
    if-ne v1, v2, :L2
    const/4 v0, 2
  .line 6
    invoke-static { p0, v0 }, Landroidx/core/view/v;->x0(Landroid/view/View;I)V
    goto :L3
  :L2
  .line 7
    invoke-interface { v0 }, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;
    move-result-object v0
    goto :L1
  :L3
    return-void
.end method

.method public static F(Landroid/view/View;)[Ljava/lang/String;
  .registers 2
  .line 1
    sget v0, Lc/g/b;->tag_on_receive_content_mime_types:I
    invoke-virtual { p0, v0 }, Landroid/view/View;->getTag(I)Ljava/lang/Object;
    move-result-object p0
    check-cast p0, [Ljava/lang/String;
    return-object p0
.end method

.method private static F0()Landroidx/core/view/v$g;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Landroidx/core/view/v$g<",
      "Ljava/lang/CharSequence;",
      ">;"
    }
  .end annotation
  .registers 5
  .line 1
    new-instance v0, Landroidx/core/view/v$d;
    sget v1, Lc/g/b;->tag_state_description:I
    const-class v2, Ljava/lang/CharSequence;
    const/16 v3, 64
    const/16 v4, 30
    invoke-direct { v0, v1, v2, v3, v4 }, Landroidx/core/view/v$d;-><init>(ILjava/lang/Class;II)V
    return-object v0
.end method

.method static G(Landroid/view/View;)Landroidx/core/view/a;
  .registers 2
  .line 1
    invoke-static { p0 }, Landroidx/core/view/v;->l(Landroid/view/View;)Landroidx/core/view/a;
    move-result-object v0
    if-nez v0, :L0
  .line 2
    new-instance v0, Landroidx/core/view/a;
    invoke-direct { v0 }, Landroidx/core/view/a;-><init>()V
  :L0
  .line 3
    invoke-static { p0, v0 }, Landroidx/core/view/v;->o0(Landroid/view/View;Landroidx/core/view/a;)V
    return-object v0
.end method

.method public static G0(Landroid/view/View;)V
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/view/View;->stopNestedScroll()V
    goto :L1
  :L0
  .line 3
    instance-of v0, p0, Landroidx/core/view/k;
    if-eqz v0, :L1
  .line 4
    check-cast p0, Landroidx/core/view/k;
    invoke-interface { p0 }, Landroidx/core/view/k;->stopNestedScroll()V
  :L1
    return-void
.end method

.method public static H(Landroid/view/View;)I
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 17
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/view/View;->getPaddingEnd()I
    move-result p0
    return p0
  :L0
  .line 3
    invoke-virtual { p0 }, Landroid/view/View;->getPaddingRight()I
    move-result p0
    return p0
.end method

.method private static H0(Landroid/view/View;)V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/view/View;->getTranslationY()F
    move-result v0
    const/high16 v1, 16256
    add-float/2addr v1, v0
  .line 2
    invoke-virtual { p0, v1 }, Landroid/view/View;->setTranslationY(F)V
  .line 3
    invoke-virtual { p0, v0 }, Landroid/view/View;->setTranslationY(F)V
    return-void
.end method

.method public static I(Landroid/view/View;)I
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 17
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/view/View;->getPaddingStart()I
    move-result p0
    return p0
  :L0
  .line 3
    invoke-virtual { p0 }, Landroid/view/View;->getPaddingLeft()I
    move-result p0
    return p0
.end method

.method public static J(Landroid/view/View;)Landroidx/core/view/d0;
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 23
    if-lt v0, v1, :L0
  .line 2
    invoke-static { p0 }, Landroidx/core/view/v$i;->a(Landroid/view/View;)Landroidx/core/view/d0;
    move-result-object p0
    return-object p0
  :L0
    const/16 v1, 21
    if-lt v0, v1, :L1
  .line 3
    invoke-static { p0 }, Landroidx/core/view/v$h;->c(Landroid/view/View;)Landroidx/core/view/d0;
    move-result-object p0
    return-object p0
  :L1
    const/4 p0, 0
    return-object p0
.end method

.method public final static K(Landroid/view/View;)Ljava/lang/CharSequence;
  .registers 2
  .line 1
    invoke-static { }, Landroidx/core/view/v;->F0()Landroidx/core/view/v$g;
    move-result-object v0
    invoke-virtual { v0, p0 }, Landroidx/core/view/v$g;->f(Landroid/view/View;)Ljava/lang/Object;
    move-result-object p0
    check-cast p0, Ljava/lang/CharSequence;
    return-object p0
.end method

.method public static L(Landroid/view/View;)Ljava/lang/String;
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/view/View;->getTransitionName()Ljava/lang/String;
    move-result-object p0
    return-object p0
  :L0
  .line 3
    sget-object v0, Landroidx/core/view/v;->f:Ljava/util/WeakHashMap;
    if-nez v0, :L1
    const/4 p0, 0
    return-object p0
  :L1
  .line 4
    invoke-virtual { v0, p0 }, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p0
    check-cast p0, Ljava/lang/String;
    return-object p0
.end method

.method public static M(Landroid/view/View;)I
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 16
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/view/View;->getWindowSystemUiVisibility()I
    move-result p0
    return p0
  :L0
    const/4 p0, 0
    return p0
.end method

.method public static N(Landroid/view/View;)F
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/view/View;->getZ()F
    move-result p0
    return p0
  :L0
    const/4 p0, 0
    return p0
.end method

.method public static O(Landroid/view/View;)Z
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 15
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/view/View;->hasOnClickListeners()Z
    move-result p0
    return p0
  :L0
    const/4 p0, 0
    return p0
.end method

.method public static P(Landroid/view/View;)Z
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 16
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/view/View;->hasOverlappingRendering()Z
    move-result p0
    return p0
  :L0
    const/4 p0, 1
    return p0
.end method

.method public static Q(Landroid/view/View;)Z
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 16
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/view/View;->hasTransientState()Z
    move-result p0
    return p0
  :L0
    const/4 p0, 0
    return p0
.end method

.method public static R(Landroid/view/View;)Z
  .registers 2
  .line 1
    invoke-static { }, Landroidx/core/view/v;->a()Landroidx/core/view/v$g;
    move-result-object v0
    invoke-virtual { v0, p0 }, Landroidx/core/view/v$g;->f(Landroid/view/View;)Ljava/lang/Object;
    move-result-object p0
    check-cast p0, Ljava/lang/Boolean;
    if-nez p0, :L0
    const/4 p0, 0
    goto :L1
  :L0
  .line 2
    invoke-virtual { p0 }, Ljava/lang/Boolean;->booleanValue()Z
    move-result p0
  :L1
    return p0
.end method

.method public static S(Landroid/view/View;)Z
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 19
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/view/View;->isAttachedToWindow()Z
    move-result p0
    return p0
  :L0
  .line 3
    invoke-virtual { p0 }, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;
    move-result-object p0
    if-eqz p0, :L1
    const/4 p0, 1
    goto :L2
  :L1
    const/4 p0, 0
  :L2
    return p0
.end method

.method public static T(Landroid/view/View;)Z
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 19
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/view/View;->isLaidOut()Z
    move-result p0
    return p0
  :L0
  .line 3
    invoke-virtual { p0 }, Landroid/view/View;->getWidth()I
    move-result v0
    if-lez v0, :L1
    invoke-virtual { p0 }, Landroid/view/View;->getHeight()I
    move-result p0
    if-lez p0, :L1
    const/4 p0, 1
    goto :L2
  :L1
    const/4 p0, 0
  :L2
    return p0
.end method

.method public static U(Landroid/view/View;)Z
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/view/View;->isNestedScrollingEnabled()Z
    move-result p0
    return p0
  :L0
  .line 3
    instance-of v0, p0, Landroidx/core/view/k;
    if-eqz v0, :L1
  .line 4
    check-cast p0, Landroidx/core/view/k;
    invoke-interface { p0 }, Landroidx/core/view/k;->isNestedScrollingEnabled()Z
    move-result p0
    return p0
  :L1
    const/4 p0, 0
    return p0
.end method

.method public static V(Landroid/view/View;)Z
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 17
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/view/View;->isPaddingRelative()Z
    move-result p0
    return p0
  :L0
    const/4 p0, 0
    return p0
.end method

.method public static W(Landroid/view/View;)Z
  .registers 2
  .line 1
    invoke-static { }, Landroidx/core/view/v;->n0()Landroidx/core/view/v$g;
    move-result-object v0
    invoke-virtual { v0, p0 }, Landroidx/core/view/v$g;->f(Landroid/view/View;)Ljava/lang/Object;
    move-result-object p0
    check-cast p0, Ljava/lang/Boolean;
    if-nez p0, :L0
    const/4 p0, 0
    goto :L1
  :L0
  .line 2
    invoke-virtual { p0 }, Ljava/lang/Boolean;->booleanValue()Z
    move-result p0
  :L1
    return p0
.end method

.method static X(Landroid/view/View;I)V
  .catch Ljava/lang/AbstractMethodError; { :L5 .. :L6 } :L7
  .registers 6
  .line 1
    invoke-virtual { p0 }, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v0
    const-string v1, "accessibility"
    invoke-virtual { v0, v1 }, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;
  .line 2
    invoke-virtual { v0 }, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z
    move-result v1
    if-nez v1, :L0
    return-void
  :L0
  .line 3
    invoke-static { p0 }, Landroidx/core/view/v;->p(Landroid/view/View;)Ljava/lang/CharSequence;
    move-result-object v1
    if-eqz v1, :L1
  .line 4
    invoke-virtual { p0 }, Landroid/view/View;->getVisibility()I
    move-result v1
    if-nez v1, :L1
    const/4 v1, 1
    goto :L2
  :L1
    const/4 v1, 0
  :L2
  .line 5
    invoke-static { p0 }, Landroidx/core/view/v;->o(Landroid/view/View;)I
    move-result v2
    const/16 v3, 32
    if-nez v2, :L8
    if-eqz v1, :L3
    goto :L8
  :L3
    if-ne p1, v3, :L4
  .line 6
    invoke-static { }, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;
    move-result-object v1
  .line 7
    invoke-virtual { p0, v1 }, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
  .line 8
    invoke-virtual { v1, v3 }, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V
  .line 9
    invoke-virtual { v1, p1 }, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V
  .line 10
    invoke-virtual { v1, p0 }, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V
  .line 11
    invoke-virtual { p0, v1 }, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
  .line 12
    invoke-virtual { v1 }, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;
    move-result-object p1
    invoke-static { p0 }, Landroidx/core/view/v;->p(Landroid/view/View;)Ljava/lang/CharSequence;
    move-result-object p0
    invoke-interface { p1, p0 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 13
    invoke-virtual { v0, v1 }, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    goto :L12
  :L4
  .line 14
    invoke-virtual { p0 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v0
    if-eqz v0, :L12
  :L5
  .line 15
    invoke-virtual { p0 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v0
    invoke-interface { v0, p0, p0, p1 }, Landroid/view/ViewParent;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
  :L6
    goto :L12
  :L7
  .line 16
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p0 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object p0
    invoke-virtual { p0 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object p0
    invoke-virtual { p0 }, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
    move-result-object p0
    invoke-virtual { p1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p0, " does not fully implement ViewParent"
    invoke-virtual { p1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    goto :L12
  :L8
  .line 17
    invoke-static { }, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;
    move-result-object v0
    if-eqz v1, :L9
    goto :L10
  :L9
    const/16 v3, 2048
  :L10
  .line 18
    invoke-virtual { v0, v3 }, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V
  .line 19
    invoke-virtual { v0, p1 }, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V
    if-eqz v1, :L11
  .line 20
    invoke-virtual { v0 }, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;
    move-result-object p1
    invoke-static { p0 }, Landroidx/core/view/v;->p(Landroid/view/View;)Ljava/lang/CharSequence;
    move-result-object v1
    invoke-interface { p1, v1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 21
    invoke-static { p0 }, Landroidx/core/view/v;->E0(Landroid/view/View;)V
  :L11
  .line 22
    invoke-virtual { p0, v0 }, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
  :L12
    return-void
.end method

.method public static Y(Landroid/view/View;I)V
  .registers 8
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 23
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0, p1 }, Landroid/view/View;->offsetLeftAndRight(I)V
    goto :L3
  :L0
    const/16 v1, 21
    if-lt v0, v1, :L2
  .line 3
    invoke-static { }, Landroidx/core/view/v;->x()Landroid/graphics/Rect;
    move-result-object v0
    const/4 v1, 0
  .line 4
    invoke-virtual { p0 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v2
  .line 5
    instance-of v3, v2, Landroid/view/View;
    if-eqz v3, :L1
  .line 6
    move-object v1, v2
    check-cast v1, Landroid/view/View;
  .line 7
    invoke-virtual { v1 }, Landroid/view/View;->getLeft()I
    move-result v3
    invoke-virtual { v1 }, Landroid/view/View;->getTop()I
    move-result v4
    invoke-virtual { v1 }, Landroid/view/View;->getRight()I
    move-result v5
    invoke-virtual { v1 }, Landroid/view/View;->getBottom()I
    move-result v1
    invoke-virtual { v0, v3, v4, v5, v1 }, Landroid/graphics/Rect;->set(IIII)V
  .line 8
    invoke-virtual { p0 }, Landroid/view/View;->getLeft()I
    move-result v1
    invoke-virtual { p0 }, Landroid/view/View;->getTop()I
    move-result v3
  .line 9
    invoke-virtual { p0 }, Landroid/view/View;->getRight()I
    move-result v4
    invoke-virtual { p0 }, Landroid/view/View;->getBottom()I
    move-result v5
  .line 10
    invoke-virtual { v0, v1, v3, v4, v5 }, Landroid/graphics/Rect;->intersects(IIII)Z
    move-result v1
    xor-int/lit8 v1, v1, 1
  :L1
  .line 11
    invoke-static { p0, p1 }, Landroidx/core/view/v;->e(Landroid/view/View;I)V
    if-eqz v1, :L3
  .line 12
    invoke-virtual { p0 }, Landroid/view/View;->getLeft()I
    move-result p1
    invoke-virtual { p0 }, Landroid/view/View;->getTop()I
    move-result v1
  .line 13
    invoke-virtual { p0 }, Landroid/view/View;->getRight()I
    move-result v3
    invoke-virtual { p0 }, Landroid/view/View;->getBottom()I
    move-result p0
  .line 14
    invoke-virtual { v0, p1, v1, v3, p0 }, Landroid/graphics/Rect;->intersect(IIII)Z
    move-result p0
    if-eqz p0, :L3
  .line 15
    check-cast v2, Landroid/view/View;
    invoke-virtual { v2, v0 }, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V
    goto :L3
  :L2
  .line 16
    invoke-static { p0, p1 }, Landroidx/core/view/v;->e(Landroid/view/View;I)V
  :L3
    return-void
.end method

.method public static Z(Landroid/view/View;I)V
  .registers 8
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 23
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0, p1 }, Landroid/view/View;->offsetTopAndBottom(I)V
    goto :L3
  :L0
    const/16 v1, 21
    if-lt v0, v1, :L2
  .line 3
    invoke-static { }, Landroidx/core/view/v;->x()Landroid/graphics/Rect;
    move-result-object v0
    const/4 v1, 0
  .line 4
    invoke-virtual { p0 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v2
  .line 5
    instance-of v3, v2, Landroid/view/View;
    if-eqz v3, :L1
  .line 6
    move-object v1, v2
    check-cast v1, Landroid/view/View;
  .line 7
    invoke-virtual { v1 }, Landroid/view/View;->getLeft()I
    move-result v3
    invoke-virtual { v1 }, Landroid/view/View;->getTop()I
    move-result v4
    invoke-virtual { v1 }, Landroid/view/View;->getRight()I
    move-result v5
    invoke-virtual { v1 }, Landroid/view/View;->getBottom()I
    move-result v1
    invoke-virtual { v0, v3, v4, v5, v1 }, Landroid/graphics/Rect;->set(IIII)V
  .line 8
    invoke-virtual { p0 }, Landroid/view/View;->getLeft()I
    move-result v1
    invoke-virtual { p0 }, Landroid/view/View;->getTop()I
    move-result v3
  .line 9
    invoke-virtual { p0 }, Landroid/view/View;->getRight()I
    move-result v4
    invoke-virtual { p0 }, Landroid/view/View;->getBottom()I
    move-result v5
  .line 10
    invoke-virtual { v0, v1, v3, v4, v5 }, Landroid/graphics/Rect;->intersects(IIII)Z
    move-result v1
    xor-int/lit8 v1, v1, 1
  :L1
  .line 11
    invoke-static { p0, p1 }, Landroidx/core/view/v;->f(Landroid/view/View;I)V
    if-eqz v1, :L3
  .line 12
    invoke-virtual { p0 }, Landroid/view/View;->getLeft()I
    move-result p1
    invoke-virtual { p0 }, Landroid/view/View;->getTop()I
    move-result v1
  .line 13
    invoke-virtual { p0 }, Landroid/view/View;->getRight()I
    move-result v3
    invoke-virtual { p0 }, Landroid/view/View;->getBottom()I
    move-result p0
  .line 14
    invoke-virtual { v0, p1, v1, v3, p0 }, Landroid/graphics/Rect;->intersect(IIII)Z
    move-result p0
    if-eqz p0, :L3
  .line 15
    check-cast v2, Landroid/view/View;
    invoke-virtual { v2, v0 }, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V
    goto :L3
  :L2
  .line 16
    invoke-static { p0, p1 }, Landroidx/core/view/v;->f(Landroid/view/View;I)V
  :L3
    return-void
.end method

.method private static a()Landroidx/core/view/v$g;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Landroidx/core/view/v$g<",
      "Ljava/lang/Boolean;",
      ">;"
    }
  .end annotation
  .registers 4
  .line 1
    new-instance v0, Landroidx/core/view/v$e;
    sget v1, Lc/g/b;->tag_accessibility_heading:I
    const-class v2, Ljava/lang/Boolean;
    const/16 v3, 28
    invoke-direct { v0, v1, v2, v3 }, Landroidx/core/view/v$e;-><init>(ILjava/lang/Class;I)V
    return-object v0
.end method

.method public static a0(Landroid/view/View;Landroidx/core/view/d0;)Landroidx/core/view/d0;
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p1 }, Landroidx/core/view/d0;->r()Landroid/view/WindowInsets;
    move-result-object v0
    if-eqz v0, :L0
  .line 3
    invoke-virtual { p0, v0 }, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    move-result-object v1
  .line 4
    invoke-virtual { v1, v0 }, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L0
  .line 5
    invoke-static { v1, p0 }, Landroidx/core/view/d0;->t(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/d0;
    move-result-object p0
    return-object p0
  :L0
    return-object p1
.end method

.method public static b(Landroid/view/View;Ljava/lang/CharSequence;Landroidx/core/view/e0/f;)I
  .registers 5
  .line 1
    invoke-static { p0 }, Landroidx/core/view/v;->r(Landroid/view/View;)I
    move-result v0
    const/4 v1, -1
    if-eq v0, v1, :L0
  .line 2
    new-instance v1, Landroidx/core/view/e0/c$a;
    invoke-direct { v1, v0, p1, p2 }, Landroidx/core/view/e0/c$a;-><init>(ILjava/lang/CharSequence;Landroidx/core/view/e0/f;)V
  .line 3
    invoke-static { p0, v1 }, Landroidx/core/view/v;->c(Landroid/view/View;Landroidx/core/view/e0/c$a;)V
  :L0
    return v0
.end method

.method public static b0(Landroid/view/View;Landroidx/core/view/e0/c;)V
  .registers 2
  .line 1
    invoke-virtual { p1 }, Landroidx/core/view/e0/c;->u0()Landroid/view/accessibility/AccessibilityNodeInfo;
    move-result-object p1
    invoke-virtual { p0, p1 }, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    return-void
.end method

.method private static c(Landroid/view/View;Landroidx/core/view/e0/c$a;)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 2
    invoke-static { p0 }, Landroidx/core/view/v;->G(Landroid/view/View;)Landroidx/core/view/a;
  .line 3
    invoke-virtual { p1 }, Landroidx/core/view/e0/c$a;->b()I
    move-result v0
    invoke-static { v0, p0 }, Landroidx/core/view/v;->j0(ILandroid/view/View;)V
  .line 4
    invoke-static { p0 }, Landroidx/core/view/v;->q(Landroid/view/View;)Ljava/util/List;
    move-result-object v0
    invoke-interface { v0, p1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const/4 p1, 0
  .line 5
    invoke-static { p0, p1 }, Landroidx/core/view/v;->X(Landroid/view/View;I)V
  :L0
    return-void
.end method

.method private static c0()Landroidx/core/view/v$g;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Landroidx/core/view/v$g<",
      "Ljava/lang/CharSequence;",
      ">;"
    }
  .end annotation
  .registers 5
  .line 1
    new-instance v0, Landroidx/core/view/v$c;
    sget v1, Lc/g/b;->tag_accessibility_pane_title:I
    const-class v2, Ljava/lang/CharSequence;
    const/16 v3, 8
    const/16 v4, 28
    invoke-direct { v0, v1, v2, v3, v4 }, Landroidx/core/view/v$c;-><init>(ILjava/lang/Class;II)V
    return-object v0
.end method

.method public static d(Landroid/view/View;)Landroidx/core/view/z;
  .registers 3
  .line 1
    sget-object v0, Landroidx/core/view/v;->g:Ljava/util/WeakHashMap;
    if-nez v0, :L0
  .line 2
    new-instance v0, Ljava/util/WeakHashMap;
    invoke-direct { v0 }, Ljava/util/WeakHashMap;-><init>()V
    sput-object v0, Landroidx/core/view/v;->g:Ljava/util/WeakHashMap;
  :L0
  .line 3
    sget-object v0, Landroidx/core/view/v;->g:Ljava/util/WeakHashMap;
    invoke-virtual { v0, p0 }, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroidx/core/view/z;
    if-nez v0, :L1
  .line 4
    new-instance v0, Landroidx/core/view/z;
    invoke-direct { v0, p0 }, Landroidx/core/view/z;-><init>(Landroid/view/View;)V
  .line 5
    sget-object v1, Landroidx/core/view/v;->g:Ljava/util/WeakHashMap;
    invoke-virtual { v1, p0, v0 }, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L1
    return-object v0
.end method

.method public static d0(Landroid/view/View;ILandroid/os/Bundle;)Z
  .registers 5
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 16
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0, p1, p2 }, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z
    move-result p0
    return p0
  :L0
    const/4 p0, 0
    return p0
.end method

.method private static e(Landroid/view/View;I)V
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Landroid/view/View;->offsetLeftAndRight(I)V
  .line 2
    invoke-virtual { p0 }, Landroid/view/View;->getVisibility()I
    move-result p1
    if-nez p1, :L0
  .line 3
    invoke-static { p0 }, Landroidx/core/view/v;->H0(Landroid/view/View;)V
  .line 4
    invoke-virtual { p0 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object p0
  .line 5
    instance-of p1, p0, Landroid/view/View;
    if-eqz p1, :L0
  .line 6
    check-cast p0, Landroid/view/View;
    invoke-static { p0 }, Landroidx/core/view/v;->H0(Landroid/view/View;)V
  :L0
    return-void
.end method

.method public static e0(Landroid/view/View;Landroidx/core/view/c;)Landroidx/core/view/c;
  .registers 4
    const-string v0, "ViewCompat"
    const/4 v1, 3
  .line 1
    invoke-static { v0, v1 }, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "performReceiveContent: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v1, ", view="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 3
    invoke-virtual { p0 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "["
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Landroid/view/View;->getId()I
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, "]"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L0
  .line 4
    sget v0, Lc/g/b;->tag_on_receive_content_listener:I
  .line 5
    invoke-virtual { p0, v0 }, Landroid/view/View;->getTag(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroidx/core/view/r;
    if-eqz v0, :L3
  .line 6
    invoke-interface { v0, p0, p1 }, Landroidx/core/view/r;->a(Landroid/view/View;Landroidx/core/view/c;)Landroidx/core/view/c;
    move-result-object p1
    if-nez p1, :L1
    const/4 p0, 0
    goto :L2
  :L1
  .line 7
    invoke-static { p0 }, Landroidx/core/view/v;->y(Landroid/view/View;)Landroidx/core/view/s;
    move-result-object p0
    invoke-interface { p0, p1 }, Landroidx/core/view/s;->a(Landroidx/core/view/c;)Landroidx/core/view/c;
    move-result-object p0
  :L2
    return-object p0
  :L3
  .line 8
    invoke-static { p0 }, Landroidx/core/view/v;->y(Landroid/view/View;)Landroidx/core/view/s;
    move-result-object p0
    invoke-interface { p0, p1 }, Landroidx/core/view/s;->a(Landroidx/core/view/c;)Landroidx/core/view/c;
    move-result-object p0
    return-object p0
.end method

.method private static f(Landroid/view/View;I)V
  .registers 2
  .line 1
    invoke-virtual { p0, p1 }, Landroid/view/View;->offsetTopAndBottom(I)V
  .line 2
    invoke-virtual { p0 }, Landroid/view/View;->getVisibility()I
    move-result p1
    if-nez p1, :L0
  .line 3
    invoke-static { p0 }, Landroidx/core/view/v;->H0(Landroid/view/View;)V
  .line 4
    invoke-virtual { p0 }, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object p0
  .line 5
    instance-of p1, p0, Landroid/view/View;
    if-eqz p1, :L0
  .line 6
    check-cast p0, Landroid/view/View;
    invoke-static { p0 }, Landroidx/core/view/v;->H0(Landroid/view/View;)V
  :L0
    return-void
.end method

.method public static f0(Landroid/view/View;)V
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 16
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/view/View;->postInvalidateOnAnimation()V
    goto :L1
  :L0
  .line 3
    invoke-virtual { p0 }, Landroid/view/View;->postInvalidate()V
  :L1
    return-void
.end method

.method public static g(Landroid/view/View;Landroidx/core/view/d0;Landroid/graphics/Rect;)Landroidx/core/view/d0;
  .registers 5
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 2
    invoke-static { p0, p1, p2 }, Landroidx/core/view/v$h;->b(Landroid/view/View;Landroidx/core/view/d0;Landroid/graphics/Rect;)Landroidx/core/view/d0;
    move-result-object p0
    return-object p0
  :L0
    return-object p1
.end method

.method public static g0(Landroid/view/View;Ljava/lang/Runnable;)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 16
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0, p1 }, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V
    goto :L1
  :L0
  .line 3
    invoke-static { }, Landroid/animation/ValueAnimator;->getFrameDelay()J
    move-result-wide v0
    invoke-virtual { p0, p1, v0, v1 }, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
  :L1
    return-void
.end method

.method public static h(Landroid/view/View;Landroidx/core/view/d0;)Landroidx/core/view/d0;
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p1 }, Landroidx/core/view/d0;->r()Landroid/view/WindowInsets;
    move-result-object v0
    if-eqz v0, :L0
  .line 3
    invoke-virtual { p0, v0 }, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    move-result-object v1
  .line 4
    invoke-virtual { v1, v0 }, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L0
  .line 5
    invoke-static { v1, p0 }, Landroidx/core/view/d0;->t(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/d0;
    move-result-object p0
    return-object p0
  :L0
    return-object p1
.end method

.method public static h0(Landroid/view/View;Ljava/lang/Runnable;J)V
  .registers 6
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 16
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0, p1, p2, p3 }, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V
    goto :L1
  :L0
  .line 3
    invoke-static { }, Landroid/animation/ValueAnimator;->getFrameDelay()J
    move-result-wide v0
    add-long/2addr v0, p2
    invoke-virtual { p0, p1, v0, v1 }, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
  :L1
    return-void
.end method

.method static i(Landroid/view/View;Landroid/view/KeyEvent;)Z
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 28
    if-lt v0, v1, :L0
    const/4 p0, 0
    return p0
  :L0
  .line 2
    invoke-static { p0 }, Landroidx/core/view/v$l;->a(Landroid/view/View;)Landroidx/core/view/v$l;
    move-result-object v0
    invoke-virtual { v0, p0, p1 }, Landroidx/core/view/v$l;->b(Landroid/view/View;Landroid/view/KeyEvent;)Z
    move-result p0
    return p0
.end method

.method public static i0(Landroid/view/View;I)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 2
    invoke-static { p1, p0 }, Landroidx/core/view/v;->j0(ILandroid/view/View;)V
    const/4 p1, 0
  .line 3
    invoke-static { p0, p1 }, Landroidx/core/view/v;->X(Landroid/view/View;I)V
  :L0
    return-void
.end method

.method static j(Landroid/view/View;Landroid/view/KeyEvent;)Z
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 28
    if-lt v0, v1, :L0
    const/4 p0, 0
    return p0
  :L0
  .line 2
    invoke-static { p0 }, Landroidx/core/view/v$l;->a(Landroid/view/View;)Landroidx/core/view/v$l;
    move-result-object p0
    invoke-virtual { p0, p1 }, Landroidx/core/view/v$l;->f(Landroid/view/KeyEvent;)Z
    move-result p0
    return p0
.end method

.method private static j0(ILandroid/view/View;)V
  .registers 4
  .line 1
    invoke-static { p1 }, Landroidx/core/view/v;->q(Landroid/view/View;)Ljava/util/List;
    move-result-object p1
    const/4 v0, 0
  :L0
  .line 2
    invoke-interface { p1 }, Ljava/util/List;->size()I
    move-result v1
    if-ge v0, v1, :L2
  .line 3
    invoke-interface { p1, v0 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroidx/core/view/e0/c$a;
    invoke-virtual { v1 }, Landroidx/core/view/e0/c$a;->b()I
    move-result v1
    if-ne v1, p0, :L1
  .line 4
    invoke-interface { p1, v0 }, Ljava/util/List;->remove(I)Ljava/lang/Object;
    goto :L2
  :L1
    add-int/lit8 v0, v0, 1
    goto :L0
  :L2
    return-void
.end method

.method public static k()I
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 17
    if-lt v0, v1, :L0
  .line 2
    invoke-static { }, Landroid/view/View;->generateViewId()I
    move-result v0
    return v0
  :L0
  .line 3
    sget-object v0, Landroidx/core/view/v;->a:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual { v0 }, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    move-result v0
    add-int/lit8 v1, v0, 1
    const v2, 16777215
    if-le v1, v2, :L1
    const/4 v1, 1
  :L1
  .line 4
    sget-object v2, Landroidx/core/view/v;->a:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual { v2, v0, v1 }, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z
    move-result v1
    if-eqz v1, :L0
    return v0
.end method

.method public static k0(Landroid/view/View;Landroidx/core/view/e0/c$a;Ljava/lang/CharSequence;Landroidx/core/view/e0/f;)V
  .registers 4
    if-nez p3, :L0
    if-nez p2, :L0
  .line 1
    invoke-virtual { p1 }, Landroidx/core/view/e0/c$a;->b()I
    move-result p1
    invoke-static { p0, p1 }, Landroidx/core/view/v;->i0(Landroid/view/View;I)V
    goto :L1
  :L0
  .line 2
    invoke-virtual { p1, p2, p3 }, Landroidx/core/view/e0/c$a;->a(Ljava/lang/CharSequence;Landroidx/core/view/e0/f;)Landroidx/core/view/e0/c$a;
    move-result-object p1
    invoke-static { p0, p1 }, Landroidx/core/view/v;->c(Landroid/view/View;Landroidx/core/view/e0/c$a;)V
  :L1
    return-void
.end method

.method public static l(Landroid/view/View;)Landroidx/core/view/a;
  .registers 2
  .line 1
    invoke-static { p0 }, Landroidx/core/view/v;->m(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;
    move-result-object p0
    if-nez p0, :L0
    const/4 p0, 0
    return-object p0
  :L0
  .line 2
    instance-of v0, p0, Landroidx/core/view/a$a;
    if-eqz v0, :L1
  .line 3
    check-cast p0, Landroidx/core/view/a$a;
    iget-object p0, p0, Landroidx/core/view/a$a;->a:Landroidx/core/view/a;
    return-object p0
  :L1
  .line 4
    new-instance v0, Landroidx/core/view/a;
    invoke-direct { v0, p0 }, Landroidx/core/view/a;-><init>(Landroid/view/View$AccessibilityDelegate;)V
    return-object v0
.end method

.method public static l0(Landroid/view/View;)V
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 20
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/view/View;->requestApplyInsets()V
    goto :L1
  :L0
    const/16 v1, 16
    if-lt v0, v1, :L1
  .line 3
    invoke-virtual { p0 }, Landroid/view/View;->requestFitSystemWindows()V
  :L1
    return-void
.end method

.method private static m(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 29
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/view/View;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;
    move-result-object p0
    return-object p0
  :L0
  .line 3
    invoke-static { p0 }, Landroidx/core/view/v;->n(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;
    move-result-object p0
    return-object p0
.end method

.method public static m0(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V
  .parameter # Landroid/view/View;
  .parameter # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
      value = {
        "ContextFirst"
      }
    .end annotation
  .end parameter
  .registers 9
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 29
    if-lt v0, v1, :L0
  .line 2
    invoke-static/range { p0 .. p6 }, Landroidx/core/view/v$j;->a(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V
  :L0
    return-void
.end method

.method private static n(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;
  .catchall { :L1 .. :L2 } :L3
  .catchall { :L4 .. :L5 } :L7
  .registers 5
  .line 1
    sget-boolean v0, Landroidx/core/view/v;->i:Z
    const/4 v1, 0
    if-eqz v0, :L0
    return-object v1
  :L0
  .line 2
    sget-object v0, Landroidx/core/view/v;->h:Ljava/lang/reflect/Field;
    const/4 v2, 1
    if-nez v0, :L4
  :L1
  .line 3
    const-class v0, Landroid/view/View;
    const-string v3, "mAccessibilityDelegate"
  .line 4
    invoke-virtual { v0, v3 }, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    move-result-object v0
    sput-object v0, Landroidx/core/view/v;->h:Ljava/lang/reflect/Field;
  .line 5
    invoke-virtual { v0, v2 }, Ljava/lang/reflect/Field;->setAccessible(Z)V
  :L2
    goto :L4
  :L3
  .line 6
    sput-boolean v2, Landroidx/core/view/v;->i:Z
    return-object v1
  :L4
  .line 7
    sget-object v0, Landroidx/core/view/v;->h:Ljava/lang/reflect/Field;
    invoke-virtual { v0, p0 }, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p0
  .line 8
    instance-of v0, p0, Landroid/view/View$AccessibilityDelegate;
    if-eqz v0, :L6
  .line 9
    check-cast p0, Landroid/view/View$AccessibilityDelegate;
  :L5
    return-object p0
  :L6
    return-object v1
  :L7
  .line 10
    sput-boolean v2, Landroidx/core/view/v;->i:Z
    return-object v1
.end method

.method private static n0()Landroidx/core/view/v$g;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Landroidx/core/view/v$g<",
      "Ljava/lang/Boolean;",
      ">;"
    }
  .end annotation
  .registers 4
  .line 1
    new-instance v0, Landroidx/core/view/v$b;
    sget v1, Lc/g/b;->tag_screen_reader_focusable:I
    const-class v2, Ljava/lang/Boolean;
    const/16 v3, 28
    invoke-direct { v0, v1, v2, v3 }, Landroidx/core/view/v$b;-><init>(ILjava/lang/Class;I)V
    return-object v0
.end method

.method public static o(Landroid/view/View;)I
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 19
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/view/View;->getAccessibilityLiveRegion()I
    move-result p0
    return p0
  :L0
    const/4 p0, 0
    return p0
.end method

.method public static o0(Landroid/view/View;Landroidx/core/view/a;)V
  .registers 3
    if-nez p1, :L0
  .line 1
    invoke-static { p0 }, Landroidx/core/view/v;->m(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;
    move-result-object v0
    instance-of v0, v0, Landroidx/core/view/a$a;
    if-eqz v0, :L0
  .line 2
    new-instance p1, Landroidx/core/view/a;
    invoke-direct { p1 }, Landroidx/core/view/a;-><init>()V
  :L0
    if-nez p1, :L1
    const/4 p1, 0
    goto :L2
  :L1
  .line 3
    invoke-virtual { p1 }, Landroidx/core/view/a;->d()Landroid/view/View$AccessibilityDelegate;
    move-result-object p1
  :L2
    invoke-virtual { p0, p1 }, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    return-void
.end method

.method public static p(Landroid/view/View;)Ljava/lang/CharSequence;
  .registers 2
  .line 1
    invoke-static { }, Landroidx/core/view/v;->c0()Landroidx/core/view/v$g;
    move-result-object v0
    invoke-virtual { v0, p0 }, Landroidx/core/view/v$g;->f(Landroid/view/View;)Ljava/lang/Object;
    move-result-object p0
    check-cast p0, Ljava/lang/CharSequence;
    return-object p0
.end method

.method public static p0(Landroid/view/View;Z)V
  .registers 3
  .line 1
    invoke-static { }, Landroidx/core/view/v;->a()Landroidx/core/view/v$g;
    move-result-object v0
    invoke-static { p1 }, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    move-result-object p1
    invoke-virtual { v0, p0, p1 }, Landroidx/core/view/v$g;->g(Landroid/view/View;Ljava/lang/Object;)V
    return-void
.end method

.method private static q(Landroid/view/View;)Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/view/View;",
      ")",
      "Ljava/util/List<",
      "Landroidx/core/view/e0/c$a;",
      ">;"
    }
  .end annotation
  .registers 3
  .line 1
    sget v0, Lc/g/b;->tag_accessibility_actions:I
  .line 2
    invoke-virtual { p0, v0 }, Landroid/view/View;->getTag(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/util/ArrayList;
    if-nez v0, :L0
  .line 3
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
  .line 4
    sget v1, Lc/g/b;->tag_accessibility_actions:I
    invoke-virtual { p0, v1, v0 }, Landroid/view/View;->setTag(ILjava/lang/Object;)V
  :L0
    return-object v0
.end method

.method public static q0(Landroid/view/View;I)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 19
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0, p1 }, Landroid/view/View;->setAccessibilityLiveRegion(I)V
  :L0
    return-void
.end method

.method private static r(Landroid/view/View;)I
  .registers 10
  .line 1
    invoke-static { p0 }, Landroidx/core/view/v;->q(Landroid/view/View;)Ljava/util/List;
    move-result-object p0
    const/4 v0, -1
    const/4 v1, 0
    const/4 v2, 0
    const/4 v3, -1
  :L0
  .line 2
    sget-object v4, Landroidx/core/view/v;->k:[I
    array-length v5, v4
    if-ge v2, v5, :L6
    if-ne v3, v0, :L6
  .line 3
    aget v4, v4, v2
    const/4 v5, 1
    const/4 v6, 0
    const/4 v7, 1
  :L1
  .line 4
    invoke-interface { p0 }, Ljava/util/List;->size()I
    move-result v8
    if-ge v6, v8, :L4
  .line 5
    invoke-interface { p0, v6 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v8
    check-cast v8, Landroidx/core/view/e0/c$a;
    invoke-virtual { v8 }, Landroidx/core/view/e0/c$a;->b()I
    move-result v8
    if-eq v8, v4, :L2
    const/4 v8, 1
    goto :L3
  :L2
    const/4 v8, 0
  :L3
    and-int/2addr v7, v8
    add-int/lit8 v6, v6, 1
    goto :L1
  :L4
    if-eqz v7, :L5
    move v3, v4
  :L5
    add-int/lit8 v2, v2, 1
    goto :L0
  :L6
    return v3
.end method

.method public static r0(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 16
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0, p1 }, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    goto :L1
  :L0
  .line 3
    invoke-virtual { p0, p1 }, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
  :L1
    return-void
.end method

.method public static s(Landroid/view/View;)Landroid/content/res/ColorStateList;
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;
    move-result-object p0
    return-object p0
  :L0
  .line 3
    instance-of v0, p0, Landroidx/core/view/u;
    if-eqz v0, :L1
  .line 4
    check-cast p0, Landroidx/core/view/u;
    invoke-interface { p0 }, Landroidx/core/view/u;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    move-result-object p0
    goto :L2
  :L1
    const/4 p0, 0
  :L2
    return-object p0
.end method

.method public static s0(Landroid/view/View;Landroid/content/res/ColorStateList;)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L4
  .line 2
    invoke-virtual { p0, p1 }, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V
  .line 3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I
    if-ne p1, v1, :L5
  .line 4
    invoke-virtual { p0 }, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;
    move-result-object p1
  .line 5
    invoke-virtual { p0 }, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;
    move-result-object v0
    if-nez v0, :L1
  .line 6
    invoke-virtual { p0 }, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    move-result-object v0
    if-eqz v0, :L0
    goto :L1
  :L0
    const/4 v0, 0
    goto :L2
  :L1
    const/4 v0, 1
  :L2
    if-eqz p1, :L5
    if-eqz v0, :L5
  .line 7
    invoke-virtual { p1 }, Landroid/graphics/drawable/Drawable;->isStateful()Z
    move-result v0
    if-eqz v0, :L3
  .line 8
    invoke-virtual { p0 }, Landroid/view/View;->getDrawableState()[I
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/graphics/drawable/Drawable;->setState([I)Z
  :L3
  .line 9
    invoke-virtual { p0, p1 }, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    goto :L5
  :L4
  .line 10
    instance-of v0, p0, Landroidx/core/view/u;
    if-eqz v0, :L5
  .line 11
    check-cast p0, Landroidx/core/view/u;
    invoke-interface { p0, p1 }, Landroidx/core/view/u;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
  :L5
    return-void
.end method

.method public static t(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    move-result-object p0
    return-object p0
  :L0
  .line 3
    instance-of v0, p0, Landroidx/core/view/u;
    if-eqz v0, :L1
  .line 4
    check-cast p0, Landroidx/core/view/u;
    invoke-interface { p0 }, Landroidx/core/view/u;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    move-result-object p0
    goto :L2
  :L1
    const/4 p0, 0
  :L2
    return-object p0
.end method

.method public static t0(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L4
  .line 2
    invoke-virtual { p0, p1 }, Landroid/view/View;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
  .line 3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I
    if-ne p1, v1, :L5
  .line 4
    invoke-virtual { p0 }, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;
    move-result-object p1
  .line 5
    invoke-virtual { p0 }, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;
    move-result-object v0
    if-nez v0, :L1
  .line 6
    invoke-virtual { p0 }, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    move-result-object v0
    if-eqz v0, :L0
    goto :L1
  :L0
    const/4 v0, 0
    goto :L2
  :L1
    const/4 v0, 1
  :L2
    if-eqz p1, :L5
    if-eqz v0, :L5
  .line 7
    invoke-virtual { p1 }, Landroid/graphics/drawable/Drawable;->isStateful()Z
    move-result v0
    if-eqz v0, :L3
  .line 8
    invoke-virtual { p0 }, Landroid/view/View;->getDrawableState()[I
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/graphics/drawable/Drawable;->setState([I)Z
  :L3
  .line 9
    invoke-virtual { p0, p1 }, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    goto :L5
  :L4
  .line 10
    instance-of v0, p0, Landroidx/core/view/u;
    if-eqz v0, :L5
  .line 11
    check-cast p0, Landroidx/core/view/u;
    invoke-interface { p0, p1 }, Landroidx/core/view/u;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
  :L5
    return-void
.end method

.method public static u(Landroid/view/View;)Landroid/graphics/Rect;
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 18
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;
    move-result-object p0
    return-object p0
  :L0
    const/4 p0, 0
    return-object p0
.end method

.method public static u0(Landroid/view/View;Landroid/graphics/Rect;)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 18
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0, p1 }, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V
  :L0
    return-void
.end method

.method public static v(Landroid/view/View;)Landroid/view/Display;
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 17
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/view/View;->getDisplay()Landroid/view/Display;
    move-result-object p0
    return-object p0
  :L0
  .line 3
    invoke-static { p0 }, Landroidx/core/view/v;->S(Landroid/view/View;)Z
    move-result v0
    if-eqz v0, :L1
  .line 4
    invoke-virtual { p0 }, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object p0
    const-string v0, "window"
    invoke-virtual { p0, v0 }, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object p0
    check-cast p0, Landroid/view/WindowManager;
  .line 5
    invoke-interface { p0 }, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
    move-result-object p0
    return-object p0
  :L1
    const/4 p0, 0
    return-object p0
.end method

.method public static v0(Landroid/view/View;F)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0, p1 }, Landroid/view/View;->setElevation(F)V
  :L0
    return-void
.end method

.method public static w(Landroid/view/View;)F
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/view/View;->getElevation()F
    move-result p0
    return p0
  :L0
    const/4 p0, 0
    return p0
.end method

.method public static w0(Landroid/view/View;Z)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 16
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0, p1 }, Landroid/view/View;->setHasTransientState(Z)V
  :L0
    return-void
.end method

.method private static x()Landroid/graphics/Rect;
  .registers 2
  .line 1
    sget-object v0, Landroidx/core/view/v;->j:Ljava/lang/ThreadLocal;
    if-nez v0, :L0
  .line 2
    new-instance v0, Ljava/lang/ThreadLocal;
    invoke-direct { v0 }, Ljava/lang/ThreadLocal;-><init>()V
    sput-object v0, Landroidx/core/view/v;->j:Ljava/lang/ThreadLocal;
  :L0
  .line 3
    sget-object v0, Landroidx/core/view/v;->j:Ljava/lang/ThreadLocal;
    invoke-virtual { v0 }, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/graphics/Rect;
    if-nez v0, :L1
  .line 4
    new-instance v0, Landroid/graphics/Rect;
    invoke-direct { v0 }, Landroid/graphics/Rect;-><init>()V
  .line 5
    sget-object v1, Landroidx/core/view/v;->j:Ljava/lang/ThreadLocal;
    invoke-virtual { v1, v0 }, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
  :L1
  .line 6
    invoke-virtual { v0 }, Landroid/graphics/Rect;->setEmpty()V
    return-object v0
.end method

.method public static x0(Landroid/view/View;I)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 19
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0, p1 }, Landroid/view/View;->setImportantForAccessibility(I)V
    goto :L2
  :L0
    const/16 v1, 16
    if-lt v0, v1, :L2
    const/4 v0, 4
    if-ne p1, v0, :L1
    const/4 p1, 2
  :L1
  .line 3
    invoke-virtual { p0, p1 }, Landroid/view/View;->setImportantForAccessibility(I)V
  :L2
    return-void
.end method

.method private static y(Landroid/view/View;)Landroidx/core/view/s;
  .registers 2
  .line 1
    instance-of v0, p0, Landroidx/core/view/s;
    if-eqz v0, :L0
  .line 2
    check-cast p0, Landroidx/core/view/s;
    return-object p0
  :L0
  .line 3
    sget-object p0, Landroidx/core/view/v;->l:Landroidx/core/view/s;
    return-object p0
.end method

.method public static y0(Landroid/view/View;I)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 26
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0, p1 }, Landroid/view/View;->setImportantForAutofill(I)V
  :L0
    return-void
.end method

.method public static z(Landroid/view/View;)Z
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 16
    if-lt v0, v1, :L0
  .line 2
    invoke-virtual { p0 }, Landroid/view/View;->getFitsSystemWindows()Z
    move-result p0
    return p0
  :L0
    const/4 p0, 0
    return p0
.end method

.method public static z0(Landroid/view/View;Landroidx/core/view/q;)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 2
    invoke-static { p0, p1 }, Landroidx/core/view/v$h;->d(Landroid/view/View;Landroidx/core/view/q;)V
  :L0
    return-void
.end method
