.class Lcn/manstep/phonemirrorBox/l0/v$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/l0/v;->L0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/l0/v;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/l0/v;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/v$a;->b:Lcn/manstep/phonemirrorBox/l0/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const-string v0, "PermissionRequestFragment"

    const-string v1, "checkPermissionRunnable"

    .line 1
    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/v$a;->b:Lcn/manstep/phonemirrorBox/l0/v;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/l0/v;->h2(Lcn/manstep/phonemirrorBox/l0/v;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2b

    .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/v$a;->b:Lcn/manstep/phonemirrorBox/l0/v;

    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/l0/v;->k2(Lcn/manstep/phonemirrorBox/l0/v;Z)Z

    .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/v$a;->b:Lcn/manstep/phonemirrorBox/l0/v;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/l0/v;->l2(Lcn/manstep/phonemirrorBox/l0/v;)V

    .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/v$a;->b:Lcn/manstep/phonemirrorBox/l0/v;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/l0/v;->n2(Lcn/manstep/phonemirrorBox/l0/v;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/v$a;->b:Lcn/manstep/phonemirrorBox/l0/v;

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/l0/v;->m2(Lcn/manstep/phonemirrorBox/l0/v;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2b
    return-void
.end method
