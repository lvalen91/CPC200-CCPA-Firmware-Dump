.class Landroidx/appcompat/widget/o0;
.super Lc/h/a/c;
.implements Landroid/view/View$OnClickListener;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/appcompat/widget/o0$a;
  }
.end annotation

.field private final m:Landroidx/appcompat/widget/SearchView;

.field private final n:Landroid/app/SearchableInfo;

.field private final o:Landroid/content/Context;

.field private final p:Ljava/util/WeakHashMap;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/WeakHashMap<",
      "Ljava/lang/String;",
      "Landroid/graphics/drawable/Drawable$ConstantState;",
      ">;"
    }
  .end annotation
.end field

.field private final q:I

.field private r:Z

.field private s:I

.field private t:Landroid/content/res/ColorStateList;

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I

.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Landroid/content/Context;",
      "Landroidx/appcompat/widget/SearchView;",
      "Landroid/app/SearchableInfo;",
      "Ljava/util/WeakHashMap<",
      "Ljava/lang/String;",
      "Landroid/graphics/drawable/Drawable$ConstantState;",
      ">;)V"
    }
  .end annotation
  .registers 8
  .line 1
    invoke-virtual { p2 }, Landroidx/appcompat/widget/SearchView;->getSuggestionRowLayout()I
    move-result v0
    const/4 v1, 0
    const/4 v2, 1
    invoke-direct { p0, p1, v0, v1, v2 }, Lc/h/a/c;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V
    const/4 v0, 0
  .line 2
    iput-boolean v0, p0, Landroidx/appcompat/widget/o0;->r:Z
  .line 3
    iput v2, p0, Landroidx/appcompat/widget/o0;->s:I
    const/4 v0, -1
  .line 4
    iput v0, p0, Landroidx/appcompat/widget/o0;->u:I
  .line 5
    iput v0, p0, Landroidx/appcompat/widget/o0;->v:I
  .line 6
    iput v0, p0, Landroidx/appcompat/widget/o0;->w:I
  .line 7
    iput v0, p0, Landroidx/appcompat/widget/o0;->x:I
  .line 8
    iput v0, p0, Landroidx/appcompat/widget/o0;->y:I
  .line 9
    iput v0, p0, Landroidx/appcompat/widget/o0;->z:I
  .line 10
    iput-object p2, p0, Landroidx/appcompat/widget/o0;->m:Landroidx/appcompat/widget/SearchView;
  .line 11
    iput-object p3, p0, Landroidx/appcompat/widget/o0;->n:Landroid/app/SearchableInfo;
  .line 12
    invoke-virtual { p2 }, Landroidx/appcompat/widget/SearchView;->getSuggestionCommitIconResId()I
    move-result p2
    iput p2, p0, Landroidx/appcompat/widget/o0;->q:I
  .line 13
    iput-object p1, p0, Landroidx/appcompat/widget/o0;->o:Landroid/content/Context;
  .line 14
    iput-object p4, p0, Landroidx/appcompat/widget/o0;->p:Ljava/util/WeakHashMap;
    return-void
.end method

.method private A(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
  .registers 4
    if-eqz p2, :L0
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/o0;->p:Ljava/util/WeakHashMap;
    invoke-virtual { p2 }, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    move-result-object p2
    invoke-virtual { v0, p1, p2 }, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L0
    return-void
.end method

.method private B(Landroid/database/Cursor;)V
  .registers 3
    if-eqz p1, :L0
  .line 1
    invoke-interface { p1 }, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;
    move-result-object p1
    goto :L1
  :L0
    const/4 p1, 0
  :L1
    if-eqz p1, :L2
    const-string v0, "in_progress"
  .line 2
    invoke-virtual { p1, v0 }, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    move-result p1
    if-eqz p1, :L2
  :L2
    return-void
.end method

.method private k(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
  .registers 3
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/o0;->p:Ljava/util/WeakHashMap;
    invoke-virtual { v0, p1 }, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroid/graphics/drawable/Drawable$ConstantState;
    if-nez p1, :L0
    const/4 p1, 0
    return-object p1
  :L0
  .line 2
    invoke-virtual { p1 }, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;
    move-result-object p1
    return-object p1
.end method

.method private l(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
  .registers 10
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/o0;->t:Landroid/content/res/ColorStateList;
    if-nez v0, :L0
  .line 2
    new-instance v0, Landroid/util/TypedValue;
    invoke-direct { v0 }, Landroid/util/TypedValue;-><init>()V
  .line 3
    iget-object v1, p0, Landroidx/appcompat/widget/o0;->o:Landroid/content/Context;
    invoke-virtual { v1 }, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;
    move-result-object v1
    sget v2, Lc/a/a;->textColorSearchUrl:I
    const/4 v3, 1
    invoke-virtual { v1, v2, v0, v3 }, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z
  .line 4
    iget-object v1, p0, Landroidx/appcompat/widget/o0;->o:Landroid/content/Context;
    invoke-virtual { v1 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I
    invoke-virtual { v1, v0 }, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;
    move-result-object v0
    iput-object v0, p0, Landroidx/appcompat/widget/o0;->t:Landroid/content/res/ColorStateList;
  :L0
  .line 5
    new-instance v0, Landroid/text/SpannableString;
    invoke-direct { v0, p1 }, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V
  .line 6
    new-instance v7, Landroid/text/style/TextAppearanceSpan;
    const/4 v2, 0
    const/4 v3, 0
    const/4 v4, 0
    iget-object v5, p0, Landroidx/appcompat/widget/o0;->t:Landroid/content/res/ColorStateList;
    const/4 v6, 0
    move-object v1, v7
    invoke-direct/range { v1 .. v6 }, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V
    const/4 v1, 0
  .line 7
    invoke-interface { p1 }, Ljava/lang/CharSequence;->length()I
    move-result p1
    const/16 v2, 33
  .line 8
    invoke-virtual { v0, v7, v1, p1, v2 }, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    return-object v0
.end method

.method private m(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
  .catch Landroid/content/pm/PackageManager$NameNotFoundException; { :L0 .. :L1 } :L4
  .registers 7
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/o0;->o:Landroid/content/Context;
    invoke-virtual { v0 }, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object v0
    const/16 v1, 128
    const/4 v2, 0
  :L0
  .line 2
    invoke-virtual { v0, p1, v1 }, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    move-result-object v1
  :L1
  .line 3
    invoke-virtual { v1 }, Landroid/content/pm/ActivityInfo;->getIconResource()I
    move-result v3
    if-nez v3, :L2
    return-object v2
  :L2
  .line 4
    invoke-virtual { p1 }, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
    move-result-object v4
  .line 5
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    invoke-virtual { v0, v4, v3, v1 }, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    move-result-object v0
    if-nez v0, :L3
  .line 6
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Invalid icon resource "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, " for "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 7
    invoke-virtual { p1 }, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    return-object v2
  :L3
    return-object v0
  :L4
    move-exception p1
  .line 8
    invoke-virtual { p1 }, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;
    return-object v2
.end method

.method private n(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
  .registers 5
  .line 1
    invoke-virtual { p1 }, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;
    move-result-object v0
  .line 2
    iget-object v1, p0, Landroidx/appcompat/widget/o0;->p:Ljava/util/WeakHashMap;
    invoke-virtual { v1, v0 }, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z
    move-result v1
    const/4 v2, 0
    if-eqz v1, :L2
  .line 3
    iget-object p1, p0, Landroidx/appcompat/widget/o0;->p:Ljava/util/WeakHashMap;
    invoke-virtual { p1, v0 }, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroid/graphics/drawable/Drawable$ConstantState;
    if-nez p1, :L0
    goto :L1
  :L0
  .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/o0;->o:Landroid/content/Context;
    invoke-virtual { v0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual { p1, v0 }, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    move-result-object v2
  :L1
    return-object v2
  :L2
  .line 5
    invoke-direct { p0, p1 }, Landroidx/appcompat/widget/o0;->m(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    move-result-object p1
    if-nez p1, :L3
    goto :L4
  :L3
  .line 6
    invoke-virtual { p1 }, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    move-result-object v2
  :L4
  .line 7
    iget-object v1, p0, Landroidx/appcompat/widget/o0;->p:Ljava/util/WeakHashMap;
    invoke-virtual { v1, v0, v2 }, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    return-object p1
.end method

.method public static o(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
  .registers 2
  .line 1
    invoke-interface { p0, p1 }, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    move-result p1
  .line 2
    invoke-static { p0, p1 }, Landroidx/appcompat/widget/o0;->w(Landroid/database/Cursor;I)Ljava/lang/String;
    move-result-object p0
    return-object p0
.end method

.method private p()Landroid/graphics/drawable/Drawable;
  .registers 2
  .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/o0;->n:Landroid/app/SearchableInfo;
    invoke-virtual { v0 }, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;
    move-result-object v0
    invoke-direct { p0, v0 }, Landroidx/appcompat/widget/o0;->n(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    move-result-object v0
    if-eqz v0, :L0
    return-object v0
  :L0
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/o0;->o:Landroid/content/Context;
    invoke-virtual { v0 }, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    return-object v0
.end method

.method private q(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
  .catch Ljava/io/FileNotFoundException; { :L0 .. :L1 } :L18
  .catch Landroid/content/res/Resources$NotFoundException; { :L2 .. :L3 } :L4
  .catch Ljava/io/FileNotFoundException; { :L2 .. :L3 } :L18
  .catch Ljava/io/FileNotFoundException; { :L4 .. :L6 } :L18
  .catchall { :L7 .. :L8 } :L12
  .catch Ljava/io/IOException; { :L8 .. :L9 } :L10
  .catch Ljava/io/FileNotFoundException; { :L10 .. :L11 } :L18
  .catch Ljava/io/IOException; { :L13 .. :L14 } :L15
  .catch Ljava/io/FileNotFoundException; { :L15 .. :L18 } :L18
  .registers 6
    const-string v0, "Error closing icon stream for "
    const/4 v1, 0
  :L0
  .line 1
    invoke-virtual { p1 }, Landroid/net/Uri;->getScheme()Ljava/lang/String;
    move-result-object v2
    const-string v3, "android.resource"
  .line 2
    invoke-virtual { v3, v2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
  :L1
    if-eqz v2, :L5
  :L2
  .line 3
    invoke-virtual { p0, p1 }, Landroidx/appcompat/widget/o0;->r(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    move-result-object p1
  :L3
    return-object p1
  :L4
  .line 4
    new-instance v0, Ljava/io/FileNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "Resource does not exist: "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-direct { v0, v2 }, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V
    throw v0
  :L5
  .line 5
    iget-object v2, p0, Landroidx/appcompat/widget/o0;->o:Landroid/content/Context;
    invoke-virtual { v2 }, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    move-result-object v2
    invoke-virtual { v2, p1 }, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    move-result-object v2
  :L6
    if-eqz v2, :L17
  :L7
  .line 6
    invoke-static { v2, v1 }, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    move-result-object v3
  :L8
  .line 7
    invoke-virtual { v2 }, Ljava/io/InputStream;->close()V
  :L9
    goto :L11
  :L10
  .line 8
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L11
    return-object v3
  :L12
    move-exception v3
  :L13
  .line 9
    invoke-virtual { v2 }, Ljava/io/InputStream;->close()V
  :L14
    goto :L16
  :L15
  .line 10
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
  :L16
  .line 11
    throw v3
  :L17
  .line 12
    new-instance v0, Ljava/io/FileNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "Failed to open "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-direct { v0, v2 }, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V
    throw v0
  :L18
    move-exception v0
  .line 13
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "Icon not found: "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string p1, ", "
    invoke-virtual { v2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    return-object v1
.end method

.method private s(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
  .catch Ljava/lang/NumberFormatException; { :L0 .. :L2 } :L4
  .catch Landroid/content/res/Resources$NotFoundException; { :L0 .. :L2 } :L3
  .registers 6
    const/4 v0, 0
    if-eqz p1, :L6
  .line 1
    invoke-virtual { p1 }, Ljava/lang/String;->isEmpty()Z
    move-result v1
    if-nez v1, :L6
    const-string v1, "0"
    invoke-virtual { v1, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L0
    goto :L6
  :L0
  .line 2
    invoke-static { p1 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v1
  .line 3
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "android.resource://"
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v3, p0, Landroidx/appcompat/widget/o0;->o:Landroid/content/Context;
  .line 4
    invoke-virtual { v3 }, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v3, "/"
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
  .line 5
    invoke-direct { p0, v2 }, Landroidx/appcompat/widget/o0;->k(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    move-result-object v3
    if-eqz v3, :L1
    return-object v3
  :L1
  .line 6
    iget-object v3, p0, Landroidx/appcompat/widget/o0;->o:Landroid/content/Context;
    invoke-static { v3, v1 }, Landroidx/core/content/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    move-result-object v1
  .line 7
    invoke-direct { p0, v2, v1 }, Landroidx/appcompat/widget/o0;->A(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
  :L2
    return-object v1
  :L3
  .line 8
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Icon resource not found: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    return-object v0
  :L4
    nop
  .line 9
    invoke-direct { p0, p1 }, Landroidx/appcompat/widget/o0;->k(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    move-result-object v0
    if-eqz v0, :L5
    return-object v0
  :L5
  .line 10
    invoke-static { p1 }, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    move-result-object v0
  .line 11
    invoke-direct { p0, v0 }, Landroidx/appcompat/widget/o0;->q(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    move-result-object v0
  .line 12
    invoke-direct { p0, p1, v0 }, Landroidx/appcompat/widget/o0;->A(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
  :L6
    return-object v0
.end method

.method private t(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
  .registers 4
  .line 1
    iget v0, p0, Landroidx/appcompat/widget/o0;->x:I
    const/4 v1, -1
    if-ne v0, v1, :L0
    const/4 p1, 0
    return-object p1
  :L0
  .line 2
    invoke-interface { p1, v0 }, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    move-result-object p1
  .line 3
    invoke-direct { p0, p1 }, Landroidx/appcompat/widget/o0;->s(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    move-result-object p1
    if-eqz p1, :L1
    return-object p1
  :L1
  .line 4
    invoke-direct { p0 }, Landroidx/appcompat/widget/o0;->p()Landroid/graphics/drawable/Drawable;
    move-result-object p1
    return-object p1
.end method

.method private u(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
  .registers 4
  .line 1
    iget v0, p0, Landroidx/appcompat/widget/o0;->y:I
    const/4 v1, -1
    if-ne v0, v1, :L0
    const/4 p1, 0
    return-object p1
  :L0
  .line 2
    invoke-interface { p1, v0 }, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    move-result-object p1
  .line 3
    invoke-direct { p0, p1 }, Landroidx/appcompat/widget/o0;->s(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    move-result-object p1
    return-object p1
.end method

.method private static w(Landroid/database/Cursor;I)Ljava/lang/String;
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L2
  .registers 4
    const/4 v0, 0
    const/4 v1, -1
    if-ne p1, v1, :L0
    return-object v0
  :L0
  .line 1
    invoke-interface { p0, p1 }, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    move-result-object p0
  :L1
    return-object p0
  :L2
    return-object v0
.end method

.method private y(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V
  .registers 4
  .line 1
    invoke-virtual { p1, p2 }, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    if-nez p2, :L0
  .line 2
    invoke-virtual { p1, p3 }, Landroid/widget/ImageView;->setVisibility(I)V
    goto :L1
  :L0
    const/4 p3, 0
  .line 3
    invoke-virtual { p1, p3 }, Landroid/widget/ImageView;->setVisibility(I)V
  .line 4
    invoke-virtual { p2, p3, p3 }, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z
    const/4 p1, 1
  .line 5
    invoke-virtual { p2, p1, p3 }, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z
  :L1
    return-void
.end method

.method private z(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
  .registers 3
  .line 1
    invoke-virtual { p1, p2 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 2
    invoke-static { p2 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result p2
    if-eqz p2, :L0
    const/16 p2, 8
  .line 3
    invoke-virtual { p1, p2 }, Landroid/widget/TextView;->setVisibility(I)V
    goto :L1
  :L0
    const/4 p2, 0
  .line 4
    invoke-virtual { p1, p2 }, Landroid/widget/TextView;->setVisibility(I)V
  :L1
    return-void
.end method

.method public a(Landroid/database/Cursor;)Ljava/lang/CharSequence;
  .registers 4
    const/4 v0, 0
    if-nez p1, :L0
    return-object v0
  :L0
    const-string v1, "suggest_intent_query"
  .line 1
    invoke-static { p1, v1 }, Landroidx/appcompat/widget/o0;->o(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    if-eqz v1, :L1
    return-object v1
  :L1
  .line 2
    iget-object v1, p0, Landroidx/appcompat/widget/o0;->n:Landroid/app/SearchableInfo;
    invoke-virtual { v1 }, Landroid/app/SearchableInfo;->shouldRewriteQueryFromData()Z
    move-result v1
    if-eqz v1, :L2
    const-string v1, "suggest_intent_data"
  .line 3
    invoke-static { p1, v1 }, Landroidx/appcompat/widget/o0;->o(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    if-eqz v1, :L2
    return-object v1
  :L2
  .line 4
    iget-object v1, p0, Landroidx/appcompat/widget/o0;->n:Landroid/app/SearchableInfo;
    invoke-virtual { v1 }, Landroid/app/SearchableInfo;->shouldRewriteQueryFromText()Z
    move-result v1
    if-eqz v1, :L3
    const-string v1, "suggest_text_1"
  .line 5
    invoke-static { p1, v1 }, Landroidx/appcompat/widget/o0;->o(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
    if-eqz p1, :L3
    return-object p1
  :L3
    return-object v0
.end method

.method public b(Landroid/database/Cursor;)V
  .catch Ljava/lang/Exception; { :L1 .. :L2 } :L2
  .registers 3
  .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/o0;->r:Z
    if-eqz v0, :L1
    if-eqz p1, :L0
  .line 2
    invoke-interface { p1 }, Landroid/database/Cursor;->close()V
  :L0
    return-void
  :L1
  .line 3
    invoke-super { p0, p1 }, Lc/h/a/a;->b(Landroid/database/Cursor;)V
    if-eqz p1, :L2
    const-string v0, "suggest_text_1"
  .line 4
    invoke-interface { p1, v0 }, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    move-result v0
    iput v0, p0, Landroidx/appcompat/widget/o0;->u:I
    const-string v0, "suggest_text_2"
  .line 5
    invoke-interface { p1, v0 }, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    move-result v0
    iput v0, p0, Landroidx/appcompat/widget/o0;->v:I
    const-string v0, "suggest_text_2_url"
  .line 6
    invoke-interface { p1, v0 }, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    move-result v0
    iput v0, p0, Landroidx/appcompat/widget/o0;->w:I
    const-string v0, "suggest_icon_1"
  .line 7
    invoke-interface { p1, v0 }, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    move-result v0
    iput v0, p0, Landroidx/appcompat/widget/o0;->x:I
    const-string v0, "suggest_icon_2"
  .line 8
    invoke-interface { p1, v0 }, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    move-result v0
    iput v0, p0, Landroidx/appcompat/widget/o0;->y:I
    const-string v0, "suggest_flags"
  .line 9
    invoke-interface { p1, v0 }, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    move-result p1
    iput p1, p0, Landroidx/appcompat/widget/o0;->z:I
  :L2
    return-void
.end method

.method public d(Ljava/lang/CharSequence;)Landroid/database/Cursor;
  .catch Ljava/lang/RuntimeException; { :L2 .. :L3 } :L4
  .registers 5
    if-nez p1, :L0
    const-string p1, ""
    goto :L1
  :L0
  .line 1
    invoke-interface { p1 }, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    move-result-object p1
  :L1
  .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/o0;->m:Landroidx/appcompat/widget/SearchView;
    invoke-virtual { v0 }, Landroid/view/ViewGroup;->getVisibility()I
    move-result v0
    const/4 v1, 0
    if-nez v0, :L4
    iget-object v0, p0, Landroidx/appcompat/widget/o0;->m:Landroidx/appcompat/widget/SearchView;
  .line 3
    invoke-virtual { v0 }, Landroid/view/ViewGroup;->getWindowVisibility()I
    move-result v0
    if-eqz v0, :L2
    goto :L4
  :L2
  .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/o0;->n:Landroid/app/SearchableInfo;
    const/16 v2, 50
    invoke-virtual { p0, v0, p1, v2 }, Landroidx/appcompat/widget/o0;->v(Landroid/app/SearchableInfo;Ljava/lang/String;I)Landroid/database/Cursor;
    move-result-object p1
    if-eqz p1, :L4
  .line 5
    invoke-interface { p1 }, Landroid/database/Cursor;->getCount()I
  :L3
    return-object p1
  :L4
    return-object v1
.end method

.method public e(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
  .registers 10
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getTag()Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroidx/appcompat/widget/o0$a;
  .line 2
    iget p2, p0, Landroidx/appcompat/widget/o0;->z:I
    const/4 v0, 0
    const/4 v1, -1
    if-eq p2, v1, :L0
  .line 3
    invoke-interface { p3, p2 }, Landroid/database/Cursor;->getInt(I)I
    move-result p2
    goto :L1
  :L0
    const/4 p2, 0
  :L1
  .line 4
    iget-object v1, p1, Landroidx/appcompat/widget/o0$a;->a:Landroid/widget/TextView;
    if-eqz v1, :L2
  .line 5
    iget v1, p0, Landroidx/appcompat/widget/o0;->u:I
    invoke-static { p3, v1 }, Landroidx/appcompat/widget/o0;->w(Landroid/database/Cursor;I)Ljava/lang/String;
    move-result-object v1
  .line 6
    iget-object v2, p1, Landroidx/appcompat/widget/o0$a;->a:Landroid/widget/TextView;
    invoke-direct { p0, v2, v1 }, Landroidx/appcompat/widget/o0;->z(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
  :L2
  .line 7
    iget-object v1, p1, Landroidx/appcompat/widget/o0$a;->b:Landroid/widget/TextView;
    const/4 v2, 2
    const/4 v3, 1
    if-eqz v1, :L7
  .line 8
    iget v1, p0, Landroidx/appcompat/widget/o0;->w:I
    invoke-static { p3, v1 }, Landroidx/appcompat/widget/o0;->w(Landroid/database/Cursor;I)Ljava/lang/String;
    move-result-object v1
    if-eqz v1, :L3
  .line 9
    invoke-direct { p0, v1 }, Landroidx/appcompat/widget/o0;->l(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    move-result-object v1
    goto :L4
  :L3
  .line 10
    iget v1, p0, Landroidx/appcompat/widget/o0;->v:I
    invoke-static { p3, v1 }, Landroidx/appcompat/widget/o0;->w(Landroid/database/Cursor;I)Ljava/lang/String;
    move-result-object v1
  :L4
  .line 11
    invoke-static { v1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v4
    if-eqz v4, :L5
  .line 12
    iget-object v4, p1, Landroidx/appcompat/widget/o0$a;->a:Landroid/widget/TextView;
    if-eqz v4, :L6
  .line 13
    invoke-virtual { v4, v0 }, Landroid/widget/TextView;->setSingleLine(Z)V
  .line 14
    iget-object v4, p1, Landroidx/appcompat/widget/o0$a;->a:Landroid/widget/TextView;
    invoke-virtual { v4, v2 }, Landroid/widget/TextView;->setMaxLines(I)V
    goto :L6
  :L5
  .line 15
    iget-object v4, p1, Landroidx/appcompat/widget/o0$a;->a:Landroid/widget/TextView;
    if-eqz v4, :L6
  .line 16
    invoke-virtual { v4, v3 }, Landroid/widget/TextView;->setSingleLine(Z)V
  .line 17
    iget-object v4, p1, Landroidx/appcompat/widget/o0$a;->a:Landroid/widget/TextView;
    invoke-virtual { v4, v3 }, Landroid/widget/TextView;->setMaxLines(I)V
  :L6
  .line 18
    iget-object v4, p1, Landroidx/appcompat/widget/o0$a;->b:Landroid/widget/TextView;
    invoke-direct { p0, v4, v1 }, Landroidx/appcompat/widget/o0;->z(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
  :L7
  .line 19
    iget-object v1, p1, Landroidx/appcompat/widget/o0$a;->c:Landroid/widget/ImageView;
    if-eqz v1, :L8
  .line 20
    invoke-direct { p0, p3 }, Landroidx/appcompat/widget/o0;->t(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
    move-result-object v4
    const/4 v5, 4
    invoke-direct { p0, v1, v4, v5 }, Landroidx/appcompat/widget/o0;->y(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V
  :L8
  .line 21
    iget-object v1, p1, Landroidx/appcompat/widget/o0$a;->d:Landroid/widget/ImageView;
    const/16 v4, 8
    if-eqz v1, :L9
  .line 22
    invoke-direct { p0, p3 }, Landroidx/appcompat/widget/o0;->u(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
    move-result-object p3
    invoke-direct { p0, v1, p3, v4 }, Landroidx/appcompat/widget/o0;->y(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V
  :L9
  .line 23
    iget p3, p0, Landroidx/appcompat/widget/o0;->s:I
    if-eq p3, v2, :L11
    if-ne p3, v3, :L10
    and-int/2addr p2, v3
    if-eqz p2, :L10
    goto :L11
  :L10
  .line 24
    iget-object p1, p1, Landroidx/appcompat/widget/o0$a;->e:Landroid/widget/ImageView;
    invoke-virtual { p1, v4 }, Landroid/widget/ImageView;->setVisibility(I)V
    goto :L12
  :L11
  .line 25
    iget-object p2, p1, Landroidx/appcompat/widget/o0$a;->e:Landroid/widget/ImageView;
    invoke-virtual { p2, v0 }, Landroid/widget/ImageView;->setVisibility(I)V
  .line 26
    iget-object p2, p1, Landroidx/appcompat/widget/o0$a;->e:Landroid/widget/ImageView;
    iget-object p3, p1, Landroidx/appcompat/widget/o0$a;->a:Landroid/widget/TextView;
    invoke-virtual { p3 }, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
    move-result-object p3
    invoke-virtual { p2, p3 }, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V
  .line 27
    iget-object p1, p1, Landroidx/appcompat/widget/o0$a;->e:Landroid/widget/ImageView;
    invoke-virtual { p1, p0 }, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  :L12
    return-void
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
  .catch Ljava/lang/RuntimeException; { :L0 .. :L1 } :L2
  .registers 5
  :L0
  .line 1
    invoke-super { p0, p1, p2, p3 }, Lc/h/a/a;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    move-result-object p1
  :L1
    return-object p1
  :L2
    move-exception p1
  .line 2
    iget-object p2, p0, Landroidx/appcompat/widget/o0;->o:Landroid/content/Context;
    invoke-virtual { p0 }, Lc/h/a/a;->c()Landroid/database/Cursor;
    move-result-object v0
    invoke-virtual { p0, p2, v0, p3 }, Lc/h/a/c;->g(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    move-result-object p2
    if-eqz p2, :L3
  .line 3
    invoke-virtual { p2 }, Landroid/view/View;->getTag()Ljava/lang/Object;
    move-result-object p3
    check-cast p3, Landroidx/appcompat/widget/o0$a;
  .line 4
    iget-object p3, p3, Landroidx/appcompat/widget/o0$a;->a:Landroid/widget/TextView;
  .line 5
    invoke-virtual { p1 }, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-virtual { p3, p1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  :L3
    return-object p2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
  .catch Ljava/lang/RuntimeException; { :L0 .. :L1 } :L2
  .registers 5
  :L0
  .line 1
    invoke-super { p0, p1, p2, p3 }, Lc/h/a/a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    move-result-object p1
  :L1
    return-object p1
  :L2
    move-exception p1
  .line 2
    iget-object p2, p0, Landroidx/appcompat/widget/o0;->o:Landroid/content/Context;
    invoke-virtual { p0 }, Lc/h/a/a;->c()Landroid/database/Cursor;
    move-result-object v0
    invoke-virtual { p0, p2, v0, p3 }, Landroidx/appcompat/widget/o0;->h(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    move-result-object p2
    if-eqz p2, :L3
  .line 3
    invoke-virtual { p2 }, Landroid/view/View;->getTag()Ljava/lang/Object;
    move-result-object p3
    check-cast p3, Landroidx/appcompat/widget/o0$a;
  .line 4
    iget-object p3, p3, Landroidx/appcompat/widget/o0$a;->a:Landroid/widget/TextView;
  .line 5
    invoke-virtual { p1 }, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-virtual { p3, p1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  :L3
    return-object p2
.end method

.method public h(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
  .registers 4
  .line 1
    invoke-super { p0, p1, p2, p3 }, Lc/h/a/c;->h(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    move-result-object p1
  .line 2
    new-instance p2, Landroidx/appcompat/widget/o0$a;
    invoke-direct { p2, p1 }, Landroidx/appcompat/widget/o0$a;-><init>(Landroid/view/View;)V
    invoke-virtual { p1, p2 }, Landroid/view/View;->setTag(Ljava/lang/Object;)V
  .line 3
    sget p2, Lc/a/f;->edit_query:I
    invoke-virtual { p1, p2 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p2
    check-cast p2, Landroid/widget/ImageView;
  .line 4
    iget p3, p0, Landroidx/appcompat/widget/o0;->q:I
    invoke-virtual { p2, p3 }, Landroid/widget/ImageView;->setImageResource(I)V
    return-object p1
.end method

.method public hasStableIds()Z
  .registers 2
    const/4 v0, 0
    return v0
.end method

.method public notifyDataSetChanged()V
  .registers 2
  .line 1
    invoke-super { p0 }, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
  .line 2
    invoke-virtual { p0 }, Lc/h/a/a;->c()Landroid/database/Cursor;
    move-result-object v0
    invoke-direct { p0, v0 }, Landroidx/appcompat/widget/o0;->B(Landroid/database/Cursor;)V
    return-void
.end method

.method public notifyDataSetInvalidated()V
  .registers 2
  .line 1
    invoke-super { p0 }, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V
  .line 2
    invoke-virtual { p0 }, Lc/h/a/a;->c()Landroid/database/Cursor;
    move-result-object v0
    invoke-direct { p0, v0 }, Landroidx/appcompat/widget/o0;->B(Landroid/database/Cursor;)V
    return-void
.end method

.method public onClick(Landroid/view/View;)V
  .registers 3
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getTag()Ljava/lang/Object;
    move-result-object p1
  .line 2
    instance-of v0, p1, Ljava/lang/CharSequence;
    if-eqz v0, :L0
  .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/o0;->m:Landroidx/appcompat/widget/SearchView;
    check-cast p1, Ljava/lang/CharSequence;
    invoke-virtual { v0, p1 }, Landroidx/appcompat/widget/SearchView;->U(Ljava/lang/CharSequence;)V
  :L0
    return-void
.end method

.method r(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
  .catch Landroid/content/pm/PackageManager$NameNotFoundException; { :L0 .. :L1 } :L10
  .catch Ljava/lang/NumberFormatException; { :L2 .. :L3 } :L4
  .registers 9
  .line 1
    invoke-virtual { p1 }, Landroid/net/Uri;->getAuthority()Ljava/lang/String;
    move-result-object v0
  .line 2
    invoke-static { v0 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v1
    if-nez v1, :L11
  :L0
  .line 3
    iget-object v1, p0, Landroidx/appcompat/widget/o0;->o:Landroid/content/Context;
    invoke-virtual { v1 }, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object v1
    invoke-virtual { v1, v0 }, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    move-result-object v1
  :L1
  .line 4
    invoke-virtual { p1 }, Landroid/net/Uri;->getPathSegments()Ljava/util/List;
    move-result-object v2
    if-eqz v2, :L9
  .line 5
    invoke-interface { v2 }, Ljava/util/List;->size()I
    move-result v3
    const/4 v4, 0
    const/4 v5, 1
    if-ne v3, v5, :L5
  :L2
  .line 6
    invoke-interface { v2, v4 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/String;
    invoke-static { v0 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v0
  :L3
    goto :L6
  :L4
  .line 7
    new-instance v0, Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Single path segment is not a resource ID: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V
    throw v0
  :L5
    const/4 v6, 2
    if-ne v3, v6, :L8
  .line 8
    invoke-interface { v2, v5 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/lang/String;
    invoke-interface { v2, v4 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/String;
    invoke-virtual { v1, v3, v2, v0 }, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    move-result v0
  :L6
    if-eqz v0, :L7
  .line 9
    invoke-virtual { v1, v0 }, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    move-result-object p1
    return-object p1
  :L7
  .line 10
    new-instance v0, Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "No resource found for: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V
    throw v0
  :L8
  .line 11
    new-instance v0, Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "More than two path segments: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V
    throw v0
  :L9
  .line 12
    new-instance v0, Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "No path: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V
    throw v0
  :L10
  .line 13
    new-instance v0, Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "No package found for authority: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V
    throw v0
  :L11
  .line 14
    new-instance v0, Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "No authority: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method v(Landroid/app/SearchableInfo;Ljava/lang/String;I)Landroid/database/Cursor;
  .registers 13
    const/4 v0, 0
    if-nez p1, :L0
    return-object v0
  :L0
  .line 1
    invoke-virtual { p1 }, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;
    move-result-object v1
    if-nez v1, :L1
    return-object v0
  :L1
  .line 2
    new-instance v2, Landroid/net/Uri$Builder;
    invoke-direct { v2 }, Landroid/net/Uri$Builder;-><init>()V
    const-string v3, "content"
  .line 3
    invoke-virtual { v2, v3 }, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;
    move-result-object v2
  .line 4
    invoke-virtual { v2, v1 }, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;
    move-result-object v1
    const-string v2, ""
  .line 5
    invoke-virtual { v1, v2 }, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;
    move-result-object v1
  .line 6
    invoke-virtual { v1, v2 }, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;
    move-result-object v1
  .line 7
    invoke-virtual { p1 }, Landroid/app/SearchableInfo;->getSuggestPath()Ljava/lang/String;
    move-result-object v2
    if-eqz v2, :L2
  .line 8
    invoke-virtual { v1, v2 }, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
  :L2
    const-string v2, "search_suggest_query"
  .line 9
    invoke-virtual { v1, v2 }, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
  .line 10
    invoke-virtual { p1 }, Landroid/app/SearchableInfo;->getSuggestSelection()Ljava/lang/String;
    move-result-object v6
    if-eqz v6, :L3
    const/4 p1, 1
    new-array v0, p1, [Ljava/lang/String;
    const/4 p1, 0
    aput-object p2, v0, p1
    goto :L4
  :L3
  .line 11
    invoke-virtual { v1, p2 }, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
  :L4
    move-object v7, v0
    if-lez p3, :L5
  .line 12
    invoke-static { p3 }, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object p1
    const-string p2, "limit"
    invoke-virtual { v1, p2, p1 }, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
  :L5
  .line 13
    invoke-virtual { v1 }, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
    move-result-object v4
  .line 14
    iget-object p1, p0, Landroidx/appcompat/widget/o0;->o:Landroid/content/Context;
    invoke-virtual { p1 }, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    move-result-object v3
    const/4 v5, 0
    const/4 v8, 0
    invoke-virtual/range { v3 .. v8 }, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    move-result-object p1
    return-object p1
.end method

.method public x(I)V
  .registers 2
  .line 1
    iput p1, p0, Landroidx/appcompat/widget/o0;->s:I
    return-void
.end method
