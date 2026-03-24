.class public final synthetic Lcn/manstep/phonemirrorBox/d0/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcn/manstep/phonemirrorBox/d0/j;


# direct methods
.method public synthetic constructor <init>(Lcn/manstep/phonemirrorBox/d0/j;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/d0/e;->b:Lcn/manstep/phonemirrorBox/d0/j;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/d0/e;->b:Lcn/manstep/phonemirrorBox/d0/j;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$f;->h()V

    return-void
.end method
