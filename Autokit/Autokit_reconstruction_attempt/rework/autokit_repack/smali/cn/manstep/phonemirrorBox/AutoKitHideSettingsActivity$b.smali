.class Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$b;->b:Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$b;->b:Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->n0(Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;I)I

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$b;->b:Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->o0(Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    if-eq v0, v2, :cond_20

    .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$b;->b:Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {v0, p1}, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->p0(Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;I)I

    .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$b;->b:Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;

    invoke-static {p1, v1}, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->r0(Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;I)I

    .line 5
    :cond_20
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$b;->b:Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->s0(Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;)I

    .line 6
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$b;->b:Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->q0(Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;)I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_48

    .line 7
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$b;->b:Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;

    invoke-static {p1, v1}, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;->r0(Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;I)I

    .line 8
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$b;->b:Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;

    const-class v1, Lcn/manstep/phonemirrorBox/AdvancedSettingsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "page"

    const-string v1, "echo"

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity$b;->b:Lcn/manstep/phonemirrorBox/AutoKitHideSettingsActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_48
    const/4 p1, 0x1

    return p1
.end method
