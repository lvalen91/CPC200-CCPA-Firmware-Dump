.class Lcn/manstep/phonemirrorBox/z$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/z;->L2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/z;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/z;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/z$c;->b:Lcn/manstep/phonemirrorBox/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/z$c;->b:Lcn/manstep/phonemirrorBox/z;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->D()Landroidx/fragment/app/e;

    move-result-object p1

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/z$c;->b:Lcn/manstep/phonemirrorBox/z;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->K1()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/c0;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/manstep/phonemirrorBox/util/c0;->o(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
