.class Lcn/manstep/phonemirrorBox/l0/l$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/l0/l;->Y2(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcn/manstep/phonemirrorBox/l0/l;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/l0/l;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$c;->c:Lcn/manstep/phonemirrorBox/l0/l;

    iput p2, p0, Lcn/manstep/phonemirrorBox/l0/l$c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/l0/l$c;->b:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_b

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l$c;->c:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/l0/l;->t2(Lcn/manstep/phonemirrorBox/l0/l;)V

    goto :goto_10

    .line 3
    :cond_b
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l$c;->c:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/l0/l;->u2(Lcn/manstep/phonemirrorBox/l0/l;)V

    :goto_10
    return-void
.end method
