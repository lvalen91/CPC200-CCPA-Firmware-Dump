.class Lcn/manstep/phonemirrorBox/z$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/manstep/phonemirrorBox/util/p$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/z;->y2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/manstep/phonemirrorBox/z;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/z;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/z$j;->a:Lcn/manstep/phonemirrorBox/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/z$j;->a:Lcn/manstep/phonemirrorBox/z;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/z;->p2(Lcn/manstep/phonemirrorBox/z;)V

    .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/z$j;->a:Lcn/manstep/phonemirrorBox/z;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/z;->h2(Lcn/manstep/phonemirrorBox/z;)Z

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SettingsFragment,checkBoxUpdate->success: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z$j;->a:Lcn/manstep/phonemirrorBox/z;

    invoke-static {v0, p1}, Lcn/manstep/phonemirrorBox/z;->q2(Lcn/manstep/phonemirrorBox/z;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/z$j;->a:Lcn/manstep/phonemirrorBox/z;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/z;->g2(Lcn/manstep/phonemirrorBox/z;)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z$j;->a:Lcn/manstep/phonemirrorBox/z;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object v0

    const v1, 0x7f0f009a

    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/util/c0;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/z$j;->a:Lcn/manstep/phonemirrorBox/z;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/z;->g2(Lcn/manstep/phonemirrorBox/z;)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
