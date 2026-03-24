.class public Lcn/manstep/phonemirrorBox/x0/f;
.super Landroidx/lifecycle/v;
.source "SourceFile"


# instance fields
.field private c:[Ljava/lang/String;

.field private d:[Ljava/lang/String;

.field private e:[Ljava/lang/String;

.field private f:[Ljava/lang/String;

.field public g:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public i:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/v;-><init>()V

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    invoke-static {}, Lcn/manstep/phonemirrorBox/util/c0;->q()Z

    move-result v1

    const-string v2, "IsTextureView"

    invoke-virtual {v0, v2, v1}, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcn/manstep/phonemirrorBox/p;->i:Z

    .line 3
    new-instance v0, Landroidx/lifecycle/o;

    sget-boolean v1, Lcn/manstep/phonemirrorBox/p;->i:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/o;-><init>(Ljava/lang/Object;)V

    .line 4
    new-instance v0, Landroidx/lifecycle/o;

    invoke-direct {v0}, Landroidx/lifecycle/o;-><init>()V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/x0/f;->g:Landroidx/lifecycle/o;

    .line 5
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    const-string v1, "IsLeftDrive"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z

    move-result v0

    .line 6
    new-instance v1, Landroidx/lifecycle/o;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/lifecycle/o;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcn/manstep/phonemirrorBox/x0/f;->i:Landroidx/lifecycle/o;

    .line 7
    new-instance v0, Landroidx/lifecycle/o;

    invoke-direct {v0}, Landroidx/lifecycle/o;-><init>()V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/x0/f;->h:Landroidx/lifecycle/o;

    .line 8
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    sget-boolean v1, Lcn/manstep/phonemirrorBox/p;->g:Z

    xor-int/2addr v1, v2

    const-string v2, "DecodeMethod"

    invoke-virtual {v0, v2, v1}, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I

    move-result v0

    .line 9
    new-instance v1, Landroidx/lifecycle/o;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/lifecycle/o;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcn/manstep/phonemirrorBox/x0/f;->j:Landroidx/lifecycle/o;

    .line 10
    new-instance v0, Landroidx/lifecycle/o;

    invoke-direct {v0}, Landroidx/lifecycle/o;-><init>()V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/x0/f;->k:Landroidx/lifecycle/o;

    .line 11
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "AudioTransferMode"

    invoke-virtual {v0, v2, v1}, Lcn/manstep/phonemirrorBox/b0;->o(Ljava/lang/String;Z)Z

    move-result v0

    .line 12
    new-instance v1, Landroidx/lifecycle/o;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/lifecycle/o;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcn/manstep/phonemirrorBox/x0/f;->l:Landroidx/lifecycle/o;

    .line 13
    new-instance v0, Landroidx/lifecycle/o;

    invoke-direct {v0}, Landroidx/lifecycle/o;-><init>()V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/x0/f;->m:Landroidx/lifecycle/o;

    .line 14
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/x0/f;->i()V

    return-void
.end method


# virtual methods
.method public i()V
    .registers 7

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/MyApplication;->b()Lcn/manstep/phonemirrorBox/MyApplication;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/MyApplication;->b()Lcn/manstep/phonemirrorBox/MyApplication;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0f01a7

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iput-object v1, p0, Lcn/manstep/phonemirrorBox/x0/f;->c:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    .line 3
    invoke-static {}, Lcn/manstep/phonemirrorBox/MyApplication;->b()Lcn/manstep/phonemirrorBox/MyApplication;

    move-result-object v2

    const v5, 0x7f0f00a8

    invoke-virtual {v2, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 4
    invoke-static {}, Lcn/manstep/phonemirrorBox/MyApplication;->b()Lcn/manstep/phonemirrorBox/MyApplication;

    move-result-object v2

    const v5, 0x7f0f008b

    invoke-virtual {v2, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iput-object v1, p0, Lcn/manstep/phonemirrorBox/x0/f;->f:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    .line 5
    invoke-static {}, Lcn/manstep/phonemirrorBox/MyApplication;->b()Lcn/manstep/phonemirrorBox/MyApplication;

    move-result-object v2

    const v5, 0x7f0f00da

    invoke-virtual {v2, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 6
    invoke-static {}, Lcn/manstep/phonemirrorBox/MyApplication;->b()Lcn/manstep/phonemirrorBox/MyApplication;

    move-result-object v2

    const v5, 0x7f0f00d9

    invoke-virtual {v2, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iput-object v1, p0, Lcn/manstep/phonemirrorBox/x0/f;->e:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    .line 7
    invoke-static {}, Lcn/manstep/phonemirrorBox/MyApplication;->b()Lcn/manstep/phonemirrorBox/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0141

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 8
    invoke-static {}, Lcn/manstep/phonemirrorBox/MyApplication;->b()Lcn/manstep/phonemirrorBox/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f01d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/x0/f;->d:[Ljava/lang/String;

    .line 9
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/f;->g:Landroidx/lifecycle/o;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/x0/f;->c:[Ljava/lang/String;

    sget-boolean v2, Lcn/manstep/phonemirrorBox/p;->i:Z

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/f;->h:Landroidx/lifecycle/o;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/x0/f;->i:Landroidx/lifecycle/o;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_ab

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/x0/f;->d:[Ljava/lang/String;

    aget-object v1, v1, v3

    goto :goto_af

    :cond_ab
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/x0/f;->d:[Ljava/lang/String;

    aget-object v1, v1, v4

    :goto_af
    invoke-virtual {v0, v1}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/f;->k:Landroidx/lifecycle/o;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/x0/f;->e:[Ljava/lang/String;

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/x0/f;->j:Landroidx/lifecycle/o;

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    .line 12
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/f;->m:Landroidx/lifecycle/o;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/x0/f;->l:Landroidx/lifecycle/o;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_dc

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/x0/f;->f:[Ljava/lang/String;

    aget-object v1, v1, v3

    goto :goto_e0

    :cond_dc
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/x0/f;->f:[Ljava/lang/String;

    aget-object v1, v1, v4

    :goto_e0
    invoke-virtual {v0, v1}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    return-void
.end method
