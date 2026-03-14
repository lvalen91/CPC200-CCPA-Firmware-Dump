.class public Lcn/manstep/phonemirrorBox/z;
.super Landroidx/fragment/app/Fragment;
.implements Landroid/view/View$OnClickListener;
.implements Lcn/manstep/phonemirrorBox/BoxInterface/d$g;
.implements Lcn/manstep/phonemirrorBox/c$a;
.implements Lcn/manstep/phonemirrorBox/k0/e$b;
.implements Lcn/manstep/phonemirrorBox/x0/l;
.source "SourceFile"

.field public static B0:Z

.field A0:Ljava/util/LinkedList;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/LinkedList<",
      "Lcn/manstep/phonemirrorBox/util/p;",
      ">;"
    }
  .end annotation
.end field

.field private a0:Z

.field private b0:Z

.field private c0:Z

.field private d0:Z

.field private e0:Ljava/lang/String;

.field private f0:Ljava/lang/String;

.field private g0:Ljava/lang/String;

.field private h0:Ljava/lang/String;

.field private i0:Ljava/lang/String;

.field private j0:Z

.field private k0:Z

.field private l0:Ljava/lang/String;

.field private m0:Landroid/widget/Button;

.field private n0:Landroid/widget/Button;

.field private o0:Landroid/widget/Button;

.field private p0:Landroid/widget/Button;

.field private q0:Landroid/widget/TextView;

.field private r0:Landroid/widget/TextView;

.field private s0:Landroid/content/res/ColorStateList;

.field private t0:Lcn/manstep/phonemirrorBox/c;

.field private u0:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Lcn/manstep/phonemirrorBox/util/c;",
      ">;"
    }
  .end annotation
.end field

.field private v0:Lcn/manstep/phonemirrorBox/util/d;

.field private w0:Z

.field private x0:Landroid/widget/ImageView;

.field public y0:Lcn/manstep/phonemirrorBox/x0/k;

.field private z0:Lcn/manstep/phonemirrorBox/i0/s;

.method static constructor <clinit>()V
  .registers 2
    return-void
.end method

.method public constructor <init>()V
  .registers 3
  .line 1
    invoke-direct { p0 }, Landroidx/fragment/app/Fragment;-><init>()V
    const/4 v0, 0
  .line 2
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/z;->a0:Z
    const/4 v1, 1
  .line 3
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/z;->b0:Z
  .line 4
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/z;->c0:Z
  .line 5
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/z;->d0:Z
    const-string v1, ""
  .line 6
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/z;->e0:Ljava/lang/String;
  .line 7
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/z;->f0:Ljava/lang/String;
  .line 8
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/z;->g0:Ljava/lang/String;
  .line 9
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/z;->h0:Ljava/lang/String;
  .line 10
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/z;->i0:Ljava/lang/String;
  .line 11
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/z;->j0:Z
  .line 12
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/z;->k0:Z
  .line 13
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/z;->l0:Ljava/lang/String;
    const/4 v1, 0
  .line 14
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/z;->u0:Ljava/util/List;
  .line 15
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/z;->v0:Lcn/manstep/phonemirrorBox/util/d;
  .line 16
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/z;->w0:Z
  .line 17
    new-instance v0, Ljava/util/LinkedList;
    invoke-direct { v0 }, Ljava/util/LinkedList;-><init>()V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/z;->A0:Ljava/util/LinkedList;
    return-void
.end method

.method private B2()V
  .registers 3
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/util/s;->b()V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->t0:Lcn/manstep/phonemirrorBox/c;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/c;->k(Z)V
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z
    move-result v0
    if-eqz v0, :L0
  .line 4
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    if-eqz v0, :L0
    const/4 v1, 2
  .line 5
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->U0(I)Z
  :L0
    return-void
.end method

.method private static C2(Ljava/lang/String;)Z
  .registers 6
  .line 1
    invoke-virtual { p0 }, Ljava/lang/String;->length()I
    move-result v0
    const/4 v1, 0
    const/4 v2, 0
  :L0
    if-ge v2, v0, :L2
  .line 2
    invoke-virtual { p0, v2 }, Ljava/lang/String;->charAt(I)C
    move-result v3
  .line 3
    invoke-static { v3 }, Lcn/manstep/phonemirrorBox/z;->N2(I)Z
    move-result v4
    if-eqz v4, :L1
  .line 4
    new-instance p0, Ljava/lang/StringBuilder;
    invoke-direct { p0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "CustomSubmitProblemDialog codePoint="
    invoke-virtual { p0, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0, v3 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const/4 p0, 1
    return p0
  :L1
    add-int/lit8 v2, v2, 1
    goto :L0
  :L2
    return v1
.end method

.method private D2(Landroid/net/Uri;Landroid/net/Uri;)V
  .registers 6
  .line 1
    new-instance v0, Lcom/yalantis/ucrop/UCrop$Options;
    invoke-direct { v0 }, Lcom/yalantis/ucrop/UCrop$Options;-><init>()V
  .line 2
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v1
    const v2, 2131099741
    invoke-static { v1, v2 }, Landroidx/core/content/a;->b(Landroid/content/Context;I)I
    move-result v1
    invoke-virtual { v0, v1 }, Lcom/yalantis/ucrop/UCrop$Options;->setToolbarColor(I)V
  .line 3
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v1
    invoke-static { v1, v2 }, Landroidx/core/content/a;->b(Landroid/content/Context;I)I
    move-result v1
    invoke-virtual { v0, v1 }, Lcom/yalantis/ucrop/UCrop$Options;->setStatusBarColor(I)V
  .line 4
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;
    invoke-virtual { v0, v1 }, Lcom/yalantis/ucrop/UCrop$Options;->setCompressionFormat(Landroid/graphics/Bitmap$CompressFormat;)V
    const/16 v1, 100
  .line 5
    invoke-virtual { v0, v1 }, Lcom/yalantis/ucrop/UCrop$Options;->setCompressionQuality(I)V
    const/4 v1, 1
  .line 6
    invoke-virtual { v0, v1 }, Lcom/yalantis/ucrop/UCrop$Options;->setHideBottomControls(Z)V
  .line 7
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v1
    const v2, 2131689909
    invoke-static { v1, v2 }, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Lcom/yalantis/ucrop/UCrop$Options;->setToolbarTitle(Ljava/lang/String;)V
  .line 8
    invoke-static { p1, p2 }, Lcom/yalantis/ucrop/UCrop;->of(Landroid/net/Uri;Landroid/net/Uri;)Lcom/yalantis/ucrop/UCrop;
    move-result-object p1
    const/high16 p2, 16256
  .line 9
    invoke-virtual { p1, p2, p2 }, Lcom/yalantis/ucrop/UCrop;->withAspectRatio(FF)Lcom/yalantis/ucrop/UCrop;
    move-result-object p1
    const/16 p2, 180
  .line 10
    invoke-virtual { p1, p2, p2 }, Lcom/yalantis/ucrop/UCrop;->withMaxResultSize(II)Lcom/yalantis/ucrop/UCrop;
    move-result-object p1
  .line 11
    invoke-virtual { p1, v0 }, Lcom/yalantis/ucrop/UCrop;->withOptions(Lcom/yalantis/ucrop/UCrop$Options;)Lcom/yalantis/ucrop/UCrop;
    move-result-object p1
  .line 12
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object p2
    invoke-virtual { p1, p2 }, Lcom/yalantis/ucrop/UCrop;->start(Landroid/app/Activity;)V
    return-void
.end method

.method private E2()V
  .registers 7
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "SettingsFragment,cropSuccess: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v2
    check-cast v2, Lcn/manstep/phonemirrorBox/MainActivity;
    iget-boolean v2, v2, Lcn/manstep/phonemirrorBox/MainActivity;->t:Z
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const-string v2, "CarPlayOEMIconPath"
    const-string v3, ""
    invoke-virtual { v0, v2, v3 }, Lcn/manstep/phonemirrorBox/b0;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
  .line 3
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 4
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v1
    check-cast v1, Lcn/manstep/phonemirrorBox/MainActivity;
    const/4 v2, 0
    iput-boolean v2, v1, Lcn/manstep/phonemirrorBox/MainActivity;->t:Z
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z
    move-result v1
    if-eqz v1, :L0
  .line 6
    sget-object v1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    if-eqz v1, :L0
  .line 7
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->e()V
  .line 8
    sget-object v1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->b()V
  :L0
  .line 9
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/z;->u0:Ljava/util/List;
    if-nez v1, :L2
  .line 10
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/z;->y0:Lcn/manstep/phonemirrorBox/x0/k;
    if-eqz v1, :L1
  .line 11
    invoke-virtual { v1, v0 }, Lcn/manstep/phonemirrorBox/x0/k;->n0(Ljava/lang/String;)V
  :L1
    return-void
  :L2
  .line 12
    iget-boolean v3, p0, Lcn/manstep/phonemirrorBox/z;->w0:Z
    const v4, 2131689684
    if-eqz v3, :L3
  .line 13
    new-instance v3, Lcn/manstep/phonemirrorBox/util/c;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v5
    invoke-static { v5, v4 }, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;
    move-result-object v4
    invoke-static { v0 }, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    move-result-object v5
    invoke-direct { v3, v4, v0, v5 }, Lcn/manstep/phonemirrorBox/util/c;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    invoke-interface { v1, v2, v3 }, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    goto :L4
  :L3
  .line 14
    new-instance v3, Lcn/manstep/phonemirrorBox/util/c;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v5
    invoke-static { v5, v4 }, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;
    move-result-object v4
    invoke-static { v0 }, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    move-result-object v5
    invoke-direct { v3, v4, v0, v5 }, Lcn/manstep/phonemirrorBox/util/c;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    invoke-interface { v1, v2, v3 }, Ljava/util/List;->add(ILjava/lang/Object;)V
  :L4
  .line 15
    new-instance v1, Lcn/manstep/phonemirrorBox/util/d;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/z;->u0:Ljava/util/List;
    check-cast v2, Ljava/util/LinkedList;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v3
    invoke-direct { v1, v2, v3 }, Lcn/manstep/phonemirrorBox/util/d;-><init>(Ljava/util/LinkedList;Landroid/content/Context;)V
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/z;->v0:Lcn/manstep/phonemirrorBox/util/d;
  .line 16
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/z;->x0:Landroid/widget/ImageView;
    invoke-static { v0 }, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    move-result-object v2
    invoke-virtual { v1, v2 }, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
  .line 17
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/z;->U2(Ljava/lang/String;)V
    return-void
.end method

.method private F2()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->e0:Ljava/lang/String;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/z;->l0:Ljava/lang/String;
    invoke-virtual { p0, v0, v1 }, Lcn/manstep/phonemirrorBox/z;->G2(Ljava/lang/String;Ljava/lang/String;)V
    return-void
.end method

.method private static H2(Ljava/lang/String;)D
  .registers 7
    const-wide/16 v0, 0
    const/4 v2, 0
  :L0
  .line 1
    invoke-virtual { p0 }, Ljava/lang/String;->length()I
    move-result v3
    if-ge v2, v3, :L3
    add-int/lit8 v3, v2, 1
  .line 2
    invoke-virtual { p0, v2, v3 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v2
    const-string v4, "[\u4e00-\u9fa5]"
  .line 3
    invoke-virtual { v2, v4 }, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    move-result v2
    if-eqz v2, :L1
    const-wide/high16 v4, 16368
    goto :L2
  :L1
    const-wide/high16 v4, 16352
  :L2
    add-double/2addr v0, v4
    move v2, v3
    goto :L0
  :L3
  .line 4
    invoke-static { v0, v1 }, Ljava/lang/Math;->ceil(D)D
    move-result-wide v0
    return-wide v0
.end method

.method private I2(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/String;",
      "Ljava/lang/String;",
      ")",
      "Ljava/util/Map<",
      "Ljava/lang/String;",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
  .registers 10
  .line 1
    new-instance v0, Ljava/util/HashMap;
    invoke-direct { v0 }, Ljava/util/HashMap;-><init>()V
    const-string v1, "notes"
  .line 2
    invoke-interface { v0, v1, p2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    const-string p2, "ro.product.manufacturer"
    const-string v1, ""
  .line 3
    invoke-static { p2, v1 }, Lcn/manstep/phonemirrorBox/p;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object p2
    const-string v2, "ro.board.platform"
  .line 4
    invoke-static { v2, v1 }, Lcn/manstep/phonemirrorBox/p;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
  .line 5
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    sget v4, Lcn/manstep/phonemirrorBox/p;->k:I
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v4, "x"
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v4, Lcn/manstep/phonemirrorBox/p;->l:I
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    const-string v4, "resolution"
  .line 6
    invoke-interface { v0, v4, v3 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    const-string v3, "manufacturer"
  .line 7
    invoke-interface { v0, v3, p2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    const-string p2, "platform"
  .line 8
    invoke-interface { v0, p2, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 9
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object p2
    invoke-virtual { p2 }, Lcn/manstep/phonemirrorBox/u;->w()Ljava/lang/String;
    move-result-object p2
    const-string v2, "huid"
    invoke-interface { v0, v2, p2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    const-string p2, "app.log"
  .line 10
    invoke-virtual { p2, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p1
    const-string p2, "model"
    const-string v2, "uuid"
    const-string v3, "version"
    const-string v4, "mfd"
    const-string v5, "android"
    if-eqz p1, :L0
  .line 11
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p1, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
    invoke-virtual { p1, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "("
    invoke-virtual { p1, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    invoke-virtual { p1, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ")"
    invoke-virtual { p1, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
  .line 12
    invoke-interface { v0, v5, p1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 13
    new-instance p1, Ljava/text/SimpleDateFormat;
    invoke-static { }, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
    move-result-object v1
    const-string v5, "yyyyMMddHHmmss"
    invoke-direct { p1, v5, v1 }, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
  .line 14
    new-instance v1, Ljava/util/Date;
    sget-wide v5, Landroid/os/Build;->TIME:J
    invoke-direct { v1, v5, v6 }, Ljava/util/Date;-><init>(J)V
    invoke-virtual { p1, v1 }, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    move-result-object p1
  .line 15
    invoke-interface { v0, v4, p1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    const-string p1, "2025.03.19.1126"
  .line 16
    invoke-interface { v0, v3, p1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 17
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/u;->I()Ljava/lang/String;
    move-result-object p1
    invoke-interface { v0, v2, p1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 18
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;
    invoke-interface { v0, p2, p1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    goto :L1
  :L0
  .line 19
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->h()Ljava/lang/String;
    move-result-object p1
    invoke-interface { v0, v5, p1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 20
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->h()Ljava/lang/String;
    move-result-object p1
    invoke-interface { v0, v4, p1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 21
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->c()Ljava/lang/String;
    move-result-object p1
    const-string v1, "ufn"
    invoke-interface { v0, v1, p1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 22
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->p()Ljava/lang/String;
    move-result-object p1
    invoke-interface { v0, v3, p1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 23
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->o()Ljava/lang/String;
    move-result-object p1
    invoke-interface { v0, v2, p1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 24
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->i()Ljava/lang/String;
    move-result-object p1
    invoke-interface { v0, p2, p1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L1
    return-object v0
.end method

.method private J2(Landroid/view/View;)V
  .catch Ljava/lang/Exception; { :L4 .. :L10 } :L14
  .catch Ljava/lang/Exception; { :L10 .. :L13 } :L13
  .registers 10
  .line 1
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;
    move-result-object v0
    const-string v1, "CarIconLayout"
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/util/c0;->k(Landroid/content/Context;Ljava/lang/String;)I
    move-result v0
    if-lez v0, :L0
  .line 2
    invoke-virtual { p1, v0 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/LinearLayout;
  :L0
  .line 3
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;
    move-result-object v0
    const-string v1, "imgCurCarLogo"
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/util/c0;->k(Landroid/content/Context;Ljava/lang/String;)I
    move-result v0
    if-lez v0, :L1
  .line 4
    invoke-virtual { p1, v0 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p1
    check-cast p1, Landroid/widget/ImageView;
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/z;->x0:Landroid/widget/ImageView;
  :L1
  .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/z;->x0:Landroid/widget/ImageView;
    if-eqz p1, :L15
  .line 6
    invoke-virtual { p1, p0 }, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 7
    new-instance p1, Ljava/util/LinkedList;
    invoke-direct { p1 }, Ljava/util/LinkedList;-><init>()V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/z;->u0:Ljava/util/List;
  .line 8
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object p1
    const-string v0, "CarPlayOEMIconPath"
    const-string v1, ""
    invoke-virtual { p1, v0, v1 }, Lcn/manstep/phonemirrorBox/b0;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
  .line 9
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "SettingsFragment,initCarLogo: oldPath = "
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 10
    new-instance v0, Ljava/io/File;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v2
    invoke-virtual { v2 }, Landroid/app/Activity;->getCacheDir()Ljava/io/File;
    move-result-object v2
    const-string v3, "custom.png"
    invoke-direct { v0, v2, v3 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
  .line 11
    invoke-virtual { v0 }, Ljava/io/File;->exists()Z
    move-result v2
    if-eqz v2, :L3
    invoke-virtual { v0 }, Ljava/io/File;->isFile()Z
    move-result v2
    if-eqz v2, :L3
    const/4 v2, 1
  .line 12
    iput-boolean v2, p0, Lcn/manstep/phonemirrorBox/z;->w0:Z
  .line 13
    invoke-virtual { v0 }, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v0
  .line 14
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "SettingsFragment,initCarLogo: path = "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 15
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v2
    const-string v3, "CarPlayOEMIconName"
    invoke-virtual { v2, v3, v1 }, Lcn/manstep/phonemirrorBox/b0;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
  .line 16
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "SettingsFragment,initCarLogo: name = "
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-static { v3 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 17
    invoke-virtual { v1, v2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :L2
  .line 18
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v2
    const v3, 2131689684
    invoke-static { v2, v3 }, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;
    move-result-object v2
  :L2
  .line 19
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/z;->u0:Ljava/util/List;
    new-instance v4, Lcn/manstep/phonemirrorBox/util/c;
    invoke-static { v0 }, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    move-result-object v5
    invoke-direct { v4, v2, v0, v5 }, Lcn/manstep/phonemirrorBox/util/c;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    invoke-interface { v3, v4 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 20
    invoke-virtual { v0, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :L3
  .line 21
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/z;->x0:Landroid/widget/ImageView;
    invoke-static { v0 }, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    move-result-object v0
    invoke-virtual { v2, v0 }, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
  :L3
  .line 22
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
  :L4
  .line 23
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v2
    invoke-virtual { v2 }, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;
    move-result-object v2
  .line 24
    new-instance v3, Ljava/io/BufferedReader;
    new-instance v4, Ljava/io/InputStreamReader;
    const-string v5, "carlogo.json"
    invoke-virtual { v2, v5 }, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    move-result-object v2
    const-string v5, "utf-8"
    invoke-direct { v4, v2, v5 }, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    invoke-direct { v3, v4 }, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
  :L5
  .line 25
    invoke-virtual { v3 }, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    move-result-object v2
    if-eqz v2, :L6
  .line 26
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    goto :L5
  :L6
  .line 27
    new-instance v2, Lorg/json/JSONArray;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct { v2, v0 }, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    const/4 v0, 0
  :L7
  .line 28
    invoke-virtual { v2 }, Lorg/json/JSONArray;->length()I
    move-result v3
    if-ge v0, v3, :L14
  .line 29
    invoke-virtual { v2, v0 }, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    move-result-object v3
    const-string v4, "name"
  .line 30
    invoke-virtual { v3, v4 }, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v4
    const-string v5, "riddleAdd"
  .line 31
    invoke-virtual { v4, v5 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v5
    if-nez v5, :L13
    const-string v5, "riddleDefault"
    invoke-virtual { v4, v5 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v5
    if-eqz v5, :L8
    goto/16 :L13
  :L8
    const-string v5, "path"
  .line 32
    invoke-virtual { v3, v5 }, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v5
    const-string v6, "zh-CN"
  .line 33
    invoke-virtual { v3, v6 }, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
  .line 34
    invoke-virtual { v5, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v6
    if-eqz v6, :L9
  .line 35
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/z;->x0:Landroid/widget/ImageView;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v7
    invoke-static { v7, v5 }, Lcn/manstep/phonemirrorBox/util/c0;->g(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    move-result-object v7
    invoke-virtual { v6, v7 }, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
  :L9
    if-nez v0, :L10
  .line 36
    invoke-virtual { v1, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v6
    if-eqz v6, :L10
  .line 37
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/z;->x0:Landroid/widget/ImageView;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v7
    invoke-static { v7, v5 }, Lcn/manstep/phonemirrorBox/util/c0;->g(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    move-result-object v7
    invoke-virtual { v6, v7 }, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
  :L10
    const-string v6, "addCustomLogo"
  .line 38
    invoke-virtual { v4, v6 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v6
    if-eqz v6, :L11
  .line 39
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/z;->u0:Ljava/util/List;
    new-instance v4, Lcn/manstep/phonemirrorBox/util/c;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v6
    const v7, 2131689560
    invoke-static { v6, v7 }, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;
    move-result-object v6
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v7
    invoke-static { v7, v5 }, Lcn/manstep/phonemirrorBox/util/c0;->g(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    move-result-object v7
    invoke-direct { v4, v6, v5, v7 }, Lcn/manstep/phonemirrorBox/util/c;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    invoke-interface { v3, v4 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    goto :L13
  :L11
  .line 40
    invoke-static { }, Lcn/manstep/phonemirrorBox/x;->i()Z
    move-result v6
    if-eqz v6, :L12
  .line 41
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/z;->u0:Ljava/util/List;
    new-instance v6, Lcn/manstep/phonemirrorBox/util/c;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v7
    invoke-static { v7, v5 }, Lcn/manstep/phonemirrorBox/util/c0;->g(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    move-result-object v7
    invoke-direct { v6, v3, v5, v7 }, Lcn/manstep/phonemirrorBox/util/c;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    invoke-interface { v4, v6 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    goto :L13
  :L12
  .line 42
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/z;->u0:Ljava/util/List;
    new-instance v6, Lcn/manstep/phonemirrorBox/util/c;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v7
    invoke-static { v7, v5 }, Lcn/manstep/phonemirrorBox/util/c0;->g(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    move-result-object v7
    invoke-direct { v6, v4, v5, v7 }, Lcn/manstep/phonemirrorBox/util/c;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    invoke-interface { v3, v6 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  :L13
    add-int/lit8 v0, v0, 1
    goto/16 :L7
  :L14
  .line 43
    new-instance p1, Lcn/manstep/phonemirrorBox/util/d;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->u0:Ljava/util/List;
    check-cast v0, Ljava/util/LinkedList;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v1
    invoke-direct { p1, v0, v1 }, Lcn/manstep/phonemirrorBox/util/d;-><init>(Ljava/util/LinkedList;Landroid/content/Context;)V
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/z;->v0:Lcn/manstep/phonemirrorBox/util/d;
  :L15
    return-void
.end method

.method private K2(Landroid/view/View;)V
  .registers 3
    const v0, 2131296579
  .line 1
    invoke-virtual { p1, v0 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p1
    check-cast p1, Landroid/widget/LinearLayout;
    if-eqz p1, :L0
  .line 2
    invoke-virtual { p1, p0 }, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  :L0
    return-void
.end method

.method private L2()V
  .registers 4
    const-string v0, "SettingsFragment"
    const-string v1, "installApk: ######"
  .line 1
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/4 v1, 0
    const/16 v2, 26
    if-lt v0, v2, :L1
  .line 3
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->J1()Landroidx/fragment/app/e;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z
    move-result v0
    if-nez v0, :L0
  .line 4
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "package:"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->J1()Landroidx/fragment/app/e;
    move-result-object v1
    invoke-virtual { v1 }, Landroid/app/Activity;->getPackageName()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    move-result-object v0
  .line 5
    new-instance v1, Landroid/content/Intent;
    const-string v2, "android.settings.MANAGE_UNKNOWN_APP_SOURCES"
    invoke-direct { v1, v2, v0 }, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    const/4 v0, 3
  .line 6
    invoke-virtual { p0, v1, v0 }, Landroidx/fragment/app/Fragment;->c2(Landroid/content/Intent;I)V
    goto :L2
  :L0
  .line 7
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->J()Landroidx/fragment/app/n;
    move-result-object v0
    new-instance v2, Lcn/manstep/phonemirrorBox/z$c;
    invoke-direct { v2, p0 }, Lcn/manstep/phonemirrorBox/z$c;-><init>(Lcn/manstep/phonemirrorBox/z;)V
    invoke-static { v0, v2, v1 }, Lcn/manstep/phonemirrorBox/k0/a;->D2(Landroidx/fragment/app/n;Landroid/view/View$OnClickListener;Z)V
    goto :L2
  :L1
  .line 8
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->J()Landroidx/fragment/app/n;
    move-result-object v0
    new-instance v2, Lcn/manstep/phonemirrorBox/z$d;
    invoke-direct { v2, p0 }, Lcn/manstep/phonemirrorBox/z$d;-><init>(Lcn/manstep/phonemirrorBox/z;)V
    invoke-static { v0, v2, v1 }, Lcn/manstep/phonemirrorBox/k0/a;->D2(Landroidx/fragment/app/n;Landroid/view/View$OnClickListener;Z)V
  :L2
    return-void
.end method

.method private static N2(I)Z
  .registers 2
    const/16 v0, 9728
    if-lt p0, v0, :L0
    const/16 v0, 10175
    if-le p0, v0, :L13
  :L0
    const/16 v0, 12349
    if-eq p0, v0, :L13
    const/16 v0, 8265
    if-eq p0, v0, :L13
    const/16 v0, 8252
    if-eq p0, v0, :L13
    const/16 v0, 8192
    if-lt p0, v0, :L1
    const/16 v0, 8207
    if-le p0, v0, :L13
  :L1
    const/16 v0, 8232
    if-lt p0, v0, :L2
    const/16 v0, 8239
    if-le p0, v0, :L13
  :L2
    const/16 v0, 8287
    if-eq p0, v0, :L13
    const/16 v0, 8293
    if-lt p0, v0, :L3
    const/16 v0, 8303
    if-le p0, v0, :L13
  :L3
    const/16 v0, 8448
    if-lt p0, v0, :L4
    const/16 v0, 8527
    if-le p0, v0, :L13
  :L4
    const/16 v0, 8960
    if-lt p0, v0, :L5
    const/16 v0, 9215
    if-le p0, v0, :L13
  :L5
    const/16 v0, 11008
    if-lt p0, v0, :L6
    const/16 v0, 11263
    if-le p0, v0, :L13
  :L6
    const/16 v0, 10496
    if-lt p0, v0, :L7
    const/16 v0, 10623
    if-le p0, v0, :L13
  :L7
    const/16 v0, 12800
    if-lt p0, v0, :L8
    const/16 v0, 13055
    if-le p0, v0, :L13
  :L8
    const v0, 55296
    if-lt p0, v0, :L9
    const v0, 57343
    if-le p0, v0, :L13
  :L9
    const v0, 57344
    if-lt p0, v0, :L10
    const v0, 63743
    if-le p0, v0, :L13
  :L10
    const v0, 65024
    if-lt p0, v0, :L11
    const v0, 65039
    if-le p0, v0, :L13
  :L11
    const/high16 v0, 1
    if-lt p0, v0, :L12
    goto :L13
  :L12
    const/4 p0, 0
    goto :L14
  :L13
    const/4 p0, 1
  :L14
    return p0
.end method

.method private O2()V
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->r0:Landroid/widget/TextView;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v1
    const v2, 2131689478
    invoke-static { v1, v2 }, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 3
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, -2
    invoke-direct { v0, v1, v1 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    const v1, 8388613
  .line 4
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I
  .line 5
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/z;->r0:Landroid/widget/TextView;
    invoke-virtual { v1, v0 }, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  :L0
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->y0:Lcn/manstep/phonemirrorBox/x0/k;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/x0/k;->j0(I)V
    return-void
.end method

.method private P2()V
  .registers 3
  .line 1
    new-instance v0, Lcn/manstep/phonemirrorBox/k0/e$a;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;
    move-result-object v1
    invoke-direct { v0, v1 }, Lcn/manstep/phonemirrorBox/k0/e$a;-><init>(Landroid/content/Context;)V
    const v1, 2131689969
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/k0/e$a;->b(I)Lcn/manstep/phonemirrorBox/k0/e$a;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/k0/e$a;->a()Lcn/manstep/phonemirrorBox/k0/e;
    move-result-object v0
  .line 2
    invoke-virtual { v0, p0 }, Lcn/manstep/phonemirrorBox/k0/e;->i(Lcn/manstep/phonemirrorBox/k0/e$b;)V
  .line 3
    invoke-virtual { v0 }, Landroid/app/Dialog;->show()V
  .line 4
    sget-boolean v0, Lcn/manstep/phonemirrorBox/util/s;->a:Z
    const/4 v1, 1
  .line 5
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/z;->d0:Z
  .line 6
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/z;->B2()V
  .line 7
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/z;->y0:Lcn/manstep/phonemirrorBox/x0/k;
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/x0/k;->p()V
    if-eqz v0, :L0
  .line 8
    new-instance v0, Ljava/lang/Thread;
    new-instance v1, Lcn/manstep/phonemirrorBox/z$f;
    invoke-direct { v1, p0 }, Lcn/manstep/phonemirrorBox/z$f;-><init>(Lcn/manstep/phonemirrorBox/z;)V
    invoke-direct { v0, v1 }, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
  .line 9
    invoke-virtual { v0 }, Ljava/lang/Thread;->start()V
  :L0
    return-void
.end method

.method private Q2()V
  .registers 5
    const/4 v0, 1
  .line 1
    sput-boolean v0, Lcn/manstep/phonemirrorBox/z;->B0:Z
  .line 2
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/z;->m0:Landroid/widget/Button;
    if-eqz v1, :L0
  .line 3
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/z;->a0:Z
  .line 4
    new-instance v0, Landroid/os/Handler;
    invoke-direct { v0 }, Landroid/os/Handler;-><init>()V
    new-instance v1, Lcn/manstep/phonemirrorBox/z$g;
    invoke-direct { v1, p0 }, Lcn/manstep/phonemirrorBox/z$g;-><init>(Lcn/manstep/phonemirrorBox/z;)V
    const-wide/16 v2, 1500
    invoke-virtual { v0, v1, v2, v3 }, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
  :L0
    return-void
.end method

.method private R2()V
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->m0:Landroid/widget/Button;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v1
    const v2, 2131689626
    invoke-static { v1, v2 }, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->m0:Landroid/widget/Button;
    const/4 v1, 1
    invoke-virtual { v0, v1 }, Landroid/widget/Button;->setEnabled(Z)V
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->q0:Landroid/widget/TextView;
    const/16 v1, 8
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setVisibility(I)V
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->o0:Landroid/widget/Button;
    invoke-virtual { v0, v1 }, Landroid/widget/Button;->setVisibility(I)V
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->r0:Landroid/widget/TextView;
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setVisibility(I)V
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->p0:Landroid/widget/Button;
    invoke-virtual { v0, v1 }, Landroid/widget/Button;->setVisibility(I)V
  .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->t0:Lcn/manstep/phonemirrorBox/c;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v1
    const v2, 2131689876
    invoke-static { v1, v2 }, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;
    move-result-object v1
    const/4 v2, 0
    invoke-virtual { v0, v2, v1 }, Lcn/manstep/phonemirrorBox/c;->m(ZLjava/lang/String;)V
  .line 8
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->t0:Lcn/manstep/phonemirrorBox/c;
    const-string v1, ""
    invoke-virtual { v0, v2, v1 }, Lcn/manstep/phonemirrorBox/c;->n(ZLjava/lang/String;)V
    return-void
.end method

.method private T2(Ljava/lang/String;Ljava/lang/String;)V
  .catch Lorg/json/JSONException; { :L0 .. :L1 } :L2
  .registers 5
  :L0
  .line 1
    new-instance v0, Lorg/json/JSONObject;
    invoke-direct { v0, p1 }, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    const-string p1, "err"
  .line 2
    invoke-virtual { v0, p1 }, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    move-result p1
  :L1
    goto :L3
  :L2
    move-exception p1
  .line 3
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "SettingsFragment,onUploadFileSuccess: \n"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { p1 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    const/4 p1, 0
  :L3
    if-nez p1, :L4
  .line 4
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object p1
    const v0, 2131689798
    invoke-static { p1, v0 }, Lcn/manstep/phonemirrorBox/widget/a;->a(Landroid/content/Context;I)V
  .line 5
    invoke-static { p2 }, Lcn/manstep/phonemirrorBox/util/n;->f(Ljava/lang/String;)Z
    goto :L5
  :L4
  .line 6
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object p2
    invoke-virtual { p2 }, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
    move-result-object p2
    const v0, 2131689799
    invoke-virtual { p2, v0 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object p2
  .line 7
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v0
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p2, "("
    invoke-virtual { v1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p2, ")"
    invoke-virtual { v1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-static { v0, p2 }, Lcn/manstep/phonemirrorBox/widget/a;->b(Landroid/content/Context;Ljava/lang/CharSequence;)V
  .line 8
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "SettingsFragment,onUploadFileSuccess: "
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p1, " "
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p1, ""
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L5
  .line 9
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/z;->n0:Landroid/widget/Button;
    const p2, 2131689632
    invoke-virtual { p1, p2 }, Landroid/widget/Button;->setText(I)V
  .line 10
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/z;->n0:Landroid/widget/Button;
    const/4 p2, 1
    invoke-virtual { p1, p2 }, Landroid/widget/Button;->setEnabled(Z)V
    return-void
.end method

.method private U2(Ljava/lang/String;)V
  .registers 6
  .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v1
    invoke-direct { v0, v1 }, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
  .line 2
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v1
    const v2, 2131689758
    invoke-static { v1, v2 }, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
  .line 3
    new-instance v1, Landroid/widget/EditText;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v2
    invoke-direct { v1, v2 }, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V
  .line 4
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->d0()Landroid/content/res/Resources;
    move-result-object v2
    const v3, 2131165879
    invoke-virtual { v2, v3 }, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    move-result v2
    int-to-float v2, v2
    invoke-virtual { v1, v2 }, Landroid/widget/EditText;->setTextSize(F)V
  .line 5
    invoke-virtual { v0, v1 }, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
  .line 6
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v2
    const v3, 2131689891
    invoke-static { v2, v3 }, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;
    move-result-object v2
    const/4 v3, 0
    invoke-virtual { v0, v2, v3 }, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
  .line 7
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v2
    const v3, 2131689638
    invoke-static { v2, v3 }, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;
    move-result-object v2
    new-instance v3, Lcn/manstep/phonemirrorBox/z$a;
    invoke-direct { v3, p0 }, Lcn/manstep/phonemirrorBox/z$a;-><init>(Lcn/manstep/phonemirrorBox/z;)V
    invoke-virtual { v0, v2, v3 }, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    const/4 v2, 0
  .line 8
    invoke-virtual { v0, v2 }, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;
  .line 9
    invoke-virtual { v0 }, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
    move-result-object v0
  .line 10
    invoke-virtual { v0, v2 }, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V
  .line 11
    invoke-virtual { v0 }, Landroid/app/AlertDialog;->show()V
    const/4 v2, -1
  .line 12
    invoke-virtual { v0, v2 }, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;
    move-result-object v2
    new-instance v3, Lcn/manstep/phonemirrorBox/z$b;
    invoke-direct { v3, p0, v1, p1, v0 }, Lcn/manstep/phonemirrorBox/z$b;-><init>(Lcn/manstep/phonemirrorBox/z;Landroid/widget/EditText;Ljava/lang/String;Landroid/app/AlertDialog;)V
    invoke-virtual { v2, v3 }, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    return-void
.end method

.method private V2()V
  .registers 7
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const-string v1, "AppLatestVer"
    const-string v2, ""
    invoke-virtual { v0, v1, v2 }, Lcn/manstep/phonemirrorBox/b0;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
  .line 2
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "SettingsFragment,showAppNewVerInfo: "
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/z;->h0:Ljava/lang/String;
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 3
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/z;->h0:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    const/4 v1, 1
    const/4 v3, 0
    if-nez v0, :L0
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->h0:Ljava/lang/String;
    invoke-virtual { v0, v2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
  .line 5
    iget-boolean v4, p0, Lcn/manstep/phonemirrorBox/z;->a0:Z
    if-nez v4, :L2
    const/4 v0, 1
  :L2
    const/16 v4, 8
    if-nez v0, :L3
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->m0:Landroid/widget/Button;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v1
    const v5, 2131689622
    invoke-static { v1, v5 }, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
  .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->q0:Landroid/widget/TextView;
    invoke-virtual { v0, v4 }, Landroid/widget/TextView;->setVisibility(I)V
  .line 8
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->o0:Landroid/widget/Button;
    invoke-virtual { v0, v4 }, Landroid/widget/Button;->setVisibility(I)V
  .line 9
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->t0:Lcn/manstep/phonemirrorBox/c;
    invoke-virtual { v0, v3, v2 }, Lcn/manstep/phonemirrorBox/c;->m(ZLjava/lang/String;)V
    return-void
  :L3
  .line 10
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->q0:Landroid/widget/TextView;
    invoke-virtual { v0, v3 }, Landroid/widget/TextView;->setVisibility(I)V
  .line 11
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/z;->j0:Z
    if-eqz v0, :L4
  .line 12
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->o0:Landroid/widget/Button;
    invoke-virtual { v0, v3 }, Landroid/widget/Button;->setVisibility(I)V
  .line 13
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->i0:Ljava/lang/String;
    const-string v2, "\n"
    const-string v3, "\n\t\t"
    invoke-virtual { v0, v2, v3 }, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object v0
  .line 14
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v4
    const v5, 2131689991
    invoke-static { v4, v5 }, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;
    move-result-object v4
    invoke-virtual { v2, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  .line 15
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/z;->q0:Landroid/widget/TextView;
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/z;->s0:Landroid/content/res/ColorStateList;
    invoke-virtual { v2, v3 }, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V
  .line 16
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/z;->q0:Landroid/widget/TextView;
    invoke-virtual { v2, v0 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 17
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/z;->t0:Lcn/manstep/phonemirrorBox/c;
    invoke-virtual { v2, v1, v0 }, Lcn/manstep/phonemirrorBox/c;->m(ZLjava/lang/String;)V
    goto :L5
  :L4
  .line 18
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->o0:Landroid/widget/Button;
    invoke-virtual { v0, v4 }, Landroid/widget/Button;->setVisibility(I)V
  .line 19
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "AutoKit "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v1
    const v2, 2131689792
    invoke-static { v1, v2 }, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  .line 20
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/z;->q0:Landroid/widget/TextView;
    invoke-virtual { v1, v2 }, Landroid/widget/TextView;->setText(I)V
  .line 21
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, -2
    invoke-direct { v1, v2, v2 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    const v2, 8388611
  .line 22
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I
  .line 23
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/z;->q0:Landroid/widget/TextView;
    invoke-virtual { v2, v1 }, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  .line 24
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/z;->t0:Lcn/manstep/phonemirrorBox/c;
    invoke-virtual { v1, v3, v0 }, Lcn/manstep/phonemirrorBox/c;->m(ZLjava/lang/String;)V
  :L5
    return-void
.end method

.method private W2()V
  .registers 7
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const-string v1, "BoxLatestVer"
    const-string v2, ""
    invoke-virtual { v0, v1, v2 }, Lcn/manstep/phonemirrorBox/b0;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
  .line 2
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/z;->e0:Ljava/lang/String;
    invoke-virtual { v0, v3 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    const/4 v3, 1
    const/4 v4, 0
    if-nez v0, :L1
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z
    move-result v0
    if-eqz v0, :L0
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->e0:Ljava/lang/String;
    invoke-virtual { v0, v2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L0
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    iget-object v5, p0, Lcn/manstep/phonemirrorBox/z;->e0:Ljava/lang/String;
    invoke-virtual { v0, v1, v5 }, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V
  :L0
    const/4 v0, 1
    goto :L2
  :L1
    const/4 v0, 0
  :L2
  .line 6
    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/z;->a0:Z
    if-nez v1, :L3
    const/4 v0, 1
  :L3
  .line 7
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "SettingsFragment,showBoxNewVerInfo: bNeedShow = "
    invoke-virtual { v1, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    const-string v5, ", mIsNewBox = "
    invoke-virtual { v1, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-boolean v5, p0, Lcn/manstep/phonemirrorBox/z;->k0:Z
    invoke-virtual { v1, v5 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const/16 v1, 8
    if-nez v0, :L4
  .line 8
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->m0:Landroid/widget/Button;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v3
    const v5, 2131689622
    invoke-static { v3, v5 }, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v0, v3 }, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
  .line 9
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->r0:Landroid/widget/TextView;
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setVisibility(I)V
  .line 10
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->p0:Landroid/widget/Button;
    invoke-virtual { v0, v1 }, Landroid/widget/Button;->setVisibility(I)V
  .line 11
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->t0:Lcn/manstep/phonemirrorBox/c;
    invoke-virtual { v0, v4, v2 }, Lcn/manstep/phonemirrorBox/c;->n(ZLjava/lang/String;)V
    return-void
  :L4
  .line 12
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->r0:Landroid/widget/TextView;
    invoke-virtual { v0, v4 }, Landroid/widget/TextView;->setVisibility(I)V
  .line 13
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z
    move-result v0
    const v2, 2131689478
    if-nez v0, :L5
  .line 14
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->p0:Landroid/widget/Button;
    invoke-virtual { v0, v1 }, Landroid/widget/Button;->setVisibility(I)V
  .line 15
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->t0:Lcn/manstep/phonemirrorBox/c;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v1
    invoke-static { v1, v2 }, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v4, v1 }, Lcn/manstep/phonemirrorBox/c;->n(ZLjava/lang/String;)V
  .line 16
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/z;->O2()V
    goto/16 :L9
  :L5
  .line 17
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/z;->k0:Z
    if-eqz v0, :L6
  .line 18
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->p0:Landroid/widget/Button;
    invoke-virtual { v0, v4 }, Landroid/widget/Button;->setVisibility(I)V
  .line 19
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->f0:Ljava/lang/String;
    const-string v1, "\n"
    const-string v2, "\n\t\t"
    invoke-virtual { v0, v1, v2 }, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object v0
  .line 20
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v4
    const v5, 2131689991
    invoke-static { v4, v5 }, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;
    move-result-object v4
    invoke-virtual { v1, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  .line 21
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/z;->r0:Landroid/widget/TextView;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/z;->s0:Landroid/content/res/ColorStateList;
    invoke-virtual { v1, v2 }, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V
  .line 22
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/z;->r0:Landroid/widget/TextView;
    invoke-virtual { v1, v0 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 23
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/z;->t0:Lcn/manstep/phonemirrorBox/c;
    invoke-virtual { v1, v3, v0 }, Lcn/manstep/phonemirrorBox/c;->n(ZLjava/lang/String;)V
    goto :L9
  :L6
  .line 24
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->p0:Landroid/widget/Button;
    invoke-virtual { v0, v1 }, Landroid/widget/Button;->setVisibility(I)V
  .line 25
    sget-object v0, Lcn/manstep/phonemirrorBox/p;->b:Ljava/lang/String;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/p;->d(Ljava/lang/String;)Z
    move-result v0
    if-nez v0, :L7
  .line 26
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->r0:Landroid/widget/TextView;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v1
    invoke-static { v1, v2 }, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 27
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->t0:Lcn/manstep/phonemirrorBox/c;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v1
    invoke-static { v1, v2 }, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v4, v1 }, Lcn/manstep/phonemirrorBox/c;->n(ZLjava/lang/String;)V
    goto :L8
  :L7
  .line 28
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->r0:Landroid/widget/TextView;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v1
    const v2, 2131689612
    invoke-static { v1, v2 }, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 29
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->t0:Lcn/manstep/phonemirrorBox/c;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v1
    invoke-static { v1, v2 }, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v4, v1 }, Lcn/manstep/phonemirrorBox/c;->n(ZLjava/lang/String;)V
  :L8
  .line 30
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, -2
    invoke-direct { v0, v1, v1 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    const v1, 8388613
  .line 31
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I
  .line 32
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/z;->r0:Landroid/widget/TextView;
    invoke-virtual { v1, v0 }, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  :L9
    return-void
.end method

.method private X2()V
  .registers 6
  .line 1
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/c0;->f(Landroid/content/Context;)Ljava/lang/String;
    move-result-object v0
  .line 2
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "SettingsFragment,upgradeApp: filePath = "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 3
    new-instance v1, Ljava/io/File;
    invoke-direct { v1, v0 }, Ljava/io/File;-><init>(Ljava/lang/String;)V
  .line 4
    invoke-virtual { v1 }, Ljava/io/File;->exists()Z
    move-result v2
    if-eqz v2, :L1
  .line 5
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/c0;->j(Ljava/io/File;)Ljava/lang/String;
    move-result-object v1
  .line 6
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "SettingsFragment,upgradeApp: Client: "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v3, ", Server: "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/z;->g0:Ljava/lang/String;
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static { v2 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 7
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/z;->g0:Ljava/lang/String;
    invoke-virtual { v2, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L0
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;
    move-result-object v1
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/z;->h0:Ljava/lang/String;
    invoke-direct { p0, v1, v2, v0 }, Lcn/manstep/phonemirrorBox/z;->w2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :L0
  .line 8
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/z;->L2()V
  :L0
  .line 9
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/n;->f(Ljava/lang/String;)Z
  :L1
  .line 10
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/z;->t0:Lcn/manstep/phonemirrorBox/c;
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/c;->o()V
  .line 11
    new-instance v1, Ljava/util/HashMap;
    invoke-direct { v1 }, Ljava/util/HashMap;-><init>()V
  .line 12
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/z;->h0:Ljava/lang/String;
    const-string v3, "ver"
    invoke-interface { v1, v3, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 13
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/z;->g0:Ljava/lang/String;
    const-string v3, "id"
    invoke-interface { v1, v3, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 14
    new-instance v2, Lcn/manstep/phonemirrorBox/util/p;
    const/16 v3, 30
    invoke-direct { v2, v3 }, Lcn/manstep/phonemirrorBox/util/p;-><init>(I)V
  .line 15
    invoke-virtual { p0, v2 }, Lcn/manstep/phonemirrorBox/z;->v2(Lcn/manstep/phonemirrorBox/util/p;)V
  .line 16
    new-instance v3, Lcn/manstep/phonemirrorBox/z$m;
    invoke-direct { v3, p0 }, Lcn/manstep/phonemirrorBox/z$m;-><init>(Lcn/manstep/phonemirrorBox/z;)V
    const-string v4, "/a/upgrade/down"
    invoke-virtual { v2, v4, v1, v0, v3 }, Lcn/manstep/phonemirrorBox/util/p;->d(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcn/manstep/phonemirrorBox/util/p$f;)V
    return-void
.end method

.method private Y2()V
  .catch Ljava/lang/Exception; { :L1 .. :L3 } :L4
  .registers 5
  .line 1
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/app/Activity;->getCacheDir()Ljava/io/File;
    move-result-object v0
  .line 2
    invoke-virtual { v0 }, Ljava/io/File;->exists()Z
    move-result v1
    if-eqz v1, :L5
    invoke-virtual { v0 }, Ljava/io/File;->isDirectory()Z
    move-result v1
    if-nez v1, :L0
    goto/16 :L5
  :L0
  .line 3
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0 }, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, "/Auto_Box_Update.img"
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  .line 4
    new-instance v1, Ljava/io/File;
    invoke-direct { v1, v0 }, Ljava/io/File;-><init>(Ljava/lang/String;)V
  .line 5
    invoke-virtual { v1 }, Ljava/io/File;->exists()Z
    move-result v2
    if-eqz v2, :L5
    invoke-virtual { v1 }, Ljava/io/File;->isFile()Z
    move-result v1
    if-nez v1, :L1
    goto :L5
  :L1
  .line 6
    new-instance v1, Ljava/io/FileInputStream;
    invoke-direct { v1, v0 }, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
  .line 7
    invoke-virtual { v1 }, Ljava/io/InputStream;->available()I
    move-result v0
    const/high16 v2, 800
    if-le v0, v2, :L2
  .line 8
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "SettingsFragment,upgradeBox: The upgrade file is too large. size="
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 9
    invoke-virtual { v1 }, Ljava/io/InputStream;->close()V
    return-void
  :L2
  .line 10
    new-array v2, v0, [B
    const/4 v3, 0
  .line 11
    invoke-virtual { v1, v2, v3, v0 }, Ljava/io/InputStream;->read([BII)I
    move-result v3
  .line 12
    invoke-virtual { v1 }, Ljava/io/InputStream;->close()V
    if-ne v3, v0, :L5
    const-string v0, "/tmp/Auto_Box_Update.img\u0000"
  .line 13
    sget-object v1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    if-eqz v1, :L5
  .line 14
    sget-object v1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-virtual { v1, v0, v2 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->w1(Ljava/lang/String;[B)Z
  :L3
    goto :L5
  :L4
    move-exception v0
  .line 15
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "SettingsFragment,upgradeBox: \n"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { v0 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L5
    return-void
.end method

.method private Z2(Ljava/lang/String;)V
  .registers 17
    move-object v6, p0
    move-object/from16 v7, p1
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "uploadAppLog: ########"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-boolean v1, Lcn/manstep/phonemirrorBox/util/s;->a:Z
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "SettingsFragment"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V
  .line 2
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/n;->p(Landroid/content/Context;)Ljava/io/File;
    move-result-object v0
    const/4 v1, 1
    const/4 v2, 0
    if-nez v0, :L0
    const/4 v3, 0
    goto :L1
  :L0
    const/4 v3, 1
  :L1
  .line 3
    sget-object v4, Lcn/manstep/phonemirrorBox/p;->e:Ljava/lang/String;
    const-string v5, ""
    invoke-virtual { v5, v4 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v4
    xor-int/2addr v1, v4
    if-eqz v1, :L3
  .line 4
    new-instance v4, Ljava/io/File;
    sget-object v5, Lcn/manstep/phonemirrorBox/p;->e:Ljava/lang/String;
    invoke-direct { v4, v5 }, Ljava/io/File;-><init>(Ljava/lang/String;)V
  .line 5
    invoke-virtual { v4 }, Ljava/io/File;->isFile()Z
    move-result v5
    if-eqz v5, :L2
    invoke-virtual { v4 }, Ljava/io/File;->exists()Z
    move-result v4
    if-nez v4, :L3
  :L2
    const/4 v4, 0
    goto :L4
  :L3
    move v4, v1
  :L4
    const v1, 2131689884
    if-nez v3, :L5
  .line 6
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v0
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/widget/a;->a(Landroid/content/Context;I)V
    return-void
  :L5
  .line 7
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/n;->h(Ljava/io/File;)Ljava/io/File;
    move-result-object v5
    if-nez v5, :L6
  .line 8
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v0
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/widget/a;->a(Landroid/content/Context;I)V
    return-void
  :L6
  .line 9
    iget-object v0, v6, Lcn/manstep/phonemirrorBox/z;->n0:Landroid/widget/Button;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v1
    const v3, 2131689633
    invoke-static { v1, v3 }, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
  .line 10
    iget-object v0, v6, Lcn/manstep/phonemirrorBox/z;->n0:Landroid/widget/Button;
    invoke-virtual { v0, v2 }, Landroid/widget/Button;->setEnabled(Z)V
  .line 11
    invoke-virtual { v5 }, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object v0
    const-string v1, ".xlog"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v0
    const-string v1, "app.log"
    const-string v3, "app.xlog"
    if-eqz v0, :L7
    goto :L9
  :L7
    invoke-virtual { v5 }, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object v0
    const-string v8, ".bs64"
    invoke-virtual { v0, v8 }, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L8
    goto :L9
  :L8
    move-object v3, v1
  :L9
  .line 12
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object v8
    invoke-virtual { v8 }, Lcn/manstep/phonemirrorBox/u;->I()Ljava/lang/String;
    move-result-object v8
    const/16 v9, 12
    invoke-virtual { v8, v2, v9 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v2, "_"
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v11
  .line 13
    invoke-direct { p0, v1, v7 }, Lcn/manstep/phonemirrorBox/z;->I2(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    move-result-object v14
  .line 14
    new-instance v8, Lcn/manstep/phonemirrorBox/util/p;
    const/16 v0, 30
    invoke-direct { v8, v0 }, Lcn/manstep/phonemirrorBox/util/p;-><init>(I)V
  .line 15
    invoke-virtual { v5 }, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v12
    new-instance v13, Lcn/manstep/phonemirrorBox/z$k;
    move-object v0, v13
    move-object v1, p0
    move v2, v4
    move-object/from16 v3, p1
    move-object v4, v8
    invoke-direct/range { v0 .. v5 }, Lcn/manstep/phonemirrorBox/z$k;-><init>(Lcn/manstep/phonemirrorBox/z;ZLjava/lang/String;Lcn/manstep/phonemirrorBox/util/p;Ljava/io/File;)V
    const-string v9, "/a/upload/log"
    move-object v10, v14
    invoke-virtual/range { v8 .. v13 }, Lcn/manstep/phonemirrorBox/util/p;->o(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcn/manstep/phonemirrorBox/util/p$e;)V
  .line 16
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z
    move-result v0
    if-eqz v0, :L10
  .line 17
    iget-object v0, v6, Lcn/manstep/phonemirrorBox/z;->t0:Lcn/manstep/phonemirrorBox/c;
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->o()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1, v7 }, Lcn/manstep/phonemirrorBox/c;->c(Ljava/lang/String;Ljava/lang/String;)V
    goto :L11
  :L10
  .line 18
    iget-object v0, v6, Lcn/manstep/phonemirrorBox/z;->t0:Lcn/manstep/phonemirrorBox/c;
    const-string v1, "uuid"
    invoke-interface { v14, v1 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/String;
    invoke-virtual { v0, v1, v7 }, Lcn/manstep/phonemirrorBox/c;->c(Ljava/lang/String;Ljava/lang/String;)V
  :L11
    return-void
.end method

.method static synthetic g2(Lcn/manstep/phonemirrorBox/z;)Landroid/widget/Button;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/z;->m0:Landroid/widget/Button;
    return-object p0
.end method

.method static synthetic h2(Lcn/manstep/phonemirrorBox/z;)Z
  .registers 1
  .line 1
    iget-boolean p0, p0, Lcn/manstep/phonemirrorBox/z;->a0:Z
    return p0
.end method

.method static synthetic i2(Lcn/manstep/phonemirrorBox/z;)V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/z;->Y2()V
    return-void
.end method

.method static synthetic j2(Lcn/manstep/phonemirrorBox/z;Z)Z
  .registers 2
  .line 1
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/z;->a0:Z
    return p1
.end method

.method static synthetic k2(Lcn/manstep/phonemirrorBox/z;)V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/z;->L2()V
    return-void
.end method

.method static synthetic l2(Lcn/manstep/phonemirrorBox/z;)Lcn/manstep/phonemirrorBox/util/d;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/z;->v0:Lcn/manstep/phonemirrorBox/util/d;
    return-object p0
.end method

.method static synthetic m2(Lcn/manstep/phonemirrorBox/z;)Ljava/util/List;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/z;->u0:Ljava/util/List;
    return-object p0
.end method

.method static synthetic n2(Lcn/manstep/phonemirrorBox/z;)V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/z;->y2()V
    return-void
.end method

.method static synthetic o2(Lcn/manstep/phonemirrorBox/z;Ljava/lang/String;)V
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/z;->x2(Ljava/lang/String;)V
    return-void
.end method

.method static synthetic p2(Lcn/manstep/phonemirrorBox/z;)V
  .registers 1
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/z;->R2()V
    return-void
.end method

.method static synthetic q2(Lcn/manstep/phonemirrorBox/z;Ljava/lang/String;)V
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/z;->z2(Ljava/lang/String;)V
    return-void
.end method

.method static synthetic r2(Lcn/manstep/phonemirrorBox/z;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
  .registers 3
  .line 1
    invoke-direct { p0, p1, p2 }, Lcn/manstep/phonemirrorBox/z;->I2(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    move-result-object p0
    return-object p0
.end method

.method static synthetic s2(Lcn/manstep/phonemirrorBox/z;Ljava/lang/String;Ljava/lang/String;)V
  .registers 3
  .line 1
    invoke-direct { p0, p1, p2 }, Lcn/manstep/phonemirrorBox/z;->T2(Ljava/lang/String;Ljava/lang/String;)V
    return-void
.end method

.method static synthetic t2(Lcn/manstep/phonemirrorBox/z;)Landroid/widget/Button;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/z;->n0:Landroid/widget/Button;
    return-object p0
.end method

.method static synthetic u2(Lcn/manstep/phonemirrorBox/z;)Lcn/manstep/phonemirrorBox/c;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/z;->t0:Lcn/manstep/phonemirrorBox/c;
    return-object p0
.end method

.method private w2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
  .catch Ljava/lang/Exception; { :L0 .. :L2 } :L5
  .registers 11
    const-string v0, ","
    const/4 v1, 1
    if-nez p1, :L0
    return v1
  :L0
  .line 1
    invoke-virtual { p1 }, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object v2
  .line 2
    invoke-virtual { v2, p3, v1 }, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    move-result-object p3
  .line 3
    invoke-virtual { p1 }, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    move-result-object v3
    const/4 v4, 0
    invoke-virtual { v2, v3, v4 }, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    move-result-object v3
    if-eqz p3, :L6
    if-eqz v3, :L6
  .line 4
    iget-object v5, p3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
  .line 5
    iget-object p3, p3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    invoke-virtual { v2, p3 }, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    move-result-object p3
    invoke-interface { p3 }, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    move-result-object p3
  .line 6
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
  .line 7
    invoke-virtual { p1 }, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    move-result-object p1
    invoke-virtual { v2, p1 }, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    move-result-object p1
    invoke-interface { p1 }, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    move-result-object p1
  .line 8
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v6, "SettingsFragment,checkApk: "
    invoke-virtual { v2, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v6, "--"
    invoke-virtual { v2, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 9
    invoke-virtual { v5, p2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p2
    if-nez p2, :L1
    return v4
  :L1
  .line 10
    invoke-virtual { v5, v3 }, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    move-result p2
    if-lez p2, :L3
    invoke-virtual { p3, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p1
  :L2
    if-eqz p1, :L3
    goto :L4
  :L3
    const/4 v1, 0
  :L4
    return v1
  :L5
    move-exception p1
  .line 11
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p3, "SettingsFragment,checkApk: \n"
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { p1 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L6
    return v1
.end method

.method private x2(Ljava/lang/String;)V
  .catch Ljava/lang/Exception; { :L0 .. :L3 } :L4
  .registers 7
    const-string v0, "2025.03.19.1126"
    const-string v1, "cku"
  :L0
  .line 1
    new-instance v2, Lorg/json/JSONObject;
    invoke-direct { v2, p1 }, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
  .line 2
    invoke-virtual { v2, v1 }, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    move-result v3
    const/4 v4, 0
    if-eqz v3, :L1
  .line 3
    invoke-virtual { v2, v1 }, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    move-result v1
    if-nez v1, :L1
  .line 4
    sput-boolean v4, Lcn/manstep/phonemirrorBox/p;->B:Z
  :L1
    const-string v1, "token"
  .line 5
    invoke-virtual { v2, v1 }, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    sput-object v1, Lcn/manstep/phonemirrorBox/util/p;->f:Ljava/lang/String;
    const-string v1, "ver"
  .line 6
    invoke-virtual { v2, v1 }, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
  .line 7
    invoke-virtual { v1, v0 }, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    move-result v3
    if-lez v3, :L2
    const-string v0, "id"
  .line 8
    invoke-virtual { v2, v0 }, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/z;->g0:Ljava/lang/String;
    const-string v0, "notes"
  .line 9
    invoke-virtual { v2, v0 }, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/z;->i0:Ljava/lang/String;
  .line 10
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/z;->h0:Ljava/lang/String;
    const/4 v0, 1
  .line 11
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/z;->j0:Z
    goto :L5
  :L2
  .line 12
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/z;->h0:Ljava/lang/String;
  .line 13
    iput-boolean v4, p0, Lcn/manstep/phonemirrorBox/z;->j0:Z
  :L3
    goto :L5
  :L4
    move-exception v0
  .line 14
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "SettingsFragment,checkAppVer: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p1, "\n"
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { v0 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L5
  .line 15
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/z;->V2()V
    return-void
.end method

.method private y2()V
  .registers 5
  .line 1
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;
    move-result-object v0
    if-nez v0, :L0
    return-void
  :L0
  .line 2
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    const v1, 2131034135
    invoke-virtual { v0, v1 }, Landroid/content/res/Resources;->getBoolean(I)Z
    move-result v0
    if-nez v0, :L1
    return-void
  :L1
  .line 3
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z
    move-result v0
    const/16 v1, 8
    if-eqz v0, :L2
  .line 4
    new-instance v0, Ljava/util/HashMap;
    const/4 v2, 7
    invoke-direct { v0, v2 }, Ljava/util/HashMap;-><init>(I)V
  .line 5
    new-instance v0, Ljava/util/HashMap;
    invoke-direct { v0, v1 }, Ljava/util/HashMap;-><init>(I)V
  .line 6
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, ""
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { }, Lcn/manstep/phonemirrorBox/x;->c()I
    move-result v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    const-string v2, "lang"
    invoke-interface { v0, v2, v1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    const-string v1, "code"
    const-string v2, "37"
  .line 7
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    const-string v1, "appVer"
    const-string v2, "2025.03.19.1126"
  .line 8
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 9
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->p()Ljava/lang/String;
    move-result-object v1
    const-string v2, "ver"
    invoke-interface { v0, v2, v1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 10
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->o()Ljava/lang/String;
    move-result-object v1
    const-string v2, "uuid"
    invoke-interface { v0, v2, v1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 11
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->h()Ljava/lang/String;
    move-result-object v1
    const-string v2, "mfd"
    invoke-interface { v0, v2, v1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 12
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->c()Ljava/lang/String;
    move-result-object v1
    const-string v2, "fwn"
    invoke-interface { v0, v2, v1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 13
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->i()Ljava/lang/String;
    move-result-object v1
    const-string v2, "model"
    invoke-interface { v0, v2, v1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 14
    new-instance v1, Lcn/manstep/phonemirrorBox/util/p;
    invoke-direct { v1 }, Lcn/manstep/phonemirrorBox/util/p;-><init>()V
  .line 15
    new-instance v2, Lcn/manstep/phonemirrorBox/z$j;
    invoke-direct { v2, p0 }, Lcn/manstep/phonemirrorBox/z$j;-><init>(Lcn/manstep/phonemirrorBox/z;)V
    const-string v3, "/a/upgrade/checkBox"
    invoke-virtual { v1, v3, v0, v2 }, Lcn/manstep/phonemirrorBox/util/p;->j(Ljava/lang/String;Ljava/util/Map;Lcn/manstep/phonemirrorBox/util/p$e;)V
    goto :L4
  :L2
  .line 16
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->p0:Landroid/widget/Button;
    invoke-virtual { v0, v1 }, Landroid/widget/Button;->setVisibility(I)V
  .line 17
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/z;->a0:Z
    if-eqz v0, :L3
  .line 18
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->r0:Landroid/widget/TextView;
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setVisibility(I)V
    goto :L4
  :L3
  .line 19
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->r0:Landroid/widget/TextView;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setVisibility(I)V
  .line 20
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/z;->O2()V
  .line 21
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->t0:Lcn/manstep/phonemirrorBox/c;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v2
    const v3, 2131689478
    invoke-static { v2, v3 }, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v0, v1, v2 }, Lcn/manstep/phonemirrorBox/c;->n(ZLjava/lang/String;)V
  :L4
    return-void
.end method

.method private z2(Ljava/lang/String;)V
  .catch Ljava/lang/Exception; { :L0 .. :L2 } :L3
  .registers 5
  :L0
  .line 1
    new-instance v0, Lorg/json/JSONObject;
    invoke-direct { v0, p1 }, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    const-string p1, "token"
  .line 2
    invoke-virtual { v0, p1 }, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
    sput-object p1, Lcn/manstep/phonemirrorBox/util/p;->f:Ljava/lang/String;
    const-string p1, "ver"
  .line 3
    invoke-virtual { v0, p1 }, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
  .line 4
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "SettingsFragment,checkBoxVer: new:"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v2, ", old:"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;
    move-result-object v2
    invoke-virtual { v2 }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->p()Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->p()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { p1, v1 }, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    move-result v1
    if-lez v1, :L1
    const-string v1, "id"
  .line 6
    invoke-virtual { v0, v1 }, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/z;->l0:Ljava/lang/String;
    const-string v1, "notes"
  .line 7
    invoke-virtual { v0, v1 }, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/z;->f0:Ljava/lang/String;
  .line 8
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/z;->e0:Ljava/lang/String;
    const/4 p1, 1
  .line 9
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/z;->k0:Z
    goto :L4
  :L1
  .line 10
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;
    move-result-object p1
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->p()Ljava/lang/String;
    move-result-object p1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/z;->e0:Ljava/lang/String;
    const/4 p1, 0
  .line 11
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/z;->k0:Z
  :L2
    goto :L4
  :L3
    move-exception p1
  .line 12
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "SettingsFragment,checkBoxVer: \n"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { p1 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L4
  .line 13
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/z;->W2()V
    return-void
.end method

.method public A2()V
  .registers 5
    const-string v0, "SettingsFragment,checkUpdate: ======"
  .line 1
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->q0()Z
    move-result v0
    if-eqz v0, :L1
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->d0()Landroid/content/res/Resources;
    move-result-object v0
    const v1, 2131034135
    invoke-virtual { v0, v1 }, Landroid/content/res/Resources;->getBoolean(I)Z
    move-result v0
    if-nez v0, :L0
    goto/16 :L1
  :L0
  .line 3
    new-instance v0, Ljava/util/HashMap;
    const/4 v1, 7
    invoke-direct { v0, v1 }, Ljava/util/HashMap;-><init>(I)V
  .line 4
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, ""
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { }, Lcn/manstep/phonemirrorBox/x;->c()I
    move-result v3
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    const-string v3, "lang"
    invoke-interface { v0, v3, v1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    const-string v1, "code"
    const-string v3, "37"
  .line 5
    invoke-interface { v0, v1, v3 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    const-string v1, "ver"
    const-string v3, "2025.03.19.1126"
  .line 6
    invoke-interface { v0, v1, v3 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 7
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/u;->I()Ljava/lang/String;
    move-result-object v1
    const-string v3, "uuid"
    invoke-interface { v0, v3, v1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 8
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v2, Lcn/manstep/phonemirrorBox/p;->k:I
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, "x"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v2, Lcn/manstep/phonemirrorBox/p;->l:I
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    const-string v2, "r"
    invoke-interface { v0, v2, v1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 9
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;
    const-string v2, "m"
    invoke-interface { v0, v2, v1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 10
    invoke-static { }, Lcn/manstep/phonemirrorBox/MyApplication;->b()Lcn/manstep/phonemirrorBox/MyApplication;
    move-result-object v1
    invoke-virtual { v1 }, Landroid/app/Application;->getPackageName()Ljava/lang/String;
    move-result-object v1
    const-string v2, "pkg"
    invoke-interface { v0, v2, v1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 11
    new-instance v1, Lcn/manstep/phonemirrorBox/util/p;
    invoke-direct { v1 }, Lcn/manstep/phonemirrorBox/util/p;-><init>()V
  .line 12
    new-instance v2, Lcn/manstep/phonemirrorBox/z$i;
    invoke-direct { v2, p0 }, Lcn/manstep/phonemirrorBox/z$i;-><init>(Lcn/manstep/phonemirrorBox/z;)V
    const-string v3, "/a/upgrade/checkApp"
    invoke-virtual { v1, v3, v0, v2 }, Lcn/manstep/phonemirrorBox/util/p;->j(Ljava/lang/String;Ljava/util/Map;Lcn/manstep/phonemirrorBox/util/p$e;)V
  .line 13
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/z;->y2()V
  :L1
    return-void
.end method

.method public C0(IILandroid/content/Intent;)V
  .registers 7
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "SettingsFragment,onActivityResult: requestCode="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ", resultCode="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const-string v0, "custom.png"
    const/4 v1, -1
    const/4 v2, 1
    if-ne p1, v2, :L0
    if-ne p2, v1, :L5
  .line 2
    invoke-virtual { p3 }, Landroid/content/Intent;->getData()Landroid/net/Uri;
    move-result-object p1
  .line 3
    new-instance p2, Ljava/io/File;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object p3
    invoke-virtual { p3 }, Landroid/app/Activity;->getCacheDir()Ljava/io/File;
    move-result-object p3
    invoke-direct { p2, p3, v0 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-static { p2 }, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    move-result-object p2
  .line 4
    invoke-direct { p0, p1, p2 }, Lcn/manstep/phonemirrorBox/z;->D2(Landroid/net/Uri;Landroid/net/Uri;)V
    goto/16 :L5
  :L0
    const/4 v2, 2
    if-ne p1, v2, :L4
    if-ne p2, v1, :L5
    const/4 p1, 0
    const-string p2, "ImagePath"
  .line 5
    invoke-virtual { p3, p2 }, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p2
    if-eqz p2, :L3
  .line 6
    new-instance p3, Ljava/io/File;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v1
    invoke-virtual { v1 }, Landroid/app/Activity;->getCacheDir()Ljava/io/File;
    move-result-object v1
    invoke-direct { p3, v1, v0 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
  .line 7
    invoke-virtual { p3 }, Ljava/io/File;->exists()Z
    move-result v0
    if-eqz v0, :L1
    invoke-virtual { p3 }, Ljava/io/File;->isFile()Z
    move-result v0
    if-eqz v0, :L1
  .line 8
    invoke-virtual { p3 }, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object p1
  :L1
  .line 9
    invoke-virtual { p2, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L2
  .line 10
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/z;->x0:Landroid/widget/ImageView;
    invoke-static { p2 }, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    move-result-object p2
    invoke-virtual { p1, p2 }, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    goto :L3
  :L2
  .line 11
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/z;->x0:Landroid/widget/ImageView;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object p3
    invoke-static { p3, p2 }, Lcn/manstep/phonemirrorBox/util/c0;->g(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    move-result-object p2
    invoke-virtual { p1, p2 }, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
  :L3
  .line 12
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z
    move-result p1
    if-eqz p1, :L5
  .line 13
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    if-eqz p1, :L5
  .line 14
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->e()V
  .line 15
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->b()V
    goto :L5
  :L4
    const/4 p3, 3
    if-ne p1, p3, :L5
    if-ne p2, v1, :L5
  .line 16
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object p1
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;
    move-result-object p2
    invoke-static { p2 }, Lcn/manstep/phonemirrorBox/util/c0;->f(Landroid/content/Context;)Ljava/lang/String;
    move-result-object p2
    invoke-static { p1, p2 }, Lcn/manstep/phonemirrorBox/util/c0;->o(Landroid/content/Context;Ljava/lang/String;)V
  :L5
    return-void
.end method

.method public G2(Ljava/lang/String;Ljava/lang/String;)V
  .registers 6
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "SettingsFragment,downloadBoxImg: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, ","
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    invoke-static { p1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-nez v0, :L3
    invoke-static { p2 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-eqz v0, :L0
    goto :L3
  :L0
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->t0:Lcn/manstep/phonemirrorBox/c;
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/c;->o()V
  .line 4
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/app/Activity;->getCacheDir()Ljava/io/File;
    move-result-object v0
  .line 5
    invoke-virtual { v0 }, Ljava/io/File;->exists()Z
    move-result v1
    if-eqz v1, :L3
    invoke-virtual { v0 }, Ljava/io/File;->isDirectory()Z
    move-result v1
    if-nez v1, :L1
    goto :L3
  :L1
  .line 6
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0 }, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, "/Auto_Box_Update.img"
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  .line 7
    new-instance v1, Ljava/io/File;
    invoke-direct { v1, v0 }, Ljava/io/File;-><init>(Ljava/lang/String;)V
  .line 8
    invoke-virtual { v1 }, Ljava/io/File;->exists()Z
    move-result v2
    if-eqz v2, :L2
  .line 9
    invoke-virtual { v1 }, Ljava/io/File;->delete()Z
  :L2
  .line 10
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "SettingsFragment,downloadBoxImg: imgPath="
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 11
    new-instance v1, Ljava/util/HashMap;
    invoke-direct { v1 }, Ljava/util/HashMap;-><init>()V
    const-string v2, "ver"
  .line 12
    invoke-interface { v1, v2, p1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    const-string p1, "id"
  .line 13
    invoke-interface { v1, p1, p2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 14
    new-instance p1, Lcn/manstep/phonemirrorBox/util/p;
    const/16 p2, 30
    invoke-direct { p1, p2 }, Lcn/manstep/phonemirrorBox/util/p;-><init>(I)V
  .line 15
    invoke-virtual { p0, p1 }, Lcn/manstep/phonemirrorBox/z;->v2(Lcn/manstep/phonemirrorBox/util/p;)V
  .line 16
    new-instance p2, Lcn/manstep/phonemirrorBox/z$l;
    invoke-direct { p2, p0 }, Lcn/manstep/phonemirrorBox/z$l;-><init>(Lcn/manstep/phonemirrorBox/z;)V
    const-string v2, "/a/upgrade/down"
    invoke-virtual { p1, v2, v1, v0, p2 }, Lcn/manstep/phonemirrorBox/util/p;->d(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcn/manstep/phonemirrorBox/util/p$f;)V
  :L3
    return-void
.end method

.method public L0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
  .registers 7
    const-string p3, "SettingsFragment,onCreateView: ######"
  .line 1
    invoke-static { p3 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    new-instance p3, Lcn/manstep/phonemirrorBox/a0;
    invoke-direct { p3, p0 }, Lcn/manstep/phonemirrorBox/a0;-><init>(Lcn/manstep/phonemirrorBox/z;)V
    iput-object p3, p0, Lcn/manstep/phonemirrorBox/z;->t0:Lcn/manstep/phonemirrorBox/c;
  .line 3
    new-instance p3, Landroidx/lifecycle/w$a;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v0
    if-nez v0, :L0
    const/4 v0, 0
    goto :L1
  :L0
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/app/Activity;->getApplication()Landroid/app/Application;
    move-result-object v0
  :L1
    invoke-direct { p3, v0 }, Landroidx/lifecycle/w$a;-><init>(Landroid/app/Application;)V
  .line 4
    new-instance v0, Landroidx/lifecycle/w;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v1
    invoke-direct { v0, v1, p3 }, Landroidx/lifecycle/w;-><init>(Landroidx/lifecycle/y;Landroidx/lifecycle/w$b;)V
    const-class v1, Lcn/manstep/phonemirrorBox/x0/k;
    invoke-virtual { v0, v1 }, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;
    move-result-object v0
    check-cast v0, Lcn/manstep/phonemirrorBox/x0/k;
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/z;->y0:Lcn/manstep/phonemirrorBox/x0/k;
  .line 5
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/x0/k;->Z()V
    const v0, 2131492944
    const/4 v1, 0
  .line 6
    invoke-static { p1, v0, p2, v1 }, Landroidx/databinding/f;->e(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;
    move-result-object p1
    check-cast p1, Lcn/manstep/phonemirrorBox/i0/s;
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/z;->z0:Lcn/manstep/phonemirrorBox/i0/s;
  .line 7
    invoke-virtual { p1 }, Landroidx/databinding/ViewDataBinding;->t()Landroid/view/View;
    move-result-object p1
  .line 8
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/z;->z0:Lcn/manstep/phonemirrorBox/i0/s;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->y0:Lcn/manstep/phonemirrorBox/x0/k;
    invoke-virtual { p2, v0 }, Lcn/manstep/phonemirrorBox/i0/s;->M(Lcn/manstep/phonemirrorBox/x0/k;)V
  .line 9
    new-instance p2, Landroidx/lifecycle/w;
    invoke-direct { p2, p0, p3 }, Landroidx/lifecycle/w;-><init>(Landroidx/lifecycle/y;Landroidx/lifecycle/w$b;)V
    const-class p3, Lcn/manstep/phonemirrorBox/x0/i;
    invoke-virtual { p2, p3 }, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;
    move-result-object p2
    check-cast p2, Lcn/manstep/phonemirrorBox/x0/i;
  .line 10
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object p3
    invoke-virtual { p3 }, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;
    move-result-object p3
    invoke-virtual { p2, p3 }, Lcn/manstep/phonemirrorBox/x0/i;->F(Landroidx/fragment/app/n;)V
  .line 11
    iget-object p3, p0, Lcn/manstep/phonemirrorBox/z;->z0:Lcn/manstep/phonemirrorBox/i0/s;
    invoke-virtual { p3, p2 }, Lcn/manstep/phonemirrorBox/i0/s;->L(Lcn/manstep/phonemirrorBox/x0/i;)V
  .line 12
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/z;->z0:Lcn/manstep/phonemirrorBox/i0/s;
    invoke-virtual { p2, p0 }, Landroidx/databinding/ViewDataBinding;->G(Landroidx/lifecycle/j;)V
  .line 13
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/z;->y0:Lcn/manstep/phonemirrorBox/x0/k;
    invoke-virtual { p2, p0 }, Lcn/manstep/phonemirrorBox/x0/k;->m0(Lcn/manstep/phonemirrorBox/x0/l;)V
  .line 14
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/z;->y0:Lcn/manstep/phonemirrorBox/x0/k;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object p3
    invoke-virtual { p3 }, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;
    move-result-object p3
    invoke-virtual { p2, p3 }, Lcn/manstep/phonemirrorBox/x0/k;->r0(Landroidx/fragment/app/n;)V
  .line 15
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/z;->J2(Landroid/view/View;)V
  .line 16
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/z;->K2(Landroid/view/View;)V
    const p2, 2131296386
  .line 17
    invoke-virtual { p1, p2 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p2
    check-cast p2, Landroid/widget/Button;
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/z;->n0:Landroid/widget/Button;
    if-eqz p2, :L2
  .line 18
    invoke-virtual { p2, p0 }, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  :L2
    const p2, 2131296373
  .line 19
    invoke-virtual { p1, p2 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p2
    check-cast p2, Landroid/widget/Button;
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/z;->m0:Landroid/widget/Button;
    if-eqz p2, :L3
  .line 20
    invoke-virtual { p2, p0 }, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  :L3
    const p2, 2131296369
  .line 21
    invoke-virtual { p1, p2 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p2
    check-cast p2, Landroid/widget/Button;
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/z;->o0:Landroid/widget/Button;
    if-eqz p2, :L4
  .line 22
    invoke-virtual { p2, p0 }, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 23
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p3, "AutoKit "
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object p3
    const v0, 2131689631
    invoke-static { p3, v0 }, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;
    move-result-object p3
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
  .line 24
    iget-object p3, p0, Lcn/manstep/phonemirrorBox/z;->o0:Landroid/widget/Button;
    invoke-virtual { p3, p2 }, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
  :L4
    const p2, 2131296371
  .line 25
    invoke-virtual { p1, p2 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p2
    check-cast p2, Landroid/widget/Button;
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/z;->p0:Landroid/widget/Button;
    if-eqz p2, :L5
  .line 26
    invoke-virtual { p2, p0 }, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  :L5
    const p2, 2131296894
  .line 27
    invoke-virtual { p1, p2 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p2
    check-cast p2, Landroid/widget/TextView;
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/z;->q0:Landroid/widget/TextView;
    const p2, 2131296896
  .line 28
    invoke-virtual { p1, p2 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p2
    check-cast p2, Landroid/widget/TextView;
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/z;->r0:Landroid/widget/TextView;
    if-eqz p2, :L6
  .line 29
    invoke-virtual { p2 }, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;
    move-result-object p2
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/z;->s0:Landroid/content/res/ColorStateList;
  :L6
    const p2, 2131296922
  .line 30
    invoke-virtual { p1, p2 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p2
    check-cast p2, Landroid/widget/TextView;
    if-eqz p2, :L7
  .line 31
    sget-object p3, Lcn/manstep/phonemirrorBox/p;->a:Ljava/lang/String;
    const-string v0, "VER:"
    const-string v2, ""
    invoke-virtual { p3, v0, v2 }, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object p3
    invoke-virtual { p2, p3 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  :L7
  .line 32
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/v0/e;->M(Lcn/manstep/phonemirrorBox/BoxInterface/d$g;)Lcn/manstep/phonemirrorBox/BoxInterface/d;
  .line 33
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;
    move-result-object p2
    const-string p3, "keyLearnLayout"
    invoke-static { p2, p3 }, Lcn/manstep/phonemirrorBox/util/c0;->k(Landroid/content/Context;Ljava/lang/String;)I
    move-result p2
    if-lez p2, :L8
  .line 34
    invoke-virtual { p1, p2 }, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p2
    check-cast p2, Landroid/widget/LinearLayout;
    if-eqz p2, :L8
  .line 35
    invoke-virtual { p2, p0 }, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  :L8
  .line 36
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/z;->t0:Lcn/manstep/phonemirrorBox/c;
    invoke-virtual { p2, p1 }, Lcn/manstep/phonemirrorBox/c;->d(Landroid/view/View;)V
  .line 37
    invoke-virtual { p0, v1 }, Lcn/manstep/phonemirrorBox/z;->R0(Z)V
    return-object p1
.end method

.method public M0()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->u0:Ljava/util/List;
    const/4 v1, 0
    if-eqz v0, :L0
  .line 2
    invoke-interface { v0 }, Ljava/util/List;->clear()V
  .line 3
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/z;->u0:Ljava/util/List;
  :L0
  .line 4
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/v0/e;->S(Lcn/manstep/phonemirrorBox/BoxInterface/d$g;)V
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->t0:Lcn/manstep/phonemirrorBox/c;
    if-eqz v0, :L1
  .line 6
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/c;->g()V
  :L1
  .line 7
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/z;->z0:Lcn/manstep/phonemirrorBox/i0/s;
  .line 8
    invoke-super { p0 }, Landroidx/fragment/app/Fragment;->M0()V
    const-string v0, "SettingsFragment,onDestroy: ######"
  .line 9
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    return-void
.end method

.method public M2(Z)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->y0:Lcn/manstep/phonemirrorBox/x0/k;
    if-eqz v0, :L0
    xor-int/lit8 p1, p1, 1
  .line 2
    invoke-virtual { v0, p1 }, Lcn/manstep/phonemirrorBox/x0/k;->I0(I)V
  :L0
    return-void
.end method

.method public R0(Z)V
  .registers 4
  .line 1
    invoke-super { p0, p1 }, Landroidx/fragment/app/Fragment;->R0(Z)V
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "SettingsFragment,onHiddenChanged: ###### "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    xor-int/lit8 v0, p1, 1
  .line 3
    sput-boolean v0, Lcn/manstep/phonemirrorBox/z;->B0:Z
    if-eqz p1, :L1
  .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/z;->y0:Lcn/manstep/phonemirrorBox/x0/k;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/x0/k;->E()Landroidx/lifecycle/o;
    move-result-object p1
    invoke-virtual { p1 }, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Ljava/lang/Integer;
    invoke-virtual { p1 }, Ljava/lang/Integer;->intValue()I
    move-result p1
    const/4 v0, 1
    if-ne p1, v0, :L0
    const/4 p1, 2
  :L0
  .line 5
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->c(I)V
  .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/z;->y0:Lcn/manstep/phonemirrorBox/x0/k;
    invoke-virtual { p1, v0 }, Lcn/manstep/phonemirrorBox/x0/k;->h0(Z)V
    goto :L2
  :L1
  .line 7
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/z;->y0:Lcn/manstep/phonemirrorBox/x0/k;
    const/4 v0, 0
    invoke-virtual { p1, v0 }, Lcn/manstep/phonemirrorBox/x0/k;->h0(Z)V
  :L2
    return-void
.end method

.method public S2()V
  .registers 5
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->y0:Lcn/manstep/phonemirrorBox/x0/k;
    const/4 v1, 0
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/x0/k;->i0(Z)V
  .line 2
    new-instance v0, Landroid/os/Handler;
    invoke-direct { v0 }, Landroid/os/Handler;-><init>()V
    new-instance v1, Lcn/manstep/phonemirrorBox/z$e;
    invoke-direct { v1, p0 }, Lcn/manstep/phonemirrorBox/z$e;-><init>(Lcn/manstep/phonemirrorBox/z;)V
    const-wide/16 v2, 2000
    invoke-virtual { v0, v1, v2, v3 }, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    return-void
.end method

.method public a(ILjava/lang/Object;)V
  .registers 3
    return-void
.end method

.method public b(I)V
  .registers 6
    const/4 v0, 3
    if-ne p1, v0, :L0
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/z;->t0:Lcn/manstep/phonemirrorBox/c;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->J()Landroidx/fragment/app/n;
    move-result-object v0
    const v1, 2131689700
    const v2, 2131689885
    const/4 v3, 2
    invoke-virtual { p1, v0, v1, v2, v3 }, Lcn/manstep/phonemirrorBox/c;->l(Landroidx/fragment/app/n;III)V
    goto :L1
  :L0
    const/4 v0, 1
    if-ne p1, v0, :L1
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z
    move-result p1
    if-eqz p1, :L1
    sget-boolean p1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->P:Z
    if-nez p1, :L1
  .line 3
    new-instance p1, Lcn/manstep/phonemirrorBox/util/g$c;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v1
    invoke-direct { p1, v1 }, Lcn/manstep/phonemirrorBox/util/g$c;-><init>(Landroid/content/Context;)V
  .line 4
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->d0()Landroid/content/res/Resources;
    move-result-object v1
    const v2, 2131689613
    invoke-virtual { v1, v2 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { p1, v1 }, Lcn/manstep/phonemirrorBox/util/g$c;->c(Ljava/lang/String;)Lcn/manstep/phonemirrorBox/util/g$c;
  .line 5
    invoke-virtual { p1, v0 }, Lcn/manstep/phonemirrorBox/util/g$c;->b(Z)Lcn/manstep/phonemirrorBox/util/g$c;
  .line 6
    invoke-virtual { p1, v0 }, Lcn/manstep/phonemirrorBox/util/g$c;->a(Z)Lcn/manstep/phonemirrorBox/util/g$c;
  .line 7
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/util/g$c;->d()Lcn/manstep/phonemirrorBox/util/g;
    move-result-object p1
    invoke-virtual { p1, v0 }, Lcn/manstep/phonemirrorBox/util/g;->b(Z)V
  .line 8
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/z;->y0:Lcn/manstep/phonemirrorBox/x0/k;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/x0/k;->o0()V
  :L1
    return-void
.end method

.method public c(I)V
  .registers 2
    return-void
.end method

.method public c1()V
  .registers 3
    const-string v0, "SettingsFragment,onResume!"
  .line 1
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    invoke-super { p0 }, Landroidx/fragment/app/Fragment;->c1()V
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->y0:Lcn/manstep/phonemirrorBox/x0/k;
    if-eqz v0, :L0
    const/4 v1, 1
  .line 4
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/x0/k;->H0(Z)V
  :L0
  .line 5
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v0
    check-cast v0, Lcn/manstep/phonemirrorBox/MainActivity;
    iget-boolean v0, v0, Lcn/manstep/phonemirrorBox/MainActivity;->t:Z
    if-eqz v0, :L1
  .line 6
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/z;->E2()V
  :L1
    return-void
.end method

.method public e(I)V
  .registers 3
    const/4 v0, 2
    if-ne p1, v0, :L0
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/z;->y0:Lcn/manstep/phonemirrorBox/x0/k;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/x0/k;->o0()V
  :L0
    return-void
.end method

.method public f1()V
  .registers 3
  .line 1
    invoke-super { p0 }, Landroidx/fragment/app/Fragment;->f1()V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->y0:Lcn/manstep/phonemirrorBox/x0/k;
    if-eqz v0, :L0
    const/4 v1, 0
  .line 3
    invoke-virtual { v0, v1 }, Lcn/manstep/phonemirrorBox/x0/k;->H0(Z)V
  :L0
    return-void
.end method

.method public g1(Landroid/view/View;Landroid/os/Bundle;)V
  .registers 3
  .line 1
    invoke-super { p0, p1, p2 }, Landroidx/fragment/app/Fragment;->g1(Landroid/view/View;Landroid/os/Bundle;)V
  .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/z;->t0:Lcn/manstep/phonemirrorBox/c;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;
    move-result-object p2
    invoke-virtual { p2 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object p2
    invoke-virtual { p2 }, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
    move-result-object p2
    iget p2, p2, Landroid/content/res/Configuration;->orientation:I
    invoke-virtual { p1, p2 }, Lcn/manstep/phonemirrorBox/c;->f(I)V
    return-void
.end method

.method public h(Z)V
  .registers 6
    const/4 v0, 1
    if-eqz p1, :L0
    const/4 p1, 0
  .line 1
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/z;->d0:Z
  .line 2
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;
    move-result-object p1
    invoke-virtual { p1 }, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    move-result-object p1
    invoke-static/range { p1 .. p1 }, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->k(Landroid/content/Context;)Z
  .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/z;->t0:Lcn/manstep/phonemirrorBox/c;
    invoke-virtual { p1, v0 }, Lcn/manstep/phonemirrorBox/c;->k(Z)V
  .line 4
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z
    move-result p1
    if-eqz p1, :L2
  .line 5
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    if-eqz p1, :L2
  .line 6
    invoke-virtual { p1, v0 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->U0(I)Z
    goto :L2
  :L0
  .line 7
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/z;->B2()V
  .line 8
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "SettingsFragment,closeLogSwitch: mIsUploadLog="
    invoke-virtual { p1, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/z;->d0:Z
    invoke-virtual { p1, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 9
    iget-boolean p1, p0, Lcn/manstep/phonemirrorBox/z;->d0:Z
    if-eqz p1, :L1
    return-void
  :L1
  .line 10
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/z;->t0:Lcn/manstep/phonemirrorBox/c;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->J()Landroidx/fragment/app/n;
    move-result-object v1
    const v2, 2131689529
    const v3, 2131689970
    invoke-virtual { p1, v1, v2, v3, v0 }, Lcn/manstep/phonemirrorBox/c;->l(Landroidx/fragment/app/n;III)V
  :L2
    return-void
.end method

.method public i(I)V
  .registers 3
    const/4 v0, 1
    if-ne p1, v0, :L0
  .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/z;->n0:Landroid/widget/Button;
    invoke-virtual { p1 }, Landroid/widget/Button;->callOnClick()Z
  :L0
    return-void
.end method

.method public l(Z)V
  .registers 2
    return-void
.end method

.method public n(Lcn/manstep/phonemirrorBox/BoxInterface/d;)V
  .registers 2
    return-void
.end method

.method public o(I)V
  .registers 8
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "SettingsFragment,on_Box_Phase parse: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const/16 v0, 20
    if-ne p1, v0, :L0
  .line 2
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/z;->Q2()V
    return-void
  :L0
    const/16 v0, 12
    const/4 v1, 0
    const-string v2, ""
    if-ne p1, v0, :L1
  .line 3
    sput-object v2, Lcn/manstep/phonemirrorBox/p;->b:Ljava/lang/String;
  .line 4
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/z;->y0:Lcn/manstep/phonemirrorBox/x0/k;
    invoke-virtual { v3, v1 }, Lcn/manstep/phonemirrorBox/x0/k;->j0(I)V
  :L1
  .line 5
    sget-boolean v3, Lcn/manstep/phonemirrorBox/z;->B0:Z
    const/16 v4, 124
    const/4 v5, 1
    if-nez v3, :L3
    if-ne p1, v4, :L2
  .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/z;->y0:Lcn/manstep/phonemirrorBox/x0/k;
    invoke-virtual { p1, v5 }, Lcn/manstep/phonemirrorBox/x0/k;->j0(I)V
  :L2
    return-void
  :L3
    const/4 v3, 4
    if-ne p1, v3, :L4
  .line 7
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->E0()Z
    return-void
  :L4
    if-ne p1, v4, :L8
  .line 8
    iget-boolean p1, p0, Lcn/manstep/phonemirrorBox/z;->c0:Z
    if-eqz p1, :L5
  .line 9
    iget-boolean p1, p0, Lcn/manstep/phonemirrorBox/z;->b0:Z
    if-eqz p1, :L5
  .line 10
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/z;->b0:Z
  :L5
  .line 11
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object p1
    const-string v0, "BoxLatestVer"
    invoke-virtual { p1, v0, v2 }, Lcn/manstep/phonemirrorBox/b0;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
  .line 12
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->e0:Ljava/lang/String;
    invoke-virtual { v0, v2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L6
    invoke-virtual { p1, v2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L6
  .line 13
    new-instance p1, Landroid/os/Handler;
    invoke-direct { p1 }, Landroid/os/Handler;-><init>()V
    new-instance v0, Lcn/manstep/phonemirrorBox/z$h;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/z$h;-><init>(Lcn/manstep/phonemirrorBox/z;)V
    const-wide/16 v1, 3000
    invoke-virtual { p1, v0, v1, v2 }, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    goto :L7
  :L6
  .line 14
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/z;->W2()V
  :L7
  .line 15
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/z;->y0:Lcn/manstep/phonemirrorBox/x0/k;
    invoke-virtual { p1, v5 }, Lcn/manstep/phonemirrorBox/x0/k;->j0(I)V
  .line 16
    sget-boolean p1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->P:Z
    goto :L12
  :L8
    const/16 v2, 13
    if-ne p1, v2, :L9
  .line 17
    iput-boolean v5, p0, Lcn/manstep/phonemirrorBox/z;->b0:Z
    goto :L12
  :L9
    if-ne p1, v0, :L11
  .line 18
    iput-boolean v5, p0, Lcn/manstep/phonemirrorBox/z;->b0:Z
  .line 19
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/z;->p0:Landroid/widget/Button;
    if-eqz p1, :L10
    const/16 v0, 8
  .line 20
    invoke-virtual { p1, v0 }, Landroid/widget/Button;->setVisibility(I)V
  :L10
  .line 21
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/z;->t0:Lcn/manstep/phonemirrorBox/c;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v0
    const v2, 2131689478
    invoke-static { v0, v2 }, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p1, v1, v0 }, Lcn/manstep/phonemirrorBox/c;->n(ZLjava/lang/String;)V
  .line 22
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/z;->O2()V
    goto :L12
  :L11
    const/16 v0, 123
    if-ne p1, v0, :L12
  .line 23
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/z;->y0:Lcn/manstep/phonemirrorBox/x0/k;
    const/4 v0, 2
    invoke-virtual { p1, v0 }, Lcn/manstep/phonemirrorBox/x0/k;->j0(I)V
  :L12
    return-void
.end method

.method public onClick(Landroid/view/View;)V
  .registers 5
  .line 1
    invoke-virtual { p1 }, Landroid/view/View;->getId()I
    move-result p1
    sparse-switch p1, :L6
    goto :L5
  :L0
  .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/z;->t0:Lcn/manstep/phonemirrorBox/c;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v0
    invoke-virtual { p1, v0 }, Lcn/manstep/phonemirrorBox/c;->j(Landroid/app/Activity;)V
    goto :L5
  :L1
  .line 3
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/z;->P2()V
    goto :L5
  :L2
    const/4 p1, 0
  .line 4
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/z;->a0:Z
  .line 5
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/z;->A2()V
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->m0:Landroid/widget/Button;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v1
    const v2, 2131689623
    invoke-static { v1, v2 }, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
  .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->m0:Landroid/widget/Button;
    invoke-virtual { v0, p1 }, Landroid/widget/Button;->setEnabled(Z)V
    goto :L5
  :L3
  .line 8
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/z;->F2()V
    goto :L5
  :L4
  .line 9
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/z;->X2()V
  :L5
    return-void
  :L6
  .sparse-switch
    2131296369 -> :L4
    2131296371 -> :L3
    2131296373 -> :L2
    2131296386 -> :L1
    2131296579 -> :L0
  .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
  .registers 3
  .line 1
    invoke-super { p0, p1 }, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->t0:Lcn/manstep/phonemirrorBox/c;
    invoke-virtual { v0, p1 }, Lcn/manstep/phonemirrorBox/c;->e(Landroid/content/res/Configuration;)V
    return-void
.end method

.method public r(I)V
  .registers 5
    const/4 v0, 1
    if-ne p1, v0, :L0
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/x;->i()Z
    move-result p1
    if-eqz p1, :L1
  .line 2
    new-instance p1, Lcn/manstep/phonemirrorBox/util/g$c;
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object v1
    invoke-direct { p1, v1 }, Lcn/manstep/phonemirrorBox/util/g$c;-><init>(Landroid/content/Context;)V
  .line 3
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->d0()Landroid/content/res/Resources;
    move-result-object v1
    const v2, 2131689952
    invoke-virtual { v1, v2 }, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { p1, v1 }, Lcn/manstep/phonemirrorBox/util/g$c;->c(Ljava/lang/String;)Lcn/manstep/phonemirrorBox/util/g$c;
  .line 4
    invoke-virtual { p1, v0 }, Lcn/manstep/phonemirrorBox/util/g$c;->b(Z)Lcn/manstep/phonemirrorBox/util/g$c;
  .line 5
    invoke-virtual { p1, v0 }, Lcn/manstep/phonemirrorBox/util/g$c;->a(Z)Lcn/manstep/phonemirrorBox/util/g$c;
  .line 6
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/util/g$c;->d()Lcn/manstep/phonemirrorBox/util/g;
    move-result-object p1
    invoke-virtual { p1, v0 }, Lcn/manstep/phonemirrorBox/util/g;->b(Z)V
    goto :L1
  :L0
    const/4 v0, 3
    if-ne p1, v0, :L1
  .line 7
    invoke-virtual { p0 }, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;
    move-result-object p1
    const v0, 2131689566
    invoke-static { p1, v0 }, Lcn/manstep/phonemirrorBox/util/c0;->u(Landroid/content/Context;I)V
  :L1
    return-void
.end method

.method public t()V
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->t0:Lcn/manstep/phonemirrorBox/c;
    if-eqz v0, :L0
  .line 2
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/c;->b()V
  :L0
    return-void
.end method

.method public u(Ljava/lang/String;)V
  .registers 7
  .line 1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/z;->H2(Ljava/lang/String;)D
    move-result-wide v0
    const/16 v2, 140
    int-to-double v2, v2
    cmpg-double v4, v0, v2
    if-gtz v4, :L0
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/z;->H2(Ljava/lang/String;)D
    move-result-wide v0
    const-wide/16 v2, 0
    cmpl-double v4, v0, v2
    if-lez v4, :L0
  .line 2
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/z;->C2(Ljava/lang/String;)Z
    move-result v0
    if-nez v0, :L0
  .line 3
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/z;->Z2(Ljava/lang/String;)V
  :L0
    return-void
.end method

.method public v([B)V
  .registers 2
    return-void
.end method

.method public v2(Lcn/manstep/phonemirrorBox/util/p;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->A0:Ljava/util/LinkedList;
    invoke-virtual { v0, p1 }, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    return-void
.end method
