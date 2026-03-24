.class public final synthetic Lcn/manstep/phonemirrorBox/l0/i;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcn/manstep/phonemirrorBox/d0/i$b;


# instance fields
.field public final synthetic a:Lcn/manstep/phonemirrorBox/l0/r;

.field public final synthetic b:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcn/manstep/phonemirrorBox/l0/r;[Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/i;->a:Lcn/manstep/phonemirrorBox/l0/r;

    iput-object p2, p0, Lcn/manstep/phonemirrorBox/l0/i;->b:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lcn/manstep/phonemirrorBox/util/m;)V
    .registers 5

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/i;->a:Lcn/manstep/phonemirrorBox/l0/r;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/i;->b:[Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcn/manstep/phonemirrorBox/l0/r;->o2([Ljava/lang/String;Landroid/view/View;Lcn/manstep/phonemirrorBox/util/m;)V

    return-void
.end method
