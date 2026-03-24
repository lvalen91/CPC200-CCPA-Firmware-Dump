.class public Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;
.super Lcn/manstep/phonemirrorBox/k;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static N:Ljava/lang/String; = ""


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:Landroid/graphics/Bitmap;

.field private G:Landroid/widget/TextView;

.field private H:Landroid/widget/LinearLayout;

.field private I:Landroid/widget/LinearLayout;

.field private J:Landroid/widget/TextView;

.field private K:Landroid/widget/TextView;

.field private L:I

.field private M:I

.field private t:J

.field private u:Landroid/widget/ImageView;

.field private v:I

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/media/AudioManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const v0, 0x57e

    invoke-static {v0}, Lcom/stub/StubApp;->interface11(I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/k;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->t:J

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->u:Landroid/widget/ImageView;

    const/4 v1, 0x5

    .line 4
    iput v1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->v:I

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->D:I

    .line 6
    iput v1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->E:I

    .line 7
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->F:Landroid/graphics/Bitmap;

    .line 8
    iput v1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->M:I

    return-void
.end method

.method private A0()V
    .registers 4

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f00e4

    .line 2
    invoke-static {p0, v1}, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0f0069

    .line 3
    invoke-static {p0, v1}, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0f0099

    .line 4
    invoke-static {p0, v1}, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 6
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 8
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const/4 v1, -0x1

    .line 9
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$f;

    invoke-direct {v2, p0, v0}, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$f;-><init>(Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private B0(I)Z
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutoKitHideSettingsActivity,continuousClickEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->M:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->L:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p1, :cond_6f

    .line 3
    iget v0, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->M:I

    add-int/2addr v0, v1

    iput v0, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->M:I

    const/16 v3, 0xa

    if-ne v0, v3, :cond_73

    const v0, 0x7f090267

    if-ne p1, v0, :cond_6c

    const p1, 0x7f0900fc

    .line 4
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 5
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const p1, 0x7f090060

    .line 6
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 7
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const p1, 0x7f0902b4

    .line 8
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 9
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const p1, 0x7f090179

    .line 10
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 11
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 12
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->P0()V

    .line 13
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->I0()V

    .line 14
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->N0()V

    return v1

    .line 15
    :cond_6c
    iput v2, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->M:I

    goto :goto_73

    .line 16
    :cond_6f
    iput p1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->L:I

    .line 17
    iput v1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->M:I

    :cond_73
    :goto_73
    return v2
.end method

.method private C0(Landroid/net/Uri;Landroid/net/Uri;)V
    .registers 6

    .line 1
    new-instance v0, Lcom/yalantis/ucrop/UCrop$Options;

    invoke-direct {v0}, Lcom/yalantis/ucrop/UCrop$Options;-><init>()V

    const v1, 0x7f06005d

    .line 2
    invoke-static {p0, v1}, Landroidx/core/content/a;->b(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/yalantis/ucrop/UCrop$Options;->setToolbarColor(I)V

    .line 3
    invoke-static {p0, v1}, Landroidx/core/content/a;->b(Landroid/content/Context;I)I

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

    const v1, 0x7f0f01b5

    .line 7
    invoke-static {p0, v1}, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/UCrop$Options;->setToolbarTitle(Ljava/lang/String;)V

    .line 8
    invoke-static {p1, p2}, Lcom/yalantis/ucrop/UCrop;->of(Landroid/net/Uri;Landroid/net/Uri;)Lcom/yalantis/ucrop/UCrop;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    .line 9
    invoke-virtual {p1, p2, p2}, Lcom/yalantis/ucrop/UCrop;->withAspectRatio(FF)Lcom/yalantis/ucrop/UCrop;

    move-result-object p1

    const/16 p2, 0x100

    .line 10
    invoke-virtual {p1, p2, p2}, Lcom/yalantis/ucrop/UCrop;->withMaxResultSize(II)Lcom/yalantis/ucrop/UCrop;

    move-result-object p1

    .line 11
    invoke-virtual {p1, v0}, Lcom/yalantis/ucrop/UCrop;->withOptions(Lcom/yalantis/ucrop/UCrop$Options;)Lcom/yalantis/ucrop/UCrop;

    move-result-object p1

    .line 12
    invoke-virtual {p1, p0}, Lcom/yalantis/ucrop/UCrop;->start(Landroid/app/Activity;)V

    return-void
.end method

.method private D0(I)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object v0

    new-instance v1, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$e;

    invoke-direct {v1, p0}, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$e;-><init>(Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;)V

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcn/manstep/phonemirrorBox/k0/a;->I2(Landroidx/fragment/app/n;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private E0()V
    .registers 4

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f00e4

    .line 2
    invoke-static {p0, v1}, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0f01e3

    .line 3
    invoke-static {p0, v1}, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0f0099

    .line 4
    invoke-static {p0, v1}, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 6
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 8
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const/4 v1, -0x1

    .line 9
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$g;

    invoke-direct {v2, p0, v0}, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$g;-><init>(Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static F0(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5

    const-string v0, "custom"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2
    :try_start_8
    sget-object v0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->N:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoKitHideSettingsActivity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    :cond_28
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    .line 5
    :try_start_2d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarLogo/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".png"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 6
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_4b} :catch_4c

    goto :goto_57

    :catch_4c
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    :goto_57
    return-object v0
.end method

.method private G0()I
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/k;->b:Z

    if-eqz v0, :cond_b

    const/high16 v0, 0x42400000    # 48.0f

    .line 2
    invoke-static {p0, v0}, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I

    move-result v0

    return v0

    :cond_b
    const/high16 v0, 0x42000000    # 32.0f

    .line 3
    invoke-static {p0, v0}, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method private H0()I
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/k;->b:Z

    if-eqz v0, :cond_b

    const/high16 v0, 0x42800000    # 64.0f

    .line 2
    invoke-static {p0, v0}, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I

    move-result v0

    return v0

    :cond_b
    const/high16 v0, 0x42280000    # 42.0f

    .line 3
    invoke-static {p0, v0}, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method private I0()V
    .registers 7

    const v0, 0x7f0900fc

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->I:Landroid/widget/LinearLayout;

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    const-string v1, "AudioClassify"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->I:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_25

    .line 4
    :cond_1e
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->I:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_25
    const v0, 0x7f0901a3

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 6
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902af

    .line 7
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 8
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901aa

    .line 9
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    const/16 v1, 0x1e

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    const v3, 0x7f0901a8

    .line 11
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->J:Landroid/widget/TextView;

    const-string v3, "NaviGain"

    .line 12
    invoke-static {p0, v3, v2}, Lcn/manstep/phonemirrorBox/b0;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 13
    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 14
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 15
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->J:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "db"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0902b2

    .line 16
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    const v1, 0x7f0902b0

    .line 18
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->K:Landroid/widget/TextView;

    const-string v1, "VoiceCallGain"

    .line 19
    invoke-static {p0, v1, v2}, Lcn/manstep/phonemirrorBox/b0;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 21
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 22
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->K:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private J0()V
    .registers 5

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    const-string v1, "ShowFloatBall"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z

    move-result v0

    const v1, 0x7f0901da

    .line 2
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 3
    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0901d9

    .line 4
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 5
    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v3, 0x1

    if-eqz v0, :cond_2a

    .line 6
    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_2d

    .line 7
    :cond_2a
    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_2d
    return-void
.end method

.method private K0()V
    .registers 5

    const v0, 0x7f090143

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 2
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09029d

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "LanguageID"

    invoke-virtual {v1, v3, v2}, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_30

    const v1, 0x7f0f013e

    .line 6
    invoke-static {p0, v1}, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_37

    .line 7
    :cond_30
    sget-object v2, Lcn/manstep/phonemirrorBox/x;->a:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_37
    const v0, 0x7f09012c

    .line 8
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 9
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_43
    return-void
.end method

.method private L0(Ljava/util/ArrayList;)Z
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "AutoKit_siri"

    const-string v2, "default"

    const-string v3, "AutoKitHideSettingsActivity,initLogoList: "

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const/4 v5, 0x0

    .line 2
    :try_start_d
    new-instance v6, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v7

    const-string v8, "custom.png"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2f

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_2f

    const-string v7, "custom"

    .line 4
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->N:Ljava/lang/String;

    .line 6
    :cond_2f
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "CarLogo"

    .line 8
    invoke-virtual {v4, v6}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 9
    array-length v6, v4
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_3c} :catch_bb

    const-string v7, ""

    move-object v9, v7

    const/4 v8, 0x0

    :goto_40
    const-string v10, "AutoKit_add"

    const/4 v11, 0x1

    if-ge v8, v6, :cond_ae

    :try_start_45
    aget-object v12, v4, v8

    .line 10
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    const-string v13, "."

    .line 11
    invoke-virtual {v12, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v5, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 12
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v14

    const/4 v15, 0x4

    const/4 v13, 0x3

    const/4 v5, 0x2

    sparse-switch v14, :sswitch_data_d8

    goto :goto_9a

    :sswitch_6e
    const-string v10, "Carlinkit"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9a

    const/4 v10, 0x0

    goto :goto_9b

    :sswitch_78
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9a

    const/4 v10, 0x1

    goto :goto_9b

    :sswitch_80
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9a

    const/4 v10, 0x3

    goto :goto_9b

    :sswitch_88
    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9a

    const/4 v10, 0x4

    goto :goto_9b

    :sswitch_90
    const-string v10, "Skywell"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9a

    const/4 v10, 0x2

    goto :goto_9b

    :cond_9a
    :goto_9a
    const/4 v10, -0x1

    :goto_9b
    if-eqz v10, :cond_a9

    if-eq v10, v11, :cond_aa

    if-eq v10, v5, :cond_aa

    if-eq v10, v13, :cond_aa

    if-eq v10, v15, :cond_aa

    .line 13
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_aa

    :cond_a9
    move-object v9, v12

    :cond_aa
    :goto_aa
    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x0

    goto :goto_40

    .line 14
    :cond_ae
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ba

    .line 16
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_ba} :catch_bb

    :cond_ba
    return v11

    :catch_bb
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1

    nop

    :sswitch_data_d8
    .sparse-switch
        -0x1be382b1 -> :sswitch_90
        -0x1989a517 -> :sswitch_88
        -0x17a2ba3b -> :sswitch_80
        0x5c13d641 -> :sswitch_78
        0x77081759 -> :sswitch_6e
    .end sparse-switch
.end method

.method private M0()V
    .registers 15

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->L0(Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_c

    return-void

    .line 3
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoKitHideSettingsActivity, initLogoView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2c

    return-void

    .line 5
    :cond_2c
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v1

    const-string v3, "CarPlayOEMIconName"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lcn/manstep/phonemirrorBox/b0;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v3

    const-string v5, "CarPlayOEMIconPath"

    invoke-virtual {v3, v5, v4}, Lcn/manstep/phonemirrorBox/b0;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AutoKitHideSettingsActivity, initLogoView: name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", path="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v5

    const-string v6, "CarPlayLogoType"

    invoke-virtual {v5, v6, v2}, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6d

    const-string v1, "AutoKit_siri"

    :cond_6d
    const v5, 0x7f0901b5

    .line 9
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 10
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v6, 0x0

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :cond_80
    :goto_80
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 12
    invoke-static {p0, v9}, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->F0(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    if-nez v10, :cond_93

    goto :goto_80

    .line 13
    :cond_93
    iget v11, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->v:I

    rem-int v11, v8, v11

    if-nez v11, :cond_ba

    .line 14
    invoke-direct {p0, v6}, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->z0(Landroid/widget/LinearLayout;)V

    .line 15
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x2

    invoke-direct {v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v12, 0x41a00000    # 20.0f

    .line 17
    invoke-static {p0, v12}, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I

    move-result v12

    invoke-virtual {v11, v7, v12, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 18
    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 20
    invoke-direct {p0, v6}, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->z0(Landroid/widget/LinearLayout;)V

    :cond_ba
    add-int/lit8 v8, v8, 0x1

    .line 21
    new-instance v11, Landroid/widget/ImageView;

    invoke-direct {v11, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const-string v10, "Carlinkit"

    .line 23
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_cf

    .line 24
    invoke-virtual {v11, v2}, Landroid/widget/ImageView;->setWillNotDraw(Z)V

    .line 25
    :cond_cf
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->G0()I

    move-result v10

    .line 26
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_df

    .line 27
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->H0()I

    move-result v10

    .line 28
    iput-object v11, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->u:Landroid/widget/ImageView;

    .line 29
    :cond_df
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0x11

    .line 30
    iput v10, v12, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v10, 0x41200000    # 10.0f

    .line 31
    invoke-static {p0, v10}, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I

    move-result v10

    .line 32
    invoke-virtual {v12, v10, v7, v10, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 33
    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v6, :cond_fc

    .line 34
    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 35
    invoke-direct {p0, v11, v9}, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->Q0(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 36
    :cond_fc
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_80

    const-string v10, "default"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_80

    .line 37
    invoke-direct {p0, v11, v9}, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->S0(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto/16 :goto_80

    .line 38
    :cond_10f
    invoke-direct {p0, v6, v8}, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->y0(Landroid/widget/LinearLayout;I)V

    return-void
.end method

.method private N0()V
    .registers 5

    const v0, 0x7f090179

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v1

    const-string v2, "MicType"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1d

    const/16 v1, 0x8

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_20

    .line 4
    :cond_1d
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_20
    const v0, 0x7f090178

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 6
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private O0()V
    .registers 2

    const v0, 0x7f090250

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090080

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private P0()V
    .registers 11

    const v0, 0x7f09005f

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901d8

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 4
    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0901d7

    .line 5
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 6
    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0902b4

    .line 7
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->H:Landroid/widget/LinearLayout;

    .line 8
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v2

    const-string v3, "AudioClassify"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_46

    .line 9
    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 10
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->H:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_50

    .line 11
    :cond_46
    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 12
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->H:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_50
    const v0, 0x7f09017c

    .line 13
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    const/16 v1, 0x1e

    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 15
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v1

    const-string v2, "MicGain"

    invoke-virtual {v1, v2, v4}, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I

    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 17
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const v0, 0x7f09017b

    .line 18
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->G:Landroid/widget/TextView;

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "db"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0901a2

    .line 20
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    const v1, 0x7f0901a1

    .line 21
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->y:Landroid/widget/TextView;

    const v1, 0x7f0901ac

    .line 22
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    const v2, 0x7f0901a9

    .line 23
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->w:Landroid/widget/TextView;

    const v2, 0x7f0902b3

    .line 24
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    const v5, 0x7f0902b1

    .line 25
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->x:Landroid/widget/TextView;

    const-string v5, "audio"

    .line 26
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    iput-object v5, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->z:Landroid/media/AudioManager;

    if-eqz v5, :cond_1a6

    const/4 v6, 0x3

    .line 27
    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v5

    iput v5, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->C:I

    .line 28
    invoke-virtual {v0, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 29
    iget-object v5, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->z:Landroid/media/AudioManager;

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    .line 30
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AutoKitHideSettingsActivity,initVolumeSettings: current navigation volume: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 32
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->y:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->C:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->z:Landroid/media/AudioManager;

    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v6

    iput v6, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->A:I

    .line 34
    invoke-virtual {v1, v6}, Landroid/widget/SeekBar;->setMax(I)V

    .line 35
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->z:Landroid/media/AudioManager;

    invoke-virtual {v6, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    .line 36
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v1, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 38
    iget-object v7, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->w:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->A:I

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->z:Landroid/media/AudioManager;

    invoke-virtual {v6, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v6

    iput v6, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->B:I

    .line 40
    invoke-virtual {v2, v6}, Landroid/widget/SeekBar;->setMax(I)V

    .line 41
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->z:Landroid/media/AudioManager;

    invoke-virtual {v6, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    .line 42
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AutoKitHideSettingsActivity,initVolumeSettings: current voice_call volume: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 44
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->x:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->B:I

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    :cond_1a6
    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 46
    invoke-virtual {v2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 47
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method private Q0(Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 4

    .line 1
    new-instance v0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$c;

    invoke-direct {v0, p0, p2, p1}, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$c;-><init>(Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "Carlinkit"

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3
    new-instance v0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$d;

    invoke-direct {v0, p0, p1, p2}, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$d;-><init>(Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_18
    return-void
.end method

.method private R0(Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "siri"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "CarPlayLogoType"

    if-eqz v0, :cond_1b

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_65

    .line 3
    :cond_1b
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "custom"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3d

    .line 4
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    sget-object v3, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->N:Ljava/lang/String;

    invoke-virtual {v0, p1, v3}, Lcn/manstep/phonemirrorBox/b0;->z(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_65

    .line 6
    :cond_3d
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CarLogo/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lcn/manstep/phonemirrorBox/b0;->z(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    :goto_65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutoKitHideSettingsActivity,saveOemConfig: imageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z

    move-result p1

    if-eqz p1, :cond_89

    .line 10
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->b()V

    .line 11
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->e()V

    :cond_89
    return-void
.end method

.method private S0(Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 9

    const/high16 v0, 0x41200000    # 10.0f

    .line 1
    invoke-static {p0, v0}, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->u:Landroid/widget/ImageView;

    const/16 v2, 0x11

    const/4 v3, 0x0

    if-eqz v1, :cond_24

    .line 3
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->G0()I

    move-result v4

    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->G0()I

    move-result v5

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 4
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 5
    invoke-virtual {v1, v0, v3, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 6
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->u:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    :cond_24
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->H0()I

    move-result v4

    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->H0()I

    move-result v5

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 8
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 9
    invoke-virtual {v1, v0, v3, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 10
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->u:Landroid/widget/ImageView;

    .line 12
    invoke-direct {p0, p2}, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->R0(Ljava/lang/String;)V

    return-void
.end method

.method private T0(Z)V
    .registers 5

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "AudioClassify"

    invoke-virtual {v0, v2, v1}, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->H:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_27

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_1f

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->I:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_27

    .line 5
    :cond_1f
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->I:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    :cond_27
    :goto_27
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    if-eqz v0, :cond_36

    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 8
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-virtual {v0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->d1(Z)V

    :cond_36
    return-void
.end method

.method private U0()V
    .registers 7

    .line 1
    invoke-static {p0}, Lcn/manstep/phonemirrorBox/util/c0;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 3
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_24

    const/high16 v1, 0x42f00000    # 120.0f

    .line 4
    invoke-static {p0, v1}, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I

    move-result v3

    .line 5
    invoke-static {p0, v1}, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I

    move-result v1

    const/high16 v4, 0x40800000    # 4.0f

    .line 6
    invoke-static {p0, v4}, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I

    move-result v4

    goto :goto_39

    :cond_24
    if-ne v1, v2, :cond_37

    const/high16 v1, 0x435c0000    # 220.0f

    .line 7
    invoke-static {p0, v1}, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I

    move-result v3

    .line 8
    invoke-static {p0, v1}, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I

    move-result v1

    const/high16 v4, 0x41000000    # 8.0f

    .line 9
    invoke-static {p0, v4}, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I

    move-result v4

    goto :goto_39

    :cond_37
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 10
    :goto_39
    iget-object v5, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->F:Landroid/graphics/Bitmap;

    if-nez v5, :cond_43

    .line 11
    invoke-static {v0, v3, v1}, Lcn/manstep/phonemirrorBox/util/v;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->F:Landroid/graphics/Bitmap;

    .line 12
    :cond_43
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 13
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 14
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0601a3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 15
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->F:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 16
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const v3, 0x7f10010b

    invoke-direct {v1, p0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 17
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 18
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 19
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 20
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 21
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic n0(Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->M:I

    return p1
.end method

.method static synthetic o0(Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;)I
    .registers 1

    .line 1
    iget p0, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->D:I

    return p0
.end method

.method static synthetic p0(Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->D:I

    return p1
.end method

.method static synthetic q0(Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;)I
    .registers 1

    .line 1
    iget p0, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->E:I

    return p0
.end method

.method static synthetic r0(Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->E:I

    return p1
.end method

.method static synthetic s0(Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;)I
    .registers 3

    .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->E:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->E:I

    return v0
.end method

.method static synthetic t0(Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->t:J

    return-wide v0
.end method

.method static synthetic u0(Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;J)J
    .registers 3

    .line 1
    iput-wide p1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->t:J

    return-wide p1
.end method

.method static synthetic v0(Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->x0()V

    return-void
.end method

.method static synthetic w0(Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->S0(Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method

.method private x0()V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_36

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 3
    invoke-static {p0, v1}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_16

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_16
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 5
    invoke-static {p0, v1}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_21

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_21
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_36

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/16 v1, 0x3e8

    .line 9
    invoke-static {p0, v0, v1}, Landroidx/core/app/a;->m(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    .line 10
    :cond_36
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "image/*"

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 13
    :try_start_48
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4b} :catch_4c

    goto :goto_65

    :catch_4c
    move-exception v0

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoKitHideSettingsActivity,addCustomLogo: \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    :goto_65
    return-void
.end method

.method private y0(Landroid/widget/LinearLayout;I)V
    .registers 10

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    iget v0, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->v:I

    rem-int v1, p2, v0

    sub-int/2addr v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    .line 2
    invoke-static {p0, v1}, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I

    move-result v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addOccupyImageView: j = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AutoKitHideSettingsActivity"

    invoke-static {v3, v2}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget v2, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->v:I

    if-eq v0, v2, :cond_50

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2a
    if-ge v3, v0, :cond_50

    .line 5
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->G0()I

    move-result v5

    .line 7
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x11

    .line 8
    iput v5, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 9
    invoke-virtual {v6, v1, v2, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 10
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    iget v5, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->v:I

    rem-int v5, p2, v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 12
    :cond_50
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->z0(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method private z0(Landroid/widget/LinearLayout;)V
    .registers 4

    if-eqz p1, :cond_17

    .line 1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 3
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_17
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/e;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HideSettingsActivity,onActivityResult: requestCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3d

    if-ne p2, v0, :cond_bb

    .line 3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 4
    new-instance p2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object p3

    const-string v0, "custom.png"

    invoke-direct {p2, p3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    .line 5
    invoke-direct {p0, p1, p2}, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->C0(Landroid/net/Uri;Landroid/net/Uri;)V

    goto/16 :goto_bb

    :cond_3d
    const/16 v2, 0x45

    if-ne p1, v2, :cond_bb

    const-string p1, "AutoKitHideSettingsActivity,onActivityResult: "

    if-ne p2, v0, :cond_9d

    .line 6
    invoke-static {p3}, Lcom/yalantis/ucrop/UCrop;->getOutput(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object p2

    .line 7
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    if-eqz p2, :cond_bb

    .line 8
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    .line 9
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object p1

    const-string p3, "custom"

    invoke-virtual {p1, p3, p2}, Lcn/manstep/phonemirrorBox/b0;->z(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "CarPlayLogoType"

    invoke-virtual {p1, p3, p2}, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z

    move-result p1

    if-eqz p1, :cond_99

    .line 13
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->b()V

    .line 14
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->e()V

    .line 15
    :cond_99
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->M0()V

    goto :goto_bb

    :cond_9d
    const/16 v0, 0x60

    if-ne p2, v0, :cond_bb

    .line 16
    invoke-static {p3}, Lcom/yalantis/ucrop/UCrop;->getError(Landroid/content/Intent;)Ljava/lang/Throwable;

    move-result-object p2

    .line 17
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V

    :cond_bb
    :goto_bb
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->E:I

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 3
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->B0(I)Z

    move-result v1

    if-eqz v1, :cond_e

    return-void

    :cond_e
    const-string v1, "ShowFloatBall"

    sparse-switch p1, :sswitch_data_78

    goto :goto_76

    :sswitch_14
    const p1, 0x7f0f01ce

    .line 4
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->D0(I)V

    goto :goto_76

    .line 5
    :sswitch_1b
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1, v0}, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_76

    .line 7
    :sswitch_2f
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1, v0}, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    goto :goto_76

    :sswitch_43
    const/4 p1, 0x1

    .line 9
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->T0(Z)V

    goto :goto_76

    .line 10
    :sswitch_48
    invoke-direct {p0, v0}, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->T0(Z)V

    goto :goto_76

    .line 11
    :sswitch_4c
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->E0()V

    goto :goto_76

    .line 12
    :sswitch_50
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcn/manstep/phonemirrorBox/LanguageSettingsActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_76

    .line 13
    :sswitch_5b
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->U0()V

    goto :goto_76

    .line 14
    :sswitch_5f
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/k;->finish()V

    const p1, 0x10a0002

    const v0, 0x10a0003

    .line 15
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_76

    .line 16
    :sswitch_6c
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->A0()V

    goto :goto_76

    :sswitch_70
    const p1, 0x7f0f0068

    .line 17
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->D0(I)V

    :goto_76
    return-void

    nop

    :sswitch_data_78
    .sparse-switch
        0x7f09005e -> :sswitch_70
        0x7f09005f -> :sswitch_6c
        0x7f09007e -> :sswitch_5f
        0x7f090080 -> :sswitch_5b
        0x7f09012c -> :sswitch_50
        0x7f090143 -> :sswitch_50
        0x7f090178 -> :sswitch_4c
        0x7f0901a3 -> :sswitch_4c
        0x7f0901d7 -> :sswitch_48
        0x7f0901d8 -> :sswitch_43
        0x7f0901d9 -> :sswitch_2f
        0x7f0901da -> :sswitch_1b
        0x7f0901e1 -> :sswitch_14
        0x7f090250 -> :sswitch_5b
        0x7f09029d -> :sswitch_50
        0x7f0902af -> :sswitch_4c
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcn/manstep/phonemirrorBox/k;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 9

    .line 1
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result p3

    .line 2
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v0

    const-string v1, "/"

    const/4 v2, 0x4

    const-string v3, ""

    const v4, 0x7f0901ac

    if-ne v0, v4, :cond_36

    .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->z:Landroid/media/AudioManager;

    const/4 p3, 0x2

    invoke-virtual {p1, p3, p2, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->w:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->A:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_115

    .line 5
    :cond_36
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v0

    const v4, 0x7f0902b3

    if-ne v0, v4, :cond_63

    .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->z:Landroid/media/AudioManager;

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 7
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->x:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->B:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_115

    .line 8
    :cond_63
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v0

    const v4, 0x7f0901a2

    if-ne v0, v4, :cond_90

    .line 9
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->z:Landroid/media/AudioManager;

    const/4 p3, 0x3

    invoke-virtual {p1, p3, p2, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 10
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->y:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->C:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_115

    .line 11
    :cond_90
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result p1

    const v0, 0x7f09017c

    const-string v1, "db"

    if-ne p1, v0, :cond_c6

    .line 12
    rem-int/lit8 p1, p2, 0x2

    if-eqz p1, :cond_a1

    add-int/lit8 p2, p2, 0x1

    .line 13
    :cond_a1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->G:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "MicGain"

    invoke-virtual {p1, p3, p2}, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_115

    :cond_c6
    const p1, 0x7f0901aa

    if-ne p3, p1, :cond_ee

    .line 15
    rem-int/lit8 p1, p2, 0x2

    if-eqz p1, :cond_d1

    add-int/lit8 p2, p2, 0x1

    .line 16
    :cond_d1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->J:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "NaviGain"

    .line 17
    invoke-static {p0, p1, p2}, Lcn/manstep/phonemirrorBox/b0;->x(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_115

    :cond_ee
    const p1, 0x7f0902b2

    if-ne p3, p1, :cond_115

    .line 18
    rem-int/lit8 p1, p2, 0x2

    if-eqz p1, :cond_f9

    add-int/lit8 p2, p2, 0x1

    .line 19
    :cond_f9
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->K:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "VoiceCallGain"

    .line 20
    invoke-static {p0, p1, p2}, Lcn/manstep/phonemirrorBox/b0;->x(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_115
    :goto_115
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method
