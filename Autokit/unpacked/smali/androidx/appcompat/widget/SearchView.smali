.class public Landroidx/appcompat/widget/SearchView;
.super Landroidx/appcompat/widget/g0;
.implements Lc/a/o/c;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/appcompat/widget/SearchView$n;,
    Landroidx/appcompat/widget/SearchView$SearchAutoComplete;,
    Landroidx/appcompat/widget/SearchView$p;,
    Landroidx/appcompat/widget/SearchView$o;,
    Landroidx/appcompat/widget/SearchView$m;,
    Landroidx/appcompat/widget/SearchView$k;,
    Landroidx/appcompat/widget/SearchView$l;
  }
.end annotation

.field final static r0:Landroidx/appcompat/widget/SearchView$n;

.field private A:Landroid/graphics/Rect;

.field private B:Landroid/graphics/Rect;

.field private C:[I

.field private D:[I

.field private final E:Landroid/widget/ImageView;

.field private final F:Landroid/graphics/drawable/Drawable;

.field private final G:I

.field private final H:I

.field private final I:Landroid/content/Intent;

.field private final J:Landroid/content/Intent;

.field private final K:Ljava/lang/CharSequence;

.field private L:Landroidx/appcompat/widget/SearchView$l;

.field private M:Landroidx/appcompat/widget/SearchView$k;

.field N:Landroid/view/View$OnFocusChangeListener;

.field private O:Landroidx/appcompat/widget/SearchView$m;

.field private P:Landroid/view/View$OnClickListener;

.field private Q:Z

.field private R:Z

.field S:Lc/h/a/a;

.field private T:Z

.field private U:Ljava/lang/CharSequence;

.field private V:Z

.field private W:Z

.field private a0:I

.field private b0:Z

.field private c0:Ljava/lang/CharSequence;

.field private d0:Ljava/lang/CharSequence;

.field private e0:Z

.field private f0:I

.field g0:Landroid/app/SearchableInfo;

.field private h0:Landroid/os/Bundle;

.field private final i0:Ljava/lang/Runnable;

.field private j0:Ljava/lang/Runnable;

.field private final k0:Ljava/util/WeakHashMap;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/WeakHashMap<",
      "Ljava/lang/String;",
      "Landroid/graphics/drawable/Drawable$ConstantState;",
      ">;"
    }
  .end annotation
.end field

.field private final l0:Landroid/view/View$OnClickListener;

.field m0:Landroid/view/View$OnKeyListener;

.field private final n0:Landroid/widget/TextView$OnEditorActionListener;

.field private final o0:Landroid/widget/AdapterView$OnItemClickListener;

.field private final p0:Landroid/widget/AdapterView$OnItemSelectedListener;

.field final q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

.field private q0:Landroid/text/TextWatcher;

.field private final r:Landroid/view/View;

.field private final s:Landroid/view/View;

.field private final t:Landroid/view/View;

.field final u:Landroid/widget/ImageView;

.field final v:Landroid/widget/ImageView;

.field final w:Landroid/widget/ImageView;

.field final x:Landroid/widget/ImageView;

.field private final y:Landroid/view/View;

.field private z:Landroidx/appcompat/widget/SearchView$p;

.method static constructor <clinit>()V
  .registers 2
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 29
    if-ge v0, v1, :L0
    new-instance v0, Landroidx/appcompat/widget/SearchView$n;
    invoke-direct { v0 }, Landroidx/appcompat/widget/SearchView$n;-><init>()V
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    sput-object v0, Landroidx/appcompat/widget/SearchView;->r0:Landroidx/appcompat/widget/SearchView$n;
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
  .registers 3
    const/4 v0, 0
  .line 1
    invoke-direct { p0, p1, v0 }, Landroidx/appcompat/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
  .registers 4
  .line 2
    sget v0, Lc/a/a;->searchViewStyle:I
    invoke-direct { p0, p1, p2, v0 }, Landroidx/appcompat/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .registers 7
  .line 3
    invoke-direct { p0, p1, p2, p3 }, Landroidx/appcompat/widget/g0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
  .line 4
    new-instance v0, Landroid/graphics/Rect;
    invoke-direct { v0 }, Landroid/graphics/Rect;-><init>()V
    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->A:Landroid/graphics/Rect;
  .line 5
    new-instance v0, Landroid/graphics/Rect;
    invoke-direct { v0 }, Landroid/graphics/Rect;-><init>()V
    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->B:Landroid/graphics/Rect;
    const/4 v0, 2
    new-array v1, v0, [I
  .line 6
    iput-object v1, p0, Landroidx/appcompat/widget/SearchView;->C:[I
    new-array v0, v0, [I
  .line 7
    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->D:[I
  .line 8
    new-instance v0, Landroidx/appcompat/widget/SearchView$b;
    invoke-direct { v0, p0 }, Landroidx/appcompat/widget/SearchView$b;-><init>(Landroidx/appcompat/widget/SearchView;)V
    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->i0:Ljava/lang/Runnable;
  .line 9
    new-instance v0, Landroidx/appcompat/widget/SearchView$c;
    invoke-direct { v0, p0 }, Landroidx/appcompat/widget/SearchView$c;-><init>(Landroidx/appcompat/widget/SearchView;)V
    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->j0:Ljava/lang/Runnable;
  .line 10
    new-instance v0, Ljava/util/WeakHashMap;
    invoke-direct { v0 }, Ljava/util/WeakHashMap;-><init>()V
    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->k0:Ljava/util/WeakHashMap;
  .line 11
    new-instance v0, Landroidx/appcompat/widget/SearchView$f;
    invoke-direct { v0, p0 }, Landroidx/appcompat/widget/SearchView$f;-><init>(Landroidx/appcompat/widget/SearchView;)V
    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->l0:Landroid/view/View$OnClickListener;
  .line 12
    new-instance v0, Landroidx/appcompat/widget/SearchView$g;
    invoke-direct { v0, p0 }, Landroidx/appcompat/widget/SearchView$g;-><init>(Landroidx/appcompat/widget/SearchView;)V
    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->m0:Landroid/view/View$OnKeyListener;
  .line 13
    new-instance v0, Landroidx/appcompat/widget/SearchView$h;
    invoke-direct { v0, p0 }, Landroidx/appcompat/widget/SearchView$h;-><init>(Landroidx/appcompat/widget/SearchView;)V
    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->n0:Landroid/widget/TextView$OnEditorActionListener;
  .line 14
    new-instance v0, Landroidx/appcompat/widget/SearchView$i;
    invoke-direct { v0, p0 }, Landroidx/appcompat/widget/SearchView$i;-><init>(Landroidx/appcompat/widget/SearchView;)V
    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->o0:Landroid/widget/AdapterView$OnItemClickListener;
  .line 15
    new-instance v0, Landroidx/appcompat/widget/SearchView$j;
    invoke-direct { v0, p0 }, Landroidx/appcompat/widget/SearchView$j;-><init>(Landroidx/appcompat/widget/SearchView;)V
    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->p0:Landroid/widget/AdapterView$OnItemSelectedListener;
  .line 16
    new-instance v0, Landroidx/appcompat/widget/SearchView$a;
    invoke-direct { v0, p0 }, Landroidx/appcompat/widget/SearchView$a;-><init>(Landroidx/appcompat/widget/SearchView;)V
    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->q0:Landroid/text/TextWatcher;
  .line 17
    sget-object v0, Lc/a/j;->SearchView:[I
    const/4 v1, 0
    invoke-static { p1, p2, v0, p3, v1 }, Landroidx/appcompat/widget/u0;->v(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/u0;
    move-result-object p2
  .line 18
    invoke-static { p1 }, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
    move-result-object p1
  .line 19
    sget p3, Lc/a/j;->SearchView_layout:I
    sget v0, Lc/a/g;->abc_search_view:I
    invoke-virtual { p2, p3, v0 }, Landroidx/appcompat/widget/u0;->n(II)I
    move-result p3
    const/4 v0, 1
  .line 20
    invoke-virtual { p1, p3, p0, v0 }, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
  .line 21
    sget p1, Lc/a/f;->search_src_text:I
    invoke-virtual { p0, p1 }, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
    move-result-object p1
    check-cast p1, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
  .line 22
    invoke-virtual { p1, p0 }, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setSearchView(Landroidx/appcompat/widget/SearchView;)V
  .line 23
    sget p1, Lc/a/f;->search_edit_frame:I
    invoke-virtual { p0, p1 }, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
    move-result-object p1
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->r:Landroid/view/View;
  .line 24
    sget p1, Lc/a/f;->search_plate:I
    invoke-virtual { p0, p1 }, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
    move-result-object p1
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->s:Landroid/view/View;
  .line 25
    sget p1, Lc/a/f;->submit_area:I
    invoke-virtual { p0, p1 }, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
    move-result-object p1
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->t:Landroid/view/View;
  .line 26
    sget p1, Lc/a/f;->search_button:I
    invoke-virtual { p0, p1 }, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
    move-result-object p1
    check-cast p1, Landroid/widget/ImageView;
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->u:Landroid/widget/ImageView;
  .line 27
    sget p1, Lc/a/f;->search_go_btn:I
    invoke-virtual { p0, p1 }, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
    move-result-object p1
    check-cast p1, Landroid/widget/ImageView;
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->v:Landroid/widget/ImageView;
  .line 28
    sget p1, Lc/a/f;->search_close_btn:I
    invoke-virtual { p0, p1 }, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
    move-result-object p1
    check-cast p1, Landroid/widget/ImageView;
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->w:Landroid/widget/ImageView;
  .line 29
    sget p1, Lc/a/f;->search_voice_btn:I
    invoke-virtual { p0, p1 }, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
    move-result-object p1
    check-cast p1, Landroid/widget/ImageView;
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->x:Landroid/widget/ImageView;
  .line 30
    sget p1, Lc/a/f;->search_mag_icon:I
    invoke-virtual { p0, p1 }, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
    move-result-object p1
    check-cast p1, Landroid/widget/ImageView;
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->E:Landroid/widget/ImageView;
  .line 31
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->s:Landroid/view/View;
    sget p3, Lc/a/j;->SearchView_queryBackground:I
  .line 32
    invoke-virtual { p2, p3 }, Landroidx/appcompat/widget/u0;->g(I)Landroid/graphics/drawable/Drawable;
    move-result-object p3
  .line 33
    invoke-static { p1, p3 }, Landroidx/core/view/v;->r0(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
  .line 34
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->t:Landroid/view/View;
    sget p3, Lc/a/j;->SearchView_submitBackground:I
  .line 35
    invoke-virtual { p2, p3 }, Landroidx/appcompat/widget/u0;->g(I)Landroid/graphics/drawable/Drawable;
    move-result-object p3
  .line 36
    invoke-static { p1, p3 }, Landroidx/core/view/v;->r0(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
  .line 37
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->u:Landroid/widget/ImageView;
    sget p3, Lc/a/j;->SearchView_searchIcon:I
    invoke-virtual { p2, p3 }, Landroidx/appcompat/widget/u0;->g(I)Landroid/graphics/drawable/Drawable;
    move-result-object p3
    invoke-virtual { p1, p3 }, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
  .line 38
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->v:Landroid/widget/ImageView;
    sget p3, Lc/a/j;->SearchView_goIcon:I
    invoke-virtual { p2, p3 }, Landroidx/appcompat/widget/u0;->g(I)Landroid/graphics/drawable/Drawable;
    move-result-object p3
    invoke-virtual { p1, p3 }, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
  .line 39
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->w:Landroid/widget/ImageView;
    sget p3, Lc/a/j;->SearchView_closeIcon:I
    invoke-virtual { p2, p3 }, Landroidx/appcompat/widget/u0;->g(I)Landroid/graphics/drawable/Drawable;
    move-result-object p3
    invoke-virtual { p1, p3 }, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
  .line 40
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->x:Landroid/widget/ImageView;
    sget p3, Lc/a/j;->SearchView_voiceIcon:I
    invoke-virtual { p2, p3 }, Landroidx/appcompat/widget/u0;->g(I)Landroid/graphics/drawable/Drawable;
    move-result-object p3
    invoke-virtual { p1, p3 }, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
  .line 41
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->E:Landroid/widget/ImageView;
    sget p3, Lc/a/j;->SearchView_searchIcon:I
    invoke-virtual { p2, p3 }, Landroidx/appcompat/widget/u0;->g(I)Landroid/graphics/drawable/Drawable;
    move-result-object p3
    invoke-virtual { p1, p3 }, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
  .line 42
    sget p1, Lc/a/j;->SearchView_searchHintIcon:I
    invoke-virtual { p2, p1 }, Landroidx/appcompat/widget/u0;->g(I)Landroid/graphics/drawable/Drawable;
    move-result-object p1
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->F:Landroid/graphics/drawable/Drawable;
  .line 43
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->u:Landroid/widget/ImageView;
  .line 44
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;
    move-result-object p3
    sget v2, Lc/a/h;->abc_searchview_description_search:I
    invoke-virtual { p3, v2 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object p3
  .line 45
    invoke-static { p1, p3 }, Landroidx/appcompat/widget/w0;->a(Landroid/view/View;Ljava/lang/CharSequence;)V
  .line 46
    sget p1, Lc/a/j;->SearchView_suggestionRowLayout:I
    sget p3, Lc/a/g;->abc_search_dropdown_item_icons_2line:I
    invoke-virtual { p2, p1, p3 }, Landroidx/appcompat/widget/u0;->n(II)I
    move-result p1
    iput p1, p0, Landroidx/appcompat/widget/SearchView;->G:I
  .line 47
    sget p1, Lc/a/j;->SearchView_commitIcon:I
    invoke-virtual { p2, p1, v1 }, Landroidx/appcompat/widget/u0;->n(II)I
    move-result p1
    iput p1, p0, Landroidx/appcompat/widget/SearchView;->H:I
  .line 48
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->u:Landroid/widget/ImageView;
    iget-object p3, p0, Landroidx/appcompat/widget/SearchView;->l0:Landroid/view/View$OnClickListener;
    invoke-virtual { p1, p3 }, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 49
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->w:Landroid/widget/ImageView;
    iget-object p3, p0, Landroidx/appcompat/widget/SearchView;->l0:Landroid/view/View$OnClickListener;
    invoke-virtual { p1, p3 }, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 50
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->v:Landroid/widget/ImageView;
    iget-object p3, p0, Landroidx/appcompat/widget/SearchView;->l0:Landroid/view/View$OnClickListener;
    invoke-virtual { p1, p3 }, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 51
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->x:Landroid/widget/ImageView;
    iget-object p3, p0, Landroidx/appcompat/widget/SearchView;->l0:Landroid/view/View$OnClickListener;
    invoke-virtual { p1, p3 }, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 52
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    iget-object p3, p0, Landroidx/appcompat/widget/SearchView;->l0:Landroid/view/View$OnClickListener;
    invoke-virtual { p1, p3 }, Landroid/widget/AutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 53
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    iget-object p3, p0, Landroidx/appcompat/widget/SearchView;->q0:Landroid/text/TextWatcher;
    invoke-virtual { p1, p3 }, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V
  .line 54
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    iget-object p3, p0, Landroidx/appcompat/widget/SearchView;->n0:Landroid/widget/TextView$OnEditorActionListener;
    invoke-virtual { p1, p3 }, Landroid/widget/AutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
  .line 55
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    iget-object p3, p0, Landroidx/appcompat/widget/SearchView;->o0:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-virtual { p1, p3 }, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
  .line 56
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    iget-object p3, p0, Landroidx/appcompat/widget/SearchView;->p0:Landroid/widget/AdapterView$OnItemSelectedListener;
    invoke-virtual { p1, p3 }, Landroid/widget/AutoCompleteTextView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
  .line 57
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    iget-object p3, p0, Landroidx/appcompat/widget/SearchView;->m0:Landroid/view/View$OnKeyListener;
    invoke-virtual { p1, p3 }, Landroid/widget/AutoCompleteTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V
  .line 58
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    new-instance p3, Landroidx/appcompat/widget/SearchView$d;
    invoke-direct { p3, p0 }, Landroidx/appcompat/widget/SearchView$d;-><init>(Landroidx/appcompat/widget/SearchView;)V
    invoke-virtual { p1, p3 }, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
  .line 59
    sget p1, Lc/a/j;->SearchView_iconifiedByDefault:I
    invoke-virtual { p2, p1, v0 }, Landroidx/appcompat/widget/u0;->a(IZ)Z
    move-result p1
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/SearchView;->setIconifiedByDefault(Z)V
  .line 60
    sget p1, Lc/a/j;->SearchView_android_maxWidth:I
    const/4 p3, -1
    invoke-virtual { p2, p1, p3 }, Landroidx/appcompat/widget/u0;->f(II)I
    move-result p1
    if-eq p1, p3, :L0
  .line 61
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/SearchView;->setMaxWidth(I)V
  :L0
  .line 62
    sget p1, Lc/a/j;->SearchView_defaultQueryHint:I
    invoke-virtual { p2, p1 }, Landroidx/appcompat/widget/u0;->p(I)Ljava/lang/CharSequence;
    move-result-object p1
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->K:Ljava/lang/CharSequence;
  .line 63
    sget p1, Lc/a/j;->SearchView_queryHint:I
    invoke-virtual { p2, p1 }, Landroidx/appcompat/widget/u0;->p(I)Ljava/lang/CharSequence;
    move-result-object p1
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->U:Ljava/lang/CharSequence;
  .line 64
    sget p1, Lc/a/j;->SearchView_android_imeOptions:I
    invoke-virtual { p2, p1, p3 }, Landroidx/appcompat/widget/u0;->k(II)I
    move-result p1
    if-eq p1, p3, :L1
  .line 65
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/SearchView;->setImeOptions(I)V
  :L1
  .line 66
    sget p1, Lc/a/j;->SearchView_android_inputType:I
    invoke-virtual { p2, p1, p3 }, Landroidx/appcompat/widget/u0;->k(II)I
    move-result p1
    if-eq p1, p3, :L2
  .line 67
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/SearchView;->setInputType(I)V
  :L2
  .line 68
    sget p1, Lc/a/j;->SearchView_android_focusable:I
    invoke-virtual { p2, p1, v0 }, Landroidx/appcompat/widget/u0;->a(IZ)Z
    move-result p1
  .line 69
    invoke-virtual { p0, p1 }, Landroid/view/ViewGroup;->setFocusable(Z)V
  .line 70
    invoke-virtual { p2 }, Landroidx/appcompat/widget/u0;->w()V
  .line 71
    new-instance p1, Landroid/content/Intent;
    const-string p2, "android.speech.action.WEB_SEARCH"
    invoke-direct { p1, p2 }, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->I:Landroid/content/Intent;
    const/high16 p2, 4096
  .line 72
    invoke-virtual { p1, p2 }, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
  .line 73
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->I:Landroid/content/Intent;
    const-string p3, "android.speech.extra.LANGUAGE_MODEL"
    const-string v0, "web_search"
    invoke-virtual { p1, p3, v0 }, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
  .line 74
    new-instance p1, Landroid/content/Intent;
    const-string p3, "android.speech.action.RECOGNIZE_SPEECH"
    invoke-direct { p1, p3 }, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->J:Landroid/content/Intent;
  .line 75
    invoke-virtual { p1, p2 }, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
  .line 76
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    invoke-virtual { p1 }, Landroid/widget/AutoCompleteTextView;->getDropDownAnchor()I
    move-result p1
    invoke-virtual { p0, p1 }, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
    move-result-object p1
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->y:Landroid/view/View;
    if-eqz p1, :L3
  .line 77
    new-instance p2, Landroidx/appcompat/widget/SearchView$e;
    invoke-direct { p2, p0 }, Landroidx/appcompat/widget/SearchView$e;-><init>(Landroidx/appcompat/widget/SearchView;)V
    invoke-virtual { p1, p2 }, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
  :L3
  .line 78
    iget-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->Q:Z
    invoke-direct { p0, p1 }, Landroidx/appcompat/widget/SearchView;->k0(Z)V
  .line 79
    invoke-direct { p0 }, Landroidx/appcompat/widget/SearchView;->g0()V
    return-void
.end method

.method private C(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
  .registers 8
  .line 1
    new-instance v0, Landroid/content/Intent;
    invoke-direct { v0, p1 }, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    const/high16 p1, 4096
  .line 2
    invoke-virtual { v0, p1 }, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    if-eqz p2, :L0
  .line 3
    invoke-virtual { v0, p2 }, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
  :L0
  .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->d0:Ljava/lang/CharSequence;
    const-string p2, "user_query"
    invoke-virtual { v0, p2, p1 }, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;
    if-eqz p4, :L1
    const-string p1, "query"
  .line 5
    invoke-virtual { v0, p1, p4 }, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
  :L1
    if-eqz p3, :L2
    const-string p1, "intent_extra_data_key"
  .line 6
    invoke-virtual { v0, p1, p3 }, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
  :L2
  .line 7
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->h0:Landroid/os/Bundle;
    if-eqz p1, :L3
    const-string p2, "app_data"
  .line 8
    invoke-virtual { v0, p2, p1 }, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
  :L3
    if-eqz p5, :L4
    const-string p1, "action_key"
  .line 9
    invoke-virtual { v0, p1, p5 }, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    const-string p1, "action_msg"
  .line 10
    invoke-virtual { v0, p1, p6 }, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
  :L4
  .line 11
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->g0:Landroid/app/SearchableInfo;
    invoke-virtual { p1 }, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;
    move-result-object p1
    invoke-virtual { v0, p1 }, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    return-object v0
.end method

.method private D(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;
  .catch Ljava/lang/RuntimeException; { :L0 .. :L7 } :L8
  .catch Ljava/lang/RuntimeException; { :L8 .. :L9 } :L10
  .registers 13
    const/4 v0, 0
  :L0
    const-string v1, "suggest_intent_action"
  .line 1
    invoke-static { p1, v1 }, Landroidx/appcompat/widget/o0;->o(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    if-nez v1, :L1
  .line 2
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->g0:Landroid/app/SearchableInfo;
    invoke-virtual { v1 }, Landroid/app/SearchableInfo;->getSuggestIntentAction()Ljava/lang/String;
    move-result-object v1
  :L1
    if-nez v1, :L2
    const-string v1, "android.intent.action.SEARCH"
  :L2
    move-object v3, v1
    const-string v1, "suggest_intent_data"
  .line 3
    invoke-static { p1, v1 }, Landroidx/appcompat/widget/o0;->o(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    if-nez v1, :L3
  .line 4
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->g0:Landroid/app/SearchableInfo;
    invoke-virtual { v1 }, Landroid/app/SearchableInfo;->getSuggestIntentData()Ljava/lang/String;
    move-result-object v1
  :L3
    if-eqz v1, :L4
    const-string v2, "suggest_intent_data_id"
  .line 5
    invoke-static { p1, v2 }, Landroidx/appcompat/widget/o0;->o(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    if-eqz v2, :L4
  .line 6
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v4, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "/"
    invoke-virtual { v4, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { v2 }, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v4, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
  :L4
    if-nez v1, :L5
    move-object v4, v0
    goto :L6
  :L5
  .line 7
    invoke-static { v1 }, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    move-result-object v1
    move-object v4, v1
  :L6
    const-string v1, "suggest_intent_query"
  .line 8
    invoke-static { p1, v1 }, Landroidx/appcompat/widget/o0;->o(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v6
    const-string v1, "suggest_intent_extra_data"
  .line 9
    invoke-static { p1, v1 }, Landroidx/appcompat/widget/o0;->o(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v5
    move-object v2, p0
    move v7, p2
    move-object v8, p3
  .line 10
    invoke-direct/range { v2 .. v8 }, Landroidx/appcompat/widget/SearchView;->C(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    move-result-object p1
  :L7
    return-object p1
  :L8
  .line 11
    invoke-interface { p1 }, Landroid/database/Cursor;->getPosition()I
    move-result p1
  :L9
    goto :L11
  :L10
    const/4 p1, -1
  :L11
  .line 12
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p3, "Search suggestions cursor at row "
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p1, " returned exception."
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    return-object v0
.end method

.method private E(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
  .registers 12
  .line 1
    invoke-virtual { p2 }, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;
    move-result-object v0
  .line 2
    new-instance v1, Landroid/content/Intent;
    const-string v2, "android.intent.action.SEARCH"
    invoke-direct { v1, v2 }, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
  .line 3
    invoke-virtual { v1, v0 }, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
  .line 4
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v2
    const/4 v3, 0
    const/high16 v4, 16384
    invoke-static { v2, v3, v1, v4 }, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    move-result-object v1
  .line 5
    new-instance v2, Landroid/os/Bundle;
    invoke-direct { v2 }, Landroid/os/Bundle;-><init>()V
  .line 6
    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->h0:Landroid/os/Bundle;
    if-eqz v3, :L0
    const-string v4, "app_data"
  .line 7
    invoke-virtual { v2, v4, v3 }, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
  :L0
  .line 8
    new-instance v3, Landroid/content/Intent;
    invoke-direct { v3, p1 }, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    const/4 p1, 1
  .line 9
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;
    move-result-object v4
  .line 10
    invoke-virtual { p2 }, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I
    move-result v5
    if-eqz v5, :L1
  .line 11
    invoke-virtual { p2 }, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I
    move-result v5
    invoke-virtual { v4, v5 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v5
    goto :L2
  :L1
    const-string v5, "free_form"
  :L2
  .line 12
    invoke-virtual { p2 }, Landroid/app/SearchableInfo;->getVoicePromptTextId()I
    move-result v6
    const/4 v7, 0
    if-eqz v6, :L3
  .line 13
    invoke-virtual { p2 }, Landroid/app/SearchableInfo;->getVoicePromptTextId()I
    move-result v6
    invoke-virtual { v4, v6 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v6
    goto :L4
  :L3
    move-object v6, v7
  :L4
  .line 14
    invoke-virtual { p2 }, Landroid/app/SearchableInfo;->getVoiceLanguageId()I
    move-result v8
    if-eqz v8, :L5
  .line 15
    invoke-virtual { p2 }, Landroid/app/SearchableInfo;->getVoiceLanguageId()I
    move-result v8
    invoke-virtual { v4, v8 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v4
    goto :L6
  :L5
    move-object v4, v7
  :L6
  .line 16
    invoke-virtual { p2 }, Landroid/app/SearchableInfo;->getVoiceMaxResults()I
    move-result v8
    if-eqz v8, :L7
  .line 17
    invoke-virtual { p2 }, Landroid/app/SearchableInfo;->getVoiceMaxResults()I
    move-result p1
  :L7
    const-string p2, "android.speech.extra.LANGUAGE_MODEL"
  .line 18
    invoke-virtual { v3, p2, v5 }, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    const-string p2, "android.speech.extra.PROMPT"
  .line 19
    invoke-virtual { v3, p2, v6 }, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    const-string p2, "android.speech.extra.LANGUAGE"
  .line 20
    invoke-virtual { v3, p2, v4 }, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    const-string p2, "android.speech.extra.MAX_RESULTS"
  .line 21
    invoke-virtual { v3, p2, p1 }, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    if-nez v0, :L8
    goto :L9
  :L8
  .line 22
    invoke-virtual { v0 }, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;
    move-result-object v7
  :L9
    const-string p1, "calling_package"
  .line 23
    invoke-virtual { v3, p1, v7 }, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    const-string p1, "android.speech.extra.RESULTS_PENDINGINTENT"
  .line 24
    invoke-virtual { v3, p1, v1 }, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    const-string p1, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"
  .line 25
    invoke-virtual { v3, p1, v2 }, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    return-object v3
.end method

.method private F(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
  .registers 4
  .line 1
    new-instance v0, Landroid/content/Intent;
    invoke-direct { v0, p1 }, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
  .line 2
    invoke-virtual { p2 }, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;
    move-result-object p1
    if-nez p1, :L0
    const/4 p1, 0
    goto :L1
  :L0
  .line 3
    invoke-virtual { p1 }, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;
    move-result-object p1
  :L1
    const-string p2, "calling_package"
  .line 4
    invoke-virtual { v0, p2, p1 }, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    return-object v0
.end method

.method private G()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    invoke-virtual { v0 }, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V
    return-void
.end method

.method private I(Landroid/view/View;Landroid/graphics/Rect;)V
  .registers 7
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->C:[I
    invoke-virtual { p1, v0 }, Landroid/view/View;->getLocationInWindow([I)V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->D:[I
    invoke-virtual { p0, v0 }, Landroid/view/ViewGroup;->getLocationInWindow([I)V
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->C:[I
    const/4 v1, 1
    aget v2, v0, v1
    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->D:[I
    aget v1, v3, v1
    sub-int/2addr v2, v1
    const/4 v1, 0
  .line 4
    aget v0, v0, v1
    aget v1, v3, v1
    sub-int/2addr v0, v1
  .line 5
    invoke-virtual { p1 }, Landroid/view/View;->getWidth()I
    move-result v1
    add-int/2addr v1, v0
    invoke-virtual { p1 }, Landroid/view/View;->getHeight()I
    move-result p1
    add-int/2addr p1, v2
    invoke-virtual { p2, v0, v2, v1, p1 }, Landroid/graphics/Rect;->set(IIII)V
    return-void
.end method

.method private J(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
  .registers 7
  .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->Q:Z
    if-eqz v0, :L1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->F:Landroid/graphics/drawable/Drawable;
    if-nez v0, :L0
    goto :L1
  :L0
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    invoke-virtual { v0 }, Landroid/widget/AutoCompleteTextView;->getTextSize()F
    move-result v0
    float-to-double v0, v0
    const-wide/high16 v2, 16372
    invoke-static { v0, v1 }, Ljava/lang/Double;->isNaN(D)Z
    mul-double v0, v0, v2
    double-to-int v0, v0
  .line 3
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->F:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0
    invoke-virtual { v1, v2, v2, v0, v0 }, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
  .line 4
    new-instance v0, Landroid/text/SpannableStringBuilder;
    const-string v1, "   "
    invoke-direct { v0, v1 }, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V
  .line 5
    new-instance v1, Landroid/text/style/ImageSpan;
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->F:Landroid/graphics/drawable/Drawable;
    invoke-direct { v1, v2 }, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V
    const/4 v2, 1
    const/4 v3, 2
    const/16 v4, 33
    invoke-virtual { v0, v1, v2, v3, v4 }, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
  .line 6
    invoke-virtual { v0, p1 }, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    return-object v0
  :L1
    return-object p1
.end method

.method private K()Z
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->g0:Landroid/app/SearchableInfo;
    const/4 v1, 0
    if-eqz v0, :L2
    invoke-virtual { v0 }, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z
    move-result v0
    if-eqz v0, :L2
    const/4 v0, 0
  .line 2
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->g0:Landroid/app/SearchableInfo;
    invoke-virtual { v2 }, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z
    move-result v2
    if-eqz v2, :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->I:Landroid/content/Intent;
    goto :L1
  :L0
  .line 4
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->g0:Landroid/app/SearchableInfo;
    invoke-virtual { v2 }, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z
    move-result v2
    if-eqz v2, :L1
  .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->J:Landroid/content/Intent;
  :L1
    if-eqz v0, :L2
  .line 6
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v2
    invoke-virtual { v2 }, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object v2
    const/high16 v3, 1
    invoke-virtual { v2, v0, v3 }, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    move-result-object v0
    if-eqz v0, :L2
    const/4 v1, 1
  :L2
    return v1
.end method

.method static M(Landroid/content/Context;)Z
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object p0
    invoke-virtual { p0 }, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
    move-result-object p0
    iget p0, p0, Landroid/content/res/Configuration;->orientation:I
    const/4 v0, 2
    if-ne p0, v0, :L0
    const/4 p0, 1
    goto :L1
  :L0
    const/4 p0, 0
  :L1
    return p0
.end method

.method private N()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->T:Z
    if-nez v0, :L0
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->b0:Z
    if-eqz v0, :L1
  :L0
    invoke-virtual { p0 }, Landroidx/appcompat/widget/SearchView;->L()Z
    move-result v0
    if-nez v0, :L1
    const/4 v0, 1
    goto :L2
  :L1
    const/4 v0, 0
  :L2
    return v0
.end method

.method private O(Landroid/content/Intent;)V
  .catch Ljava/lang/RuntimeException; { :L0 .. :L1 } :L2
  .registers 4
    if-nez p1, :L0
    return-void
  :L0
  .line 1
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-virtual { v0, p1 }, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
  :L1
    goto :L3
  :L2
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Failed launch activity: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L3
    return-void
.end method

.method private Q(IILjava/lang/String;)Z
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->S:Lc/h/a/a;
    invoke-virtual { v0 }, Lc/h/a/a;->c()Landroid/database/Cursor;
    move-result-object v0
    if-eqz v0, :L0
  .line 2
    invoke-interface { v0, p1 }, Landroid/database/Cursor;->moveToPosition(I)Z
    move-result p1
    if-eqz p1, :L0
  .line 3
    invoke-direct { p0, v0, p2, p3 }, Landroidx/appcompat/widget/SearchView;->D(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;
    move-result-object p1
  .line 4
    invoke-direct { p0, p1 }, Landroidx/appcompat/widget/SearchView;->O(Landroid/content/Intent;)V
    const/4 p1, 1
    return p1
  :L0
    const/4 p1, 0
    return p1
.end method

.method private b0()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->i0:Ljava/lang/Runnable;
    invoke-virtual { p0, v0 }, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z
    return-void
.end method

.method private c0(I)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    invoke-virtual { v0 }, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;
    move-result-object v0
  .line 2
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->S:Lc/h/a/a;
    invoke-virtual { v1 }, Lc/h/a/a;->c()Landroid/database/Cursor;
    move-result-object v1
    if-nez v1, :L0
    return-void
  :L0
  .line 3
    invoke-interface { v1, p1 }, Landroid/database/Cursor;->moveToPosition(I)Z
    move-result p1
    if-eqz p1, :L2
  .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->S:Lc/h/a/a;
    invoke-virtual { p1, v1 }, Lc/h/a/a;->a(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    move-result-object p1
    if-eqz p1, :L1
  .line 5
    invoke-direct { p0, p1 }, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V
    goto :L3
  :L1
  .line 6
    invoke-direct { p0, v0 }, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V
    goto :L3
  :L2
  .line 7
    invoke-direct { p0, v0 }, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V
  :L3
    return-void
.end method

.method private e0()V
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    invoke-virtual { v0 }, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;
    move-result-object v0
    invoke-static { v0 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    const/4 v1, 1
    xor-int/2addr v0, v1
    const/4 v2, 0
    if-nez v0, :L1
  .line 2
    iget-boolean v3, p0, Landroidx/appcompat/widget/SearchView;->Q:Z
    if-eqz v3, :L0
    iget-boolean v3, p0, Landroidx/appcompat/widget/SearchView;->e0:Z
    if-nez v3, :L0
    goto :L1
  :L0
    const/4 v1, 0
  :L1
  .line 3
    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->w:Landroid/widget/ImageView;
    if-eqz v1, :L2
    goto :L3
  :L2
    const/16 v2, 8
  :L3
    invoke-virtual { v3, v2 }, Landroid/widget/ImageView;->setVisibility(I)V
  .line 4
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->w:Landroid/widget/ImageView;
    invoke-virtual { v1 }, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;
    move-result-object v1
    if-eqz v1, :L6
    if-eqz v0, :L4
  .line 5
    sget-object v0, Landroid/view/ViewGroup;->ENABLED_STATE_SET:[I
    goto :L5
  :L4
    sget-object v0, Landroid/view/ViewGroup;->EMPTY_STATE_SET:[I
  :L5
    invoke-virtual { v1, v0 }, Landroid/graphics/drawable/Drawable;->setState([I)Z
  :L6
    return-void
.end method

.method private g0()V
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/widget/SearchView;->getQueryHint()Ljava/lang/CharSequence;
    move-result-object v0
  .line 2
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    if-nez v0, :L0
    const-string v0, ""
  :L0
    invoke-direct { p0, v0 }, Landroidx/appcompat/widget/SearchView;->J(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    move-result-object v0
    invoke-virtual { v1, v0 }, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V
    return-void
.end method

.method private getPreferredHeight()I
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    sget v1, Lc/a/d;->abc_search_view_preferred_height:I
  .line 2
    invoke-virtual { v0, v1 }, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    move-result v0
    return v0
.end method

.method private getPreferredWidth()I
  .registers 3
  .line 1
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    sget v1, Lc/a/d;->abc_search_view_preferred_width:I
  .line 2
    invoke-virtual { v0, v1 }, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    move-result v0
    return v0
.end method

.method private h0()V
  .registers 6
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->g0:Landroid/app/SearchableInfo;
    invoke-virtual { v1 }, Landroid/app/SearchableInfo;->getSuggestThreshold()I
    move-result v1
    invoke-virtual { v0, v1 }, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setThreshold(I)V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->g0:Landroid/app/SearchableInfo;
    invoke-virtual { v1 }, Landroid/app/SearchableInfo;->getImeOptions()I
    move-result v1
    invoke-virtual { v0, v1 }, Landroid/widget/AutoCompleteTextView;->setImeOptions(I)V
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->g0:Landroid/app/SearchableInfo;
    invoke-virtual { v0 }, Landroid/app/SearchableInfo;->getInputType()I
    move-result v0
    and-int/lit8 v1, v0, 15
    const/4 v2, 1
    if-ne v1, v2, :L0
    const v1, -65537
    and-int/2addr v0, v1
  .line 4
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->g0:Landroid/app/SearchableInfo;
    invoke-virtual { v1 }, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;
    move-result-object v1
    if-eqz v1, :L0
    const/high16 v1, 1
    or-int/2addr v0, v1
    const/high16 v1, 8
    or-int/2addr v0, v1
  :L0
  .line 5
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    invoke-virtual { v1, v0 }, Landroid/widget/AutoCompleteTextView;->setInputType(I)V
  .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->S:Lc/h/a/a;
    if-eqz v0, :L1
    const/4 v1, 0
  .line 7
    invoke-virtual { v0, v1 }, Lc/h/a/a;->b(Landroid/database/Cursor;)V
  :L1
  .line 8
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->g0:Landroid/app/SearchableInfo;
    invoke-virtual { v0 }, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :L3
  .line 9
    new-instance v0, Landroidx/appcompat/widget/o0;
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v1
    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->g0:Landroid/app/SearchableInfo;
    iget-object v4, p0, Landroidx/appcompat/widget/SearchView;->k0:Ljava/util/WeakHashMap;
    invoke-direct { v0, v1, p0, v3, v4 }, Landroidx/appcompat/widget/o0;-><init>(Landroid/content/Context;Landroidx/appcompat/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V
    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->S:Lc/h/a/a;
  .line 10
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    invoke-virtual { v1, v0 }, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V
  .line 11
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->S:Lc/h/a/a;
    check-cast v0, Landroidx/appcompat/widget/o0;
  .line 12
    iget-boolean v1, p0, Landroidx/appcompat/widget/SearchView;->V:Z
    if-eqz v1, :L2
    const/4 v2, 2
  :L2
  .line 13
    invoke-virtual { v0, v2 }, Landroidx/appcompat/widget/o0;->x(I)V
  :L3
    return-void
.end method

.method private i0()V
  .registers 3
  .line 1
    invoke-direct { p0 }, Landroidx/appcompat/widget/SearchView;->N()Z
    move-result v0
    if-eqz v0, :L1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->v:Landroid/widget/ImageView;
  .line 2
    invoke-virtual { v0 }, Landroid/widget/ImageView;->getVisibility()I
    move-result v0
    if-eqz v0, :L0
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->x:Landroid/widget/ImageView;
  .line 3
    invoke-virtual { v0 }, Landroid/widget/ImageView;->getVisibility()I
    move-result v0
    if-nez v0, :L1
  :L0
    const/4 v0, 0
    goto :L2
  :L1
    const/16 v0, 8
  :L2
  .line 4
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->t:Landroid/view/View;
    invoke-virtual { v1, v0 }, Landroid/view/View;->setVisibility(I)V
    return-void
.end method

.method private j0(Z)V
  .registers 3
  .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->T:Z
    if-eqz v0, :L1
    invoke-direct { p0 }, Landroidx/appcompat/widget/SearchView;->N()Z
    move-result v0
    if-eqz v0, :L1
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->hasFocus()Z
    move-result v0
    if-eqz v0, :L1
    if-nez p1, :L0
    iget-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->b0:Z
    if-nez p1, :L1
  :L0
    const/4 p1, 0
    goto :L2
  :L1
    const/16 p1, 8
  :L2
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->v:Landroid/widget/ImageView;
    invoke-virtual { v0, p1 }, Landroid/widget/ImageView;->setVisibility(I)V
    return-void
.end method

.method private k0(Z)V
  .registers 7
  .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->R:Z
    const/4 v0, 0
    const/16 v1, 8
    if-eqz p1, :L0
    const/4 v2, 0
    goto :L1
  :L0
    const/16 v2, 8
  :L1
  .line 2
    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    invoke-virtual { v3 }, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;
    move-result-object v3
    invoke-static { v3 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v3
    xor-int/lit8 v3, v3, 1
  .line 3
    iget-object v4, p0, Landroidx/appcompat/widget/SearchView;->u:Landroid/widget/ImageView;
    invoke-virtual { v4, v2 }, Landroid/widget/ImageView;->setVisibility(I)V
  .line 4
    invoke-direct { p0, v3 }, Landroidx/appcompat/widget/SearchView;->j0(Z)V
  .line 5
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->r:Landroid/view/View;
    if-eqz p1, :L2
    const/16 p1, 8
    goto :L3
  :L2
    const/4 p1, 0
  :L3
    invoke-virtual { v2, p1 }, Landroid/view/View;->setVisibility(I)V
  .line 6
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->E:Landroid/widget/ImageView;
    invoke-virtual { p1 }, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;
    move-result-object p1
    if-eqz p1, :L4
    iget-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->Q:Z
    if-eqz p1, :L5
  :L4
    const/16 v0, 8
  :L5
  .line 7
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->E:Landroid/widget/ImageView;
    invoke-virtual { p1, v0 }, Landroid/widget/ImageView;->setVisibility(I)V
  .line 8
    invoke-direct { p0 }, Landroidx/appcompat/widget/SearchView;->e0()V
    xor-int/lit8 p1, v3, 1
  .line 9
    invoke-direct { p0, p1 }, Landroidx/appcompat/widget/SearchView;->l0(Z)V
  .line 10
    invoke-direct { p0 }, Landroidx/appcompat/widget/SearchView;->i0()V
    return-void
.end method

.method private l0(Z)V
  .registers 4
  .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->b0:Z
    const/16 v1, 8
    if-eqz v0, :L0
    invoke-virtual { p0 }, Landroidx/appcompat/widget/SearchView;->L()Z
    move-result v0
    if-nez v0, :L0
    if-eqz p1, :L0
    const/4 p1, 0
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->v:Landroid/widget/ImageView;
    invoke-virtual { v0, v1 }, Landroid/widget/ImageView;->setVisibility(I)V
    const/4 v1, 0
  :L0
  .line 3
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->x:Landroid/widget/ImageView;
    invoke-virtual { p1, v1 }, Landroid/widget/ImageView;->setVisibility(I)V
    return-void
.end method

.method private setQuery(Ljava/lang/CharSequence;)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    invoke-virtual { v0, p1 }, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    invoke-static { p1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v1
    if-eqz v1, :L0
    const/4 p1, 0
    goto :L1
  :L0
    invoke-interface { p1 }, Ljava/lang/CharSequence;->length()I
    move-result p1
  :L1
    invoke-virtual { v0, p1 }, Landroid/widget/AutoCompleteTextView;->setSelection(I)V
    return-void
.end method

.method B()V
  .registers 7
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->y:Landroid/view/View;
    invoke-virtual { v0 }, Landroid/view/View;->getWidth()I
    move-result v0
    const/4 v1, 1
    if-le v0, v1, :L4
  .line 2
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
  .line 3
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->s:Landroid/view/View;
    invoke-virtual { v1 }, Landroid/view/View;->getPaddingLeft()I
    move-result v1
  .line 4
    new-instance v2, Landroid/graphics/Rect;
    invoke-direct { v2 }, Landroid/graphics/Rect;-><init>()V
  .line 5
    invoke-static { p0 }, Landroidx/appcompat/widget/a1;->b(Landroid/view/View;)Z
    move-result v3
  .line 6
    iget-boolean v4, p0, Landroidx/appcompat/widget/SearchView;->Q:Z
    if-eqz v4, :L0
  .line 7
    sget v4, Lc/a/d;->abc_dropdownitem_icon_width:I
  .line 8
    invoke-virtual { v0, v4 }, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    move-result v4
    sget v5, Lc/a/d;->abc_dropdownitem_text_padding_left:I
  .line 9
    invoke-virtual { v0, v5 }, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    move-result v0
    add-int/2addr v4, v0
    goto :L1
  :L0
    const/4 v4, 0
  :L1
  .line 10
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    invoke-virtual { v0 }, Landroid/widget/AutoCompleteTextView;->getDropDownBackground()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    invoke-virtual { v0, v2 }, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z
    if-eqz v3, :L2
  .line 11
    iget v0, v2, Landroid/graphics/Rect;->left:I
    neg-int v0, v0
    goto :L3
  :L2
  .line 12
    iget v0, v2, Landroid/graphics/Rect;->left:I
    add-int/2addr v0, v4
    sub-int v0, v1, v0
  :L3
  .line 13
    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    invoke-virtual { v3, v0 }, Landroid/widget/AutoCompleteTextView;->setDropDownHorizontalOffset(I)V
  .line 14
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->y:Landroid/view/View;
    invoke-virtual { v0 }, Landroid/view/View;->getWidth()I
    move-result v0
    iget v3, v2, Landroid/graphics/Rect;->left:I
    add-int/2addr v0, v3
    iget v2, v2, Landroid/graphics/Rect;->right:I
    add-int/2addr v0, v2
    add-int/2addr v0, v4
    sub-int/2addr v0, v1
  .line 15
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    invoke-virtual { v1, v0 }, Landroid/widget/AutoCompleteTextView;->setDropDownWidth(I)V
  :L4
    return-void
.end method

.method H()V
  .registers 3
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 29
    if-lt v0, v1, :L0
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    invoke-virtual { v0 }, Landroid/widget/AutoCompleteTextView;->refreshAutoCompleteResults()V
    goto :L1
  :L0
  .line 3
    sget-object v0, Landroidx/appcompat/widget/SearchView;->r0:Landroidx/appcompat/widget/SearchView$n;
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    invoke-virtual { v0, v1 }, Landroidx/appcompat/widget/SearchView$n;->b(Landroid/widget/AutoCompleteTextView;)V
  .line 4
    sget-object v0, Landroidx/appcompat/widget/SearchView;->r0:Landroidx/appcompat/widget/SearchView$n;
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    invoke-virtual { v0, v1 }, Landroidx/appcompat/widget/SearchView$n;->a(Landroid/widget/AutoCompleteTextView;)V
  :L1
    return-void
.end method

.method public L()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->R:Z
    return v0
.end method

.method P(ILjava/lang/String;Ljava/lang/String;)V
  .registers 11
    const-string v1, "android.intent.action.SEARCH"
    const/4 v2, 0
    const/4 v3, 0
    move-object v0, p0
    move-object v4, p3
    move v5, p1
    move-object v6, p2
  .line 1
    invoke-direct/range { v0 .. v6 }, Landroidx/appcompat/widget/SearchView;->C(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    move-result-object p1
  .line 2
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object p2
    invoke-virtual { p2, p1 }, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    return-void
.end method

.method R()V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    invoke-virtual { v0 }, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;
    move-result-object v0
  .line 2
    invoke-static { v0 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    const/4 v1, 1
    if-eqz v0, :L1
  .line 3
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->Q:Z
    if-eqz v0, :L2
  .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->M:Landroidx/appcompat/widget/SearchView$k;
    if-eqz v0, :L0
    invoke-interface { v0 }, Landroidx/appcompat/widget/SearchView$k;->a()Z
    move-result v0
    if-nez v0, :L2
  :L0
  .line 5
    invoke-virtual { p0 }, Landroidx/appcompat/widget/SearchView;->clearFocus()V
  .line 6
    invoke-direct { p0, v1 }, Landroidx/appcompat/widget/SearchView;->k0(Z)V
    goto :L2
  :L1
  .line 7
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    const-string v2, ""
    invoke-virtual { v0, v2 }, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V
  .line 8
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    invoke-virtual { v0 }, Landroid/widget/AutoCompleteTextView;->requestFocus()Z
  .line 9
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    invoke-virtual { v0, v1 }, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V
  :L2
    return-void
.end method

.method S(IILjava/lang/String;)Z
  .registers 4
  .line 1
    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->O:Landroidx/appcompat/widget/SearchView$m;
    const/4 p3, 0
    if-eqz p2, :L1
  .line 2
    invoke-interface { p2, p1 }, Landroidx/appcompat/widget/SearchView$m;->b(I)Z
    move-result p2
    if-nez p2, :L0
    goto :L1
  :L0
    return p3
  :L1
    const/4 p2, 0
  .line 3
    invoke-direct { p0, p1, p3, p2 }, Landroidx/appcompat/widget/SearchView;->Q(IILjava/lang/String;)Z
  .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    invoke-virtual { p1, p3 }, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V
  .line 5
    invoke-direct { p0 }, Landroidx/appcompat/widget/SearchView;->G()V
    const/4 p1, 1
    return p1
.end method

.method T(I)Z
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->O:Landroidx/appcompat/widget/SearchView$m;
    if-eqz v0, :L1
  .line 2
    invoke-interface { v0, p1 }, Landroidx/appcompat/widget/SearchView$m;->a(I)Z
    move-result v0
    if-nez v0, :L0
    goto :L1
  :L0
    const/4 p1, 0
    return p1
  :L1
  .line 3
    invoke-direct { p0, p1 }, Landroidx/appcompat/widget/SearchView;->c0(I)V
    const/4 p1, 1
    return p1
.end method

.method U(Ljava/lang/CharSequence;)V
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V
    return-void
.end method

.method V()V
  .registers 3
    const/4 v0, 0
  .line 1
    invoke-direct { p0, v0 }, Landroidx/appcompat/widget/SearchView;->k0(Z)V
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    invoke-virtual { v0 }, Landroid/widget/AutoCompleteTextView;->requestFocus()Z
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    const/4 v1, 1
    invoke-virtual { v0, v1 }, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V
  .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->P:Landroid/view/View$OnClickListener;
    if-eqz v0, :L0
  .line 5
    invoke-interface { v0, p0 }, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V
  :L0
    return-void
.end method

.method W()V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    invoke-virtual { v0 }, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;
    move-result-object v0
    if-eqz v0, :L2
  .line 2
    invoke-static { v0 }, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I
    move-result v1
    if-lez v1, :L2
  .line 3
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->L:Landroidx/appcompat/widget/SearchView$l;
    if-eqz v1, :L0
  .line 4
    invoke-interface { v0 }, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-interface { v1, v2 }, Landroidx/appcompat/widget/SearchView$l;->b(Ljava/lang/String;)Z
    move-result v1
    if-nez v1, :L2
  :L0
  .line 5
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->g0:Landroid/app/SearchableInfo;
    const/4 v2, 0
    if-eqz v1, :L1
    const/4 v1, 0
  .line 6
    invoke-interface { v0 }, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p0, v2, v1, v0 }, Landroidx/appcompat/widget/SearchView;->P(ILjava/lang/String;Ljava/lang/String;)V
  :L1
  .line 7
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    invoke-virtual { v0, v2 }, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V
  .line 8
    invoke-direct { p0 }, Landroidx/appcompat/widget/SearchView;->G()V
  :L2
    return-void
.end method

.method X(Landroid/view/View;ILandroid/view/KeyEvent;)Z
  .registers 5
  .line 1
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->g0:Landroid/app/SearchableInfo;
    const/4 v0, 0
    if-nez p1, :L0
    return v0
  :L0
  .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->S:Lc/h/a/a;
    if-nez p1, :L1
    return v0
  :L1
  .line 3
    invoke-virtual { p3 }, Landroid/view/KeyEvent;->getAction()I
    move-result p1
    if-nez p1, :L8
    invoke-virtual { p3 }, Landroid/view/KeyEvent;->hasNoModifiers()Z
    move-result p1
    if-eqz p1, :L8
    const/16 p1, 66
    if-eq p2, p1, :L7
    const/16 p1, 84
    if-eq p2, p1, :L7
    const/16 p1, 61
    if-ne p2, p1, :L2
    goto :L7
  :L2
    const/16 p1, 21
    if-eq p2, p1, :L4
    const/16 p3, 22
    if-ne p2, p3, :L3
    goto :L4
  :L3
    const/16 p1, 19
    if-ne p2, p1, :L8
  .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    invoke-virtual { p1 }, Landroid/widget/AutoCompleteTextView;->getListSelection()I
    move-result p1
    if-nez p1, :L8
    return v0
  :L4
    if-ne p2, p1, :L5
    const/4 p1, 0
    goto :L6
  :L5
  .line 5
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    invoke-virtual { p1 }, Landroid/widget/AutoCompleteTextView;->length()I
    move-result p1
  :L6
  .line 6
    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    invoke-virtual { p2, p1 }, Landroid/widget/AutoCompleteTextView;->setSelection(I)V
  .line 7
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    invoke-virtual { p1, v0 }, Landroid/widget/AutoCompleteTextView;->setListSelection(I)V
  .line 8
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    invoke-virtual { p1 }, Landroid/widget/AutoCompleteTextView;->clearListSelection()V
  .line 9
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    invoke-virtual { p1 }, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->a()V
    const/4 p1, 1
    return p1
  :L7
  .line 10
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    invoke-virtual { p1 }, Landroid/widget/AutoCompleteTextView;->getListSelection()I
    move-result p1
    const/4 p2, 0
  .line 11
    invoke-virtual { p0, p1, v0, p2 }, Landroidx/appcompat/widget/SearchView;->S(IILjava/lang/String;)Z
    move-result p1
    return p1
  :L8
    return v0
.end method

.method Y(Ljava/lang/CharSequence;)V
  .registers 4
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    invoke-virtual { v0 }, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;
    move-result-object v0
  .line 2
    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->d0:Ljava/lang/CharSequence;
  .line 3
    invoke-static { v0 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    xor-int/lit8 v0, v0, 1
  .line 4
    invoke-direct { p0, v0 }, Landroidx/appcompat/widget/SearchView;->j0(Z)V
    xor-int/lit8 v0, v0, 1
  .line 5
    invoke-direct { p0, v0 }, Landroidx/appcompat/widget/SearchView;->l0(Z)V
  .line 6
    invoke-direct { p0 }, Landroidx/appcompat/widget/SearchView;->e0()V
  .line 7
    invoke-direct { p0 }, Landroidx/appcompat/widget/SearchView;->i0()V
  .line 8
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->L:Landroidx/appcompat/widget/SearchView$l;
    if-eqz v0, :L0
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->c0:Ljava/lang/CharSequence;
    invoke-static { p1, v0 }, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    move-result v0
    if-nez v0, :L0
  .line 9
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->L:Landroidx/appcompat/widget/SearchView$l;
    invoke-interface { p1 }, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-interface { v0, v1 }, Landroidx/appcompat/widget/SearchView$l;->a(Ljava/lang/String;)Z
  :L0
  .line 10
    invoke-interface { p1 }, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    move-result-object p1
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->c0:Ljava/lang/CharSequence;
    return-void
.end method

.method Z()V
  .registers 2
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/widget/SearchView;->L()Z
    move-result v0
    invoke-direct { p0, v0 }, Landroidx/appcompat/widget/SearchView;->k0(Z)V
  .line 2
    invoke-direct { p0 }, Landroidx/appcompat/widget/SearchView;->b0()V
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    invoke-virtual { v0 }, Landroid/widget/AutoCompleteTextView;->hasFocus()Z
    move-result v0
    if-eqz v0, :L0
  .line 4
    invoke-virtual { p0 }, Landroidx/appcompat/widget/SearchView;->H()V
  :L0
    return-void
.end method

.method a0()V
  .catch Landroid/content/ActivityNotFoundException; { :L0 .. :L2 } :L2
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->g0:Landroid/app/SearchableInfo;
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    invoke-virtual { v0 }, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z
    move-result v1
    if-eqz v1, :L1
  .line 3
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->I:Landroid/content/Intent;
    invoke-direct { p0, v1, v0 }, Landroidx/appcompat/widget/SearchView;->F(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    move-result-object v0
  .line 4
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v1
    invoke-virtual { v1, v0 }, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    goto :L2
  :L1
  .line 5
    invoke-virtual { v0 }, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z
    move-result v1
    if-eqz v1, :L2
  .line 6
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->J:Landroid/content/Intent;
    invoke-direct { p0, v1, v0 }, Landroidx/appcompat/widget/SearchView;->E(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    move-result-object v0
  .line 7
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v1
    invoke-virtual { v1, v0 }, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
  :L2
    return-void
.end method

.method public c()V
  .registers 4
  .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->e0:Z
    if-eqz v0, :L0
    return-void
  :L0
    const/4 v0, 1
  .line 2
    iput-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->e0:Z
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    invoke-virtual { v0 }, Landroid/widget/AutoCompleteTextView;->getImeOptions()I
    move-result v0
    iput v0, p0, Landroidx/appcompat/widget/SearchView;->f0:I
  .line 4
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    const/high16 v2, 512
    or-int/2addr v0, v2
    invoke-virtual { v1, v0 }, Landroid/widget/AutoCompleteTextView;->setImeOptions(I)V
  .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    const-string v1, ""
    invoke-virtual { v0, v1 }, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V
    const/4 v0, 0
  .line 6
    invoke-virtual { p0, v0 }, Landroidx/appcompat/widget/SearchView;->setIconified(Z)V
    return-void
.end method

.method public clearFocus()V
  .registers 3
    const/4 v0, 1
  .line 1
    iput-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->W:Z
  .line 2
    invoke-super { p0 }, Landroid/view/ViewGroup;->clearFocus()V
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    invoke-virtual { v0 }, Landroid/widget/AutoCompleteTextView;->clearFocus()V
  .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V
  .line 5
    iput-boolean v1, p0, Landroidx/appcompat/widget/SearchView;->W:Z
    return-void
.end method

.method public d()V
  .registers 4
    const-string v0, ""
    const/4 v1, 0
  .line 1
    invoke-virtual { p0, v0, v1 }, Landroidx/appcompat/widget/SearchView;->d0(Ljava/lang/CharSequence;Z)V
  .line 2
    invoke-virtual { p0 }, Landroidx/appcompat/widget/SearchView;->clearFocus()V
    const/4 v0, 1
  .line 3
    invoke-direct { p0, v0 }, Landroidx/appcompat/widget/SearchView;->k0(Z)V
  .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    iget v2, p0, Landroidx/appcompat/widget/SearchView;->f0:I
    invoke-virtual { v0, v2 }, Landroid/widget/AutoCompleteTextView;->setImeOptions(I)V
  .line 5
    iput-boolean v1, p0, Landroidx/appcompat/widget/SearchView;->e0:Z
    return-void
.end method

.method public d0(Ljava/lang/CharSequence;Z)V
  .registers 5
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    invoke-virtual { v0, p1 }, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V
    if-eqz p1, :L0
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    invoke-virtual { v0 }, Landroid/widget/AutoCompleteTextView;->length()I
    move-result v1
    invoke-virtual { v0, v1 }, Landroid/widget/AutoCompleteTextView;->setSelection(I)V
  .line 3
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->d0:Ljava/lang/CharSequence;
  :L0
    if-eqz p2, :L1
  .line 4
    invoke-static { p1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result p1
    if-nez p1, :L1
  .line 5
    invoke-virtual { p0 }, Landroidx/appcompat/widget/SearchView;->W()V
  :L1
    return-void
.end method

.method f0()V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    invoke-virtual { v0 }, Landroid/widget/AutoCompleteTextView;->hasFocus()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    sget-object v0, Landroid/view/ViewGroup;->FOCUSED_STATE_SET:[I
    goto :L1
  :L0
    sget-object v0, Landroid/view/ViewGroup;->EMPTY_STATE_SET:[I
  :L1
  .line 3
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->s:Landroid/view/View;
    invoke-virtual { v1 }, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;
    move-result-object v1
    if-eqz v1, :L2
  .line 4
    invoke-virtual { v1, v0 }, Landroid/graphics/drawable/Drawable;->setState([I)Z
  :L2
  .line 5
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->t:Landroid/view/View;
    invoke-virtual { v1 }, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;
    move-result-object v1
    if-eqz v1, :L3
  .line 6
    invoke-virtual { v1, v0 }, Landroid/graphics/drawable/Drawable;->setState([I)Z
  :L3
  .line 7
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->invalidate()V
    return-void
.end method

.method public getImeOptions()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    invoke-virtual { v0 }, Landroid/widget/AutoCompleteTextView;->getImeOptions()I
    move-result v0
    return v0
.end method

.method public getInputType()I
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    invoke-virtual { v0 }, Landroid/widget/AutoCompleteTextView;->getInputType()I
    move-result v0
    return v0
.end method

.method public getMaxWidth()I
  .registers 2
  .line 1
    iget v0, p0, Landroidx/appcompat/widget/SearchView;->a0:I
    return v0
.end method

.method public getQuery()Ljava/lang/CharSequence;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    invoke-virtual { v0 }, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;
    move-result-object v0
    return-object v0
.end method

.method public getQueryHint()Ljava/lang/CharSequence;
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->U:Ljava/lang/CharSequence;
    if-eqz v0, :L0
    goto :L2
  :L0
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->g0:Landroid/app/SearchableInfo;
    if-eqz v0, :L1
    invoke-virtual { v0 }, Landroid/app/SearchableInfo;->getHintId()I
    move-result v0
    if-eqz v0, :L1
  .line 3
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
    move-result-object v0
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->g0:Landroid/app/SearchableInfo;
    invoke-virtual { v1 }, Landroid/app/SearchableInfo;->getHintId()I
    move-result v1
    invoke-virtual { v0, v1 }, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
    move-result-object v0
    goto :L2
  :L1
  .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->K:Ljava/lang/CharSequence;
  :L2
    return-object v0
.end method

.method getSuggestionCommitIconResId()I
  .registers 2
  .line 1
    iget v0, p0, Landroidx/appcompat/widget/SearchView;->H:I
    return v0
.end method

.method getSuggestionRowLayout()I
  .registers 2
  .line 1
    iget v0, p0, Landroidx/appcompat/widget/SearchView;->G:I
    return v0
.end method

.method public getSuggestionsAdapter()Lc/h/a/a;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->S:Lc/h/a/a;
    return-object v0
.end method

.method protected onDetachedFromWindow()V
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->i0:Ljava/lang/Runnable;
    invoke-virtual { p0, v0 }, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->j0:Ljava/lang/Runnable;
    invoke-virtual { p0, v0 }, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z
  .line 3
    invoke-super { p0 }, Landroid/view/ViewGroup;->onDetachedFromWindow()V
    return-void
.end method

.method protected onLayout(ZIIII)V
  .registers 7
  .line 1
    invoke-super/range { p0 .. p5 }, Landroidx/appcompat/widget/g0;->onLayout(ZIIII)V
    if-eqz p1, :L1
  .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->A:Landroid/graphics/Rect;
    invoke-direct { p0, p1, p2 }, Landroidx/appcompat/widget/SearchView;->I(Landroid/view/View;Landroid/graphics/Rect;)V
  .line 3
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->B:Landroid/graphics/Rect;
    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->A:Landroid/graphics/Rect;
    iget p4, p2, Landroid/graphics/Rect;->left:I
    const/4 v0, 0
    iget p2, p2, Landroid/graphics/Rect;->right:I
    sub-int/2addr p5, p3
    invoke-virtual { p1, p4, v0, p2, p5 }, Landroid/graphics/Rect;->set(IIII)V
  .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->z:Landroidx/appcompat/widget/SearchView$p;
    if-nez p1, :L0
  .line 5
    new-instance p1, Landroidx/appcompat/widget/SearchView$p;
    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->B:Landroid/graphics/Rect;
    iget-object p3, p0, Landroidx/appcompat/widget/SearchView;->A:Landroid/graphics/Rect;
    iget-object p4, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    invoke-direct { p1, p2, p3, p4 }, Landroidx/appcompat/widget/SearchView$p;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;)V
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->z:Landroidx/appcompat/widget/SearchView$p;
  .line 6
    invoke-virtual { p0, p1 }, Landroid/view/ViewGroup;->setTouchDelegate(Landroid/view/TouchDelegate;)V
    goto :L1
  :L0
  .line 7
    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->B:Landroid/graphics/Rect;
    iget-object p3, p0, Landroidx/appcompat/widget/SearchView;->A:Landroid/graphics/Rect;
    invoke-virtual { p1, p2, p3 }, Landroidx/appcompat/widget/SearchView$p;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
  :L1
    return-void
.end method

.method protected onMeasure(II)V
  .registers 6
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/widget/SearchView;->L()Z
    move-result v0
    if-eqz v0, :L0
  .line 2
    invoke-super { p0, p1, p2 }, Landroidx/appcompat/widget/g0;->onMeasure(II)V
    return-void
  :L0
  .line 3
    invoke-static { p1 }, Landroid/view/View$MeasureSpec;->getMode(I)I
    move-result v0
  .line 4
    invoke-static { p1 }, Landroid/view/View$MeasureSpec;->getSize(I)I
    move-result p1
    const/high16 v1, -32768
    const/high16 v2, 16384
    if-eq v0, v1, :L4
    if-eqz v0, :L2
    if-eq v0, v2, :L1
    goto :L6
  :L1
  .line 5
    iget v0, p0, Landroidx/appcompat/widget/SearchView;->a0:I
    if-lez v0, :L6
  .line 6
    invoke-static { v0, p1 }, Ljava/lang/Math;->min(II)I
    move-result p1
    goto :L6
  :L2
  .line 7
    iget p1, p0, Landroidx/appcompat/widget/SearchView;->a0:I
    if-lez p1, :L3
    goto :L6
  :L3
    invoke-direct { p0 }, Landroidx/appcompat/widget/SearchView;->getPreferredWidth()I
    move-result p1
    goto :L6
  :L4
  .line 8
    iget v0, p0, Landroidx/appcompat/widget/SearchView;->a0:I
    if-lez v0, :L5
  .line 9
    invoke-static { v0, p1 }, Ljava/lang/Math;->min(II)I
    move-result p1
    goto :L6
  :L5
  .line 10
    invoke-direct { p0 }, Landroidx/appcompat/widget/SearchView;->getPreferredWidth()I
    move-result v0
    invoke-static { v0, p1 }, Ljava/lang/Math;->min(II)I
    move-result p1
  :L6
  .line 11
    invoke-static { p2 }, Landroid/view/View$MeasureSpec;->getMode(I)I
    move-result v0
  .line 12
    invoke-static { p2 }, Landroid/view/View$MeasureSpec;->getSize(I)I
    move-result p2
    if-eq v0, v1, :L8
    if-eqz v0, :L7
    goto :L9
  :L7
  .line 13
    invoke-direct { p0 }, Landroidx/appcompat/widget/SearchView;->getPreferredHeight()I
    move-result p2
    goto :L9
  :L8
  .line 14
    invoke-direct { p0 }, Landroidx/appcompat/widget/SearchView;->getPreferredHeight()I
    move-result v0
    invoke-static { v0, p2 }, Ljava/lang/Math;->min(II)I
    move-result p2
  :L9
  .line 15
    invoke-static { p1, v2 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result p1
  .line 16
    invoke-static { p2, v2 }, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    move-result p2
  .line 17
    invoke-super { p0, p1, p2 }, Landroidx/appcompat/widget/g0;->onMeasure(II)V
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
  .registers 3
  .line 1
    instance-of v0, p1, Landroidx/appcompat/widget/SearchView$o;
    if-nez v0, :L0
  .line 2
    invoke-super { p0, p1 }, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V
    return-void
  :L0
  .line 3
    check-cast p1, Landroidx/appcompat/widget/SearchView$o;
  .line 4
    invoke-virtual { p1 }, Lc/i/a/a;->j()Landroid/os/Parcelable;
    move-result-object v0
    invoke-super { p0, v0 }, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V
  .line 5
    iget-boolean p1, p1, Landroidx/appcompat/widget/SearchView$o;->d:Z
    invoke-direct { p0, p1 }, Landroidx/appcompat/widget/SearchView;->k0(Z)V
  .line 6
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->requestLayout()V
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
  .registers 3
  .line 1
    invoke-super { p0 }, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;
    move-result-object v0
  .line 2
    new-instance v1, Landroidx/appcompat/widget/SearchView$o;
    invoke-direct { v1, v0 }, Landroidx/appcompat/widget/SearchView$o;-><init>(Landroid/os/Parcelable;)V
  .line 3
    invoke-virtual { p0 }, Landroidx/appcompat/widget/SearchView;->L()Z
    move-result v0
    iput-boolean v0, v1, Landroidx/appcompat/widget/SearchView$o;->d:Z
    return-object v1
.end method

.method public onWindowFocusChanged(Z)V
  .registers 2
  .line 1
    invoke-super { p0, p1 }, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V
  .line 2
    invoke-direct { p0 }, Landroidx/appcompat/widget/SearchView;->b0()V
    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
  .registers 5
  .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->W:Z
    const/4 v1, 0
    if-eqz v0, :L0
    return v1
  :L0
  .line 2
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->isFocusable()Z
    move-result v0
    if-nez v0, :L1
    return v1
  :L1
  .line 3
    invoke-virtual { p0 }, Landroidx/appcompat/widget/SearchView;->L()Z
    move-result v0
    if-nez v0, :L3
  .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    invoke-virtual { v0, p1, p2 }, Landroid/widget/AutoCompleteTextView;->requestFocus(ILandroid/graphics/Rect;)Z
    move-result p1
    if-eqz p1, :L2
  .line 5
    invoke-direct { p0, v1 }, Landroidx/appcompat/widget/SearchView;->k0(Z)V
  :L2
    return p1
  :L3
  .line 6
    invoke-super { p0, p1, p2 }, Landroid/view/ViewGroup;->requestFocus(ILandroid/graphics/Rect;)Z
    move-result p1
    return p1
.end method

.method public setAppSearchData(Landroid/os/Bundle;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->h0:Landroid/os/Bundle;
    return-void
.end method

.method public setIconified(Z)V
  .registers 2
    if-eqz p1, :L0
  .line 1
    invoke-virtual { p0 }, Landroidx/appcompat/widget/SearchView;->R()V
    goto :L1
  :L0
  .line 2
    invoke-virtual { p0 }, Landroidx/appcompat/widget/SearchView;->V()V
  :L1
    return-void
.end method

.method public setIconifiedByDefault(Z)V
  .registers 3
  .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->Q:Z
    if-ne v0, p1, :L0
    return-void
  :L0
  .line 2
    iput-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->Q:Z
  .line 3
    invoke-direct { p0, p1 }, Landroidx/appcompat/widget/SearchView;->k0(Z)V
  .line 4
    invoke-direct { p0 }, Landroidx/appcompat/widget/SearchView;->g0()V
    return-void
.end method

.method public setImeOptions(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    invoke-virtual { v0, p1 }, Landroid/widget/AutoCompleteTextView;->setImeOptions(I)V
    return-void
.end method

.method public setInputType(I)V
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    invoke-virtual { v0, p1 }, Landroid/widget/AutoCompleteTextView;->setInputType(I)V
    return-void
.end method

.method public setMaxWidth(I)V
  .registers 2
  .line 1
    iput p1, p0, Landroidx/appcompat/widget/SearchView;->a0:I
  .line 2
    invoke-virtual { p0 }, Landroid/view/ViewGroup;->requestLayout()V
    return-void
.end method

.method public setOnCloseListener(Landroidx/appcompat/widget/SearchView$k;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->M:Landroidx/appcompat/widget/SearchView$k;
    return-void
.end method

.method public setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->N:Landroid/view/View$OnFocusChangeListener;
    return-void
.end method

.method public setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$l;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->L:Landroidx/appcompat/widget/SearchView$l;
    return-void
.end method

.method public setOnSearchClickListener(Landroid/view/View$OnClickListener;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->P:Landroid/view/View$OnClickListener;
    return-void
.end method

.method public setOnSuggestionListener(Landroidx/appcompat/widget/SearchView$m;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->O:Landroidx/appcompat/widget/SearchView$m;
    return-void
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
  .registers 2
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->U:Ljava/lang/CharSequence;
  .line 2
    invoke-direct { p0 }, Landroidx/appcompat/widget/SearchView;->g0()V
    return-void
.end method

.method public setQueryRefinementEnabled(Z)V
  .registers 4
  .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->V:Z
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->S:Lc/h/a/a;
    instance-of v1, v0, Landroidx/appcompat/widget/o0;
    if-eqz v1, :L2
  .line 3
    check-cast v0, Landroidx/appcompat/widget/o0;
    if-eqz p1, :L0
    const/4 p1, 2
    goto :L1
  :L0
    const/4 p1, 1
  :L1
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/o0;->x(I)V
  :L2
    return-void
.end method

.method public setSearchableInfo(Landroid/app/SearchableInfo;)V
  .registers 3
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->g0:Landroid/app/SearchableInfo;
    if-eqz p1, :L0
  .line 2
    invoke-direct { p0 }, Landroidx/appcompat/widget/SearchView;->h0()V
  .line 3
    invoke-direct { p0 }, Landroidx/appcompat/widget/SearchView;->g0()V
  :L0
  .line 4
    invoke-direct { p0 }, Landroidx/appcompat/widget/SearchView;->K()Z
    move-result p1
    iput-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->b0:Z
    if-eqz p1, :L1
  .line 5
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    const-string v0, "nm"
    invoke-virtual { p1, v0 }, Landroid/widget/AutoCompleteTextView;->setPrivateImeOptions(Ljava/lang/String;)V
  :L1
  .line 6
    invoke-virtual { p0 }, Landroidx/appcompat/widget/SearchView;->L()Z
    move-result p1
    invoke-direct { p0, p1 }, Landroidx/appcompat/widget/SearchView;->k0(Z)V
    return-void
.end method

.method public setSubmitButtonEnabled(Z)V
  .registers 2
  .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->T:Z
  .line 2
    invoke-virtual { p0 }, Landroidx/appcompat/widget/SearchView;->L()Z
    move-result p1
    invoke-direct { p0, p1 }, Landroidx/appcompat/widget/SearchView;->k0(Z)V
    return-void
.end method

.method public setSuggestionsAdapter(Lc/h/a/a;)V
  .registers 3
  .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->S:Lc/h/a/a;
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    invoke-virtual { v0, p1 }, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V
    return-void
.end method
