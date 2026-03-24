.class Lcn/manstep/phonemirrorBox/l0/v$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/l0/v;->g1(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/manstep/phonemirrorBox/l0/v;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/l0/v;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/v$c;->a:Lcn/manstep/phonemirrorBox/l0/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4

    if-eqz p2, :cond_42

    .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/v$c;->a:Lcn/manstep/phonemirrorBox/l0/v;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/l0/v;->j2(Lcn/manstep/phonemirrorBox/l0/v;)Z

    move-result p1

    if-nez p1, :cond_42

    const-string p1, "PermissionRequestFragment"

    const-string p2, "request mic permission"

    .line 2
    invoke-static {p1, p2}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/v$c;->a:Lcn/manstep/phonemirrorBox/l0/v;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/l0/v;->o2(Lcn/manstep/phonemirrorBox/l0/v;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/v$c;->a:Lcn/manstep/phonemirrorBox/l0/v;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;

    move-result-object p1

    const-string p2, "android.permission.RECORD_AUDIO"

    invoke-static {p1, p2}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_31

    .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/v$c;->a:Lcn/manstep/phonemirrorBox/l0/v;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/l0/v;->o2(Lcn/manstep/phonemirrorBox/l0/v;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_31
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/v$c;->a:Lcn/manstep/phonemirrorBox/l0/v;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/l0/v;->i2(Lcn/manstep/phonemirrorBox/l0/v;)I

    .line 7
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/v$c;->a:Lcn/manstep/phonemirrorBox/l0/v;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/l0/v;->p2(Lcn/manstep/phonemirrorBox/l0/v;)Lcn/manstep/phonemirrorBox/i0/q;

    move-result-object p2

    iget-object p2, p2, Lcn/manstep/phonemirrorBox/i0/q;->x:Landroidx/appcompat/widget/SwitchCompat;

    const/4 v0, 0x2

    invoke-static {p1, p2, v0}, Lcn/manstep/phonemirrorBox/l0/v;->q2(Lcn/manstep/phonemirrorBox/l0/v;Landroidx/appcompat/widget/SwitchCompat;I)V

    :cond_42
    return-void
.end method
