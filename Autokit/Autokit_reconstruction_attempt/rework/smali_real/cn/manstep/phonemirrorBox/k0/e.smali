.class public Lcn/manstep/phonemirrorBox/k0/e;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/manstep/phonemirrorBox/k0/e$a;,
        Lcn/manstep/phonemirrorBox/k0/e$b;
    }
.end annotation


# instance fields
.field private b:Lcn/manstep/phonemirrorBox/k0/e$b;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic a(Lcn/manstep/phonemirrorBox/k0/e;)Landroid/widget/TextView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/k0/e;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic b(Lcn/manstep/phonemirrorBox/k0/e;Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/k0/e;->c:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic c(Lcn/manstep/phonemirrorBox/k0/e;Landroid/widget/EditText;)Landroid/widget/EditText;
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/k0/e;->d:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic d(Lcn/manstep/phonemirrorBox/k0/e;)Landroid/view/View;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/k0/e;->f:Landroid/view/View;

    return-object p0
.end method

.method static synthetic e(Lcn/manstep/phonemirrorBox/k0/e;Landroid/view/View;)Landroid/view/View;
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/k0/e;->f:Landroid/view/View;

    return-object p1
.end method

.method static synthetic f(Lcn/manstep/phonemirrorBox/k0/e;)Landroid/view/View;
    .registers 1

    .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/k0/e;->e:Landroid/view/View;

    return-object p0
.end method

.method static synthetic g(Lcn/manstep/phonemirrorBox/k0/e;Landroid/view/View;)Landroid/view/View;
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/k0/e;->e:Landroid/view/View;

    return-object p1
.end method

.method private static h(Ljava/lang/String;)Z
    .registers 9

    const/4 v0, 0x0

    if-eqz p0, :cond_a1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    goto/16 :goto_a1

    .line 2
    :cond_f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_17

    return v0

    :cond_17
    const-string v1, "(.)\\1+"

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    return v0

    :cond_20
    const-string v1, "(.+)(\\1)+"

    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    return v0

    :cond_29
    const-string v1, "(\\d)\\1+"

    .line 5
    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    return v0

    :cond_32
    const-string v1, "(.{1,2})(\\1)+"

    .line 6
    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    return v0

    :cond_3b
    const-string v1, ".*(.)\\1{2,}.*"

    .line 7
    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    return v0

    :cond_44
    const-string v1, "(\\d)\\1*(\\d)\\2*(\\d)\\3*(\\d)\\4*"

    .line 8
    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4d

    return v0

    :cond_4d
    const-string v1, ".*(\\d+[a-zA-Z][^\\w\\s]*)|(^[^\\w\\s]+[a-zA-Z][^\\w\\s]*)|([a-zA-Z]\\d[^\\w\\s]*).*"

    .line 9
    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_56

    return v0

    :cond_56
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "qwerty"

    aput-object v3, v2, v0

    const-string v3, "12345"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "asdfg"

    const/4 v5, 0x2

    aput-object v3, v2, v5

    const/4 v3, 0x0

    :goto_68
    if-ge v3, v1, :cond_7a

    .line 10
    aget-object v6, v2, v3

    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_77

    return v0

    :cond_77
    add-int/lit8 v3, v3, 0x1

    goto :goto_68

    :cond_7a
    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/String;

    const-string v6, "asdfghjkl"

    aput-object v6, v3, v0

    const-string v6, "qwertyuiop"

    aput-object v6, v3, v4

    const-string v6, "1234567890"

    aput-object v6, v3, v5

    const-string v5, "zxcvbnm"

    aput-object v5, v3, v1

    const/4 v1, 0x0

    :goto_8e
    if-ge v1, v2, :cond_a0

    .line 12
    aget-object v5, v3, v1

    .line 13
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9d

    return v0

    :cond_9d
    add-int/lit8 v1, v1, 0x1

    goto :goto_8e

    :cond_a0
    return v4

    :cond_a1
    :goto_a1
    return v0
.end method


# virtual methods
.method public dismiss()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/e;->d:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public i(Lcn/manstep/phonemirrorBox/k0/e$b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/k0/e;->b:Lcn/manstep/phonemirrorBox/k0/e$b;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09011f

    if-ne p1, v0, :cond_d

    .line 2
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/k0/e;->dismiss()V

    goto :goto_4b

    :cond_d
    const v0, 0x7f090120

    if-ne p1, v0, :cond_4b

    .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k0/e;->d:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 5
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/k0/e;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/e;->b:Lcn/manstep/phonemirrorBox/k0/e$b;

    invoke-interface {v0, p1}, Lcn/manstep/phonemirrorBox/k0/e$b;->u(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/k0/e;->dismiss()V

    goto :goto_4b

    .line 8
    :cond_35
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k0/e;->d:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f011a

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcn/manstep/phonemirrorBox/widget/a;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_4b
    :goto_4b
    return-void
.end method
