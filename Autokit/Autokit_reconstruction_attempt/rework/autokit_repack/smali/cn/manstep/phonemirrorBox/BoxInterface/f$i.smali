.class Lcn/manstep/phonemirrorBox/BoxInterface/f$i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/manstep/phonemirrorBox/BoxInterface/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "i"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Lcn/manstep/phonemirrorBox/BoxInterface/f;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->a:I

    .line 3
    iput p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->b:I

    .line 4
    iput p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->c:I

    .line 5
    iput p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->d:I

    return-void
.end method

.method static synthetic e(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;)I
    .registers 1

    .line 1
    iget p0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->b:I

    return p0
.end method

.method static synthetic f(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->b:I

    return p1
.end method

.method static synthetic g(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;)I
    .registers 1

    .line 1
    iget p0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->a:I

    return p0
.end method

.method static synthetic h(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->a:I

    return p1
.end method

.method static synthetic i(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;)I
    .registers 1

    .line 1
    iget p0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->c:I

    return p0
.end method

.method static synthetic j(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->c:I

    return p1
.end method

.method static synthetic k(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;)I
    .registers 1

    .line 1
    iget p0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->d:I

    return p0
.end method

.method static synthetic l(Lcn/manstep/phonemirrorBox/BoxInterface/f$i;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->d:I

    return p1
.end method


# virtual methods
.method public a()V
    .registers 2

    const v0, 0x55bb55bb

    .line 1
    iput v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->a:I

    return-void
.end method

.method public b()Z
    .registers 3

    .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->a:I

    const v1, 0x55bb55bb

    if-ne v1, v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public c()Z
    .registers 3

    .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->a:I

    const v1, 0x55aa55aa

    if-eq v1, v0, :cond_c

    const v1, 0x55bb55bb

    if-ne v1, v0, :cond_16

    :cond_c
    iget v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->d:I

    iget v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->c:I

    xor-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public d()V
    .registers 2

    .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->c:I

    xor-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->d:I

    .line 2
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    const v0, 0x55bb55bb

    goto :goto_13

    :cond_10
    const v0, 0x55aa55aa

    :goto_13
    iput v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$i;->a:I

    return-void
.end method

.method public m()I
    .registers 2

    const/16 v0, 0x10

    return v0
.end method
