.class public final Lcn/manstep/phonemirrorBox/m0/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/manstep/phonemirrorBox/m0/a/a$a;
    }
.end annotation


# instance fields
.field final b:Lcn/manstep/phonemirrorBox/m0/a/a$a;

.field final c:I


# direct methods
.method public constructor <init>(Lcn/manstep/phonemirrorBox/m0/a/a$a;I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/m0/a/a;->b:Lcn/manstep/phonemirrorBox/m0/a/a$a;

    .line 3
    iput p2, p0, Lcn/manstep/phonemirrorBox/m0/a/a;->c:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/m0/a/a;->b:Lcn/manstep/phonemirrorBox/m0/a/a$a;

    iget v1, p0, Lcn/manstep/phonemirrorBox/m0/a/a;->c:I

    invoke-interface {v0, v1, p1}, Lcn/manstep/phonemirrorBox/m0/a/a$a;->b(ILandroid/view/View;)V

    return-void
.end method
