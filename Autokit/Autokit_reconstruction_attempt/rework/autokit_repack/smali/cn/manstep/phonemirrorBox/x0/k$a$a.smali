.class Lcn/manstep/phonemirrorBox/x0/k$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/manstep/phonemirrorBox/k0/h$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/x0/k$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/manstep/phonemirrorBox/x0/k$a;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/x0/k$a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/x0/k$a$a;->a:Lcn/manstep/phonemirrorBox/x0/k$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .registers 4

    .line 1
    invoke-static {p1}, Lcn/manstep/phonemirrorBox/util/JniTools;->open(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 2
    new-instance p1, Lcn/manstep/phonemirrorBox/l0/o;

    invoke-direct {p1}, Lcn/manstep/phonemirrorBox/l0/o;-><init>()V

    .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/k$a$a;->a:Lcn/manstep/phonemirrorBox/x0/k$a;

    iget-object v0, v0, Lcn/manstep/phonemirrorBox/x0/k$a;->b:Lcn/manstep/phonemirrorBox/x0/k;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/x0/k;->n(Lcn/manstep/phonemirrorBox/x0/k;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/n;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->l()Landroidx/fragment/app/w;

    move-result-object v0

    const v1, 0x7f09015e

    .line 4
    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/w;->b(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    const-string p1, "DebugFragment"

    invoke-virtual {v0, p1}, Landroidx/fragment/app/w;->g(Ljava/lang/String;)Landroidx/fragment/app/w;

    invoke-virtual {v0}, Landroidx/fragment/app/w;->i()I

    const/4 p1, 0x1

    return p1

    :cond_2d
    const/4 p1, 0x0

    return p1
.end method
