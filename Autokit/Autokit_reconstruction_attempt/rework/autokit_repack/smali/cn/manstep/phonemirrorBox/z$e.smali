.class Lcn/manstep/phonemirrorBox/z$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/z;->S2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/z;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/z;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/z$e;->b:Lcn/manstep/phonemirrorBox/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->j()V

    .line 2
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    if-eqz v0, :cond_a

    .line 3
    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->Y0()V

    .line 4
    :cond_a
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z$e;->b:Lcn/manstep/phonemirrorBox/z;

    iget-object v0, v0, Lcn/manstep/phonemirrorBox/z;->y0:Lcn/manstep/phonemirrorBox/x0/k;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/manstep/phonemirrorBox/x0/k;->i0(Z)V

    return-void
.end method
