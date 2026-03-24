.class Lcn/manstep/phonemirrorBox/x0/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/manstep/phonemirrorBox/l0/t$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/x0/m;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/manstep/phonemirrorBox/x0/m;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/x0/m;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/x0/m$a;->a:Lcn/manstep/phonemirrorBox/x0/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .registers 5

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 2
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v2, 0x10

    if-le v0, v2, :cond_12

    return v1

    .line 3
    :cond_12
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/m$a;->a:Lcn/manstep/phonemirrorBox/x0/m;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/x0/m;->j(Lcn/manstep/phonemirrorBox/x0/m;)Landroidx/lifecycle/o;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/m$a;->a:Lcn/manstep/phonemirrorBox/x0/m;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/x0/m;->j(Lcn/manstep/phonemirrorBox/x0/m;)Landroidx/lifecycle/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    .line 5
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object v0

    const-string v1, "BtName"

    invoke-virtual {v0, v1, p1}, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 7
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->e1([B)Z

    :cond_43
    const/4 p1, 0x1

    return p1
.end method
