.class Lc/a/o/g$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/o/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field A:Landroidx/core/view/b;

.field private B:Ljava/lang/CharSequence;

.field private C:Ljava/lang/CharSequence;

.field private D:Landroid/content/res/ColorStateList;

.field private E:Landroid/graphics/PorterDuff$Mode;

.field final synthetic F:Lc/a/o/g;

.field private a:Landroid/view/Menu;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:Ljava/lang/CharSequence;

.field private l:Ljava/lang/CharSequence;

.field private m:I

.field private n:C

.field private o:I

.field private p:C

.field private q:I

.field private r:I

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:I

.field private w:I

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lc/a/o/g;Landroid/view/Menu;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lc/a/o/g$b;->F:Lc/a/o/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lc/a/o/g$b;->D:Landroid/content/res/ColorStateList;

    .line 3
    iput-object p1, p0, Lc/a/o/g$b;->E:Landroid/graphics/PorterDuff$Mode;

    .line 4
    iput-object p2, p0, Lc/a/o/g$b;->a:Landroid/view/Menu;

    .line 5
    invoke-virtual {p0}, Lc/a/o/g$b;->h()V

    return-void
.end method

.method private c(Ljava/lang/String;)C
    .registers 3

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1
    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1
.end method

.method private e(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_1
    iget-object v1, p0, Lc/a/o/g$b;->F:Lc/a/o/g;

    iget-object v1, v1, Lc/a/o/g;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p1, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 4
    invoke-virtual {p2, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_1a

    return-object p1

    .line 5
    :catch_1a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot instantiate class: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 p1, 0x0

    return-object p1
.end method

.method private i(Landroid/view/MenuItem;)V
    .registers 7

    .line 1
    iget-boolean v0, p0, Lc/a/o/g$b;->s:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lc/a/o/g$b;->t:Z

    .line 2
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lc/a/o/g$b;->u:Z

    .line 3
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Lc/a/o/g$b;->r:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v1, v3, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    .line 4
    :goto_1b
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lc/a/o/g$b;->l:Ljava/lang/CharSequence;

    .line 5
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Lc/a/o/g$b;->m:I

    .line 6
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 7
    iget v0, p0, Lc/a/o/g$b;->v:I

    if-ltz v0, :cond_31

    .line 8
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 9
    :cond_31
    iget-object v0, p0, Lc/a/o/g$b;->z:Ljava/lang/String;

    if-eqz v0, :cond_58

    .line 10
    iget-object v0, p0, Lc/a/o/g$b;->F:Lc/a/o/g;

    iget-object v0, v0, Lc/a/o/g;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_50

    .line 11
    new-instance v0, Lc/a/o/g$a;

    iget-object v1, p0, Lc/a/o/g$b;->F:Lc/a/o/g;

    .line 12
    invoke-virtual {v1}, Lc/a/o/g;->b()Ljava/lang/Object;

    move-result-object v1

    iget-object v4, p0, Lc/a/o/g$b;->z:Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Lc/a/o/g$a;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_58

    .line 14
    :cond_50
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_58
    :goto_58
    iget v0, p0, Lc/a/o/g$b;->r:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_72

    .line 16
    instance-of v0, p1, Landroidx/appcompat/view/menu/i;

    if-eqz v0, :cond_68

    .line 17
    move-object v0, p1

    check-cast v0, Landroidx/appcompat/view/menu/i;

    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/i;->t(Z)V

    goto :goto_72

    .line 18
    :cond_68
    instance-of v0, p1, Landroidx/appcompat/view/menu/j;

    if-eqz v0, :cond_72

    .line 19
    move-object v0, p1

    check-cast v0, Landroidx/appcompat/view/menu/j;

    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/j;->h(Z)V

    .line 20
    :cond_72
    :goto_72
    iget-object v0, p0, Lc/a/o/g$b;->x:Ljava/lang/String;

    if-eqz v0, :cond_86

    .line 21
    sget-object v1, Lc/a/o/g;->e:[Ljava/lang/Class;

    iget-object v2, p0, Lc/a/o/g$b;->F:Lc/a/o/g;

    iget-object v2, v2, Lc/a/o/g;->a:[Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lc/a/o/g$b;->e(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 22
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    const/4 v2, 0x1

    .line 23
    :cond_86
    iget v0, p0, Lc/a/o/g$b;->w:I

    if-lez v0, :cond_8f

    if-nez v2, :cond_8f

    .line 24
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 25
    :cond_8f
    iget-object v0, p0, Lc/a/o/g$b;->A:Landroidx/core/view/b;

    if-eqz v0, :cond_96

    .line 26
    invoke-static {p1, v0}, Landroidx/core/view/i;->a(Landroid/view/MenuItem;Landroidx/core/view/b;)Landroid/view/MenuItem;

    .line 27
    :cond_96
    iget-object v0, p0, Lc/a/o/g$b;->B:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroidx/core/view/i;->c(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    .line 28
    iget-object v0, p0, Lc/a/o/g$b;->C:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroidx/core/view/i;->g(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    .line 29
    iget-char v0, p0, Lc/a/o/g$b;->n:C

    iget v1, p0, Lc/a/o/g$b;->o:I

    invoke-static {p1, v0, v1}, Landroidx/core/view/i;->b(Landroid/view/MenuItem;CI)V

    .line 30
    iget-char v0, p0, Lc/a/o/g$b;->p:C

    iget v1, p0, Lc/a/o/g$b;->q:I

    invoke-static {p1, v0, v1}, Landroidx/core/view/i;->f(Landroid/view/MenuItem;CI)V

    .line 31
    iget-object v0, p0, Lc/a/o/g$b;->E:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_b5

    .line 32
    invoke-static {p1, v0}, Landroidx/core/view/i;->e(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)V

    .line 33
    :cond_b5
    iget-object v0, p0, Lc/a/o/g$b;->D:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_bc

    .line 34
    invoke-static {p1, v0}, Landroidx/core/view/i;->d(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V

    :cond_bc
    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lc/a/o/g$b;->h:Z

    .line 2
    iget-object v0, p0, Lc/a/o/g$b;->a:Landroid/view/Menu;

    iget v1, p0, Lc/a/o/g$b;->b:I

    iget v2, p0, Lc/a/o/g$b;->i:I

    iget v3, p0, Lc/a/o/g$b;->j:I

    iget-object v4, p0, Lc/a/o/g$b;->k:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lc/a/o/g$b;->i(Landroid/view/MenuItem;)V

    return-void
.end method

.method public b()Landroid/view/SubMenu;
    .registers 6

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lc/a/o/g$b;->h:Z

    .line 2
    iget-object v0, p0, Lc/a/o/g$b;->a:Landroid/view/Menu;

    iget v1, p0, Lc/a/o/g$b;->b:I

    iget v2, p0, Lc/a/o/g$b;->i:I

    iget v3, p0, Lc/a/o/g$b;->j:I

    iget-object v4, p0, Lc/a/o/g$b;->k:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0, v1}, Lc/a/o/g$b;->i(Landroid/view/MenuItem;)V

    return-object v0
.end method

.method public d()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lc/a/o/g$b;->h:Z

    return v0
.end method

.method public f(Landroid/util/AttributeSet;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lc/a/o/g$b;->F:Lc/a/o/g;

    iget-object v0, v0, Lc/a/o/g;->c:Landroid/content/Context;

    sget-object v1, Lc/a/j;->MenuGroup:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2
    sget v0, Lc/a/j;->MenuGroup_android_id:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lc/a/o/g$b;->b:I

    .line 3
    sget v0, Lc/a/j;->MenuGroup_android_menuCategory:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lc/a/o/g$b;->c:I

    .line 4
    sget v0, Lc/a/j;->MenuGroup_android_orderInCategory:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lc/a/o/g$b;->d:I

    .line 5
    sget v0, Lc/a/j;->MenuGroup_android_checkableBehavior:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lc/a/o/g$b;->e:I

    .line 6
    sget v0, Lc/a/j;->MenuGroup_android_visible:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lc/a/o/g$b;->f:Z

    .line 7
    sget v0, Lc/a/j;->MenuGroup_android_enabled:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lc/a/o/g$b;->g:Z

    .line 8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public g(Landroid/util/AttributeSet;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lc/a/o/g$b;->F:Lc/a/o/g;

    iget-object v0, v0, Lc/a/o/g;->c:Landroid/content/Context;

    sget-object v1, Lc/a/j;->MenuItem:[I

    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/u0;->u(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/u0;

    move-result-object p1

    .line 2
    sget v0, Lc/a/j;->MenuItem_android_id:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/u0;->n(II)I

    move-result v0

    iput v0, p0, Lc/a/o/g$b;->i:I

    .line 3
    sget v0, Lc/a/j;->MenuItem_android_menuCategory:I

    iget v2, p0, Lc/a/o/g$b;->c:I

    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/widget/u0;->k(II)I

    move-result v0

    .line 4
    sget v2, Lc/a/j;->MenuItem_android_orderInCategory:I

    iget v3, p0, Lc/a/o/g$b;->d:I

    invoke-virtual {p1, v2, v3}, Landroidx/appcompat/widget/u0;->k(II)I

    move-result v2

    const/high16 v3, -0x10000

    and-int/2addr v0, v3

    const v3, 0xffff

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 5
    iput v0, p0, Lc/a/o/g$b;->j:I

    .line 6
    sget v0, Lc/a/j;->MenuItem_android_title:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/u0;->p(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lc/a/o/g$b;->k:Ljava/lang/CharSequence;

    .line 7
    sget v0, Lc/a/j;->MenuItem_android_titleCondensed:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/u0;->p(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lc/a/o/g$b;->l:Ljava/lang/CharSequence;

    .line 8
    sget v0, Lc/a/j;->MenuItem_android_icon:I

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/u0;->n(II)I

    move-result v0

    iput v0, p0, Lc/a/o/g$b;->m:I

    .line 9
    sget v0, Lc/a/j;->MenuItem_android_alphabeticShortcut:I

    .line 10
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/u0;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lc/a/o/g$b;->c(Ljava/lang/String;)C

    move-result v0

    iput-char v0, p0, Lc/a/o/g$b;->n:C

    .line 11
    sget v0, Lc/a/j;->MenuItem_alphabeticModifiers:I

    const/16 v2, 0x1000

    .line 12
    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/widget/u0;->k(II)I

    move-result v0

    iput v0, p0, Lc/a/o/g$b;->o:I

    .line 13
    sget v0, Lc/a/j;->MenuItem_android_numericShortcut:I

    .line 14
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/u0;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lc/a/o/g$b;->c(Ljava/lang/String;)C

    move-result v0

    iput-char v0, p0, Lc/a/o/g$b;->p:C

    .line 15
    sget v0, Lc/a/j;->MenuItem_numericModifiers:I

    .line 16
    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/widget/u0;->k(II)I

    move-result v0

    iput v0, p0, Lc/a/o/g$b;->q:I

    .line 17
    sget v0, Lc/a/j;->MenuItem_android_checkable:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/u0;->s(I)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 18
    sget v0, Lc/a/j;->MenuItem_android_checkable:I

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/u0;->a(IZ)Z

    move-result v0

    iput v0, p0, Lc/a/o/g$b;->r:I

    goto :goto_84

    .line 19
    :cond_80
    iget v0, p0, Lc/a/o/g$b;->e:I

    iput v0, p0, Lc/a/o/g$b;->r:I

    .line 20
    :goto_84
    sget v0, Lc/a/j;->MenuItem_android_checked:I

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/u0;->a(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lc/a/o/g$b;->s:Z

    .line 21
    sget v0, Lc/a/j;->MenuItem_android_visible:I

    iget-boolean v2, p0, Lc/a/o/g$b;->f:Z

    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/widget/u0;->a(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lc/a/o/g$b;->t:Z

    .line 22
    sget v0, Lc/a/j;->MenuItem_android_enabled:I

    iget-boolean v2, p0, Lc/a/o/g$b;->g:Z

    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/widget/u0;->a(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lc/a/o/g$b;->u:Z

    .line 23
    sget v0, Lc/a/j;->MenuItem_showAsAction:I

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/widget/u0;->k(II)I

    move-result v0

    iput v0, p0, Lc/a/o/g$b;->v:I

    .line 24
    sget v0, Lc/a/j;->MenuItem_android_onClick:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/u0;->o(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/a/o/g$b;->z:Ljava/lang/String;

    .line 25
    sget v0, Lc/a/j;->MenuItem_actionLayout:I

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/u0;->n(II)I

    move-result v0

    iput v0, p0, Lc/a/o/g$b;->w:I

    .line 26
    sget v0, Lc/a/j;->MenuItem_actionViewClass:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/u0;->o(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/a/o/g$b;->x:Ljava/lang/String;

    .line 27
    sget v0, Lc/a/j;->MenuItem_actionProviderClass:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/u0;->o(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/a/o/g$b;->y:Ljava/lang/String;

    if-eqz v0, :cond_cd

    const/4 v0, 0x1

    goto :goto_ce

    :cond_cd
    const/4 v0, 0x0

    :goto_ce
    const/4 v3, 0x0

    if-eqz v0, :cond_ea

    .line 28
    iget v4, p0, Lc/a/o/g$b;->w:I

    if-nez v4, :cond_ea

    iget-object v4, p0, Lc/a/o/g$b;->x:Ljava/lang/String;

    if-nez v4, :cond_ea

    .line 29
    iget-object v0, p0, Lc/a/o/g$b;->y:Ljava/lang/String;

    sget-object v4, Lc/a/o/g;->f:[Ljava/lang/Class;

    iget-object v5, p0, Lc/a/o/g$b;->F:Lc/a/o/g;

    iget-object v5, v5, Lc/a/o/g;->b:[Ljava/lang/Object;

    invoke-direct {p0, v0, v4, v5}, Lc/a/o/g$b;->e(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/b;

    iput-object v0, p0, Lc/a/o/g$b;->A:Landroidx/core/view/b;

    goto :goto_ec

    .line 30
    :cond_ea
    iput-object v3, p0, Lc/a/o/g$b;->A:Landroidx/core/view/b;

    .line 31
    :goto_ec
    sget v0, Lc/a/j;->MenuItem_contentDescription:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/u0;->p(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lc/a/o/g$b;->B:Ljava/lang/CharSequence;

    .line 32
    sget v0, Lc/a/j;->MenuItem_tooltipText:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/u0;->p(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lc/a/o/g$b;->C:Ljava/lang/CharSequence;

    .line 33
    sget v0, Lc/a/j;->MenuItem_iconTintMode:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/u0;->s(I)Z

    move-result v0

    if-eqz v0, :cond_113

    .line 34
    sget v0, Lc/a/j;->MenuItem_iconTintMode:I

    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/widget/u0;->k(II)I

    move-result v0

    iget-object v2, p0, Lc/a/o/g$b;->E:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v2}, Landroidx/appcompat/widget/c0;->e(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, p0, Lc/a/o/g$b;->E:Landroid/graphics/PorterDuff$Mode;

    goto :goto_115

    .line 35
    :cond_113
    iput-object v3, p0, Lc/a/o/g$b;->E:Landroid/graphics/PorterDuff$Mode;

    .line 36
    :goto_115
    sget v0, Lc/a/j;->MenuItem_iconTint:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/u0;->s(I)Z

    move-result v0

    if-eqz v0, :cond_126

    .line 37
    sget v0, Lc/a/j;->MenuItem_iconTint:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/u0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lc/a/o/g$b;->D:Landroid/content/res/ColorStateList;

    goto :goto_128

    .line 38
    :cond_126
    iput-object v3, p0, Lc/a/o/g$b;->D:Landroid/content/res/ColorStateList;

    .line 39
    :goto_128
    invoke-virtual {p1}, Landroidx/appcompat/widget/u0;->w()V

    .line 40
    iput-boolean v1, p0, Lc/a/o/g$b;->h:Z

    return-void
.end method

.method public h()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lc/a/o/g$b;->b:I

    .line 2
    iput v0, p0, Lc/a/o/g$b;->c:I

    .line 3
    iput v0, p0, Lc/a/o/g$b;->d:I

    .line 4
    iput v0, p0, Lc/a/o/g$b;->e:I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lc/a/o/g$b;->f:Z

    .line 6
    iput-boolean v0, p0, Lc/a/o/g$b;->g:Z

    return-void
.end method
