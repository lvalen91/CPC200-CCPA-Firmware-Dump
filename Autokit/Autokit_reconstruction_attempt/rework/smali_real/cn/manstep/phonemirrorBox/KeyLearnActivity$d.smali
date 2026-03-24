.class Lcn/manstep/phonemirrorBox/KeyLearnActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/KeyLearnActivity;->H0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/KeyLearnActivity;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/KeyLearnActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity$d;->b:Lcn/manstep/phonemirrorBox/KeyLearnActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity$d;->b:Lcn/manstep/phonemirrorBox/KeyLearnActivity;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->r0(Lcn/manstep/phonemirrorBox/KeyLearnActivity;)V

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/b0;->C()V

    .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity$d;->b:Lcn/manstep/phonemirrorBox/KeyLearnActivity;

    const v0, 0x7f090141

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 4
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity$d;->b:Lcn/manstep/phonemirrorBox/KeyLearnActivity;

    invoke-static {v0, p1}, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->s0(Lcn/manstep/phonemirrorBox/KeyLearnActivity;Landroid/widget/LinearLayout;)V

    return-void
.end method
