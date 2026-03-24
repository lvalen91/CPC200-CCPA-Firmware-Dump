.class public final Lcn/manstep/phonemirrorBox/m0/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/manstep/phonemirrorBox/x0/k$k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/manstep/phonemirrorBox/m0/a/b$a;
    }
.end annotation


# instance fields
.field final a:Lcn/manstep/phonemirrorBox/m0/a/b$a;

.field final b:I


# direct methods
.method public constructor <init>(Lcn/manstep/phonemirrorBox/m0/a/b$a;I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/m0/a/b;->a:Lcn/manstep/phonemirrorBox/m0/a/b$a;

    .line 3
    iput p2, p0, Lcn/manstep/phonemirrorBox/m0/a/b;->b:I

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/m0/a/b;->a:Lcn/manstep/phonemirrorBox/m0/a/b$a;

    iget v1, p0, Lcn/manstep/phonemirrorBox/m0/a/b;->b:I

    invoke-interface {v0, v1, p1}, Lcn/manstep/phonemirrorBox/m0/a/b$a;->c(ILandroid/view/View;)V

    return-void
.end method
