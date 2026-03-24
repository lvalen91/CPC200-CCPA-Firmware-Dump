.class public Lcn/manstep/phonemirrorBox/z;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcn/manstep/phonemirrorBox/BoxInterface/d$g;
.implements Lcn/manstep/phonemirrorBox/c$a;
.implements Lcn/manstep/phonemirrorBox/k0/e$b;
.implements Lcn/manstep/phonemirrorBox/x0/l;


# static fields
.field public static B0:Z


# instance fields
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


# direct methods
.method static constructor <clinit>()V
    .registers 2

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/z;->a0:Z

    const/4 v1, 0x1

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

    const/4 v1, 0x0

    .line 14
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/z;->u0:Ljava/util/List;

    .line 15
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/z;->v0:Lcn/manstep/phonemirrorBox/util/d;

    .line 16
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/z;->w0:Z

    .line 17
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/z;->A0:Ljava/util/LinkedList;

    return-void
.end method

.method private B2()V
    .registers 3

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/util/s;->b()V

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->t0:Lcn/manstep/phonemirrorBox/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/manstep/phonemirrorBox/c;->k(Z)V

    .line 3
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    if-eqz v0, :cond_17

    const/4 v1, 0x2

    .line 5
    invoke-virtual {v0, v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->U0(I)Z

    :cond_17
    return-void
.end method

.method private static C2(Ljava/lang/String;)Z
    .registers 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_2b

    .line 2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 3
    invoke-static {v3}, Lcn/manstep/phonemirrorBox/z;->N2(I)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CustomSubmitProblemDialog codePoint="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_2b
    return v1
.end method

.method private D2(Landroid/net/Uri;Landroid/net/Uri;)V
    .registers 6

    .line 1
    new-instance v0, Lcom/yalantis/ucrop/UCrop$Options;

    invoke-direct {v0}, Lcom/yalantis/ucrop/UCrop$Options;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v1

    const v2, 0x7f06005d

    invoke-static {v1, v2}, Landroidx/core/content/a;->b(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/UCrop$Options;->setToolbarColor(I)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v1

    invoke-static {v1, v2}, Landroidx/core/content/a;->b(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/UCrop$Options;->setStatusBarColor(I)V

    .line 4
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/UCrop$Options;->setCompressionFormat(Landroid/graphics/Bitmap$CompressFormat;)V

    const/16 v1, 0x64

    .line 5
    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/UCrop$Options;->setCompressionQuality(I)V

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/UCrop$Options;->setHideBottomControls(Z)V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v1

    const v2, 0x7f0f01b5

    invoke-static {v1, v2}, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/UCrop$Options;->setToolbarTitle(Ljava/lang/String;)V

    .line 8
    invoke-static {p1, p2}, Lcom/yalantis/ucrop/UCrop;->of(Landroid/net/Uri;Landroid/net/Uri;)Lcom/yalantis/ucrop/UCrop;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    .line 9
    invoke-virtual {p1, p2, p2}, Lcom/yalantis/ucrop/UCrop;->withAspectRatio(FF)Lcom/yalantis/ucrop/UCrop;

    move-result-object p1

    const/16 p2, 0xb4

    .line 10
    invoke-virtual {p1, p2, p2}, Lcom/yalantis/ucrop/UCrop;->withMaxResultSize(II)Lcom/yalantis/ucrop/UCrop;

    move-result-object p1

    .line 11
    invoke-virtual {p1, v0}, Lcom/yalantis/ucrop/UCrop;->withOptions(Lcom/yalantis/ucrop/UCrop$Options;)Lcom/yalantis/ucrop/UCrop;

    move-result-object p1

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/yalantis/ucrop/UCrop;->start(Landroid/app/Activity;)V

    return-void
.end method

.method private E2()V
    .registers 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SettingsFragment,cropSuccess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v2

    check-cast v2, Lcn/manstep/phonemirrorBox/MainActivity;

    iget-boolean v2, v2, Lcn/manstep/phonemirrorBox/MainActivity;->t:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    const-string v2, "CarPlayOEMIconPath"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcn/manstep/phonemirrorBox/b0;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v1

    check-cast v1, Lcn/manstep/phonemirrorBox/MainActivity;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcn/manstep/phonemirrorBox/MainActivity;->t:Z

    .line 5
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 6
    sget-object v1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    if-eqz v1, :cond_55

    .line 7
    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->e()V

    .line 8
    sget-object v1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->b()V

    .line 9
    :cond_55
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/z;->u0:Ljava/util/List;

    if-nez v1, :cond_61

    .line 10
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/z;->y0:Lcn/manstep/phonemirrorBox/x0/k;

    if-eqz v1, :cond_60

    .line 11
    invoke-virtual {v1, v0}, Lcn/manstep/phonemirrorBox/x0/k;->n0(Ljava/lang/String;)V

    :cond_60
    return-void

    .line 12
    :cond_61
    iget-boolean v3, p0, Lcn/manstep/phonemirrorBox/z;->w0:Z

    const v4, 0x7f0f00d4

    if-eqz v3, :cond_7d

    .line 13
    new-instance v3, Lcn/manstep/phonemirrorBox/util/c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v5

    invoke-static {v5, v4}, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v3, v4, v0, v5}, Lcn/manstep/phonemirrorBox/util/c;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_91

    .line 14
    :cond_7d
    new-instance v3, Lcn/manstep/phonemirrorBox/util/c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v5

    invoke-static {v5, v4}, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v3, v4, v0, v5}, Lcn/manstep/phonemirrorBox/util/c;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 15
    :goto_91
    new-instance v1, Lcn/manstep/phonemirrorBox/util/d;

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/z;->u0:Ljava/util/List;

    check-cast v2, Ljava/util/LinkedList;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcn/manstep/phonemirrorBox/util/d;-><init>(Ljava/util/LinkedList;Landroid/content/Context;)V

    iput-object v1, p0, Lcn/manstep/phonemirrorBox/z;->v0:Lcn/manstep/phonemirrorBox/util/d;

    .line 16
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/z;->x0:Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 17
    invoke-direct {p0, v0}, Lcn/manstep/phonemirrorBox/z;->U2(Ljava/lang/String;)V

    return-void
.end method

.method private F2()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->e0:Ljava/lang/String;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/z;->l0:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcn/manstep/phonemirrorBox/z;->G2(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static H2(Ljava/lang/String;)D
    .registers 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 1
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1f

    add-int/lit8 v3, v2, 0x1

    .line 2
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v4, "[\u4e00-\u9fa5]"

    .line 3
    invoke-virtual {v2, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    goto :goto_1c

    :cond_1a
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    :goto_1c
    add-double/2addr v0, v4

    move v2, v3

    goto :goto_3

    .line 4
    :cond_1f
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private I2(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 10
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

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "notes"

    .line 2
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "ro.product.manufacturer"

    const-string v1, ""

    .line 3
    invoke-static {p2, v1}, Lcn/manstep/phonemirrorBox/p;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "ro.board.platform"

    .line 4
    invoke-static {v2, v1}, Lcn/manstep/phonemirrorBox/p;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcn/manstep/phonemirrorBox/p;->k:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcn/manstep/phonemirrorBox/p;->l:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "resolution"

    .line 6
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "manufacturer"

    .line 7
    invoke-interface {v0, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "platform"

    .line 8
    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object p2

    invoke-virtual {p2}, Lcn/manstep/phonemirrorBox/u;->w()Ljava/lang/String;

    move-result-object p2

    const-string v2, "huid"

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "app.log"

    .line 10
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string p2, "model"

    const-string v2, "uuid"

    const-string v3, "version"

    const-string v4, "mfd"

    const-string v5, "android"

    if-eqz p1, :cond_b0

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v5, "yyyyMMddHHmmss"

    invoke-direct {p1, v5, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 14
    new-instance v1, Ljava/util/Date;

    sget-wide v5, Landroid/os/Build;->TIME:J

    invoke-direct {v1, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-interface {v0, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "2025.03.19.1126"

    .line 16
    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/u;->I()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f4

    .line 19
    :cond_b0
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->h()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->h()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->c()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ufn"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->p()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->o()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->i()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_f4
    return-object v0
.end method

.method private J2(Landroid/view/View;)V
    .registers 10

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;

    move-result-object v0

    const-string v1, "CarIconLayout"

    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/util/c0;->k(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_12

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 3
    :cond_12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;

    move-result-object v0

    const-string v1, "imgCurCarLogo"

    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/util/c0;->k(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_26

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/z;->x0:Landroid/widget/ImageView;

    .line 5
    :cond_26
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/z;->x0:Landroid/widget/ImageView;

    if-eqz p1, :cond_1c3

    .line 6
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/z;->u0:Ljava/util/List;

    .line 8
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object p1

    const-string v0, "CarPlayOEMIconPath"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcn/manstep/phonemirrorBox/b0;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SettingsFragment,initCarLogo: oldPath = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 10
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "custom.png"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_d6

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_d6

    const/4 v2, 0x1

    .line 12
    iput-boolean v2, p0, Lcn/manstep/phonemirrorBox/z;->w0:Z

    .line 13
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SettingsFragment,initCarLogo: path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 15
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v2

    const-string v3, "CarPlayOEMIconName"

    invoke-virtual {v2, v3, v1}, Lcn/manstep/phonemirrorBox/b0;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SettingsFragment,initCarLogo: name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b9

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v2

    const v3, 0x7f0f00d4

    invoke-static {v2, v3}, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 19
    :cond_b9
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/z;->u0:Ljava/util/List;

    new-instance v4, Lcn/manstep/phonemirrorBox/util/c;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v4, v2, v0, v5}, Lcn/manstep/phonemirrorBox/util/c;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d6

    .line 21
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/z;->x0:Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 22
    :cond_d6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    :try_start_db
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 24
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "carlogo.json"

    invoke-virtual {v2, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    const-string v5, "utf-8"

    invoke-direct {v4, v2, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 25
    :goto_f5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_ff

    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f5

    .line 27
    :cond_ff
    new-instance v2, Lorg/json/JSONArray;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 28
    :goto_109
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1b4

    .line 29
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "name"

    .line 30
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "riddleAdd"

    .line 31
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1b0

    const-string v5, "riddleDefault"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12b

    goto/16 :goto_1b0

    :cond_12b
    const-string v5, "path"

    .line 32
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "zh-CN"

    .line 33
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 34
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14a

    .line 35
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/z;->x0:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v7

    invoke-static {v7, v5}, Lcn/manstep/phonemirrorBox/util/c0;->g(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_14a
    if-nez v0, :cond_15f

    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15f

    .line 37
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/z;->x0:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v7

    invoke-static {v7, v5}, Lcn/manstep/phonemirrorBox/util/c0;->g(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_15f
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_15f} :catch_1b4

    :cond_15f
    :try_start_15f
    const-string v6, "addCustomLogo"

    .line 38
    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_185

    .line 39
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/z;->u0:Ljava/util/List;

    new-instance v4, Lcn/manstep/phonemirrorBox/util/c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v6

    const v7, 0x7f0f0058

    invoke-static {v6, v7}, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v7

    invoke-static {v7, v5}, Lcn/manstep/phonemirrorBox/util/c0;->g(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {v4, v6, v5, v7}, Lcn/manstep/phonemirrorBox/util/c;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b0

    .line 40
    :cond_185
    invoke-static {}, Lcn/manstep/phonemirrorBox/x;->i()Z

    move-result v6

    if-eqz v6, :cond_19e

    .line 41
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/z;->u0:Ljava/util/List;

    new-instance v6, Lcn/manstep/phonemirrorBox/util/c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v7

    invoke-static {v7, v5}, Lcn/manstep/phonemirrorBox/util/c0;->g(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {v6, v3, v5, v7}, Lcn/manstep/phonemirrorBox/util/c;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b0

    .line 42
    :cond_19e
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/z;->u0:Ljava/util/List;

    new-instance v6, Lcn/manstep/phonemirrorBox/util/c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v7

    invoke-static {v7, v5}, Lcn/manstep/phonemirrorBox/util/c0;->g(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {v6, v4, v5, v7}, Lcn/manstep/phonemirrorBox/util/c;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1b0
    .catch Ljava/lang/Exception; {:try_start_15f .. :try_end_1b0} :catch_1b0

    :catch_1b0
    :cond_1b0
    :goto_1b0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_109

    .line 43
    :catch_1b4
    :cond_1b4
    new-instance p1, Lcn/manstep/phonemirrorBox/util/d;

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->u0:Ljava/util/List;

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcn/manstep/phonemirrorBox/util/d;-><init>(Ljava/util/LinkedList;Landroid/content/Context;)V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/z;->v0:Lcn/manstep/phonemirrorBox/util/d;

    :cond_1c3
    return-void
.end method

.method private K2(Landroid/view/View;)V
    .registers 3

    const v0, 0x7f090143

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_e

    .line 2
    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_e
    return-void
.end method

.method private L2()V
    .registers 4

    const-string v0, "SettingsFragment"

    const-string v1, "installApk: ######"

    .line 1
    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_52

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->J1()Landroidx/fragment/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result v0

    if-nez v0, :cond_45

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->J1()Landroidx/fragment/app/e;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 5
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.MANAGE_UNKNOWN_APP_SOURCES"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v0, 0x3

    .line 6
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->c2(Landroid/content/Intent;I)V

    goto :goto_5e

    .line 7
    :cond_45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->J()Landroidx/fragment/app/n;

    move-result-object v0

    new-instance v2, Lcn/manstep/phonemirrorBox/z$c;

    invoke-direct {v2, p0}, Lcn/manstep/phonemirrorBox/z$c;-><init>(Lcn/manstep/phonemirrorBox/z;)V

    invoke-static {v0, v2, v1}, Lcn/manstep/phonemirrorBox/k0/a;->D2(Landroidx/fragment/app/n;Landroid/view/View$OnClickListener;Z)V

    goto :goto_5e

    .line 8
    :cond_52
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->J()Landroidx/fragment/app/n;

    move-result-object v0

    new-instance v2, Lcn/manstep/phonemirrorBox/z$d;

    invoke-direct {v2, p0}, Lcn/manstep/phonemirrorBox/z$d;-><init>(Lcn/manstep/phonemirrorBox/z;)V

    invoke-static {v0, v2, v1}, Lcn/manstep/phonemirrorBox/k0/a;->D2(Landroidx/fragment/app/n;Landroid/view/View$OnClickListener;Z)V

    :goto_5e
    return-void
.end method

.method private static N2(I)Z
    .registers 2

    const/16 v0, 0x2600

    if-lt p0, v0, :cond_8

    const/16 v0, 0x27bf

    if-le p0, v0, :cond_7d

    :cond_8
    const/16 v0, 0x303d

    if-eq p0, v0, :cond_7d

    const/16 v0, 0x2049

    if-eq p0, v0, :cond_7d

    const/16 v0, 0x203c

    if-eq p0, v0, :cond_7d

    const/16 v0, 0x2000

    if-lt p0, v0, :cond_1c

    const/16 v0, 0x200f

    if-le p0, v0, :cond_7d

    :cond_1c
    const/16 v0, 0x2028

    if-lt p0, v0, :cond_24

    const/16 v0, 0x202f

    if-le p0, v0, :cond_7d

    :cond_24
    const/16 v0, 0x205f

    if-eq p0, v0, :cond_7d

    const/16 v0, 0x2065

    if-lt p0, v0, :cond_30

    const/16 v0, 0x206f

    if-le p0, v0, :cond_7d

    :cond_30
    const/16 v0, 0x2100

    if-lt p0, v0, :cond_38

    const/16 v0, 0x214f

    if-le p0, v0, :cond_7d

    :cond_38
    const/16 v0, 0x2300

    if-lt p0, v0, :cond_40

    const/16 v0, 0x23ff

    if-le p0, v0, :cond_7d

    :cond_40
    const/16 v0, 0x2b00

    if-lt p0, v0, :cond_48

    const/16 v0, 0x2bff

    if-le p0, v0, :cond_7d

    :cond_48
    const/16 v0, 0x2900

    if-lt p0, v0, :cond_50

    const/16 v0, 0x297f

    if-le p0, v0, :cond_7d

    :cond_50
    const/16 v0, 0x3200

    if-lt p0, v0, :cond_58

    const/16 v0, 0x32ff

    if-le p0, v0, :cond_7d

    :cond_58
    const v0, 0xd800

    if-lt p0, v0, :cond_62

    const v0, 0xdfff

    if-le p0, v0, :cond_7d

    :cond_62
    const v0, 0xe000

    if-lt p0, v0, :cond_6c

    const v0, 0xf8ff

    if-le p0, v0, :cond_7d

    :cond_6c
    const v0, 0xfe00

    if-lt p0, v0, :cond_76

    const v0, 0xfe0f

    if-le p0, v0, :cond_7d

    :cond_76
    const/high16 v0, 0x10000

    if-lt p0, v0, :cond_7b

    goto :goto_7d

    :cond_7b
    const/4 p0, 0x0

    goto :goto_7e

    :cond_7d
    :goto_7d
    const/4 p0, 0x1

    :goto_7e
    return p0
.end method

.method private O2()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->r0:Landroid/widget/TextView;

    if-eqz v0, :cond_22

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v1

    const v2, 0x7f0f0006

    invoke-static {v1, v2}, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const v1, 0x800005

    .line 4
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 5
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/z;->r0:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    :cond_22
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->y0:Lcn/manstep/phonemirrorBox/x0/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/manstep/phonemirrorBox/x0/k;->j0(I)V

    return-void
.end method

.method private P2()V
    .registers 3

    .line 1
    new-instance v0, Lcn/manstep/phonemirrorBox/k0/e$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/manstep/phonemirrorBox/k0/e$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f01f1

    invoke-virtual {v0, v1}, Lcn/manstep/phonemirrorBox/k0/e$a;->b(I)Lcn/manstep/phonemirrorBox/k0/e$a;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/k0/e$a;->a()Lcn/manstep/phonemirrorBox/k0/e;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Lcn/manstep/phonemirrorBox/k0/e;->i(Lcn/manstep/phonemirrorBox/k0/e$b;)V

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 4
    sget-boolean v0, Lcn/manstep/phonemirrorBox/util/s;->a:Z

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/z;->d0:Z

    .line 6
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/z;->B2()V

    .line 7
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/z;->y0:Lcn/manstep/phonemirrorBox/x0/k;

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/x0/k;->p()V

    if-eqz v0, :cond_35

    .line 8
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/manstep/phonemirrorBox/z$f;

    invoke-direct {v1, p0}, Lcn/manstep/phonemirrorBox/z$f;-><init>(Lcn/manstep/phonemirrorBox/z;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 9
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_35
    return-void
.end method

.method private Q2()V
    .registers 5

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lcn/manstep/phonemirrorBox/z;->B0:Z

    .line 2
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/z;->m0:Landroid/widget/Button;

    if-eqz v1, :cond_18

    .line 3
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/z;->a0:Z

    .line 4
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcn/manstep/phonemirrorBox/z$g;

    invoke-direct {v1, p0}, Lcn/manstep/phonemirrorBox/z$g;-><init>(Lcn/manstep/phonemirrorBox/z;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_18
    return-void
.end method

.method private R2()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->m0:Landroid/widget/Button;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v1

    const v2, 0x7f0f009a

    invoke-static {v1, v2}, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->m0:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->q0:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->o0:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->r0:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->p0:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->t0:Lcn/manstep/phonemirrorBox/c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v1

    const v2, 0x7f0f0194

    invoke-static {v1, v2}, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcn/manstep/phonemirrorBox/c;->m(ZLjava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->t0:Lcn/manstep/phonemirrorBox/c;

    const-string v1, ""

    invoke-virtual {v0, v2, v1}, Lcn/manstep/phonemirrorBox/c;->n(ZLjava/lang/String;)V

    return-void
.end method

.method private T2(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "err"

    .line 2
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_26

    :catch_c
    move-exception p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SettingsFragment,onUploadFileSuccess: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_26
    if-nez p1, :cond_36

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object p1

    const v0, 0x7f0f0146

    invoke-static {p1, v0}, Lcn/manstep/phonemirrorBox/widget/a;->a(Landroid/content/Context;I)V

    .line 5
    invoke-static {p2}, Lcn/manstep/phonemirrorBox/util/n;->f(Ljava/lang/String;)Z

    goto :goto_83

    .line 6
    :cond_36
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0f0147

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "("

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcn/manstep/phonemirrorBox/widget/a;->b(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SettingsFragment,onUploadFileSuccess: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 9
    :goto_83
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/z;->n0:Landroid/widget/Button;

    const p2, 0x7f0f00a0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    .line 10
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/z;->n0:Landroid/widget/Button;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private U2(Ljava/lang/String;)V
    .registers 6

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v1

    const v2, 0x7f0f011e

    invoke-static {v1, v2}, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->d0()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0702b7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextSize(F)V

    .line 5
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v2

    const v3, 0x7f0f01a3

    invoke-static {v2, v3}, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v2

    const v3, 0x7f0f00a6

    invoke-static {v2, v3}, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcn/manstep/phonemirrorBox/z$a;

    invoke-direct {v3, p0}, Lcn/manstep/phonemirrorBox/z$a;-><init>(Lcn/manstep/phonemirrorBox/z;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 9
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 10
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 11
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const/4 v2, -0x1

    .line 12
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Lcn/manstep/phonemirrorBox/z$b;

    invoke-direct {v3, p0, v1, p1, v0}, Lcn/manstep/phonemirrorBox/z$b;-><init>(Lcn/manstep/phonemirrorBox/z;Landroid/widget/EditText;Ljava/lang/String;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private V2()V
    .registers 7

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    const-string v1, "AppLatestVer"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcn/manstep/phonemirrorBox/b0;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SettingsFragment,showAppNewVerInfo: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/manstep/phonemirrorBox/z;->h0:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/z;->h0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_33

    .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->h0:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_34

    :cond_33
    const/4 v0, 0x0

    .line 5
    :goto_34
    iget-boolean v4, p0, Lcn/manstep/phonemirrorBox/z;->a0:Z

    if-nez v4, :cond_39

    const/4 v0, 0x1

    :cond_39
    const/16 v4, 0x8

    if-nez v0, :cond_5d

    .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->m0:Landroid/widget/Button;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v1

    const v5, 0x7f0f0096

    invoke-static {v1, v5}, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->q0:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->o0:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->t0:Lcn/manstep/phonemirrorBox/c;

    invoke-virtual {v0, v3, v2}, Lcn/manstep/phonemirrorBox/c;->m(ZLjava/lang/String;)V

    return-void

    .line 10
    :cond_5d
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->q0:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/z;->j0:Z

    if-eqz v0, :cond_a4

    .line 12
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->o0:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->i0:Ljava/lang/String;

    const-string v2, "\n"

    const-string v3, "\n\t\t"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v4

    const v5, 0x7f0f0207

    invoke-static {v4, v5}, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/z;->q0:Landroid/widget/TextView;

    iget-object v3, p0, Lcn/manstep/phonemirrorBox/z;->s0:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 16
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/z;->q0:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/z;->t0:Lcn/manstep/phonemirrorBox/c;

    invoke-virtual {v2, v1, v0}, Lcn/manstep/phonemirrorBox/c;->m(ZLjava/lang/String;)V

    goto :goto_df

    .line 18
    :cond_a4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->o0:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutoKit "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v1

    const v2, 0x7f0f0140

    invoke-static {v1, v2}, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 20
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/z;->q0:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 21
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const v2, 0x800003

    .line 22
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 23
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/z;->q0:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/z;->t0:Lcn/manstep/phonemirrorBox/c;

    invoke-virtual {v1, v3, v0}, Lcn/manstep/phonemirrorBox/c;->m(ZLjava/lang/String;)V

    :goto_df
    return-void
.end method

.method private W2()V
    .registers 7

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    const-string v1, "BoxLatestVer"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcn/manstep/phonemirrorBox/b0;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/z;->e0:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_2f

    .line 3
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->e0:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 5
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    iget-object v5, p0, Lcn/manstep/phonemirrorBox/z;->e0:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2d
    const/4 v0, 0x1

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    .line 6
    :goto_30
    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/z;->a0:Z

    if-nez v1, :cond_35

    const/4 v0, 0x1

    .line 7
    :cond_35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SettingsFragment,showBoxNewVerInfo: bNeedShow = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mIsNewBox = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcn/manstep/phonemirrorBox/z;->k0:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    const/16 v1, 0x8

    if-nez v0, :cond_77

    .line 8
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->m0:Landroid/widget/Button;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v3

    const v5, 0x7f0f0096

    invoke-static {v3, v5}, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->r0:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->p0:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->t0:Lcn/manstep/phonemirrorBox/c;

    invoke-virtual {v0, v4, v2}, Lcn/manstep/phonemirrorBox/c;->n(ZLjava/lang/String;)V

    return-void

    .line 12
    :cond_77
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->r0:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z

    move-result v0

    const v2, 0x7f0f0006

    if-nez v0, :cond_9c

    .line 14
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->p0:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->t0:Lcn/manstep/phonemirrorBox/c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v1

    invoke-static {v1, v2}, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcn/manstep/phonemirrorBox/c;->n(ZLjava/lang/String;)V

    .line 16
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/z;->O2()V

    goto/16 :goto_133

    .line 17
    :cond_9c
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/z;->k0:Z

    if-eqz v0, :cond_de

    .line 18
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->p0:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 19
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->f0:Ljava/lang/String;

    const-string v1, "\n"

    const-string v2, "\n\t\t"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v4

    const v5, 0x7f0f0207

    invoke-static {v4, v5}, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 21
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/z;->r0:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/z;->s0:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 22
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/z;->r0:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/z;->t0:Lcn/manstep/phonemirrorBox/c;

    invoke-virtual {v1, v3, v0}, Lcn/manstep/phonemirrorBox/c;->n(ZLjava/lang/String;)V

    goto :goto_133

    .line 24
    :cond_de
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->p0:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 25
    sget-object v0, Lcn/manstep/phonemirrorBox/p;->b:Ljava/lang/String;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/p;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_106

    .line 26
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->r0:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v1

    invoke-static {v1, v2}, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->t0:Lcn/manstep/phonemirrorBox/c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v1

    invoke-static {v1, v2}, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcn/manstep/phonemirrorBox/c;->n(ZLjava/lang/String;)V

    goto :goto_123

    .line 28
    :cond_106
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->r0:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v1

    const v2, 0x7f0f008c

    invoke-static {v1, v2}, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->t0:Lcn/manstep/phonemirrorBox/c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v1

    invoke-static {v1, v2}, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcn/manstep/phonemirrorBox/c;->n(ZLjava/lang/String;)V

    .line 30
    :goto_123
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const v1, 0x800005

    .line 31
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 32
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/z;->r0:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_133
    return-void
.end method

.method private X2()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/c0;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SettingsFragment,upgradeApp: filePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_63

    .line 5
    invoke-static {v1}, Lcn/manstep/phonemirrorBox/util/c0;->j(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SettingsFragment,upgradeApp: Client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", Server: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/manstep/phonemirrorBox/z;->g0:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/z;->g0:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/z;->h0:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcn/manstep/phonemirrorBox/z;->w2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 8
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/z;->L2()V

    .line 9
    :cond_60
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/n;->f(Ljava/lang/String;)Z

    .line 10
    :cond_63
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/z;->t0:Lcn/manstep/phonemirrorBox/c;

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/c;->o()V

    .line 11
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 12
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/z;->h0:Ljava/lang/String;

    const-string v3, "ver"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/z;->g0:Ljava/lang/String;

    const-string v3, "id"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v2, Lcn/manstep/phonemirrorBox/util/p;

    const/16 v3, 0x1e

    invoke-direct {v2, v3}, Lcn/manstep/phonemirrorBox/util/p;-><init>(I)V

    .line 15
    invoke-virtual {p0, v2}, Lcn/manstep/phonemirrorBox/z;->v2(Lcn/manstep/phonemirrorBox/util/p;)V

    .line 16
    new-instance v3, Lcn/manstep/phonemirrorBox/z$m;

    invoke-direct {v3, p0}, Lcn/manstep/phonemirrorBox/z$m;-><init>(Lcn/manstep/phonemirrorBox/z;)V

    const-string v4, "/a/upgrade/down"

    invoke-virtual {v2, v4, v1, v0, v3}, Lcn/manstep/phonemirrorBox/util/p;->d(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcn/manstep/phonemirrorBox/util/p$f;)V

    return-void
.end method

.method private Y2()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_93

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_16

    goto/16 :goto_93

    .line 3
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/Auto_Box_Update.img"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_93

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_3d

    goto :goto_93

    .line 6
    :cond_3d
    :try_start_3d
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v0

    const/high16 v2, 0x3200000

    if-le v0, v2, :cond_62

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SettingsFragment,upgradeBox: The upgrade file is too large. size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-void

    .line 10
    :cond_62
    new-array v2, v0, [B

    const/4 v3, 0x0

    .line 11
    invoke-virtual {v1, v2, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 12
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    if-ne v3, v0, :cond_93

    const-string v0, "/tmp/Auto_Box_Update.img\u0000"

    .line 13
    sget-object v1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    if-eqz v1, :cond_93

    .line 14
    sget-object v1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-virtual {v1, v0, v2}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->w1(Ljava/lang/String;[B)Z
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_79} :catch_7a

    goto :goto_93

    :catch_7a
    move-exception v0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SettingsFragment,upgradeBox: \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    :cond_93
    :goto_93
    return-void
.end method

.method private Z2(Ljava/lang/String;)V
    .registers 17

    move-object v6, p0

    move-object/from16 v7, p1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uploadAppLog: ########"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcn/manstep/phonemirrorBox/util/s;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsFragment"

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/n;->p(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_29

    const/4 v3, 0x0

    goto :goto_2a

    :cond_29
    const/4 v3, 0x1

    .line 3
    :goto_2a
    sget-object v4, Lcn/manstep/phonemirrorBox/p;->e:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v1, v4

    if-eqz v1, :cond_4a

    .line 4
    new-instance v4, Ljava/io/File;

    sget-object v5, Lcn/manstep/phonemirrorBox/p;->e:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_48

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4a

    :cond_48
    const/4 v4, 0x0

    goto :goto_4b

    :cond_4a
    move v4, v1

    :goto_4b
    const v1, 0x7f0f019c

    if-nez v3, :cond_58

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v0

    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/widget/a;->a(Landroid/content/Context;I)V

    return-void

    .line 7
    :cond_58
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/n;->h(Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_66

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v0

    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/widget/a;->a(Landroid/content/Context;I)V

    return-void

    .line 9
    :cond_66
    iget-object v0, v6, Lcn/manstep/phonemirrorBox/z;->n0:Landroid/widget/Button;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v1

    const v3, 0x7f0f00a1

    invoke-static {v1, v3}, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, v6, Lcn/manstep/phonemirrorBox/z;->n0:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 11
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".xlog"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "app.log"

    const-string v3, "app.xlog"

    if-eqz v0, :cond_8c

    goto :goto_9a

    :cond_8c
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v8, ".bs64"

    invoke-virtual {v0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_99

    goto :goto_9a

    :cond_99
    move-object v3, v1

    .line 12
    :goto_9a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object v8

    invoke-virtual {v8}, Lcn/manstep/phonemirrorBox/u;->I()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xc

    invoke-virtual {v8, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 13
    invoke-direct {p0, v1, v7}, Lcn/manstep/phonemirrorBox/z;->I2(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v14

    .line 14
    new-instance v8, Lcn/manstep/phonemirrorBox/util/p;

    const/16 v0, 0x1e

    invoke-direct {v8, v0}, Lcn/manstep/phonemirrorBox/util/p;-><init>(I)V

    .line 15
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcn/manstep/phonemirrorBox/z$k;

    move-object v0, v13

    move-object v1, p0

    move v2, v4

    move-object/from16 v3, p1

    move-object v4, v8

    invoke-direct/range {v0 .. v5}, Lcn/manstep/phonemirrorBox/z$k;-><init>(Lcn/manstep/phonemirrorBox/z;ZLjava/lang/String;Lcn/manstep/phonemirrorBox/util/p;Ljava/io/File;)V

    const-string v9, "/a/upload/log"

    move-object v10, v14

    invoke-virtual/range {v8 .. v13}, Lcn/manstep/phonemirrorBox/util/p;->o(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcn/manstep/phonemirrorBox/util/p$e;)V

    .line 16
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 17
    iget-object v0, v6, Lcn/manstep/phonemirrorBox/z;->t0:Lcn/manstep/phonemirrorBox/c;

    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lcn/manstep/phonemirrorBox/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_fd

    .line 18
    :cond_f0
    iget-object v0, v6, Lcn/manstep/phonemirrorBox/z;->t0:Lcn/manstep/phonemirrorBox/c;

    const-string v1, "uuid"

    invoke-interface {v14, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, v7}, Lcn/manstep/phonemirrorBox/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_fd
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
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/z;->Y2()V

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
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/z;->L2()V

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
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/z;->y2()V

    return-void
.end method

.method static synthetic o2(Lcn/manstep/phonemirrorBox/z;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/z;->x2(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic p2(Lcn/manstep/phonemirrorBox/z;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/z;->R2()V

    return-void
.end method

.method static synthetic q2(Lcn/manstep/phonemirrorBox/z;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/z;->z2(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic r2(Lcn/manstep/phonemirrorBox/z;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/manstep/phonemirrorBox/z;->I2(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic s2(Lcn/manstep/phonemirrorBox/z;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/manstep/phonemirrorBox/z;->T2(Ljava/lang/String;Ljava/lang/String;)V

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
    .registers 11

    const-string v0, ","

    const/4 v1, 0x1

    if-nez p1, :cond_6

    return v1

    .line 1
    :cond_6
    :try_start_6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2
    invoke-virtual {v2, p3, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p3

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz p3, :cond_8c

    if-eqz v3, :cond_8c

    .line 4
    iget-object v5, p3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 5
    iget-object p3, p3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, p3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    .line 6
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SettingsFragment,checkApk: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "--"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_64

    return v4

    .line 10
    :cond_64
    invoke-virtual {v5, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_71

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6e} :catch_73

    if-eqz p1, :cond_71

    goto :goto_72

    :cond_71
    const/4 v1, 0x0

    :goto_72
    return v1

    :catch_73
    move-exception p1

    .line 11
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SettingsFragment,checkApk: \n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    :cond_8c
    return v1
.end method

.method private x2(Ljava/lang/String;)V
    .registers 7

    const-string v0, "2025.03.19.1126"

    const-string v1, "cku"

    .line 1
    :try_start_4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_18

    .line 3
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_18

    .line 4
    sput-boolean v4, Lcn/manstep/phonemirrorBox/p;->B:Z

    :cond_18
    const-string v1, "token"

    .line 5
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcn/manstep/phonemirrorBox/util/p;->f:Ljava/lang/String;

    const-string v1, "ver"

    .line 6
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_42

    const-string v0, "id"

    .line 8
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/z;->g0:Ljava/lang/String;

    const-string v0, "notes"

    .line 9
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/z;->i0:Ljava/lang/String;

    .line 10
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/z;->h0:Ljava/lang/String;

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/z;->j0:Z

    goto :goto_68

    .line 12
    :cond_42
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/z;->h0:Ljava/lang/String;

    .line 13
    iput-boolean v4, p0, Lcn/manstep/phonemirrorBox/z;->j0:Z
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_46} :catch_47

    goto :goto_68

    :catch_47
    move-exception v0

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SettingsFragment,checkAppVer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 15
    :goto_68
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/z;->V2()V

    return-void
.end method

.method private y2()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 2
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_19

    return-void

    .line 3
    :cond_19
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_a5

    .line 4
    new-instance v0, Ljava/util/HashMap;

    const/4 v2, 0x7

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/manstep/phonemirrorBox/x;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lang"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "code"

    const-string v2, "37"

    .line 7
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appVer"

    const-string v2, "2025.03.19.1126"

    .line 8
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ver"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->o()Ljava/lang/String;

    move-result-object v1

    const-string v2, "uuid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mfd"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fwn"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "model"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v1, Lcn/manstep/phonemirrorBox/util/p;

    invoke-direct {v1}, Lcn/manstep/phonemirrorBox/util/p;-><init>()V

    .line 15
    new-instance v2, Lcn/manstep/phonemirrorBox/z$j;

    invoke-direct {v2, p0}, Lcn/manstep/phonemirrorBox/z$j;-><init>(Lcn/manstep/phonemirrorBox/z;)V

    const-string v3, "/a/upgrade/checkBox"

    invoke-virtual {v1, v3, v0, v2}, Lcn/manstep/phonemirrorBox/util/p;->j(Ljava/lang/String;Ljava/util/Map;Lcn/manstep/phonemirrorBox/util/p$e;)V

    goto :goto_cd

    .line 16
    :cond_a5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->p0:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 17
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/z;->a0:Z

    if-eqz v0, :cond_b4

    .line 18
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->r0:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_cd

    .line 19
    :cond_b4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->r0:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/z;->O2()V

    .line 21
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->t0:Lcn/manstep/phonemirrorBox/c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v2

    const v3, 0x7f0f0006

    invoke-static {v2, v3}, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/manstep/phonemirrorBox/c;->n(ZLjava/lang/String;)V

    :goto_cd
    return-void
.end method

.method private z2(Ljava/lang/String;)V
    .registers 5

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "token"

    .line 2
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcn/manstep/phonemirrorBox/util/p;->f:Ljava/lang/String;

    const-string p1, "ver"

    .line 3
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SettingsFragment,checkBoxVer: new:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", old:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;

    move-result-object v2

    invoke-virtual {v2}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_5b

    const-string v1, "id"

    .line 6
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/manstep/phonemirrorBox/z;->l0:Ljava/lang/String;

    const-string v1, "notes"

    .line 7
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/z;->f0:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/z;->e0:Ljava/lang/String;

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/z;->k0:Z

    goto :goto_82

    .line 10
    :cond_5b
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e()Lcn/manstep/phonemirrorBox/BoxInterface/c;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/c;->p()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/z;->e0:Ljava/lang/String;

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/z;->k0:Z
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_68} :catch_69

    goto :goto_82

    :catch_69
    move-exception p1

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SettingsFragment,checkBoxVer: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 13
    :goto_82
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/z;->W2()V

    return-void
.end method


# virtual methods
.method public A2()V
    .registers 5

    const-string v0, "SettingsFragment,checkUpdate: ======"

    .line 1
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->q0()Z

    move-result v0

    if-eqz v0, :cond_9b

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->d0()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1a

    goto/16 :goto_9b

    .line 3
    :cond_1a
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/manstep/phonemirrorBox/x;->c()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "lang"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "code"

    const-string v3, "37"

    .line 5
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ver"

    const-string v3, "2025.03.19.1126"

    .line 6
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;

    move-result-object v1

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/u;->I()Ljava/lang/String;

    move-result-object v1

    const-string v3, "uuid"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcn/manstep/phonemirrorBox/p;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcn/manstep/phonemirrorBox/p;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "r"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "m"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {}, Lcn/manstep/phonemirrorBox/MyApplication;->b()Lcn/manstep/phonemirrorBox/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pkg"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v1, Lcn/manstep/phonemirrorBox/util/p;

    invoke-direct {v1}, Lcn/manstep/phonemirrorBox/util/p;-><init>()V

    .line 12
    new-instance v2, Lcn/manstep/phonemirrorBox/z$i;

    invoke-direct {v2, p0}, Lcn/manstep/phonemirrorBox/z$i;-><init>(Lcn/manstep/phonemirrorBox/z;)V

    const-string v3, "/a/upgrade/checkApp"

    invoke-virtual {v1, v3, v0, v2}, Lcn/manstep/phonemirrorBox/util/p;->j(Ljava/lang/String;Ljava/util/Map;Lcn/manstep/phonemirrorBox/util/p$e;)V

    .line 13
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/z;->y2()V

    :cond_9b
    :goto_9b
    return-void
.end method

.method public C0(IILandroid/content/Intent;)V
    .registers 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SettingsFragment,onActivityResult: requestCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    const-string v0, "custom.png"

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_3e

    if-ne p2, v1, :cond_ad

    .line 2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 3
    new-instance p2, Ljava/io/File;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object p3

    invoke-direct {p2, p3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    .line 4
    invoke-direct {p0, p1, p2}, Lcn/manstep/phonemirrorBox/z;->D2(Landroid/net/Uri;Landroid/net/Uri;)V

    goto/16 :goto_ad

    :cond_3e
    const/4 v2, 0x2

    if-ne p1, v2, :cond_99

    if-ne p2, v1, :cond_ad

    const/4 p1, 0x0

    const-string p2, "ImagePath"

    .line 5
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_86

    .line 6
    new-instance p3, Ljava/io/File;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {p3, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-virtual {p3}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 8
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 9
    :cond_69
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_79

    .line 10
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/z;->x0:Landroid/widget/ImageView;

    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_86

    .line 11
    :cond_79
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/z;->x0:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object p3

    invoke-static {p3, p2}, Lcn/manstep/phonemirrorBox/util/c0;->g(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 12
    :cond_86
    :goto_86
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z

    move-result p1

    if-eqz p1, :cond_ad

    .line 13
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    if-eqz p1, :cond_ad

    .line 14
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->e()V

    .line 15
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->b()V

    goto :goto_ad

    :cond_99
    const/4 p3, 0x3

    if-ne p1, p3, :cond_ad

    if-ne p2, v1, :cond_ad

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcn/manstep/phonemirrorBox/util/c0;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/manstep/phonemirrorBox/util/c0;->o(Landroid/content/Context;Ljava/lang/String;)V

    :cond_ad
    :goto_ad
    return-void
.end method

.method public G2(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SettingsFragment,downloadBoxImg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9d

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_9d

    .line 3
    :cond_29
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->t0:Lcn/manstep/phonemirrorBox/c;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/c;->o()V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_9d

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_43

    goto :goto_9d

    .line 6
    :cond_43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/Auto_Box_Update.img"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_66

    .line 9
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 10
    :cond_66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SettingsFragment,downloadBoxImg: imgPath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 11
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "ver"

    .line 12
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "id"

    .line 13
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance p1, Lcn/manstep/phonemirrorBox/util/p;

    const/16 p2, 0x1e

    invoke-direct {p1, p2}, Lcn/manstep/phonemirrorBox/util/p;-><init>(I)V

    .line 15
    invoke-virtual {p0, p1}, Lcn/manstep/phonemirrorBox/z;->v2(Lcn/manstep/phonemirrorBox/util/p;)V

    .line 16
    new-instance p2, Lcn/manstep/phonemirrorBox/z$l;

    invoke-direct {p2, p0}, Lcn/manstep/phonemirrorBox/z$l;-><init>(Lcn/manstep/phonemirrorBox/z;)V

    const-string v2, "/a/upgrade/down"

    invoke-virtual {p1, v2, v1, v0, p2}, Lcn/manstep/phonemirrorBox/util/p;->d(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcn/manstep/phonemirrorBox/util/p$f;)V

    :cond_9d
    :goto_9d
    return-void
.end method

.method public L0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    const-string p3, "SettingsFragment,onCreateView: ######"

    .line 1
    invoke-static {p3}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    new-instance p3, Lcn/manstep/phonemirrorBox/a0;

    invoke-direct {p3, p0}, Lcn/manstep/phonemirrorBox/a0;-><init>(Lcn/manstep/phonemirrorBox/z;)V

    iput-object p3, p0, Lcn/manstep/phonemirrorBox/z;->t0:Lcn/manstep/phonemirrorBox/c;

    .line 3
    new-instance p3, Landroidx/lifecycle/w$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v0

    if-nez v0, :cond_16

    const/4 v0, 0x0

    goto :goto_1e

    :cond_16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    :goto_1e
    invoke-direct {p3, v0}, Landroidx/lifecycle/w$a;-><init>(Landroid/app/Application;)V

    .line 4
    new-instance v0, Landroidx/lifecycle/w;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Landroidx/lifecycle/w;-><init>(Landroidx/lifecycle/y;Landroidx/lifecycle/w$b;)V

    const-class v1, Lcn/manstep/phonemirrorBox/x0/k;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;

    move-result-object v0

    check-cast v0, Lcn/manstep/phonemirrorBox/x0/k;

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/z;->y0:Lcn/manstep/phonemirrorBox/x0/k;

    .line 5
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/x0/k;->Z()V

    const v0, 0x7f0c0050

    const/4 v1, 0x0

    .line 6
    invoke-static {p1, v0, p2, v1}, Landroidx/databinding/f;->e(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcn/manstep/phonemirrorBox/i0/s;

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/z;->z0:Lcn/manstep/phonemirrorBox/i0/s;

    .line 7
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->t()Landroid/view/View;

    move-result-object p1

    .line 8
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/z;->z0:Lcn/manstep/phonemirrorBox/i0/s;

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->y0:Lcn/manstep/phonemirrorBox/x0/k;

    invoke-virtual {p2, v0}, Lcn/manstep/phonemirrorBox/i0/s;->M(Lcn/manstep/phonemirrorBox/x0/k;)V

    .line 9
    new-instance p2, Landroidx/lifecycle/w;

    invoke-direct {p2, p0, p3}, Landroidx/lifecycle/w;-><init>(Landroidx/lifecycle/y;Landroidx/lifecycle/w$b;)V

    const-class p3, Lcn/manstep/phonemirrorBox/x0/i;

    invoke-virtual {p2, p3}, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;

    move-result-object p2

    check-cast p2, Lcn/manstep/phonemirrorBox/x0/i;

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcn/manstep/phonemirrorBox/x0/i;->F(Landroidx/fragment/app/n;)V

    .line 11
    iget-object p3, p0, Lcn/manstep/phonemirrorBox/z;->z0:Lcn/manstep/phonemirrorBox/i0/s;

    invoke-virtual {p3, p2}, Lcn/manstep/phonemirrorBox/i0/s;->L(Lcn/manstep/phonemirrorBox/x0/i;)V

    .line 12
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/z;->z0:Lcn/manstep/phonemirrorBox/i0/s;

    invoke-virtual {p2, p0}, Landroidx/databinding/ViewDataBinding;->G(Landroidx/lifecycle/j;)V

    .line 13
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/z;->y0:Lcn/manstep/phonemirrorBox/x0/k;

    invoke-virtual {p2, p0}, Lcn/manstep/phonemirrorBox/x0/k;->m0(Lcn/manstep/phonemirrorBox/x0/l;)V

    .line 14
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/z;->y0:Lcn/manstep/phonemirrorBox/x0/k;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcn/manstep/phonemirrorBox/x0/k;->r0(Landroidx/fragment/app/n;)V

    .line 15
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/z;->J2(Landroid/view/View;)V

    .line 16
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/z;->K2(Landroid/view/View;)V

    const p2, 0x7f090082

    .line 17
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcn/manstep/phonemirrorBox/z;->n0:Landroid/widget/Button;

    if-eqz p2, :cond_98

    .line 18
    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_98
    const p2, 0x7f090075

    .line 19
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcn/manstep/phonemirrorBox/z;->m0:Landroid/widget/Button;

    if-eqz p2, :cond_a8

    .line 20
    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a8
    const p2, 0x7f090071

    .line 21
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcn/manstep/phonemirrorBox/z;->o0:Landroid/widget/Button;

    if-eqz p2, :cond_d9

    .line 22
    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "AutoKit "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object p3

    const v0, 0x7f0f009f

    invoke-static {p3, v0}, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 24
    iget-object p3, p0, Lcn/manstep/phonemirrorBox/z;->o0:Landroid/widget/Button;

    invoke-virtual {p3, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_d9
    const p2, 0x7f090073

    .line 25
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcn/manstep/phonemirrorBox/z;->p0:Landroid/widget/Button;

    if-eqz p2, :cond_e9

    .line 26
    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_e9
    const p2, 0x7f09027e

    .line 27
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcn/manstep/phonemirrorBox/z;->q0:Landroid/widget/TextView;

    const p2, 0x7f090280

    .line 28
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcn/manstep/phonemirrorBox/z;->r0:Landroid/widget/TextView;

    if-eqz p2, :cond_107

    .line 29
    invoke-virtual {p2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcn/manstep/phonemirrorBox/z;->s0:Landroid/content/res/ColorStateList;

    :cond_107
    const p2, 0x7f09029a

    .line 30
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_11f

    .line 31
    sget-object p3, Lcn/manstep/phonemirrorBox/p;->a:Ljava/lang/String;

    const-string v0, "VER:"

    const-string v2, ""

    invoke-virtual {p3, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    :cond_11f
    invoke-static {p0}, Lcn/manstep/phonemirrorBox/v0/e;->M(Lcn/manstep/phonemirrorBox/BoxInterface/d$g;)Lcn/manstep/phonemirrorBox/BoxInterface/d;

    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;

    move-result-object p2

    const-string p3, "keyLearnLayout"

    invoke-static {p2, p3}, Lcn/manstep/phonemirrorBox/util/c0;->k(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_139

    .line 34
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    if-eqz p2, :cond_139

    .line 35
    invoke-virtual {p2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    :cond_139
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/z;->t0:Lcn/manstep/phonemirrorBox/c;

    invoke-virtual {p2, p1}, Lcn/manstep/phonemirrorBox/c;->d(Landroid/view/View;)V

    .line 37
    invoke-virtual {p0, v1}, Lcn/manstep/phonemirrorBox/z;->R0(Z)V

    return-object p1
.end method

.method public M0()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->u0:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/z;->u0:Ljava/util/List;

    .line 4
    :cond_a
    invoke-static {p0}, Lcn/manstep/phonemirrorBox/v0/e;->S(Lcn/manstep/phonemirrorBox/BoxInterface/d$g;)V

    .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->t0:Lcn/manstep/phonemirrorBox/c;

    if-eqz v0, :cond_14

    .line 6
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/c;->g()V

    .line 7
    :cond_14
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/z;->z0:Lcn/manstep/phonemirrorBox/i0/s;

    .line 8
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->M0()V

    const-string v0, "SettingsFragment,onDestroy: ######"

    .line 9
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    return-void
.end method

.method public M2(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->y0:Lcn/manstep/phonemirrorBox/x0/k;

    if-eqz v0, :cond_9

    xor-int/lit8 p1, p1, 0x1

    .line 2
    invoke-virtual {v0, p1}, Lcn/manstep/phonemirrorBox/x0/k;->I0(I)V

    :cond_9
    return-void
.end method

.method public R0(Z)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->R0(Z)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SettingsFragment,onHiddenChanged: ###### "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    xor-int/lit8 v0, p1, 0x1

    .line 3
    sput-boolean v0, Lcn/manstep/phonemirrorBox/z;->B0:Z

    if-eqz p1, :cond_3a

    .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/z;->y0:Lcn/manstep/phonemirrorBox/x0/k;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/x0/k;->E()Landroidx/lifecycle/o;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_31

    const/4 p1, 0x2

    .line 5
    :cond_31
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->c(I)V

    .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/z;->y0:Lcn/manstep/phonemirrorBox/x0/k;

    invoke-virtual {p1, v0}, Lcn/manstep/phonemirrorBox/x0/k;->h0(Z)V

    goto :goto_40

    .line 7
    :cond_3a
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/z;->y0:Lcn/manstep/phonemirrorBox/x0/k;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/manstep/phonemirrorBox/x0/k;->h0(Z)V

    :goto_40
    return-void
.end method

.method public S2()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->y0:Lcn/manstep/phonemirrorBox/x0/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/manstep/phonemirrorBox/x0/k;->i0(Z)V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcn/manstep/phonemirrorBox/z$e;

    invoke-direct {v1, p0}, Lcn/manstep/phonemirrorBox/z$e;-><init>(Lcn/manstep/phonemirrorBox/z;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .registers 3

    return-void
.end method

.method public b(I)V
    .registers 6

    const/4 v0, 0x3

    if-ne p1, v0, :cond_14

    .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/z;->t0:Lcn/manstep/phonemirrorBox/c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->J()Landroidx/fragment/app/n;

    move-result-object v0

    const v1, 0x7f0f00e4

    const v2, 0x7f0f019d

    const/4 v3, 0x2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcn/manstep/phonemirrorBox/c;->l(Landroidx/fragment/app/n;III)V

    goto :goto_4a

    :cond_14
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4a

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z

    move-result p1

    if-eqz p1, :cond_4a

    sget-boolean p1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->P:Z

    if-nez p1, :cond_4a

    .line 3
    new-instance p1, Lcn/manstep/phonemirrorBox/util/g$c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v1

    invoke-direct {p1, v1}, Lcn/manstep/phonemirrorBox/util/g$c;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->d0()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f008d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/manstep/phonemirrorBox/util/g$c;->c(Ljava/lang/String;)Lcn/manstep/phonemirrorBox/util/g$c;

    .line 5
    invoke-virtual {p1, v0}, Lcn/manstep/phonemirrorBox/util/g$c;->b(Z)Lcn/manstep/phonemirrorBox/util/g$c;

    .line 6
    invoke-virtual {p1, v0}, Lcn/manstep/phonemirrorBox/util/g$c;->a(Z)Lcn/manstep/phonemirrorBox/util/g$c;

    .line 7
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/util/g$c;->d()Lcn/manstep/phonemirrorBox/util/g;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/manstep/phonemirrorBox/util/g;->b(Z)V

    .line 8
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/z;->y0:Lcn/manstep/phonemirrorBox/x0/k;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/x0/k;->o0()V

    :cond_4a
    :goto_4a
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
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->c1()V

    .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->y0:Lcn/manstep/phonemirrorBox/x0/k;

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcn/manstep/phonemirrorBox/x0/k;->H0(Z)V

    .line 5
    :cond_10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v0

    check-cast v0, Lcn/manstep/phonemirrorBox/MainActivity;

    iget-boolean v0, v0, Lcn/manstep/phonemirrorBox/MainActivity;->t:Z

    if-eqz v0, :cond_1d

    .line 6
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/z;->E2()V

    :cond_1d
    return-void
.end method

.method public e(I)V
    .registers 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_8

    .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/z;->y0:Lcn/manstep/phonemirrorBox/x0/k;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/x0/k;->o0()V

    :cond_8
    return-void
.end method

.method public f1()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->f1()V

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->y0:Lcn/manstep/phonemirrorBox/x0/k;

    if-eqz v0, :cond_b

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcn/manstep/phonemirrorBox/x0/k;->H0(Z)V

    :cond_b
    return-void
.end method

.method public g1(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->g1(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/z;->t0:Lcn/manstep/phonemirrorBox/c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p1, p2}, Lcn/manstep/phonemirrorBox/c;->f(I)V

    return-void
.end method

.method public h(Z)V
    .registers 6

    const/4 v0, 0x1

    if-eqz p1, :cond_28

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/z;->d0:Z

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->k(Landroid/content/Context;)Z

    .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/z;->t0:Lcn/manstep/phonemirrorBox/c;

    invoke-virtual {p1, v0}, Lcn/manstep/phonemirrorBox/c;->k(Z)V

    .line 4
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z

    move-result p1

    if-eqz p1, :cond_55

    .line 5
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    if-eqz p1, :cond_55

    .line 6
    invoke-virtual {p1, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->U0(I)Z

    goto :goto_55

    .line 7
    :cond_28
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/z;->B2()V

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SettingsFragment,closeLogSwitch: mIsUploadLog="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/manstep/phonemirrorBox/z;->d0:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 9
    iget-boolean p1, p0, Lcn/manstep/phonemirrorBox/z;->d0:Z

    if-eqz p1, :cond_46

    return-void

    .line 10
    :cond_46
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/z;->t0:Lcn/manstep/phonemirrorBox/c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->J()Landroidx/fragment/app/n;

    move-result-object v1

    const v2, 0x7f0f0039

    const v3, 0x7f0f01f2

    invoke-virtual {p1, v1, v2, v3, v0}, Lcn/manstep/phonemirrorBox/c;->l(Landroidx/fragment/app/n;III)V

    :cond_55
    :goto_55
    return-void
.end method

.method public i(I)V
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/z;->n0:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->callOnClick()Z

    :cond_8
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

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SettingsFragment,on_Box_Phase parse: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    const/16 v0, 0x14

    if-ne p1, v0, :cond_1c

    .line 2
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/z;->Q2()V

    return-void

    :cond_1c
    const/16 v0, 0xc

    const/4 v1, 0x0

    const-string v2, ""

    if-ne p1, v0, :cond_2a

    .line 3
    sput-object v2, Lcn/manstep/phonemirrorBox/p;->b:Ljava/lang/String;

    .line 4
    iget-object v3, p0, Lcn/manstep/phonemirrorBox/z;->y0:Lcn/manstep/phonemirrorBox/x0/k;

    invoke-virtual {v3, v1}, Lcn/manstep/phonemirrorBox/x0/k;->j0(I)V

    .line 5
    :cond_2a
    sget-boolean v3, Lcn/manstep/phonemirrorBox/z;->B0:Z

    const/16 v4, 0x7c

    const/4 v5, 0x1

    if-nez v3, :cond_39

    if-ne p1, v4, :cond_38

    .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/z;->y0:Lcn/manstep/phonemirrorBox/x0/k;

    invoke-virtual {p1, v5}, Lcn/manstep/phonemirrorBox/x0/k;->j0(I)V

    :cond_38
    return-void

    :cond_39
    const/4 v3, 0x4

    if-ne p1, v3, :cond_42

    .line 7
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->E0()Z

    return-void

    :cond_42
    if-ne p1, v4, :cond_81

    .line 8
    iget-boolean p1, p0, Lcn/manstep/phonemirrorBox/z;->c0:Z

    if-eqz p1, :cond_4e

    .line 9
    iget-boolean p1, p0, Lcn/manstep/phonemirrorBox/z;->b0:Z

    if-eqz p1, :cond_4e

    .line 10
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/z;->b0:Z

    .line 11
    :cond_4e
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object p1

    const-string v0, "BoxLatestVer"

    invoke-virtual {p1, v0, v2}, Lcn/manstep/phonemirrorBox/b0;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 12
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->e0:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_76

    .line 13
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcn/manstep/phonemirrorBox/z$h;

    invoke-direct {v0, p0}, Lcn/manstep/phonemirrorBox/z$h;-><init>(Lcn/manstep/phonemirrorBox/z;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_79

    .line 14
    :cond_76
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/z;->W2()V

    .line 15
    :goto_79
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/z;->y0:Lcn/manstep/phonemirrorBox/x0/k;

    invoke-virtual {p1, v5}, Lcn/manstep/phonemirrorBox/x0/k;->j0(I)V

    .line 16
    sget-boolean p1, Lcn/manstep/phonemirrorBox/BoxInterface/f;->P:Z

    goto :goto_b3

    :cond_81
    const/16 v2, 0xd

    if-ne p1, v2, :cond_88

    .line 17
    iput-boolean v5, p0, Lcn/manstep/phonemirrorBox/z;->b0:Z

    goto :goto_b3

    :cond_88
    if-ne p1, v0, :cond_a9

    .line 18
    iput-boolean v5, p0, Lcn/manstep/phonemirrorBox/z;->b0:Z

    .line 19
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/z;->p0:Landroid/widget/Button;

    if-eqz p1, :cond_95

    const/16 v0, 0x8

    .line 20
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 21
    :cond_95
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/z;->t0:Lcn/manstep/phonemirrorBox/c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v0

    const v2, 0x7f0f0006

    invoke-static {v0, v2}, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcn/manstep/phonemirrorBox/c;->n(ZLjava/lang/String;)V

    .line 22
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/z;->O2()V

    goto :goto_b3

    :cond_a9
    const/16 v0, 0x7b

    if-ne p1, v0, :cond_b3

    .line 23
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/z;->y0:Lcn/manstep/phonemirrorBox/x0/k;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcn/manstep/phonemirrorBox/x0/k;->j0(I)V

    :cond_b3
    :goto_b3
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_3a

    goto :goto_39

    .line 2
    :sswitch_8
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/z;->t0:Lcn/manstep/phonemirrorBox/c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/manstep/phonemirrorBox/c;->j(Landroid/app/Activity;)V

    goto :goto_39

    .line 3
    :sswitch_12
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/z;->P2()V

    goto :goto_39

    :sswitch_16
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/z;->a0:Z

    .line 5
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/z;->A2()V

    .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->m0:Landroid/widget/Button;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v1

    const v2, 0x7f0f0097

    invoke-static {v1, v2}, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->m0:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_39

    .line 8
    :sswitch_32
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/z;->F2()V

    goto :goto_39

    .line 9
    :sswitch_36
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/z;->X2()V

    :goto_39
    return-void

    :sswitch_data_3a
    .sparse-switch
        0x7f090071 -> :sswitch_36
        0x7f090073 -> :sswitch_32
        0x7f090075 -> :sswitch_16
        0x7f090082 -> :sswitch_12
        0x7f090143 -> :sswitch_8
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->t0:Lcn/manstep/phonemirrorBox/c;

    invoke-virtual {v0, p1}, Lcn/manstep/phonemirrorBox/c;->e(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public r(I)V
    .registers 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2e

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/x;->i()Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 2
    new-instance p1, Lcn/manstep/phonemirrorBox/util/g$c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v1

    invoke-direct {p1, v1}, Lcn/manstep/phonemirrorBox/util/g$c;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->d0()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f01e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/manstep/phonemirrorBox/util/g$c;->c(Ljava/lang/String;)Lcn/manstep/phonemirrorBox/util/g$c;

    .line 4
    invoke-virtual {p1, v0}, Lcn/manstep/phonemirrorBox/util/g$c;->b(Z)Lcn/manstep/phonemirrorBox/util/g$c;

    .line 5
    invoke-virtual {p1, v0}, Lcn/manstep/phonemirrorBox/util/g$c;->a(Z)Lcn/manstep/phonemirrorBox/util/g$c;

    .line 6
    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/util/g$c;->d()Lcn/manstep/phonemirrorBox/util/g;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/manstep/phonemirrorBox/util/g;->b(Z)V

    goto :goto_3b

    :cond_2e
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3b

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object p1

    const v0, 0x7f0f005e

    invoke-static {p1, v0}, Lcn/manstep/phonemirrorBox/util/c0;->u(Landroid/content/Context;I)V

    :cond_3b
    :goto_3b
    return-void
.end method

.method public t()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z;->t0:Lcn/manstep/phonemirrorBox/c;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/c;->b()V

    :cond_7
    return-void
.end method

.method public u(Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/z;->H2(Ljava/lang/String;)D

    move-result-wide v0

    const/16 v2, 0x8c

    int-to-double v2, v2

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_1e

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/z;->H2(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1e

    .line 2
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/z;->C2(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 3
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/z;->Z2(Ljava/lang/String;)V

    :cond_1e
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

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method
