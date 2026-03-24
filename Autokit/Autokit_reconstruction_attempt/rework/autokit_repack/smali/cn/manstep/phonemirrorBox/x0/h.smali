.class public Lcn/manstep/phonemirrorBox/x0/h;
.super Landroidx/lifecycle/a;
.source "SourceFile"


# instance fields
.field private d:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/lifecycle/a;-><init>(Landroid/app/Application;)V

    .line 2
    new-instance p1, Landroidx/lifecycle/o;

    invoke-direct {p1}, Landroidx/lifecycle/o;-><init>()V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/x0/h;->d:Landroidx/lifecycle/o;

    .line 3
    new-instance p1, Landroidx/lifecycle/o;

    invoke-direct {p1}, Landroidx/lifecycle/o;-><init>()V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/x0/h;->e:Landroidx/lifecycle/o;

    return-void
.end method


# virtual methods
.method public j()Landroidx/lifecycle/o;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/h;->e:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public k()Landroidx/lifecycle/o;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/h;->d:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/h;->e:Landroidx/lifecycle/o;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/h;->d:Landroidx/lifecycle/o;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    return-void
.end method
