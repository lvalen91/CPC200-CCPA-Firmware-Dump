.class Lcn/manstep/phonemirrorBox/k0/k$c;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/k0/k;->g1(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/k0/k;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/k0/k;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/k0/k$c;->b:Lcn/manstep/phonemirrorBox/k0/k;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/k$c;->b:Lcn/manstep/phonemirrorBox/k0/k;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcn/manstep/phonemirrorBox/AdvancedSettingsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "page"

    const-string v1, "pp"

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/k0/k$c;->b:Lcn/manstep/phonemirrorBox/k0/k;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->a2(Landroid/content/Intent;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    const-string v0, "#0081EF"

    .line 3
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method
