.class Lcn/manstep/phonemirrorBox/l0/l$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/l0/l;->g1(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/l0/l;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/l0/l;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$i;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l0/l$i;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->X()Landroidx/fragment/app/n;

    move-result-object p1

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/l$i;->b:Lcn/manstep/phonemirrorBox/l0/l;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/l0/l;->I2(Lcn/manstep/phonemirrorBox/l0/l;)I

    move-result v0

    new-instance v1, Lcn/manstep/phonemirrorBox/l0/l$i$a;

    invoke-direct {v1, p0}, Lcn/manstep/phonemirrorBox/l0/l$i$a;-><init>(Lcn/manstep/phonemirrorBox/l0/l$i;)V

    const-string v2, "\u97f3\u91cf\u7c7b\u578b"

    const/16 v3, 0xa

    invoke-static {p1, v2, v3, v0, v1}, Lcn/manstep/phonemirrorBox/k0/c;->B2(Landroidx/fragment/app/n;Ljava/lang/String;IILcn/manstep/phonemirrorBox/k0/c$b;)V

    return-void
.end method
