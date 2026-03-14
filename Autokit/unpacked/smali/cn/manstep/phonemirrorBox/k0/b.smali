.class public Lcn/manstep/phonemirrorBox/k0/b;
.super Ljava/lang/Object;
.source "SourceFile"

.field private static e:Lcn/manstep/phonemirrorBox/k0/b;

.field private a:Ljava/lang/ref/WeakReference;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ref/WeakReference<",
      "Landroid/content/Context;",
      ">;"
    }
  .end annotation
.end field

.field private b:Landroid/app/AlertDialog;

.field private c:Ljava/lang/String;

.field private d:I

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method static synthetic a(Lcn/manstep/phonemirrorBox/k0/b;)Landroid/app/AlertDialog;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/k0/b;->b:Landroid/app/AlertDialog;
    return-object p0
.end method

.method private b(Landroid/content/Context;I)Landroid/widget/ImageView;
  .registers 4
  .line 1
    new-instance v0, Landroid/widget/ImageView;
    invoke-direct { v0, p1 }, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
    const/16 p1, 10
    add-int/2addr p2, p1
  .line 2
    invoke-virtual { v0, p2 }, Landroid/widget/ImageView;->setMinimumWidth(I)V
  .line 3
    invoke-virtual { v0, p2 }, Landroid/widget/ImageView;->setMinimumHeight(I)V
  .line 4
    invoke-virtual { v0, p1, p1, p1, p1 }, Landroid/widget/ImageView;->setPadding(IIII)V
    const-string p1, "#FFFFFF"
  .line 5
    invoke-static { p1 }, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    move-result p1
    invoke-virtual { v0, p1 }, Landroid/widget/ImageView;->setBackgroundColor(I)V
    return-object v0
.end method

.method public static c()Lcn/manstep/phonemirrorBox/k0/b;
  .catchall { :L0 .. :L3 } :L2
  .registers 2
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/k0/b;->e:Lcn/manstep/phonemirrorBox/k0/b;
    if-nez v0, :L4
  .line 2
    const-class v0, Lcn/manstep/phonemirrorBox/k0/b;
    monitor-enter v0
  :L0
  .line 3
    sget-object v1, Lcn/manstep/phonemirrorBox/k0/b;->e:Lcn/manstep/phonemirrorBox/k0/b;
    if-nez v1, :L1
  .line 4
    new-instance v1, Lcn/manstep/phonemirrorBox/k0/b;
    invoke-direct { v1 }, Lcn/manstep/phonemirrorBox/k0/b;-><init>()V
    sput-object v1, Lcn/manstep/phonemirrorBox/k0/b;->e:Lcn/manstep/phonemirrorBox/k0/b;
  :L1
  .line 5
    monitor-exit v0
    goto :L4
  :L2
    move-exception v1
    monitor-exit v0
  :L3
    throw v1
  :L4
  .line 6
    sget-object v0, Lcn/manstep/phonemirrorBox/k0/b;->e:Lcn/manstep/phonemirrorBox/k0/b;
    return-object v0
.end method

.method private f(Ljava/lang/String;II)I
  .registers 8
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/b;->c:Ljava/lang/String;
    const/4 v1, 0
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
    return v1
  :L0
  .line 3
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/k0/b;->c:Ljava/lang/String;
    const-wide v2, 4599976659396224614L
    if-le p2, p3, :L1
    int-to-double p1, p3
  .line 4
    invoke-static { p1, p2 }, Ljava/lang/Double;->isNaN(D)Z
    goto :L2
  :L1
    int-to-double p1, p2
  .line 5
    invoke-static { p1, p2 }, Ljava/lang/Double;->isNaN(D)Z
  :L2
    mul-double p1, p1, v2
    double-to-int p1, p1
  .line 6
    iget p2, p0, Lcn/manstep/phonemirrorBox/k0/b;->d:I
    if-eq p2, p1, :L3
  .line 7
    iput p1, p0, Lcn/manstep/phonemirrorBox/k0/b;->d:I
    return p1
  :L3
    return v1
.end method

.method public d()V
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/b;->b:Landroid/app/AlertDialog;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroid/app/AlertDialog;->dismiss()V
  :L0
    return-void
.end method

.method public e(Landroid/content/Context;)Lcn/manstep/phonemirrorBox/k0/b;
  .registers 4
    if-nez p1, :L0
    return-object p0
  :L0
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/b;->a:Ljava/lang/ref/WeakReference;
    if-eqz v0, :L1
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    if-nez v0, :L2
  :L1
  .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;
    invoke-direct { v0, p1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/k0/b;->a:Ljava/lang/ref/WeakReference;
  .line 3
    new-instance p1, Landroid/app/AlertDialog$Builder;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/b;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/content/Context;
    const v1, 2131755275
    invoke-direct { p1, v0, v1 }, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V
    const/4 v0, 1
  .line 4
    invoke-virtual { p1, v0 }, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;
  .line 5
    invoke-virtual { p1 }, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
    move-result-object p1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/k0/b;->b:Landroid/app/AlertDialog;
  .line 6
    invoke-virtual { p1, v0 }, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V
  :L2
    return-object p0
.end method

.method public g()V
  .registers 2
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/k0/b;->e:Lcn/manstep/phonemirrorBox/k0/b;
    if-eqz v0, :L0
    const/4 v0, 0
  .line 2
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/k0/b;->b:Landroid/app/AlertDialog;
  .line 3
    sput-object v0, Lcn/manstep/phonemirrorBox/k0/b;->e:Lcn/manstep/phonemirrorBox/k0/b;
  :L0
    return-void
.end method

.method public h(Ljava/lang/String;II)V
  .registers 5
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/b;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    if-eqz v0, :L3
    if-nez p1, :L0
    goto :L3
  :L0
  .line 2
    invoke-direct { p0, p1, p2, p3 }, Lcn/manstep/phonemirrorBox/k0/b;->f(Ljava/lang/String;II)I
    move-result p2
    if-gtz p2, :L1
    return-void
  :L1
  .line 3
    invoke-static { p1, p2, p2 }, Lcn/manstep/phonemirrorBox/util/v;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    move-result-object p1
    if-nez p1, :L2
    return-void
  :L2
  .line 4
    iget-object p3, p0, Lcn/manstep/phonemirrorBox/k0/b;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { p3 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object p3
    check-cast p3, Landroid/content/Context;
    invoke-direct { p0, p3, p2 }, Lcn/manstep/phonemirrorBox/k0/b;->b(Landroid/content/Context;I)Landroid/widget/ImageView;
    move-result-object p2
  .line 5
    invoke-virtual { p2, p1 }, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
  .line 6
    new-instance p1, Lcn/manstep/phonemirrorBox/k0/b$a;
    invoke-direct { p1, p0 }, Lcn/manstep/phonemirrorBox/k0/b$a;-><init>(Lcn/manstep/phonemirrorBox/k0/b;)V
    invoke-virtual { p2, p1 }, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 7
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k0/b;->b:Landroid/app/AlertDialog;
    invoke-virtual { p1, p2 }, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V
  :L3
    return-void
.end method

.method public i()V
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/b;->b:Landroid/app/AlertDialog;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Landroid/app/AlertDialog;->show()V
  :L0
    return-void
.end method

.method public j(Ljava/lang/String;II)V
  .registers 4
  .line 1
    invoke-virtual { p0, p1, p2, p3 }, Lcn/manstep/phonemirrorBox/k0/b;->h(Ljava/lang/String;II)V
  .line 2
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/k0/b;->i()V
    return-void
.end method
