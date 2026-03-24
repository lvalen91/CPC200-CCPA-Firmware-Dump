.class Lcn/manstep/phonemirrorBox/x0/k$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/manstep/phonemirrorBox/k0/i$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/x0/k;->B0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/manstep/phonemirrorBox/x0/k;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/x0/k;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/x0/k$g;->a:Lcn/manstep/phonemirrorBox/x0/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "~"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object p2

    const-string v0, "nightTime"

    invoke-virtual {p2, v0, p1}, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/x0/k$g;->a:Lcn/manstep/phonemirrorBox/x0/k;

    invoke-static {p2}, Lcn/manstep/phonemirrorBox/x0/k;->k(Lcn/manstep/phonemirrorBox/x0/k;)Landroidx/lifecycle/o;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    return-void
.end method
