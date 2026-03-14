.class public Landroidx/core/view/e0/c;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/core/view/e0/c$c;,
    Landroidx/core/view/e0/c$b;,
    Landroidx/core/view/e0/c$a;
  }
.end annotation

.field private static d:I

.field private final a:Landroid/view/accessibility/AccessibilityNodeInfo;

.field public b:I

.field private c:I

.method static constructor <clinit>()V
  .registers 0
    return-void
.end method

.method private constructor <init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, -1
  .line 2
    iput v0, p0, Landroidx/core/view/e0/c;->b:I
  .line 3
    iput v0, p0, Landroidx/core/view/e0/c;->c:I
  .line 4
    iput-object p1, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    return-void
.end method

.method public static K()Landroidx/core/view/e0/c;
  .registers 1
  .line 1
    invoke-static { }, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;
    move-result-object v0
    invoke-static { v0 }, Landroidx/core/view/e0/c;->v0(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/e0/c;
    move-result-object v0
    return-object v0
.end method

.method public static L(Landroid/view/View;)Landroidx/core/view/e0/c;
  .registers 1
  .line 1
    invoke-static { p0 }, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;
    move-result-object p0
    invoke-static { p0 }, Landroidx/core/view/e0/c;->v0(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/e0/c;
    move-result-object p0
    return-object p0
.end method

.method public static M(Landroidx/core/view/e0/c;)Landroidx/core/view/e0/c;
  .registers 1
  .line 1
    iget-object p0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-static { p0 }, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    move-result-object p0
    invoke-static { p0 }, Landroidx/core/view/e0/c;->v0(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/e0/c;
    move-result-object p0
    return-object p0
.end method

.method private P(Landroid/view/View;)V
  .registers 6
  .line 1
    invoke-direct { p0, p1 }, Landroidx/core/view/e0/c;->u(Landroid/view/View;)Landroid/util/SparseArray;
    move-result-object p1
    if-eqz p1, :L3
  .line 2
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    const/4 v1, 0
    const/4 v2, 0
  :L0
  .line 3
    invoke-virtual { p1 }, Landroid/util/SparseArray;->size()I
    move-result v3
    if-ge v2, v3, :L2
  .line 4
    invoke-virtual { p1, v2 }, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/lang/ref/WeakReference;
    invoke-virtual { v3 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v3
    if-nez v3, :L1
  .line 5
    invoke-static { v2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    invoke-interface { v0, v3 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  :L1
    add-int/lit8 v2, v2, 1
    goto :L0
  :L2
  .line 6
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v2
    if-ge v1, v2, :L3
  .line 7
    invoke-interface { v0, v1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/Integer;
    invoke-virtual { v2 }, Ljava/lang/Integer;->intValue()I
    move-result v2
    invoke-virtual { p1, v2 }, Landroid/util/SparseArray;->remove(I)V
    add-int/lit8 v1, v1, 1
    goto :L2
  :L3
    return-void
.end method

.method private R(IZ)V
  .registers 8
  .line 1
    invoke-virtual { p0 }, Landroidx/core/view/e0/c;->r()Landroid/os/Bundle;
    move-result-object v0
    if-eqz v0, :L2
    const-string v1, "androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY"
    const/4 v2, 0
  .line 2
    invoke-virtual { v0, v1, v2 }, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    move-result v3
    xor-int/lit8 v4, p1, -1
    and-int/2addr v3, v4
    if-eqz p2, :L0
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    or-int/2addr p1, v3
  .line 3
    invoke-virtual { v0, v1, p1 }, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
  :L2
    return-void
.end method

.method private d(Landroid/text/style/ClickableSpan;Landroid/text/Spanned;I)V
  .registers 6
    const-string v0, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY"
  .line 1
    invoke-direct { p0, v0 }, Landroidx/core/view/e0/c;->g(Ljava/lang/String;)Ljava/util/List;
    move-result-object v0
    invoke-interface { p2, p1 }, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I
    move-result v1
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-interface { v0, v1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v0, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY"
  .line 2
    invoke-direct { p0, v0 }, Landroidx/core/view/e0/c;->g(Ljava/lang/String;)Ljava/util/List;
    move-result-object v0
    invoke-interface { p2, p1 }, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I
    move-result v1
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    invoke-interface { v0, v1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v0, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY"
  .line 3
    invoke-direct { p0, v0 }, Landroidx/core/view/e0/c;->g(Ljava/lang/String;)Ljava/util/List;
    move-result-object v0
    invoke-interface { p2, p1 }, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I
    move-result p1
    invoke-static { p1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p1
    invoke-interface { v0, p1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string p1, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY"
  .line 4
    invoke-direct { p0, p1 }, Landroidx/core/view/e0/c;->g(Ljava/lang/String;)Ljava/util/List;
    move-result-object p1
    invoke-static { p3 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p2
    invoke-interface { p1, p2 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    return-void
.end method

.method private f()V
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 19
    if-lt v0, v1, :L0
  .line 2
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0 }, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;
    move-result-object v0
    const-string v1, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY"
    invoke-virtual { v0, v1 }, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
  .line 3
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0 }, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;
    move-result-object v0
    const-string v1, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY"
    invoke-virtual { v0, v1 }, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
  .line 4
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0 }, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;
    move-result-object v0
    const-string v1, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY"
    invoke-virtual { v0, v1 }, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
  .line 5
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0 }, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;
    move-result-object v0
    const-string v1, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY"
    invoke-virtual { v0, v1 }, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
  :L0
    return-void
.end method

.method private g(Ljava/lang/String;)Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/String;",
      ")",
      "Ljava/util/List<",
      "Ljava/lang/Integer;",
      ">;"
    }
  .end annotation
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 19
    if-ge v0, v1, :L0
  .line 2
    new-instance p1, Ljava/util/ArrayList;
    invoke-direct { p1 }, Ljava/util/ArrayList;-><init>()V
    return-object p1
  :L0
  .line 3
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0 }, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;
    move-result-object v0
  .line 4
    invoke-virtual { v0, p1 }, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    move-result-object v0
    if-nez v0, :L1
  .line 5
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
  .line 6
    iget-object v1, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v1 }, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;
    move-result-object v1
    invoke-virtual { v1, p1, v0 }, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
  :L1
    return-object v0
.end method

.method private static i(I)Ljava/lang/String;
  .registers 2
    const/4 v0, 1
    if-eq p0, v0, :L37
    const/4 v0, 2
    if-eq p0, v0, :L36
    sparse-switch p0, :L38
    packed-switch p0, :L39
    packed-switch p0, :L40
    const-string p0, "ACTION_UNKNOWN"
    return-object p0
  :L0
    const-string p0, "ACTION_PRESS_AND_HOLD"
    return-object p0
  :L1
    const-string p0, "ACTION_PAGE_RIGHT"
    return-object p0
  :L2
    const-string p0, "ACTION_PAGE_LEFT"
    return-object p0
  :L3
    const-string p0, "ACTION_PAGE_DOWN"
    return-object p0
  :L4
    const-string p0, "ACTION_PAGE_UP"
    return-object p0
  :L5
    const-string p0, "ACTION_HIDE_TOOLTIP"
    return-object p0
  :L6
    const-string p0, "ACTION_SHOW_TOOLTIP"
    return-object p0
  :L7
    const-string p0, "ACTION_SET_PROGRESS"
    return-object p0
  :L8
    const-string p0, "ACTION_CONTEXT_CLICK"
    return-object p0
  :L9
    const-string p0, "ACTION_SCROLL_RIGHT"
    return-object p0
  :L10
    const-string p0, "ACTION_SCROLL_DOWN"
    return-object p0
  :L11
    const-string p0, "ACTION_SCROLL_LEFT"
    return-object p0
  :L12
    const-string p0, "ACTION_SCROLL_UP"
    return-object p0
  :L13
    const-string p0, "ACTION_SCROLL_TO_POSITION"
    return-object p0
  :L14
    const-string p0, "ACTION_SHOW_ON_SCREEN"
    return-object p0
  :L15
    const-string p0, "ACTION_IME_ENTER"
    return-object p0
  :L16
    const-string p0, "ACTION_MOVE_WINDOW"
    return-object p0
  :L17
    const-string p0, "ACTION_SET_TEXT"
    return-object p0
  :L18
    const-string p0, "ACTION_COLLAPSE"
    return-object p0
  :L19
    const-string p0, "ACTION_EXPAND"
    return-object p0
  :L20
    const-string p0, "ACTION_SET_SELECTION"
    return-object p0
  :L21
    const-string p0, "ACTION_CUT"
    return-object p0
  :L22
    const-string p0, "ACTION_PASTE"
    return-object p0
  :L23
    const-string p0, "ACTION_COPY"
    return-object p0
  :L24
    const-string p0, "ACTION_SCROLL_BACKWARD"
    return-object p0
  :L25
    const-string p0, "ACTION_SCROLL_FORWARD"
    return-object p0
  :L26
    const-string p0, "ACTION_PREVIOUS_HTML_ELEMENT"
    return-object p0
  :L27
    const-string p0, "ACTION_NEXT_HTML_ELEMENT"
    return-object p0
  :L28
    const-string p0, "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY"
    return-object p0
  :L29
    const-string p0, "ACTION_NEXT_AT_MOVEMENT_GRANULARITY"
    return-object p0
  :L30
    const-string p0, "ACTION_CLEAR_ACCESSIBILITY_FOCUS"
    return-object p0
  :L31
    const-string p0, "ACTION_ACCESSIBILITY_FOCUS"
    return-object p0
  :L32
    const-string p0, "ACTION_LONG_CLICK"
    return-object p0
  :L33
    const-string p0, "ACTION_CLICK"
    return-object p0
  :L34
    const-string p0, "ACTION_CLEAR_SELECTION"
    return-object p0
  :L35
    const-string p0, "ACTION_SELECT"
    return-object p0
  :L36
    const-string p0, "ACTION_CLEAR_FOCUS"
    return-object p0
  :L37
    const-string p0, "ACTION_FOCUS"
    return-object p0
  :L38
  .sparse-switch
    4 -> :L35
    8 -> :L34
    16 -> :L33
    32 -> :L32
    64 -> :L31
    128 -> :L30
    256 -> :L29
    512 -> :L28
    1024 -> :L27
    2048 -> :L26
    4096 -> :L25
    8192 -> :L24
    16384 -> :L23
    32768 -> :L22
    65536 -> :L21
    131072 -> :L20
    262144 -> :L19
    524288 -> :L18
    2097152 -> :L17
    16908354 -> :L16
    16908372 -> :L15
  .end sparse-switch
  :L39
  .packed-switch 16908342
    :L14
    :L13
    :L12
    :L11
    :L10
    :L9
    :L8
    :L7
  .end packed-switch
  :L40
  .packed-switch 16908356
    :L6
    :L5
    :L4
    :L3
    :L2
    :L1
    :L0
  .end packed-switch
.end method

.method private k(I)Z
  .registers 5
  .line 1
    invoke-virtual { p0 }, Landroidx/core/view/e0/c;->r()Landroid/os/Bundle;
    move-result-object v0
    const/4 v1, 0
    if-nez v0, :L0
    return v1
  :L0
    const-string v2, "androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY"
  .line 2
    invoke-virtual { v0, v2, v1 }, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    move-result v0
    and-int/2addr v0, p1
    if-ne v0, p1, :L1
    const/4 v1, 1
  :L1
    return v1
.end method

.method public static p(Ljava/lang/CharSequence;)[Landroid/text/style/ClickableSpan;
  .registers 4
  .line 1
    instance-of v0, p0, Landroid/text/Spanned;
    if-eqz v0, :L0
  .line 2
    move-object v0, p0
    check-cast v0, Landroid/text/Spanned;
    const/4 v1, 0
  .line 3
    invoke-interface { p0 }, Ljava/lang/CharSequence;->length()I
    move-result p0
    const-class v2, Landroid/text/style/ClickableSpan;
    invoke-interface { v0, v1, p0, v2 }, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    move-result-object p0
    check-cast p0, [Landroid/text/style/ClickableSpan;
    return-object p0
  :L0
    const/4 p0, 0
    return-object p0
.end method

.method private s(Landroid/view/View;)Landroid/util/SparseArray;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/view/View;",
      ")",
      "Landroid/util/SparseArray<",
      "Ljava/lang/ref/WeakReference<",
      "Landroid/text/style/ClickableSpan;",
      ">;>;"
    }
  .end annotation
  .registers 4
  .line 1
    invoke-direct { p0, p1 }, Landroidx/core/view/e0/c;->u(Landroid/view/View;)Landroid/util/SparseArray;
    move-result-object v0
    if-nez v0, :L0
  .line 2
    new-instance v0, Landroid/util/SparseArray;
    invoke-direct { v0 }, Landroid/util/SparseArray;-><init>()V
  .line 3
    sget v1, Lc/g/b;->tag_accessibility_clickable_spans:I
    invoke-virtual { p1, v1, v0 }, Landroid/view/View;->setTag(ILjava/lang/Object;)V
  :L0
    return-object v0
.end method

.method private u(Landroid/view/View;)Landroid/util/SparseArray;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/view/View;",
      ")",
      "Landroid/util/SparseArray<",
      "Ljava/lang/ref/WeakReference<",
      "Landroid/text/style/ClickableSpan;",
      ">;>;"
    }
  .end annotation
  .registers 3
  .line 1
    sget v0, Lc/g/b;->tag_accessibility_clickable_spans:I
    invoke-virtual { p1, v0 }, Landroid/view/View;->getTag(I)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroid/util/SparseArray;
    return-object p1
.end method

.method public static v0(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/e0/c;
  .registers 2
  .line 1
    new-instance v0, Landroidx/core/view/e0/c;
    invoke-direct { v0, p0 }, Landroidx/core/view/e0/c;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    return-object v0
.end method

.method private x()Z
  .registers 2
    const-string v0, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY"
  .line 1
    invoke-direct { p0, v0 }, Landroidx/core/view/e0/c;->g(Ljava/lang/String;)Ljava/util/List;
    move-result-object v0
    invoke-interface { v0 }, Ljava/util/List;->isEmpty()Z
    move-result v0
    xor-int/lit8 v0, v0, 1
    return v0
.end method

.method private y(Landroid/text/style/ClickableSpan;Landroid/util/SparseArray;)I
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/text/style/ClickableSpan;",
      "Landroid/util/SparseArray<",
      "Ljava/lang/ref/WeakReference<",
      "Landroid/text/style/ClickableSpan;",
      ">;>;)I"
    }
  .end annotation
  .registers 5
    if-eqz p2, :L2
    const/4 v0, 0
  :L0
  .line 1
    invoke-virtual { p2 }, Landroid/util/SparseArray;->size()I
    move-result v1
    if-ge v0, v1, :L2
  .line 2
    invoke-virtual { p2, v0 }, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/ref/WeakReference;
    invoke-virtual { v1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroid/text/style/ClickableSpan;
  .line 3
    invoke-virtual { p1, v1 }, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L1
  .line 4
    invoke-virtual { p2, v0 }, Landroid/util/SparseArray;->keyAt(I)I
    move-result p1
    return p1
  :L1
    add-int/lit8 v0, v0, 1
    goto :L0
  :L2
  .line 5
    sget p1, Landroidx/core/view/e0/c;->d:I
    add-int/lit8 p2, p1, 1
    sput p2, Landroidx/core/view/e0/c;->d:I
    return p1
.end method

.method public A()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0 }, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z
    move-result v0
    return v0
.end method

.method public B()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0 }, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z
    move-result v0
    return v0
.end method

.method public C()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0 }, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z
    move-result v0
    return v0
.end method

.method public D()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0 }, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z
    move-result v0
    return v0
.end method

.method public E()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0 }, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z
    move-result v0
    return v0
.end method

.method public F()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0 }, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z
    move-result v0
    return v0
.end method

.method public G()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0 }, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z
    move-result v0
    return v0
.end method

.method public H()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0 }, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z
    move-result v0
    return v0
.end method

.method public I()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0 }, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z
    move-result v0
    return v0
.end method

.method public J()Z
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 26
    if-lt v0, v1, :L0
  .line 2
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0 }, Landroid/view/accessibility/AccessibilityNodeInfo;->isShowingHintText()Z
    move-result v0
    return v0
  :L0
    const/4 v0, 4
  .line 3
    invoke-direct { p0, v0 }, Landroidx/core/view/e0/c;->k(I)Z
    move-result v0
    return v0
.end method

.method public N(ILandroid/os/Bundle;)Z
  .registers 5
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 16
    if-lt v0, v1, :L0
  .line 2
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0, p1, p2 }, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(ILandroid/os/Bundle;)Z
    move-result p1
    return p1
  :L0
    const/4 p1, 0
    return p1
.end method

.method public O()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0 }, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V
    return-void
.end method

.method public Q(Z)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 16
    if-lt v0, v1, :L0
  .line 2
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0, p1 }, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V
  :L0
    return-void
.end method

.method public S(Landroid/graphics/Rect;)V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0, p1 }, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V
    return-void
.end method

.method public T(Landroid/graphics/Rect;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0, p1 }, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V
    return-void
.end method

.method public U(Z)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0, p1 }, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V
    return-void
.end method

.method public V(Z)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0, p1 }, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V
    return-void
.end method

.method public W(Ljava/lang/CharSequence;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0, p1 }, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V
    return-void
.end method

.method public X(Z)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0, p1 }, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V
    return-void
.end method

.method public Y(Ljava/lang/Object;)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 19
    if-lt v0, v1, :L2
  .line 2
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez p1, :L0
    const/4 p1, 0
    goto :L1
  :L0
  .line 3
    check-cast p1, Landroidx/core/view/e0/c$b;
    iget-object p1, p1, Landroidx/core/view/e0/c$b;->a:Ljava/lang/Object;
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
  :L1
  .line 4
    invoke-virtual { v0, p1 }, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V
  :L2
    return-void
.end method

.method public Z(Ljava/lang/Object;)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 19
    if-lt v0, v1, :L2
  .line 2
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez p1, :L0
    const/4 p1, 0
    goto :L1
  :L0
  .line 3
    check-cast p1, Landroidx/core/view/e0/c$c;
    iget-object p1, p1, Landroidx/core/view/e0/c$c;->a:Ljava/lang/Object;
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
  :L1
  .line 4
    invoke-virtual { v0, p1 }, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V
  :L2
    return-void
.end method

.method public a(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0, p1 }, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V
    return-void
.end method

.method public a0(Ljava/lang/CharSequence;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0, p1 }, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V
    return-void
.end method

.method public b(Landroidx/core/view/e0/c$a;)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 2
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-object p1, p1, Landroidx/core/view/e0/c$a;->a:Ljava/lang/Object;
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    invoke-virtual { v0, p1 }, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V
  :L0
    return-void
.end method

.method public b0(Z)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0, p1 }, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V
    return-void
.end method

.method public c(Landroid/view/View;I)V
  .registers 5
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 16
    if-lt v0, v1, :L0
  .line 2
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0, p1, p2 }, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V
  :L0
    return-void
.end method

.method public c0(Ljava/lang/CharSequence;)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 2
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0, p1 }, Landroid/view/accessibility/AccessibilityNodeInfo;->setError(Ljava/lang/CharSequence;)V
  :L0
    return-void
.end method

.method public d0(Z)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0, p1 }, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V
    return-void
.end method

.method public e(Ljava/lang/CharSequence;Landroid/view/View;)V
  .registers 8
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 19
    if-lt v0, v1, :L1
    const/16 v1, 26
    if-ge v0, v1, :L1
  .line 2
    invoke-direct { p0 }, Landroidx/core/view/e0/c;->f()V
  .line 3
    invoke-direct { p0, p2 }, Landroidx/core/view/e0/c;->P(Landroid/view/View;)V
  .line 4
    invoke-static { p1 }, Landroidx/core/view/e0/c;->p(Ljava/lang/CharSequence;)[Landroid/text/style/ClickableSpan;
    move-result-object v0
    if-eqz v0, :L1
  .line 5
    array-length v1, v0
    if-lez v1, :L1
  .line 6
    invoke-virtual { p0 }, Landroidx/core/view/e0/c;->r()Landroid/os/Bundle;
    move-result-object v1
    sget v2, Lc/g/b;->accessibility_action_clickable_span:I
    const-string v3, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY"
    invoke-virtual { v1, v3, v2 }, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
  .line 7
    invoke-direct { p0, p2 }, Landroidx/core/view/e0/c;->s(Landroid/view/View;)Landroid/util/SparseArray;
    move-result-object p2
    const/4 v1, 0
  :L0
    if-eqz v0, :L1
  .line 8
    array-length v2, v0
    if-ge v1, v2, :L1
  .line 9
    aget-object v2, v0, v1
    invoke-direct { p0, v2, p2 }, Landroidx/core/view/e0/c;->y(Landroid/text/style/ClickableSpan;Landroid/util/SparseArray;)I
    move-result v2
  .line 10
    new-instance v3, Ljava/lang/ref/WeakReference;
    aget-object v4, v0, v1
    invoke-direct { v3, v4 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    invoke-virtual { p2, v2, v3 }, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
  .line 11
    aget-object v3, v0, v1
    move-object v4, p1
    check-cast v4, Landroid/text/Spanned;
    invoke-direct { p0, v3, v4, v2 }, Landroidx/core/view/e0/c;->d(Landroid/text/style/ClickableSpan;Landroid/text/Spanned;I)V
    add-int/lit8 v1, v1, 1
    goto :L0
  :L1
    return-void
.end method

.method public e0(Z)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0, p1 }, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
  .registers 6
    const/4 v0, 1
    if-ne p0, p1, :L0
    return v0
  :L0
    const/4 v1, 0
    if-nez p1, :L1
    return v1
  :L1
  .line 1
    instance-of v2, p1, Landroidx/core/view/e0/c;
    if-nez v2, :L2
    return v1
  :L2
  .line 2
    check-cast p1, Landroidx/core/view/e0/c;
  .line 3
    iget-object v2, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v2, :L3
  .line 4
    iget-object v2, p1, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v2, :L4
    return v1
  :L3
  .line 5
    iget-object v3, p1, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v2, v3 }, Landroid/view/accessibility/AccessibilityNodeInfo;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-nez v2, :L4
    return v1
  :L4
  .line 6
    iget v2, p0, Landroidx/core/view/e0/c;->c:I
    iget v3, p1, Landroidx/core/view/e0/c;->c:I
    if-eq v2, v3, :L5
    return v1
  :L5
  .line 7
    iget v2, p0, Landroidx/core/view/e0/c;->b:I
    iget p1, p1, Landroidx/core/view/e0/c;->b:I
    if-eq v2, p1, :L6
    return v1
  :L6
    return v0
.end method

.method public f0(Z)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 28
    if-lt v0, v1, :L0
  .line 2
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0, p1 }, Landroid/view/accessibility/AccessibilityNodeInfo;->setHeading(Z)V
    goto :L1
  :L0
    const/4 v0, 2
  .line 3
    invoke-direct { p0, v0, p1 }, Landroidx/core/view/e0/c;->R(IZ)V
  :L1
    return-void
.end method

.method public g0(Ljava/lang/CharSequence;)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 26
    if-lt v0, v1, :L0
  .line 2
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0, p1 }, Landroid/view/accessibility/AccessibilityNodeInfo;->setHintText(Ljava/lang/CharSequence;)V
    goto :L1
  :L0
    const/16 v1, 19
    if-lt v0, v1, :L1
  .line 3
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0 }, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;
    move-result-object v0
    const-string v1, "androidx.view.accessibility.AccessibilityNodeInfoCompat.HINT_TEXT_KEY"
    invoke-virtual { v0, v1, p1 }, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V
  :L1
    return-void
.end method

.method public h()Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/List<",
      "Landroidx/core/view/e0/c$a;",
      ">;"
    }
  .end annotation
  .registers 7
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 2
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0 }, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionList()Ljava/util/List;
    move-result-object v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    if-eqz v0, :L4
  .line 3
    new-instance v1, Ljava/util/ArrayList;
    invoke-direct { v1 }, Ljava/util/ArrayList;-><init>()V
  .line 4
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v2
    const/4 v3, 0
  :L2
    if-ge v3, v2, :L3
  .line 5
    invoke-interface { v0, v3 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v4
  .line 6
    new-instance v5, Landroidx/core/view/e0/c$a;
    invoke-direct { v5, v4 }, Landroidx/core/view/e0/c$a;-><init>(Ljava/lang/Object;)V
    invoke-interface { v1, v5 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    add-int/lit8 v3, v3, 1
    goto :L2
  :L3
    return-object v1
  :L4
  .line 7
    invoke-static { }, Ljava/util/Collections;->emptyList()Ljava/util/List;
    move-result-object v0
    return-object v0
.end method

.method public h0(I)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 21
    if-lt v0, v1, :L0
  .line 2
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0, p1 }, Landroid/view/accessibility/AccessibilityNodeInfo;->setMaxTextLength(I)V
  :L0
    return-void
.end method

.method public hashCode()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :L0
    const/4 v0, 0
    goto :L1
  :L0
    invoke-virtual { v0 }, Landroid/view/accessibility/AccessibilityNodeInfo;->hashCode()I
    move-result v0
  :L1
    return v0
.end method

.method public i0(Ljava/lang/CharSequence;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0, p1 }, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V
    return-void
.end method

.method public j()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0 }, Landroid/view/accessibility/AccessibilityNodeInfo;->getActions()I
    move-result v0
    return v0
.end method

.method public j0(Ljava/lang/CharSequence;)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 28
    if-lt v0, v1, :L0
  .line 2
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0, p1 }, Landroid/view/accessibility/AccessibilityNodeInfo;->setPaneTitle(Ljava/lang/CharSequence;)V
    goto :L1
  :L0
    const/16 v1, 19
    if-lt v0, v1, :L1
  .line 3
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0 }, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;
    move-result-object v0
    const-string v1, "androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY"
    invoke-virtual { v0, v1, p1 }, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V
  :L1
    return-void
.end method

.method public k0(Landroid/view/View;)V
  .registers 3
    const/4 v0, -1
  .line 1
    iput v0, p0, Landroidx/core/view/e0/c;->b:I
  .line 2
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0, p1 }, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V
    return-void
.end method

.method public l(Landroid/graphics/Rect;)V
  .annotation runtime Ljava/lang/Deprecated;
  .end annotation
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0, p1 }, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V
    return-void
.end method

.method public l0(Landroid/view/View;I)V
  .registers 5
  .line 1
    iput p2, p0, Landroidx/core/view/e0/c;->b:I
  .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 16
    if-lt v0, v1, :L0
  .line 3
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0, p1, p2 }, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V
  :L0
    return-void
.end method

.method public m(Landroid/graphics/Rect;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0, p1 }, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V
    return-void
.end method

.method public m0(Z)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 28
    if-lt v0, v1, :L0
  .line 2
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0, p1 }, Landroid/view/accessibility/AccessibilityNodeInfo;->setScreenReaderFocusable(Z)V
    goto :L1
  :L0
    const/4 v0, 1
  .line 3
    invoke-direct { p0, v0, p1 }, Landroidx/core/view/e0/c;->R(IZ)V
  :L1
    return-void
.end method

.method public n()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0 }, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I
    move-result v0
    return v0
.end method

.method public n0(Z)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0, p1 }, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V
    return-void
.end method

.method public o()Ljava/lang/CharSequence;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0 }, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;
    move-result-object v0
    return-object v0
.end method

.method public o0(Z)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 26
    if-lt v0, v1, :L0
  .line 2
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0, p1 }, Landroid/view/accessibility/AccessibilityNodeInfo;->setShowingHintText(Z)V
    goto :L1
  :L0
    const/4 v0, 4
  .line 3
    invoke-direct { p0, v0, p1 }, Landroidx/core/view/e0/c;->R(IZ)V
  :L1
    return-void
.end method

.method public p0(Landroid/view/View;I)V
  .registers 5
  .line 1
    iput p2, p0, Landroidx/core/view/e0/c;->c:I
  .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 16
    if-lt v0, v1, :L0
  .line 3
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0, p1, p2 }, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V
  :L0
    return-void
.end method

.method public q()Ljava/lang/CharSequence;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0 }, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;
    move-result-object v0
    return-object v0
.end method

.method public q0(Ljava/lang/CharSequence;)V
  .registers 4
  .line 1
    invoke-static { }, Lc/g/g/a;->a()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0, p1 }, Landroid/view/accessibility/AccessibilityNodeInfo;->setStateDescription(Ljava/lang/CharSequence;)V
    goto :L1
  :L0
  .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 19
    if-lt v0, v1, :L1
  .line 4
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0 }, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;
    move-result-object v0
    const-string v1, "androidx.view.accessibility.AccessibilityNodeInfoCompat.STATE_DESCRIPTION_KEY"
    invoke-virtual { v0, v1, p1 }, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V
  :L1
    return-void
.end method

.method public r()Landroid/os/Bundle;
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 19
    if-lt v0, v1, :L0
  .line 2
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0 }, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;
    move-result-object v0
    return-object v0
  :L0
  .line 3
    new-instance v0, Landroid/os/Bundle;
    invoke-direct { v0 }, Landroid/os/Bundle;-><init>()V
    return-object v0
.end method

.method public r0(Ljava/lang/CharSequence;)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0, p1 }, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V
    return-void
.end method

.method public s0(Landroid/view/View;)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 22
    if-lt v0, v1, :L0
  .line 2
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0, p1 }, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalAfter(Landroid/view/View;)V
  :L0
    return-void
.end method

.method public t()Ljava/lang/CharSequence;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0 }, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;
    move-result-object v0
    return-object v0
.end method

.method public t0(Z)V
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 16
    if-lt v0, v1, :L0
  .line 2
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0, p1 }, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V
  :L0
    return-void
.end method

.method public toString()Ljava/lang/String;
  .registers 9
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
  .line 2
    invoke-super { p0 }, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 3
    new-instance v1, Landroid/graphics/Rect;
    invoke-direct { v1 }, Landroid/graphics/Rect;-><init>()V
  .line 4
    invoke-virtual { p0, v1 }, Landroidx/core/view/e0/c;->l(Landroid/graphics/Rect;)V
  .line 5
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "; boundsInParent: "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 6
    invoke-virtual { p0, v1 }, Landroidx/core/view/e0/c;->m(Landroid/graphics/Rect;)V
  .line 7
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "; boundsInScreen: "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "; packageName: "
  .line 8
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Landroidx/core/view/e0/c;->t()Ljava/lang/CharSequence;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    const-string v1, "; className: "
  .line 9
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Landroidx/core/view/e0/c;->o()Ljava/lang/CharSequence;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    const-string v1, "; text: "
  .line 10
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Landroidx/core/view/e0/c;->v()Ljava/lang/CharSequence;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    const-string v1, "; contentDescription: "
  .line 11
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Landroidx/core/view/e0/c;->q()Ljava/lang/CharSequence;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    const-string v1, "; viewId: "
  .line 12
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Landroidx/core/view/e0/c;->w()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "; checkable: "
  .line 13
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Landroidx/core/view/e0/c;->z()Z
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    const-string v1, "; checked: "
  .line 14
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Landroidx/core/view/e0/c;->A()Z
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    const-string v1, "; focusable: "
  .line 15
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Landroidx/core/view/e0/c;->D()Z
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    const-string v1, "; focused: "
  .line 16
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Landroidx/core/view/e0/c;->E()Z
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    const-string v1, "; selected: "
  .line 17
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Landroidx/core/view/e0/c;->I()Z
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    const-string v1, "; clickable: "
  .line 18
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Landroidx/core/view/e0/c;->B()Z
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    const-string v1, "; longClickable: "
  .line 19
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Landroidx/core/view/e0/c;->F()Z
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    const-string v1, "; enabled: "
  .line 20
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Landroidx/core/view/e0/c;->C()Z
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    const-string v1, "; password: "
  .line 21
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Landroidx/core/view/e0/c;->G()Z
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
  .line 22
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "; scrollable: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Landroidx/core/view/e0/c;->H()Z
    move-result v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "; ["
  .line 23
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 24
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const-string v2, ", "
    const/4 v3, 1
    const/16 v4, 21
    if-lt v1, v4, :L3
  .line 25
    invoke-virtual { p0 }, Landroidx/core/view/e0/c;->h()Ljava/util/List;
    move-result-object v1
    const/4 v4, 0
  :L0
  .line 26
    invoke-interface { v1 }, Ljava/util/List;->size()I
    move-result v5
    if-ge v4, v5, :L5
  .line 27
    invoke-interface { v1, v4 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Landroidx/core/view/e0/c$a;
  .line 28
    invoke-virtual { v5 }, Landroidx/core/view/e0/c$a;->b()I
    move-result v6
    invoke-static { v6 }, Landroidx/core/view/e0/c;->i(I)Ljava/lang/String;
    move-result-object v6
    const-string v7, "ACTION_UNKNOWN"
  .line 29
    invoke-virtual { v6, v7 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v7
    if-eqz v7, :L1
    invoke-virtual { v5 }, Landroidx/core/view/e0/c$a;->c()Ljava/lang/CharSequence;
    move-result-object v7
    if-eqz v7, :L1
  .line 30
    invoke-virtual { v5 }, Landroidx/core/view/e0/c$a;->c()Ljava/lang/CharSequence;
    move-result-object v5
    invoke-interface { v5 }, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    move-result-object v6
  :L1
  .line 31
    invoke-virtual { v0, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 32
    invoke-interface { v1 }, Ljava/util/List;->size()I
    move-result v5
    sub-int/2addr v5, v3
    if-eq v4, v5, :L2
  .line 33
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  :L2
    add-int/lit8 v4, v4, 1
    goto :L0
  :L3
  .line 34
    invoke-virtual { p0 }, Landroidx/core/view/e0/c;->j()I
    move-result v1
  :L4
    if-eqz v1, :L5
  .line 35
    invoke-static { v1 }, Ljava/lang/Integer;->numberOfTrailingZeros(I)I
    move-result v4
    shl-int v4, v3, v4
    xor-int/lit8 v5, v4, -1
    and-int/2addr v1, v5
  .line 36
    invoke-static { v4 }, Landroidx/core/view/e0/c;->i(I)Ljava/lang/String;
    move-result-object v4
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    if-eqz v1, :L4
  .line 37
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    goto :L4
  :L5
    const-string v1, "]"
  .line 38
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 39
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public u0()Landroid/view/accessibility/AccessibilityNodeInfo;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    return-object v0
.end method

.method public v()Ljava/lang/CharSequence;
  .registers 11
  .line 1
    invoke-direct { p0 }, Landroidx/core/view/e0/c;->x()Z
    move-result v0
    if-eqz v0, :L2
    const-string v0, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY"
  .line 2
    invoke-direct { p0, v0 }, Landroidx/core/view/e0/c;->g(Ljava/lang/String;)Ljava/util/List;
    move-result-object v0
    const-string v1, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY"
  .line 3
    invoke-direct { p0, v1 }, Landroidx/core/view/e0/c;->g(Ljava/lang/String;)Ljava/util/List;
    move-result-object v1
    const-string v2, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY"
  .line 4
    invoke-direct { p0, v2 }, Landroidx/core/view/e0/c;->g(Ljava/lang/String;)Ljava/util/List;
    move-result-object v2
    const-string v3, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY"
  .line 5
    invoke-direct { p0, v3 }, Landroidx/core/view/e0/c;->g(Ljava/lang/String;)Ljava/util/List;
    move-result-object v3
  .line 6
    new-instance v4, Landroid/text/SpannableString;
    iget-object v5, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v5 }, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;
    move-result-object v5
    iget-object v6, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
  .line 7
    invoke-virtual { v6 }, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;
    move-result-object v6
    invoke-interface { v6 }, Ljava/lang/CharSequence;->length()I
    move-result v6
    const/4 v7, 0
  .line 8
    invoke-static { v5, v7, v6 }, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;
    move-result-object v5
    invoke-direct { v4, v5 }, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V
  :L0
  .line 9
    invoke-interface { v0 }, Ljava/util/List;->size()I
    move-result v5
    if-ge v7, v5, :L1
  .line 10
    new-instance v5, Landroidx/core/view/e0/a;
    invoke-interface { v3, v7 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v6
    check-cast v6, Ljava/lang/Integer;
    invoke-virtual { v6 }, Ljava/lang/Integer;->intValue()I
    move-result v6
  .line 11
    invoke-virtual { p0 }, Landroidx/core/view/e0/c;->r()Landroid/os/Bundle;
    move-result-object v8
    const-string v9, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY"
    invoke-virtual { v8, v9 }, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    move-result v8
    invoke-direct { v5, v6, p0, v8 }, Landroidx/core/view/e0/a;-><init>(ILandroidx/core/view/e0/c;I)V
  .line 12
    invoke-interface { v0, v7 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v6
    check-cast v6, Ljava/lang/Integer;
    invoke-virtual { v6 }, Ljava/lang/Integer;->intValue()I
    move-result v6
    invoke-interface { v1, v7 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v8
    check-cast v8, Ljava/lang/Integer;
    invoke-virtual { v8 }, Ljava/lang/Integer;->intValue()I
    move-result v8
    invoke-interface { v2, v7 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v9
    check-cast v9, Ljava/lang/Integer;
    invoke-virtual { v9 }, Ljava/lang/Integer;->intValue()I
    move-result v9
  .line 13
    invoke-interface { v4, v5, v6, v8, v9 }, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V
    add-int/lit8 v7, v7, 1
    goto :L0
  :L1
    return-object v4
  :L2
  .line 14
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0 }, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;
    move-result-object v0
    return-object v0
.end method

.method public w()Ljava/lang/String;
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 18
    if-lt v0, v1, :L0
  .line 2
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0 }, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;
    move-result-object v0
    return-object v0
  :L0
    const/4 v0, 0
    return-object v0
.end method

.method public z()Z
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/core/view/e0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual { v0 }, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z
    move-result v0
    return v0
.end method
