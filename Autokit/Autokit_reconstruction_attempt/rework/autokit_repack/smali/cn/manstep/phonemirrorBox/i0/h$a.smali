.class Lcn/manstep/phonemirrorBox/i0/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/databinding/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/manstep/phonemirrorBox/i0/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/manstep/phonemirrorBox/i0/h;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/i0/h;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/i0/h$a;->a:Lcn/manstep/phonemirrorBox/i0/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/i0/h$a;->a:Lcn/manstep/phonemirrorBox/i0/h;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/i0/h;->N(Lcn/manstep/phonemirrorBox/i0/h;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/i0/h$a;->a:Lcn/manstep/phonemirrorBox/i0/h;

    iget-object v1, v1, Lcn/manstep/phonemirrorBox/i0/g;->M:Lcn/manstep/phonemirrorBox/x0/a;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_14

    const/4 v4, 0x1

    goto :goto_15

    :cond_14
    const/4 v4, 0x0

    :goto_15
    if-eqz v4, :cond_28

    .line 3
    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/x0/a;->y()Landroidx/lifecycle/o;

    move-result-object v1

    if-eqz v1, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    :goto_1f
    if-eqz v2, :cond_28

    .line 4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    :cond_28
    return-void
.end method
