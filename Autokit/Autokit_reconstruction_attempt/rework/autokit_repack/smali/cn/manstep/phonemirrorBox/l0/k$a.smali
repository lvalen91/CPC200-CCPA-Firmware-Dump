.class Lcn/manstep/phonemirrorBox/l0/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/manstep/phonemirrorBox/x0/d$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/manstep/phonemirrorBox/l0/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/l0/k;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/l0/k;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/k$a;->b:Lcn/manstep/phonemirrorBox/l0/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public k()V
    .registers 1

    return-void
.end method

.method public m(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/k$a;->b:Lcn/manstep/phonemirrorBox/l0/k;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/l0/k;->h2(Lcn/manstep/phonemirrorBox/l0/k;)Lcn/manstep/phonemirrorBox/x0/i;

    move-result-object v0

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    invoke-virtual {v0, p1}, Lcn/manstep/phonemirrorBox/x0/i;->C(Z)V

    return-void
.end method
