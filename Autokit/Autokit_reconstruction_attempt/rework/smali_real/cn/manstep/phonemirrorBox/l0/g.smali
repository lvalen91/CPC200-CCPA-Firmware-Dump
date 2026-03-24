.class public final synthetic Lcn/manstep/phonemirrorBox/l0/g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcn/manstep/phonemirrorBox/l0/r;


# direct methods
.method public synthetic constructor <init>(Lcn/manstep/phonemirrorBox/l0/r;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/g;->b:Lcn/manstep/phonemirrorBox/l0/r;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/g;->b:Lcn/manstep/phonemirrorBox/l0/r;

    invoke-virtual {v0, p1}, Lcn/manstep/phonemirrorBox/l0/r;->s2(Landroid/view/View;)V

    return-void
.end method
