.class Lcn/manstep/phonemirrorBox/customview/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/customview/a;->D(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/customview/a;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/customview/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/customview/a$c;->b:Lcn/manstep/phonemirrorBox/customview/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/customview/a$c;->b:Lcn/manstep/phonemirrorBox/customview/a;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/customview/a;->A(Lcn/manstep/phonemirrorBox/customview/a;)Lcn/manstep/phonemirrorBox/customview/a$g;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/customview/a$c;->b:Lcn/manstep/phonemirrorBox/customview/a;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/customview/a;->A(Lcn/manstep/phonemirrorBox/customview/a;)Lcn/manstep/phonemirrorBox/customview/a$g;

    move-result-object p1

    invoke-interface {p1}, Lcn/manstep/phonemirrorBox/customview/a$g;->a()V

    :cond_11
    return-void
.end method
