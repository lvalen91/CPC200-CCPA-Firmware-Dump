.class Lcn/manstep/phonemirrorBox/x0/k$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/manstep/phonemirrorBox/util/q$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/x0/k;->F0(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/x0/k;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/x0/k;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/x0/k$c;->b:Lcn/manstep/phonemirrorBox/x0/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/k$c;->b:Lcn/manstep/phonemirrorBox/x0/k;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/x0/k;->m(Lcn/manstep/phonemirrorBox/x0/k;)Lcn/manstep/phonemirrorBox/x0/l;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/x0/k$c;->b:Lcn/manstep/phonemirrorBox/x0/k;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/x0/k;->m(Lcn/manstep/phonemirrorBox/x0/k;)Lcn/manstep/phonemirrorBox/x0/l;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/manstep/phonemirrorBox/x0/l;->l(Z)V

    :cond_11
    return-void
.end method
