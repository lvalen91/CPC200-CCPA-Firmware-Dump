.class public Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;
.super Lcn/manstep/phonemirrorBox/k;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.source "SourceFile"

.field private static N:Ljava/lang/String; = ""

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

.method static constructor <clinit>()V
  .registers 2
    const v0, 1406
    invoke-static { v0 }, Lcom/stub/StubApp;->interface11(I)V
    return-void
.end method

.method public constructor <init>()V
  .registers 3
  .line 1
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/k;-><init>()V
    const-wide/16 v0, 0
  .line 2
    iput-wide v0, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->t:J
    const/4 v0, 0
  .line 3
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->u:Landroid/widget/ImageView;
    const/4 v1, 5
  .line 4
    iput v1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->v:I
    const/4 v1, 0
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
    invoke-direct { v0, p0 }, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
    const v1, 2131689700
  .line 2
    invoke-static { p0, v1 }, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    const v1, 2131689577
  .line 3
    invoke-static { p0, v1 }, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    const v1, 2131689625
  .line 4
    invoke-static { p0, v1 }, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;
    move-result-object v1
    const/4 v2, 0
    invoke-virtual { v0, v1, v2 }, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    const/4 v1, 0
  .line 5
    invoke-virtual { v0, v1 }, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;
  .line 6
    invoke-virtual { v0 }, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
    move-result-object v0
  .line 7
    invoke-virtual { v0, v1 }, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V
  .line 8
    invoke-virtual { v0 }, Landroid/app/AlertDialog;->show()V
    const/4 v1, -1
  .line 9
    invoke-virtual { v0, v1 }, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;
    move-result-object v1
    new-instance v2, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$f;
    invoke-direct { v2, p0, v0 }, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$f;-><init>(Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;Landroid/app/AlertDialog;)V
    invoke-virtual { v1, v2 }, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    return-void
.end method

.method private B0(I)Z
  .registers 6
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "AutoKitHideSettingsActivity,continuousClickEvent: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ", count="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->M:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 2
    iget v0, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->L:I
    const/4 v1, 1
    const/4 v2, 0
    if-ne v0, p1, :L1
  .line 3
    iget v0, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->M:I
    add-int/2addr v0, v1
    iput v0, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->M:I
    const/16 v3, 10
    if-ne v0, v3, :L2
    const v0, 2131296871
    if-ne p1, v0, :L0
    const p1, 2131296508
  .line 4
    invoke-virtual { p0, p1 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object p1
    check-cast p1, Landroid/widget/LinearLayout;
  .line 5
    invoke-virtual { p1, v2 }, Landroid/widget/LinearLayout;->setVisibility(I)V
    const p1, 2131296352
  .line 6
    invoke-virtual { p0, p1 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object p1
    check-cast p1, Landroid/widget/LinearLayout;
  .line 7
    invoke-virtual { p1, v2 }, Landroid/widget/LinearLayout;->setVisibility(I)V
    const p1, 2131296948
  .line 8
    invoke-virtual { p0, p1 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object p1
    check-cast p1, Landroid/widget/LinearLayout;
  .line 9
    invoke-virtual { p1, v2 }, Landroid/widget/LinearLayout;->setVisibility(I)V
    const p1, 2131296633
  .line 10
    invoke-virtual { p0, p1 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object p1
    check-cast p1, Landroid/widget/LinearLayout;
  .line 11
    invoke-virtual { p1, v2 }, Landroid/widget/LinearLayout;->setVisibility(I)V
  .line 12
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->P0()V
  .line 13
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->I0()V
  .line 14
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->N0()V
    return v1
  :L0
  .line 15
    iput v2, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->M:I
    goto :L2
  :L1
  .line 16
    iput p1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->L:I
  .line 17
    iput v1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->M:I
  :L2
    return v2
.end method

.method private C0(Landroid/net/Uri;Landroid/net/Uri;)V
  .registers 6
  .line 1
    new-instance v0, Lcom/yalantis/ucrop/UCrop$Options;
    invoke-direct { v0 }, Lcom/yalantis/ucrop/UCrop$Options;-><init>()V
    const v1, 2131099741
  .line 2
    invoke-static { p0, v1 }, Landroidx/core/content/a;->b(Landroid/content/Context;I)I
    move-result v2
    invoke-virtual { v0, v2 }, Lcom/yalantis/ucrop/UCrop$Options;->setToolbarColor(I)V
  .line 3
    invoke-static { p0, v1 }, Landroidx/core/content/a;->b(Landroid/content/Context;I)I
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
    const v1, 2131689909
  .line 7
    invoke-static { p0, v1 }, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Lcom/yalantis/ucrop/UCrop$Options;->setToolbarTitle(Ljava/lang/String;)V
  .line 8
    invoke-static { p1, p2 }, Lcom/yalantis/ucrop/UCrop;->of(Landroid/net/Uri;Landroid/net/Uri;)Lcom/yalantis/ucrop/UCrop;
    move-result-object p1
    const/high16 p2, 16256
  .line 9
    invoke-virtual { p1, p2, p2 }, Lcom/yalantis/ucrop/UCrop;->withAspectRatio(FF)Lcom/yalantis/ucrop/UCrop;
    move-result-object p1
    const/16 p2, 256
  .line 10
    invoke-virtual { p1, p2, p2 }, Lcom/yalantis/ucrop/UCrop;->withMaxResultSize(II)Lcom/yalantis/ucrop/UCrop;
    move-result-object p1
  .line 11
    invoke-virtual { p1, v0 }, Lcom/yalantis/ucrop/UCrop;->withOptions(Lcom/yalantis/ucrop/UCrop$Options;)Lcom/yalantis/ucrop/UCrop;
    move-result-object p1
  .line 12
    invoke-virtual { p1, p0 }, Lcom/yalantis/ucrop/UCrop;->start(Landroid/app/Activity;)V
    return-void
.end method

.method private D0(I)V
  .registers 5
  .line 1
    invoke-virtual { p0 }, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;
    move-result-object v0
    new-instance v1, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$e;
    invoke-direct { v1, p0 }, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$e;-><init>(Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;)V
    const/4 v2, 0
    invoke-static { v0, p1, v1, v2 }, Lcn/manstep/phonemirrorBox/k0/a;->I2(Landroidx/fragment/app/n;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    return-void
.end method

.method private E0()V
  .registers 4
  .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;
    invoke-direct { v0, p0 }, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
    const v1, 2131689700
  .line 2
    invoke-static { p0, v1 }, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    const v1, 2131689955
  .line 3
    invoke-static { p0, v1 }, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    const v1, 2131689625
  .line 4
    invoke-static { p0, v1 }, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;
    move-result-object v1
    const/4 v2, 0
    invoke-virtual { v0, v1, v2 }, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    const/4 v1, 0
  .line 5
    invoke-virtual { v0, v1 }, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;
  .line 6
    invoke-virtual { v0 }, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
    move-result-object v0
  .line 7
    invoke-virtual { v0, v1 }, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V
  .line 8
    invoke-virtual { v0 }, Landroid/app/AlertDialog;->show()V
    const/4 v1, -1
  .line 9
    invoke-virtual { v0, v1 }, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;
    move-result-object v1
    new-instance v2, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$g;
    invoke-direct { v2, p0, v0 }, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$g;-><init>(Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;Landroid/app/AlertDialog;)V
    invoke-virtual { v1, v2 }, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    return-void
.end method

.method public static F0(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L2
  .catch Ljava/lang/Exception; { :L4 .. :L5 } :L6
  .registers 5
    const-string v0, "custom"
  .line 1
    invoke-virtual { p1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L3
  :L0
  .line 2
    sget-object v0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->N:Ljava/lang/String;
    invoke-static { v0 }, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    move-result-object p0
  :L1
    return-object p0
  :L2
    move-exception v0
  .line 3
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "AutoKitHideSettingsActivity "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { v0 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L3
    const/4 v0, 0
  .line 4
    invoke-virtual { p0 }, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;
    move-result-object p0
  :L4
  .line 5
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "CarLogo/"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p1, ".png"
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-virtual { p0, p1 }, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    move-result-object p0
  .line 6
    invoke-static { p0 }, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    move-result-object v0
  :L5
    goto :L7
  :L6
    move-exception p0
  .line 7
    invoke-virtual { p0 }, Ljava/lang/Exception;->printStackTrace()V
  .line 8
    invoke-static { p0 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object p0
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L7
    return-object v0
.end method

.method private G0()I
  .registers 2
  .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/k;->b:Z
    if-eqz v0, :L0
    const/high16 v0, 16960
  .line 2
    invoke-static { p0, v0 }, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I
    move-result v0
    return v0
  :L0
    const/high16 v0, 16896
  .line 3
    invoke-static { p0, v0 }, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I
    move-result v0
    return v0
.end method

.method private H0()I
  .registers 2
  .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/k;->b:Z
    if-eqz v0, :L0
    const/high16 v0, 17024
  .line 2
    invoke-static { p0, v0 }, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I
    move-result v0
    return v0
  :L0
    const/high16 v0, 16936
  .line 3
    invoke-static { p0, v0 }, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I
    move-result v0
    return v0
.end method

.method private I0()V
  .registers 7
    const v0, 2131296508
  .line 1
    invoke-virtual { p0, v0 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/LinearLayout;
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->I:Landroid/widget/LinearLayout;
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const-string v1, "AudioClassify"
    const/4 v2, 0
    invoke-virtual { v0, v1, v2 }, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z
    move-result v0
    if-nez v0, :L0
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->I:Landroid/widget/LinearLayout;
    invoke-virtual { v0, v2 }, Landroid/widget/LinearLayout;->setVisibility(I)V
    goto :L1
  :L0
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->I:Landroid/widget/LinearLayout;
    const/16 v1, 8
    invoke-virtual { v0, v1 }, Landroid/widget/LinearLayout;->setVisibility(I)V
  :L1
    const v0, 2131296675
  .line 5
    invoke-virtual { p0, v0 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/ImageView;
  .line 6
    invoke-virtual { v0, p0 }, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    const v0, 2131296943
  .line 7
    invoke-virtual { p0, v0 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/ImageView;
  .line 8
    invoke-virtual { v0, p0 }, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    const v0, 2131296682
  .line 9
    invoke-virtual { p0, v0 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/SeekBar;
    const/16 v1, 30
  .line 10
    invoke-virtual { v0, v1 }, Landroid/widget/SeekBar;->setMax(I)V
    const v3, 2131296680
  .line 11
    invoke-virtual { p0, v3 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v3
    check-cast v3, Landroid/widget/TextView;
    iput-object v3, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->J:Landroid/widget/TextView;
    const-string v3, "NaviGain"
  .line 12
    invoke-static { p0, v3, v2 }, Lcn/manstep/phonemirrorBox/b0;->d(Landroid/content/Context;Ljava/lang/String;I)I
    move-result v3
  .line 13
    invoke-virtual { v0, v3 }, Landroid/widget/SeekBar;->setProgress(I)V
  .line 14
    invoke-virtual { v0, p0 }, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
  .line 15
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->J:Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, ""
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4, v3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v3, "db"
    invoke-virtual { v4, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-virtual { v0, v4 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    const v0, 2131296946
  .line 16
    invoke-virtual { p0, v0 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/SeekBar;
  .line 17
    invoke-virtual { v0, v1 }, Landroid/widget/SeekBar;->setMax(I)V
    const v1, 2131296944
  .line 18
    invoke-virtual { p0, v1 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v1
    check-cast v1, Landroid/widget/TextView;
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->K:Landroid/widget/TextView;
    const-string v1, "VoiceCallGain"
  .line 19
    invoke-static { p0, v1, v2 }, Lcn/manstep/phonemirrorBox/b0;->d(Landroid/content/Context;Ljava/lang/String;I)I
    move-result v1
  .line 20
    invoke-virtual { v0, v1 }, Landroid/widget/SeekBar;->setProgress(I)V
  .line 21
    invoke-virtual { v0, p0 }, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
  .line 22
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->K:Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v2, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    return-void
.end method

.method private J0()V
  .registers 5
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const-string v1, "ShowFloatBall"
    const/4 v2, 0
    invoke-virtual { v0, v1, v2 }, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z
    move-result v0
    const v1, 2131296730
  .line 2
    invoke-virtual { p0, v1 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v1
    check-cast v1, Landroid/widget/RadioButton;
  .line 3
    invoke-virtual { v1, p0 }, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    const v2, 2131296729
  .line 4
    invoke-virtual { p0, v2 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v2
    check-cast v2, Landroid/widget/RadioButton;
  .line 5
    invoke-virtual { v2, p0 }, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    const/4 v3, 1
    if-eqz v0, :L0
  .line 6
    invoke-virtual { v1, v3 }, Landroid/widget/RadioButton;->setChecked(Z)V
    goto :L1
  :L0
  .line 7
    invoke-virtual { v2, v3 }, Landroid/widget/RadioButton;->setChecked(Z)V
  :L1
    return-void
.end method

.method private K0()V
  .registers 5
    const v0, 2131296579
  .line 1
    invoke-virtual { p0, v0 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v0
    if-eqz v0, :L2
  .line 2
    invoke-virtual { v0, p0 }, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    const v0, 2131296925
  .line 3
    invoke-virtual { p0, v0 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/TextView;
  .line 4
    invoke-virtual { v0, p0 }, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v1
    const/4 v2, 0
    const-string v3, "LanguageID"
    invoke-virtual { v1, v3, v2 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result v1
    if-nez v1, :L0
    const v1, 2131689790
  .line 6
    invoke-static { p0, v1 }, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    goto :L1
  :L0
  .line 7
    sget-object v2, Lcn/manstep/phonemirrorBox/x;->a:[Ljava/lang/String;
    aget-object v1, v2, v1
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  :L1
    const v0, 2131296556
  .line 8
    invoke-virtual { p0, v0 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/ImageView;
  .line 9
    invoke-virtual { v0, p0 }, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
  :L2
    return-void
.end method

.method private L0(Ljava/util/ArrayList;)Z
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/ArrayList<",
      "Ljava/lang/String;",
      ">;)Z"
    }
  .end annotation
  .catch Ljava/lang/Exception; { :L0 .. :L2 } :L16
  .catch Ljava/lang/Exception; { :L4 .. :L15 } :L16
  .registers 18
    move-object/from16 v0, p1
    const-string v1, "AutoKit_siri"
    const-string v2, "default"
    const-string v3, "AutoKitHideSettingsActivity,initLogoList: "
  .line 1
    invoke-virtual/range { p0 .. p0 }, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;
    move-result-object v4
    const/4 v5, 0
  :L0
  .line 2
    new-instance v6, Ljava/io/File;
    invoke-virtual/range { p0 .. p0 }, Landroid/app/Activity;->getCacheDir()Ljava/io/File;
    move-result-object v7
    const-string v8, "custom.png"
    invoke-direct { v6, v7, v8 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
  .line 3
    invoke-virtual { v6 }, Ljava/io/File;->exists()Z
    move-result v7
    if-eqz v7, :L1
    invoke-virtual { v6 }, Ljava/io/File;->isFile()Z
    move-result v7
    if-eqz v7, :L1
    const-string v7, "custom"
  .line 4
    invoke-virtual { v0, v7 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 5
    invoke-virtual { v6 }, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v6
    sput-object v6, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->N:Ljava/lang/String;
  :L1
  .line 6
    invoke-virtual { v0, v2 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 7
    invoke-virtual { v0, v1 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    const-string v6, "CarLogo"
  .line 8
    invoke-virtual { v4, v6 }, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v4
  .line 9
    array-length v6, v4
  :L2
    const-string v7, ""
    move-object v9, v7
    const/4 v8, 0
  :L3
    const-string v10, "AutoKit_add"
    const/4 v11, 1
    if-ge v8, v6, :L14
  :L4
    aget-object v12, v4, v8
  .line 10
    new-instance v13, Ljava/lang/StringBuilder;
    invoke-direct { v13 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v13, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v13, v12 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v13 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v13
    invoke-static { v13 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const-string v13, "."
  .line 11
    invoke-virtual { v12, v13 }, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
    move-result v13
    invoke-virtual { v12, v5, v13 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v12
  .line 12
    invoke-virtual { v12 }, Ljava/lang/String;->hashCode()I
    move-result v14
    const/4 v15, 4
    const/4 v13, 3
    const/4 v5, 2
    sparse-switch v14, :L17
    goto :L10
  :L5
    const-string v10, "Carlinkit"
    invoke-virtual { v12, v10 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v10
    if-eqz v10, :L10
    const/4 v10, 0
    goto :L11
  :L6
    invoke-virtual { v12, v2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v10
    if-eqz v10, :L10
    const/4 v10, 1
    goto :L11
  :L7
    invoke-virtual { v12, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v10
    if-eqz v10, :L10
    const/4 v10, 3
    goto :L11
  :L8
    invoke-virtual { v12, v10 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v10
    if-eqz v10, :L10
    const/4 v10, 4
    goto :L11
  :L9
    const-string v10, "Skywell"
    invoke-virtual { v12, v10 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v10
    if-eqz v10, :L10
    const/4 v10, 2
    goto :L11
  :L10
    const/4 v10, -1
  :L11
    if-eqz v10, :L12
    if-eq v10, v11, :L13
    if-eq v10, v5, :L13
    if-eq v10, v13, :L13
    if-eq v10, v15, :L13
  .line 13
    invoke-virtual { v0, v12 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto :L13
  :L12
    move-object v9, v12
  :L13
    add-int/lit8 v8, v8, 1
    const/4 v5, 0
    goto :L3
  :L14
  .line 14
    invoke-virtual { v0, v10 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  .line 15
    invoke-virtual { v9, v7 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-nez v1, :L15
  .line 16
    invoke-virtual { v0, v9 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
  :L15
    return v11
  :L16
    move-exception v0
  .line 17
    invoke-virtual { v0 }, Ljava/lang/Exception;->printStackTrace()V
  .line 18
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { v0 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    const/4 v1, 0
    return v1
  :L17
  .sparse-switch
    -467894961 -> :L9
    -428451095 -> :L8
    -396540475 -> :L7
    1544803905 -> :L6
    1997018969 -> :L5
  .end sparse-switch
.end method

.method private M0()V
  .registers 15
  .line 1
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
  .line 2
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->L0(Ljava/util/ArrayList;)Z
    move-result v1
    if-nez v1, :L0
    return-void
  :L0
  .line 3
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "AutoKitHideSettingsActivity, initLogoView: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v2
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 4
    invoke-virtual { v0 }, Ljava/util/ArrayList;->size()I
    move-result v1
    const/4 v2, 1
    if-ge v1, v2, :L1
    return-void
  :L1
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v1
    const-string v3, "CarPlayOEMIconName"
    const-string v4, ""
    invoke-virtual { v1, v3, v4 }, Lcn/manstep/phonemirrorBox/b0;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v3
    const-string v5, "CarPlayOEMIconPath"
    invoke-virtual { v3, v5, v4 }, Lcn/manstep/phonemirrorBox/b0;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
  .line 7
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct { v5 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v6, "AutoKitHideSettingsActivity, initLogoView: name="
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v5, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v6, ", path="
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v5, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v5 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-static { v5 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 8
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v5
    const-string v6, "CarPlayLogoType"
    invoke-virtual { v5, v6, v2 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result v5
    const/4 v6, 2
    if-ne v5, v6, :L2
    const-string v1, "AutoKit_siri"
  :L2
    const v5, 2131296693
  .line 9
    invoke-virtual { p0, v5 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v5
    check-cast v5, Landroid/widget/LinearLayout;
  .line 10
    invoke-virtual { v5 }, Landroid/widget/LinearLayout;->removeAllViews()V
    const/4 v6, 0
  .line 11
    invoke-virtual { v0 }, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v0
    const/4 v7, 0
    const/4 v8, 0
  :L3
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v9
    if-eqz v9, :L9
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v9
    check-cast v9, Ljava/lang/String;
  .line 12
    invoke-static { p0, v9 }, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->F0(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    move-result-object v10
    if-nez v10, :L4
    goto :L3
  :L4
  .line 13
    iget v11, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->v:I
    rem-int v11, v8, v11
    if-nez v11, :L5
  .line 14
    invoke-direct { p0, v6 }, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->z0(Landroid/widget/LinearLayout;)V
  .line 15
    new-instance v6, Landroid/widget/LinearLayout;
    invoke-direct { v6, p0 }, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
  .line 16
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v12, -1
    const/4 v13, -2
    invoke-direct { v11, v12, v13 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    const/high16 v12, 16800
  .line 17
    invoke-static { p0, v12 }, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I
    move-result v12
    invoke-virtual { v11, v7, v12, v7, v7 }, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V
  .line 18
    invoke-virtual { v6, v11 }, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  .line 19
    invoke-virtual { v5, v6 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 20
    invoke-direct { p0, v6 }, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->z0(Landroid/widget/LinearLayout;)V
  :L5
    add-int/lit8 v8, v8, 1
  .line 21
    new-instance v11, Landroid/widget/ImageView;
    invoke-direct { v11, p0 }, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
  .line 22
    invoke-virtual { v11, v10 }, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    const-string v10, "Carlinkit"
  .line 23
    invoke-virtual { v9, v10 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v10
    if-eqz v10, :L6
  .line 24
    invoke-virtual { v11, v2 }, Landroid/widget/ImageView;->setWillNotDraw(Z)V
  :L6
  .line 25
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->G0()I
    move-result v10
  .line 26
    invoke-virtual { v9, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v12
    if-eqz v12, :L7
  .line 27
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->H0()I
    move-result v10
  .line 28
    iput-object v11, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->u:Landroid/widget/ImageView;
  :L7
  .line 29
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct { v12, v10, v10 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    const/16 v10, 17
  .line 30
    iput v10, v12, Landroid/widget/LinearLayout$LayoutParams;->gravity:I
    const/high16 v10, 16672
  .line 31
    invoke-static { p0, v10 }, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I
    move-result v10
  .line 32
    invoke-virtual { v12, v10, v7, v10, v7 }, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V
  .line 33
    invoke-virtual { v11, v12 }, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    if-eqz v6, :L8
  .line 34
    invoke-virtual { v6, v11 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  .line 35
    invoke-direct { p0, v11, v9 }, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->Q0(Landroid/widget/ImageView;Ljava/lang/String;)V
  :L8
  .line 36
    invoke-virtual { v4, v3 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v10
    if-eqz v10, :L3
    const-string v10, "default"
    invoke-virtual { v9, v10 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v10
    if-eqz v10, :L3
  .line 37
    invoke-direct { p0, v11, v9 }, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->S0(Landroid/widget/ImageView;Ljava/lang/String;)V
    goto/16 :L3
  :L9
  .line 38
    invoke-direct { p0, v6, v8 }, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->y0(Landroid/widget/LinearLayout;I)V
    return-void
.end method

.method private N0()V
  .registers 5
    const v0, 2131296633
  .line 1
    invoke-virtual { p0, v0 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/LinearLayout;
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v1
    const-string v2, "MicType"
    const/4 v3, 0
    invoke-virtual { v1, v2, v3 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result v1
    const/4 v2, 1
    if-ne v1, v2, :L0
    const/16 v1, 8
  .line 3
    invoke-virtual { v0, v1 }, Landroid/widget/LinearLayout;->setVisibility(I)V
    goto :L1
  :L0
  .line 4
    invoke-virtual { v0, v3 }, Landroid/widget/LinearLayout;->setVisibility(I)V
  :L1
    const v0, 2131296632
  .line 5
    invoke-virtual { p0, v0 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/ImageView;
  .line 6
    invoke-virtual { v0, p0 }, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    return-void
.end method

.method private O0()V
  .registers 2
    const v0, 2131296848
  .line 1
    invoke-virtual { p0, v0 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/LinearLayout;
  .line 2
    invoke-virtual { v0, p0 }, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    const v0, 2131296384
  .line 3
    invoke-virtual { p0, v0 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/ImageView;
  .line 4
    invoke-virtual { v0, p0 }, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    return-void
.end method

.method private P0()V
  .registers 11
    const v0, 2131296351
  .line 1
    invoke-virtual { p0, v0 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/ImageView;
  .line 2
    invoke-virtual { v0, p0 }, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    const v0, 2131296728
  .line 3
    invoke-virtual { p0, v0 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/RadioButton;
  .line 4
    invoke-virtual { v0, p0 }, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    const v1, 2131296727
  .line 5
    invoke-virtual { p0, v1 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v1
    check-cast v1, Landroid/widget/RadioButton;
  .line 6
    invoke-virtual { v1, p0 }, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    const v2, 2131296948
  .line 7
    invoke-virtual { p0, v2 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v2
    check-cast v2, Landroid/widget/LinearLayout;
    iput-object v2, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->H:Landroid/widget/LinearLayout;
  .line 8
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v2
    const-string v3, "AudioClassify"
    const/4 v4, 0
    invoke-virtual { v2, v3, v4 }, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z
    move-result v2
    const/4 v3, 1
    if-eqz v2, :L0
  .line 9
    invoke-virtual { v0, v3 }, Landroid/widget/RadioButton;->setChecked(Z)V
  .line 10
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->H:Landroid/widget/LinearLayout;
    invoke-virtual { v0, v4 }, Landroid/widget/LinearLayout;->setVisibility(I)V
    goto :L1
  :L0
  .line 11
    invoke-virtual { v1, v3 }, Landroid/widget/RadioButton;->setChecked(Z)V
  .line 12
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->H:Landroid/widget/LinearLayout;
    const/16 v1, 8
    invoke-virtual { v0, v1 }, Landroid/widget/LinearLayout;->setVisibility(I)V
  :L1
    const v0, 2131296636
  .line 13
    invoke-virtual { p0, v0 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/SeekBar;
    const/16 v1, 30
  .line 14
    invoke-virtual { v0, v1 }, Landroid/widget/SeekBar;->setMax(I)V
  .line 15
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v1
    const-string v2, "MicGain"
    invoke-virtual { v1, v2, v4 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result v1
  .line 16
    invoke-virtual { v0, v1 }, Landroid/widget/SeekBar;->setProgress(I)V
  .line 17
    invoke-virtual { v0, p0 }, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    const v0, 2131296635
  .line 18
    invoke-virtual { p0, v0 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/TextView;
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->G:Landroid/widget/TextView;
  .line 19
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, ""
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, "db"
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    const v0, 2131296674
  .line 20
    invoke-virtual { p0, v0 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/SeekBar;
    const v1, 2131296673
  .line 21
    invoke-virtual { p0, v1 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v1
    check-cast v1, Landroid/widget/TextView;
    iput-object v1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->y:Landroid/widget/TextView;
    const v1, 2131296684
  .line 22
    invoke-virtual { p0, v1 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v1
    check-cast v1, Landroid/widget/SeekBar;
    const v2, 2131296681
  .line 23
    invoke-virtual { p0, v2 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v2
    check-cast v2, Landroid/widget/TextView;
    iput-object v2, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->w:Landroid/widget/TextView;
    const v2, 2131296947
  .line 24
    invoke-virtual { p0, v2 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v2
    check-cast v2, Landroid/widget/SeekBar;
    const v5, 2131296945
  .line 25
    invoke-virtual { p0, v5 }, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;
    move-result-object v5
    check-cast v5, Landroid/widget/TextView;
    iput-object v5, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->x:Landroid/widget/TextView;
    const-string v5, "audio"
  .line 26
    invoke-virtual { p0, v5 }, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Landroid/media/AudioManager;
    iput-object v5, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->z:Landroid/media/AudioManager;
    if-eqz v5, :L2
    const/4 v6, 3
  .line 27
    invoke-virtual { v5, v6 }, Landroid/media/AudioManager;->getStreamMaxVolume(I)I
    move-result v5
    iput v5, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->C:I
  .line 28
    invoke-virtual { v0, v5 }, Landroid/widget/SeekBar;->setMax(I)V
  .line 29
    iget-object v5, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->z:Landroid/media/AudioManager;
    invoke-virtual { v5, v6 }, Landroid/media/AudioManager;->getStreamVolume(I)I
    move-result v5
  .line 30
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct { v6 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v7, "AutoKitHideSettingsActivity,initVolumeSettings: current navigation volume: "
    invoke-virtual { v6, v7 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v6, v5 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v6 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v6
    invoke-static { v6 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 31
    invoke-virtual { v0, v5 }, Landroid/widget/SeekBar;->setProgress(I)V
  .line 32
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->y:Landroid/widget/TextView;
    new-instance v8, Ljava/lang/StringBuilder;
    invoke-direct { v8 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v8, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v8, v5 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v5, "/"
    invoke-virtual { v8, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v9, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->C:I
    invoke-virtual { v8, v9 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v8 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v8
    invoke-virtual { v6, v8 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 33
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->z:Landroid/media/AudioManager;
    const/4 v8, 2
    invoke-virtual { v6, v8 }, Landroid/media/AudioManager;->getStreamMaxVolume(I)I
    move-result v6
    iput v6, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->A:I
  .line 34
    invoke-virtual { v1, v6 }, Landroid/widget/SeekBar;->setMax(I)V
  .line 35
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->z:Landroid/media/AudioManager;
    invoke-virtual { v6, v8 }, Landroid/media/AudioManager;->getStreamVolume(I)I
    move-result v6
  .line 36
    new-instance v8, Ljava/lang/StringBuilder;
    invoke-direct { v8 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v8, v7 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v8, v6 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v8 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v7
    invoke-static { v7 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 37
    invoke-virtual { v1, v6 }, Landroid/widget/SeekBar;->setProgress(I)V
  .line 38
    iget-object v7, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->w:Landroid/widget/TextView;
    new-instance v8, Ljava/lang/StringBuilder;
    invoke-direct { v8 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v8, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v8, v6 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v8, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v6, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->A:I
    invoke-virtual { v8, v6 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v8 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v6
    invoke-virtual { v7, v6 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 39
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->z:Landroid/media/AudioManager;
    invoke-virtual { v6, v4 }, Landroid/media/AudioManager;->getStreamMaxVolume(I)I
    move-result v6
    iput v6, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->B:I
  .line 40
    invoke-virtual { v2, v6 }, Landroid/widget/SeekBar;->setMax(I)V
  .line 41
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->z:Landroid/media/AudioManager;
    invoke-virtual { v6, v4 }, Landroid/media/AudioManager;->getStreamVolume(I)I
    move-result v4
  .line 42
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct { v6 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v7, "AutoKitHideSettingsActivity,initVolumeSettings: current voice_call volume: "
    invoke-virtual { v6, v7 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v6, v4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v6 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v6
    invoke-static { v6 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 43
    invoke-virtual { v2, v4 }, Landroid/widget/SeekBar;->setProgress(I)V
  .line 44
    iget-object v6, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->x:Landroid/widget/TextView;
    new-instance v7, Ljava/lang/StringBuilder;
    invoke-direct { v7 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v7, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v7, v4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v7, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v3, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->B:I
    invoke-virtual { v7, v3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v7 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v6, v3 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  :L2
  .line 45
    invoke-virtual { v1, p0 }, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
  .line 46
    invoke-virtual { v2, p0 }, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
  .line 47
    invoke-virtual { v0, p0 }, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    return-void
.end method

.method private Q0(Landroid/widget/ImageView;Ljava/lang/String;)V
  .registers 4
  .line 1
    new-instance v0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$c;
    invoke-direct { v0, p0, p2, p1 }, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$c;-><init>(Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;Ljava/lang/String;Landroid/widget/ImageView;)V
    invoke-virtual { p1, v0 }, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    const-string v0, "Carlinkit"
  .line 2
    invoke-virtual { p2, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
  .line 3
    new-instance v0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$d;
    invoke-direct { v0, p0, p1, p2 }, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$d;-><init>(Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;Landroid/widget/ImageView;Ljava/lang/String;)V
    invoke-virtual { p1, v0 }, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
  :L0
    return-void
.end method

.method private R0(Ljava/lang/String;)V
  .registers 7
  .line 1
    invoke-virtual { p1 }, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    move-result-object v0
    const-string v1, "siri"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v0
    const-string v1, "CarPlayLogoType"
    if-eqz v0, :L0
  .line 2
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    const/4 v2, 2
    invoke-static { v2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    invoke-virtual { v0, v1, v2 }, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V
    goto :L2
  :L0
  .line 3
    invoke-virtual { p1 }, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    move-result-object v0
    const-string v2, "custom"
    invoke-virtual { v0, v2 }, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v0
    const/4 v2, 1
    if-eqz v0, :L1
  .line 4
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    sget-object v3, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->N:Ljava/lang/String;
    invoke-virtual { v0, p1, v3 }, Lcn/manstep/phonemirrorBox/b0;->z(Ljava/lang/String;Ljava/lang/String;)V
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    invoke-static { v2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    invoke-virtual { v0, v1, v2 }, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V
    goto :L2
  :L1
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "CarLogo/"
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v4, ".png"
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v0, p1, v3 }, Lcn/manstep/phonemirrorBox/b0;->z(Ljava/lang/String;Ljava/lang/String;)V
  .line 7
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    invoke-static { v2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    invoke-virtual { v0, v1, v2 }, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V
  :L2
  .line 8
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "AutoKitHideSettingsActivity,saveOemConfig: imageName = "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 9
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z
    move-result p1
    if-eqz p1, :L3
  .line 10
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->b()V
  .line 11
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->e()V
  :L3
    return-void
.end method

.method private S0(Landroid/widget/ImageView;Ljava/lang/String;)V
  .registers 9
    const/high16 v0, 16672
  .line 1
    invoke-static { p0, v0 }, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I
    move-result v0
  .line 2
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->u:Landroid/widget/ImageView;
    const/16 v2, 17
    const/4 v3, 0
    if-eqz v1, :L0
  .line 3
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->G0()I
    move-result v4
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->G0()I
    move-result v5
    invoke-direct { v1, v4, v5 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
  .line 4
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I
  .line 5
    invoke-virtual { v1, v0, v3, v0, v3 }, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V
  .line 6
    iget-object v4, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->u:Landroid/widget/ImageView;
    invoke-virtual { v4, v1 }, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  :L0
  .line 7
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->H0()I
    move-result v4
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->H0()I
    move-result v5
    invoke-direct { v1, v4, v5 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
  .line 8
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I
  .line 9
    invoke-virtual { v1, v0, v3, v0, v3 }, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V
  .line 10
    invoke-virtual { p1, v1 }, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  .line 11
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->u:Landroid/widget/ImageView;
  .line 12
    invoke-direct { p0, p2 }, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->R0(Ljava/lang/String;)V
    return-void
.end method

.method private T0(Z)V
  .registers 5
  .line 1
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v0
    invoke-static { p1 }, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    move-result-object v1
    const-string v2, "AudioClassify"
    invoke-virtual { v0, v2, v1 }, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->H:Landroid/widget/LinearLayout;
    if-eqz v0, :L1
    const/4 v1, 0
    const/16 v2, 8
    if-eqz p1, :L0
  .line 3
    invoke-virtual { v0, v1 }, Landroid/widget/LinearLayout;->setVisibility(I)V
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->I:Landroid/widget/LinearLayout;
    invoke-virtual { v0, v2 }, Landroid/widget/LinearLayout;->setVisibility(I)V
    goto :L1
  :L0
  .line 5
    invoke-virtual { v0, v2 }, Landroid/widget/LinearLayout;->setVisibility(I)V
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->I:Landroid/widget/LinearLayout;
    invoke-virtual { v0, v1 }, Landroid/widget/LinearLayout;->setVisibility(I)V
  :L1
  .line 7
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    if-eqz v0, :L2
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z
    move-result v0
    if-eqz v0, :L2
  .line 8
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-virtual { v0, p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->d1(Z)V
  :L2
    return-void
.end method

.method private U0()V
  .registers 7
  .line 1
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/util/c0;->n(Landroid/content/Context;)Ljava/lang/String;
    move-result-object v0
  .line 2
    invoke-virtual { p0 }, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    invoke-virtual { v1 }, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
    move-result-object v1
  .line 3
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I
    const/4 v2, 1
    const/4 v3, 0
    const/4 v4, 2
    if-ne v1, v4, :L0
    const/high16 v1, 17136
  .line 4
    invoke-static { p0, v1 }, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I
    move-result v3
  .line 5
    invoke-static { p0, v1 }, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I
    move-result v1
    const/high16 v4, 16512
  .line 6
    invoke-static { p0, v4 }, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I
    move-result v4
    goto :L2
  :L0
    if-ne v1, v2, :L1
    const/high16 v1, 17244
  .line 7
    invoke-static { p0, v1 }, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I
    move-result v3
  .line 8
    invoke-static { p0, v1 }, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I
    move-result v1
    const/high16 v4, 16640
  .line 9
    invoke-static { p0, v4 }, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I
    move-result v4
    goto :L2
  :L1
    const/4 v1, 0
    const/4 v4, 0
  :L2
  .line 10
    iget-object v5, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->F:Landroid/graphics/Bitmap;
    if-nez v5, :L3
  .line 11
    invoke-static { v0, v3, v1 }, Lcn/manstep/phonemirrorBox/util/v;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    move-result-object v0
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->F:Landroid/graphics/Bitmap;
  :L3
  .line 12
    new-instance v0, Landroid/widget/ImageView;
    invoke-direct { v0, p0 }, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
  .line 13
    invoke-virtual { v0, v4, v4, v4, v4 }, Landroid/widget/ImageView;->setPadding(IIII)V
  .line 14
    invoke-virtual { p0 }, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    const v3, 2131100067
    invoke-virtual { v1, v3 }, Landroid/content/res/Resources;->getColor(I)I
    move-result v1
    invoke-virtual { v0, v1 }, Landroid/widget/ImageView;->setBackgroundColor(I)V
  .line 15
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->F:Landroid/graphics/Bitmap;
    invoke-virtual { v0, v1 }, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
  .line 16
    new-instance v1, Landroid/app/AlertDialog$Builder;
    const v3, 2131755275
    invoke-direct { v1, p0, v3 }, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V
  .line 17
    invoke-virtual { v1, v0 }, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
  .line 18
    invoke-virtual { v1, v2 }, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;
  .line 19
    invoke-virtual { v1 }, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
    move-result-object v0
  .line 20
    invoke-virtual { v0, v2 }, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V
  .line 21
    invoke-virtual { v0 }, Landroid/app/AlertDialog;->show()V
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
    add-int/lit8 v1, v0, 1
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
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->x0()V
    return-void
.end method

.method static synthetic w0(Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;Landroid/widget/ImageView;Ljava/lang/String;)V
  .registers 3
  .line 1
    invoke-direct { p0, p1, p2 }, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->S0(Landroid/widget/ImageView;Ljava/lang/String;)V
    return-void
.end method

.method private x0()V
  .catch Ljava/lang/Exception; { :L3 .. :L4 } :L5
  .registers 4
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 23
    if-lt v0, v1, :L2
  .line 2
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct { v0 }, Ljava/util/ArrayList;-><init>()V
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"
  .line 3
    invoke-static { p0, v1 }, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I
    move-result v2
    if-eqz v2, :L0
  .line 4
    invoke-interface { v0, v1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  :L0
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"
  .line 5
    invoke-static { p0, v1 }, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I
    move-result v2
    if-eqz v2, :L1
  .line 6
    invoke-interface { v0, v1 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  :L1
  .line 7
    invoke-interface { v0 }, Ljava/util/List;->isEmpty()Z
    move-result v1
    if-nez v1, :L2
    const/4 v1, 0
    new-array v1, v1, [Ljava/lang/String;
  .line 8
    invoke-interface { v0, v1 }, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    move-result-object v0
    check-cast v0, [Ljava/lang/String;
    const/16 v1, 1000
  .line 9
    invoke-static { p0, v0, v1 }, Landroidx/core/app/a;->m(Landroid/app/Activity;[Ljava/lang/String;I)V
    return-void
  :L2
  .line 10
    new-instance v0, Landroid/content/Intent;
    const-string v1, "android.intent.action.GET_CONTENT"
    invoke-direct { v0, v1 }, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    const-string v1, "android.intent.category.OPENABLE"
  .line 11
    invoke-virtual { v0, v1 }, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;
    const-string v1, "image/*"
  .line 12
    invoke-virtual { v0, v1 }, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
    const/4 v1, 1
  :L3
  .line 13
    invoke-virtual { p0, v0, v1 }, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V
  :L4
    goto :L6
  :L5
    move-exception v0
  .line 14
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "AutoKitHideSettingsActivity,addCustomLogo: \n"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { v0 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L6
    return-void
.end method

.method private y0(Landroid/widget/LinearLayout;I)V
  .registers 10
    if-nez p1, :L0
    return-void
  :L0
  .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->v:I
    rem-int v1, p2, v0
    sub-int/2addr v0, v1
    const/high16 v1, 16672
  .line 2
    invoke-static { p0, v1 }, Lcn/manstep/phonemirrorBox/util/c0;->b(Landroid/content/Context;F)I
    move-result v1
  .line 3
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "addOccupyImageView: j = "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    const-string v3, "AutoKitHideSettingsActivity"
    invoke-static { v3, v2 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 4
    iget v2, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->v:I
    if-eq v0, v2, :L2
    const/4 v2, 0
    const/4 v3, 0
  :L1
    if-ge v3, v0, :L2
  .line 5
    new-instance v4, Landroid/widget/ImageView;
    invoke-direct { v4, p0 }, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
  .line 6
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->G0()I
    move-result v5
  .line 7
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct { v6, v5, v5 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    const/16 v5, 17
  .line 8
    iput v5, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I
  .line 9
    invoke-virtual { v6, v1, v2, v1, v2 }, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V
  .line 10
    invoke-virtual { v4, v6 }, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  .line 11
    iget v5, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->v:I
    rem-int v5, p2, v5
    add-int/lit8 v5, v5, 1
    invoke-virtual { p1, v4, v5 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V
    add-int/lit8 v3, v3, 1
    goto :L1
  :L2
  .line 12
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->z0(Landroid/widget/LinearLayout;)V
    return-void
.end method

.method private z0(Landroid/widget/LinearLayout;)V
  .registers 4
    if-eqz p1, :L0
  .line 1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, -2
    invoke-direct { v0, v1, v1 }, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    const/high16 v1, 16256
  .line 2
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F
  .line 3
    new-instance v1, Landroid/view/View;
    invoke-direct { v1, p0 }, Landroid/view/View;-><init>(Landroid/content/Context;)V
  .line 4
    invoke-virtual { v1, v0 }, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
  .line 5
    invoke-virtual { p1, v1 }, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
  :L0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
  .registers 7
  .line 1
    invoke-super { p0, p1, p2, p3 }, Landroidx/fragment/app/e;->onActivityResult(IILandroid/content/Intent;)V
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "HideSettingsActivity,onActivityResult: requestCode="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, ", resultCode="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const/4 v0, -1
    const/4 v1, 1
    if-ne p1, v1, :L0
    if-ne p2, v0, :L3
  .line 3
    invoke-virtual { p3 }, Landroid/content/Intent;->getData()Landroid/net/Uri;
    move-result-object p1
  .line 4
    new-instance p2, Ljava/io/File;
    invoke-virtual { p0 }, Landroid/app/Activity;->getCacheDir()Ljava/io/File;
    move-result-object p3
    const-string v0, "custom.png"
    invoke-direct { p2, p3, v0 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-static { p2 }, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    move-result-object p2
  .line 5
    invoke-direct { p0, p1, p2 }, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->C0(Landroid/net/Uri;Landroid/net/Uri;)V
    goto/16 :L3
  :L0
    const/16 v2, 69
    if-ne p1, v2, :L3
    const-string p1, "AutoKitHideSettingsActivity,onActivityResult: "
    if-ne p2, v0, :L2
  .line 6
    invoke-static { p3 }, Lcom/yalantis/ucrop/UCrop;->getOutput(Landroid/content/Intent;)Landroid/net/Uri;
    move-result-object p2
  .line 7
    new-instance p3, Ljava/lang/StringBuilder;
    invoke-direct { p3 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p3, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p3, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { p3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p3
    invoke-static { p3 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    if-eqz p2, :L3
  .line 8
    invoke-virtual { p2 }, Landroid/net/Uri;->getPath()Ljava/lang/String;
    move-result-object p2
  .line 9
    new-instance p3, Ljava/lang/StringBuilder;
    invoke-direct { p3 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p3, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p3, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
  .line 10
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object p1
    const-string p3, "custom"
    invoke-virtual { p1, p3, p2 }, Lcn/manstep/phonemirrorBox/b0;->z(Ljava/lang/String;Ljava/lang/String;)V
  .line 11
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object p1
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p2
    const-string p3, "CarPlayLogoType"
    invoke-virtual { p1, p3, p2 }, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V
  .line 12
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z
    move-result p1
    if-eqz p1, :L1
  .line 13
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->b()V
  .line 14
    sget-object p1, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;
    invoke-virtual { p1 }, Lcn/manstep/phonemirrorBox/BoxInterface/f;->e()V
  :L1
  .line 15
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->M0()V
    goto :L3
  :L2
    const/16 v0, 96
    if-ne p2, v0, :L3
  .line 16
    invoke-static { p3 }, Lcom/yalantis/ucrop/UCrop;->getError(Landroid/content/Intent;)Ljava/lang/Throwable;
    move-result-object p2
  .line 17
    new-instance p3, Ljava/lang/StringBuilder;
    invoke-direct { p3 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p3, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static { p2 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { p3, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  :L3
    return-void
.end method

.method public onClick(Landroid/view/View;)V
  .registers 4
    const/4 v0, 0
  .line 1
    iput v0, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->E:I
  .line 2
    invoke-virtual { p1 }, Landroid/view/View;->getId()I
    move-result p1
  .line 3
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->B0(I)Z
    move-result v1
    if-eqz v1, :L0
    return-void
  :L0
    const-string v1, "ShowFloatBall"
    sparse-switch p1, :L13
    goto :L12
  :L1
    const p1, 2131689934
  .line 4
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->D0(I)V
    goto :L12
  :L2
  .line 5
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object p1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    invoke-virtual { p1, v1, v0 }, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V
  .line 6
    new-instance p1, Landroid/content/Intent;
    const-class v0, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;
    invoke-direct { p1, p0, v0 }, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    invoke-virtual { p0, p1 }, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    goto :L12
  :L3
  .line 7
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object p1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    invoke-virtual { p1, v1, v0 }, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V
  .line 8
    new-instance p1, Landroid/content/Intent;
    const-class v0, Lcn/manstep/phonemirrorBox/floatwindow/FloatWindowService;
    invoke-direct { p1, p0, v0 }, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    invoke-virtual { p0, p1 }, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z
    goto :L12
  :L4
    const/4 p1, 1
  .line 9
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->T0(Z)V
    goto :L12
  :L5
  .line 10
    invoke-direct { p0, v0 }, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->T0(Z)V
    goto :L12
  :L6
  .line 11
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->E0()V
    goto :L12
  :L7
  .line 12
    new-instance p1, Landroid/content/Intent;
    const-class v0, Lcn/manstep/phonemirrorBox/LanguageSettingsActivity;
    invoke-direct { p1, p0, v0 }, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    invoke-virtual { p0, p1 }, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    goto :L12
  :L8
  .line 13
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->U0()V
    goto :L12
  :L9
  .line 14
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/k;->finish()V
    const p1, 17432578
    const v0, 17432579
  .line 15
    invoke-virtual { p0, p1, v0 }, Landroid/app/Activity;->overridePendingTransition(II)V
    goto :L12
  :L10
  .line 16
    invoke-direct { p0 }, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->A0()V
    goto :L12
  :L11
    const p1, 2131689576
  .line 17
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->D0(I)V
  :L12
    return-void
  :L13
  .sparse-switch
    2131296350 -> :L11
    2131296351 -> :L10
    2131296382 -> :L9
    2131296384 -> :L8
    2131296556 -> :L7
    2131296579 -> :L7
    2131296632 -> :L6
    2131296675 -> :L6
    2131296727 -> :L5
    2131296728 -> :L4
    2131296729 -> :L3
    2131296730 -> :L2
    2131296737 -> :L1
    2131296848 -> :L8
    2131296925 -> :L7
    2131296943 -> :L6
  .end sparse-switch
.end method

.method protected native onCreate(Landroid/os/Bundle;)V
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
  .registers 9
  .line 1
    invoke-virtual { p1 }, Landroid/widget/SeekBar;->getId()I
    move-result p3
  .line 2
    invoke-virtual { p1 }, Landroid/widget/SeekBar;->getId()I
    move-result v0
    const-string v1, "/"
    const/4 v2, 4
    const-string v3, ""
    const v4, 2131296684
    if-ne v0, v4, :L0
  .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->z:Landroid/media/AudioManager;
    const/4 p3, 2
    invoke-virtual { p1, p3, p2, v2 }, Landroid/media/AudioManager;->setStreamVolume(III)V
  .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->w:Landroid/widget/TextView;
    new-instance p3, Ljava/lang/StringBuilder;
    invoke-direct { p3 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p3, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p3, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p3, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget p2, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->A:I
    invoke-virtual { p3, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-virtual { p1, p2 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    goto/16 :L8
  :L0
  .line 5
    invoke-virtual { p1 }, Landroid/widget/SeekBar;->getId()I
    move-result v0
    const v4, 2131296947
    if-ne v0, v4, :L1
  .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->z:Landroid/media/AudioManager;
    const/4 p3, 0
    invoke-virtual { p1, p3, p2, v2 }, Landroid/media/AudioManager;->setStreamVolume(III)V
  .line 7
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->x:Landroid/widget/TextView;
    new-instance p3, Ljava/lang/StringBuilder;
    invoke-direct { p3 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p3, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p3, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p3, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget p2, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->B:I
    invoke-virtual { p3, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-virtual { p1, p2 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    goto/16 :L8
  :L1
  .line 8
    invoke-virtual { p1 }, Landroid/widget/SeekBar;->getId()I
    move-result v0
    const v4, 2131296674
    if-ne v0, v4, :L2
  .line 9
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->z:Landroid/media/AudioManager;
    const/4 p3, 3
    invoke-virtual { p1, p3, p2, v2 }, Landroid/media/AudioManager;->setStreamVolume(III)V
  .line 10
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->y:Landroid/widget/TextView;
    new-instance p3, Ljava/lang/StringBuilder;
    invoke-direct { p3 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p3, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p3, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p3, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget p2, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->C:I
    invoke-virtual { p3, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-virtual { p1, p2 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    goto/16 :L8
  :L2
  .line 11
    invoke-virtual { p1 }, Landroid/widget/SeekBar;->getId()I
    move-result p1
    const v0, 2131296636
    const-string v1, "db"
    if-ne p1, v0, :L4
  .line 12
    rem-int/lit8 p1, p2, 2
    if-eqz p1, :L3
    add-int/lit8 p2, p2, 1
  :L3
  .line 13
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->G:Landroid/widget/TextView;
    new-instance p3, Ljava/lang/StringBuilder;
    invoke-direct { p3 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p3, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p3, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p3, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p3
    invoke-virtual { p1, p3 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
  .line 14
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object p1
    invoke-static { p2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object p2
    const-string p3, "MicGain"
    invoke-virtual { p1, p3, p2 }, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V
    goto :L8
  :L4
    const p1, 2131296682
    if-ne p3, p1, :L6
  .line 15
    rem-int/lit8 p1, p2, 2
    if-eqz p1, :L5
    add-int/lit8 p2, p2, 1
  :L5
  .line 16
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->J:Landroid/widget/TextView;
    new-instance p3, Ljava/lang/StringBuilder;
    invoke-direct { p3 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p3, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p3, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p3, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p3
    invoke-virtual { p1, p3 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    const-string p1, "NaviGain"
  .line 17
    invoke-static { p0, p1, p2 }, Lcn/manstep/phonemirrorBox/b0;->x(Landroid/content/Context;Ljava/lang/String;I)V
    goto :L8
  :L6
    const p1, 2131296946
    if-ne p3, p1, :L8
  .line 18
    rem-int/lit8 p1, p2, 2
    if-eqz p1, :L7
    add-int/lit8 p2, p2, 1
  :L7
  .line 19
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->K:Landroid/widget/TextView;
    new-instance p3, Ljava/lang/StringBuilder;
    invoke-direct { p3 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p3, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p3, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p3, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p3
    invoke-virtual { p1, p3 }, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    const-string p1, "VoiceCallGain"
  .line 20
    invoke-static { p0, p1, p2 }, Lcn/manstep/phonemirrorBox/b0;->x(Landroid/content/Context;Ljava/lang/String;I)V
  :L8
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
