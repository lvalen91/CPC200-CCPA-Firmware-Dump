.class Lcn/manstep/phonemirrorBox/MainActivity$u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/MainActivity;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/MainActivity;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/MainActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity$u;->b:Lcn/manstep/phonemirrorBox/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity$u;->b:Lcn/manstep/phonemirrorBox/MainActivity;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/MainActivity;->z0(Lcn/manstep/phonemirrorBox/MainActivity;)Landroidx/fragment/app/n;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/n;->l()Landroidx/fragment/app/w;

    move-result-object v0

    const v1, 0x7f010027

    const v2, 0x7f01002c

    .line 2
    invoke-virtual {v0, v1, v2, v1, v2}, Landroidx/fragment/app/w;->r(IIII)Landroidx/fragment/app/w;

    .line 3
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/MainActivity$u;->b:Lcn/manstep/phonemirrorBox/MainActivity;

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/MainActivity;->B0(Lcn/manstep/phonemirrorBox/MainActivity;)Lcn/manstep/phonemirrorBox/z;

    move-result-object v1

    if-eqz v1, :cond_49

    .line 4
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/MainActivity$u;->b:Lcn/manstep/phonemirrorBox/MainActivity;

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/MainActivity;->B0(Lcn/manstep/phonemirrorBox/MainActivity;)Lcn/manstep/phonemirrorBox/z;

    move-result-object v1

    invoke-virtual {v1}, Lcn/manstep/phonemirrorBox/z;->S2()V

    .line 5
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/MainActivity$u;->b:Lcn/manstep/phonemirrorBox/MainActivity;

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/MainActivity;->B0(Lcn/manstep/phonemirrorBox/MainActivity;)Lcn/manstep/phonemirrorBox/z;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->q0()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 6
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/MainActivity$u;->b:Lcn/manstep/phonemirrorBox/MainActivity;

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/MainActivity;->B0(Lcn/manstep/phonemirrorBox/MainActivity;)Lcn/manstep/phonemirrorBox/z;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/w;->t(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    goto :goto_46

    :cond_3a
    const v1, 0x7f09015e

    .line 7
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/MainActivity$u;->b:Lcn/manstep/phonemirrorBox/MainActivity;

    invoke-static {v2}, Lcn/manstep/phonemirrorBox/MainActivity;->B0(Lcn/manstep/phonemirrorBox/MainActivity;)Lcn/manstep/phonemirrorBox/z;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/w;->b(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    .line 8
    :goto_46
    invoke-virtual {v0}, Landroidx/fragment/app/w;->i()I

    :cond_49
    return-void
.end method
