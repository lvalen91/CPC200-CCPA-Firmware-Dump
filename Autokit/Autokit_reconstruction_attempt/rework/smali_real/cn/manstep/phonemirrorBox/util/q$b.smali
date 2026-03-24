.class Lcn/manstep/phonemirrorBox/util/q$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/util/q;-><init>(Lcn/manstep/phonemirrorBox/util/q$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/util/q$c;

.field final synthetic c:Lcn/manstep/phonemirrorBox/util/q;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/util/q;Lcn/manstep/phonemirrorBox/util/q$c;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/q$b;->c:Lcn/manstep/phonemirrorBox/util/q;

    iput-object p2, p0, Lcn/manstep/phonemirrorBox/util/q$b;->b:Lcn/manstep/phonemirrorBox/util/q$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/q$b;->b:Lcn/manstep/phonemirrorBox/util/q$c;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/q$c;->k(Lcn/manstep/phonemirrorBox/util/q$c;)Lcn/manstep/phonemirrorBox/util/q$d;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/q$b;->b:Lcn/manstep/phonemirrorBox/util/q$c;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/q$c;->k(Lcn/manstep/phonemirrorBox/util/q$c;)Lcn/manstep/phonemirrorBox/util/q$d;

    move-result-object v0

    invoke-interface {v0, v1}, Lcn/manstep/phonemirrorBox/util/q$d;->a(Z)V

    .line 3
    :cond_12
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/q$b;->c:Lcn/manstep/phonemirrorBox/util/q;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/q;->a(Lcn/manstep/phonemirrorBox/util/q;)Lcn/manstep/phonemirrorBox/util/q$d;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/q$b;->c:Lcn/manstep/phonemirrorBox/util/q;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/q;->a(Lcn/manstep/phonemirrorBox/util/q;)Lcn/manstep/phonemirrorBox/util/q$d;

    move-result-object v0

    invoke-interface {v0, v1}, Lcn/manstep/phonemirrorBox/util/q$d;->a(Z)V

    :cond_23
    return-void
.end method
