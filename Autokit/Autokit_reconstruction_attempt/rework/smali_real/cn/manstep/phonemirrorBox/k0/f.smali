.class public Lcn/manstep/phonemirrorBox/k0/f;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/manstep/phonemirrorBox/k0/f$b;
    }
.end annotation


# instance fields
.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;

.field private h:I

.field private i:I


# direct methods
.method private constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;ILcn/manstep/phonemirrorBox/k0/f$a;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/manstep/phonemirrorBox/k0/f;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic a(Lcn/manstep/phonemirrorBox/k0/f;)Landroid/widget/TextView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/k0/f;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic b(Lcn/manstep/phonemirrorBox/k0/f;Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/k0/f;->c:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic c(Lcn/manstep/phonemirrorBox/k0/f;)Landroid/widget/TextView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/k0/f;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic d(Lcn/manstep/phonemirrorBox/k0/f;Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/k0/f;->d:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic e(Lcn/manstep/phonemirrorBox/k0/f;Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/k0/f;->e:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic f(Lcn/manstep/phonemirrorBox/k0/f;Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/k0/f;->f:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic g(Lcn/manstep/phonemirrorBox/k0/f;Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;)Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/k0/f;->g:Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;

    return-object p1
.end method

.method static synthetic h(Lcn/manstep/phonemirrorBox/k0/f;)Landroid/view/View;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/k0/f;->b:Landroid/view/View;

    return-object p0
.end method

.method static synthetic i(Lcn/manstep/phonemirrorBox/k0/f;Landroid/view/View;)Landroid/view/View;
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/k0/f;->b:Landroid/view/View;

    return-object p1
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->cancel()V

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/f;->g:Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->f()V

    return-void
.end method

.method public j(I)V
    .registers 5

    .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/k0/f;->h:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/manstep/phonemirrorBox/k0/f;->i:I

    .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/f;->g:Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;

    invoke-virtual {v0, p1}, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->setBarMax(I)V

    .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/f;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_2d

    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/f;->f:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2d
    return-void
.end method

.method public k(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/f;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public l(I)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/f;->g:Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;

    iput p1, v0, Lcn/manstep/phonemirrorBox/customview/CustomProgressBar;->r:I

    int-to-float v0, p1

    .line 2
    iget v1, p0, Lcn/manstep/phonemirrorBox/k0/f;->h:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 3
    iput v0, p0, Lcn/manstep/phonemirrorBox/k0/f;->i:I

    .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/f;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_2f

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/manstep/phonemirrorBox/k0/f;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    :cond_2f
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/f;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_60

    .line 7
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcn/manstep/phonemirrorBox/k0/f;->h:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    int-to-long v2, p1

    invoke-static {v1, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    .line 9
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/k0/f;->f:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_60
    return-void
.end method

.method public m()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/f;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
