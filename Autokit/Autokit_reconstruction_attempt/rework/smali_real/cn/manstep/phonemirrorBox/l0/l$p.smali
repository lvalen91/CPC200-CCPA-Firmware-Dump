.class Lcn/manstep/phonemirrorBox/l0/l$p;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/manstep/phonemirrorBox/l0/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "p"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcn/manstep/phonemirrorBox/l0/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/manstep/phonemirrorBox/l0/l;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l$p;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l$p;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_af

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l$p;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/l0/l;->r2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/i0/g;

    move-result-object v0

    if-eqz v0, :cond_af

    .line 3
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_9e

    const/4 v0, 0x1

    if-eq p1, v0, :cond_76

    const/4 v0, 0x2

    if-eq p1, v0, :cond_64

    const/4 v0, 0x3

    if-eq p1, v0, :cond_52

    const/4 v0, 0x4

    if-eq p1, v0, :cond_40

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2e

    goto/16 :goto_af

    .line 4
    :cond_2e
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$p;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/l0/l;->r2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/i0/g;

    move-result-object p1

    iget-object p1, p1, Lcn/manstep/phonemirrorBox/i0/g;->B:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->performClick()Z

    goto :goto_af

    .line 5
    :cond_40
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$p;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/l0/l;->r2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/i0/g;

    move-result-object p1

    iget-object p1, p1, Lcn/manstep/phonemirrorBox/i0/g;->x:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->performClick()Z

    goto :goto_af

    .line 6
    :cond_52
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$p;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/l0/l;->r2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/i0/g;

    move-result-object p1

    iget-object p1, p1, Lcn/manstep/phonemirrorBox/i0/g;->y:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->performClick()Z

    goto :goto_af

    .line 7
    :cond_64
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$p;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/l0/l;->r2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/i0/g;

    move-result-object p1

    iget-object p1, p1, Lcn/manstep/phonemirrorBox/i0/g;->A:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->performClick()Z

    goto :goto_af

    .line 8
    :cond_76
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$p;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/l0/l;->r2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/i0/g;

    move-result-object p1

    iget-object p1, p1, Lcn/manstep/phonemirrorBox/i0/g;->C:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->performClick()Z

    .line 9
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$p;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/manstep/phonemirrorBox/l0/l;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "\u5f55\u97f3\u521b\u5efa\u5931\u8d25"

    invoke-static {p1, v1, v0}, Lcn/manstep/phonemirrorBox/widget/a;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_af

    .line 10
    :cond_9e
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$p;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/l0/l;->r2(Lcn/manstep/phonemirrorBox/l0/l;)Lcn/manstep/phonemirrorBox/i0/g;

    move-result-object p1

    iget-object p1, p1, Lcn/manstep/phonemirrorBox/i0/g;->z:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->performClick()Z

    :cond_af
    :goto_af
    return-void
.end method
