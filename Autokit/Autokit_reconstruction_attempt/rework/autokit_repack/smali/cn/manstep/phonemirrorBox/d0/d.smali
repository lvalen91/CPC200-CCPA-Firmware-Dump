.class public final synthetic Lcn/manstep/phonemirrorBox/d0/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcn/manstep/phonemirrorBox/d0/j;

.field public final synthetic c:Lcn/manstep/phonemirrorBox/util/o;


# direct methods
.method public synthetic constructor <init>(Lcn/manstep/phonemirrorBox/d0/j;Lcn/manstep/phonemirrorBox/util/o;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/d0/d;->b:Lcn/manstep/phonemirrorBox/d0/j;

    iput-object p2, p0, Lcn/manstep/phonemirrorBox/d0/d;->c:Lcn/manstep/phonemirrorBox/util/o;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/d0/d;->b:Lcn/manstep/phonemirrorBox/d0/j;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/d0/d;->c:Lcn/manstep/phonemirrorBox/util/o;

    invoke-virtual {v0, v1, p1}, Lcn/manstep/phonemirrorBox/d0/j;->v(Lcn/manstep/phonemirrorBox/util/o;Landroid/view/View;)V

    return-void
.end method
