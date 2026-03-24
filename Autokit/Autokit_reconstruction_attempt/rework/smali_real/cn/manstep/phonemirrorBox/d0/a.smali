.class public final synthetic Lcn/manstep/phonemirrorBox/d0/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcn/manstep/phonemirrorBox/d0/i;

.field public final synthetic c:Lcn/manstep/phonemirrorBox/util/m;


# direct methods
.method public synthetic constructor <init>(Lcn/manstep/phonemirrorBox/d0/i;Lcn/manstep/phonemirrorBox/util/m;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/d0/a;->b:Lcn/manstep/phonemirrorBox/d0/i;

    iput-object p2, p0, Lcn/manstep/phonemirrorBox/d0/a;->c:Lcn/manstep/phonemirrorBox/util/m;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/d0/a;->b:Lcn/manstep/phonemirrorBox/d0/i;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/d0/a;->c:Lcn/manstep/phonemirrorBox/util/m;

    invoke-virtual {v0, v1, p1}, Lcn/manstep/phonemirrorBox/d0/i;->v(Lcn/manstep/phonemirrorBox/util/m;Landroid/view/View;)V

    return-void
.end method
