.class Lcn/manstep/phonemirrorBox/MainActivity$b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/manstep/phonemirrorBox/customview/a$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/MainActivity;->m1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/manstep/phonemirrorBox/MainActivity;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/MainActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity$b0;->a:Lcn/manstep/phonemirrorBox/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity$b0;->a:Lcn/manstep/phonemirrorBox/MainActivity;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/MainActivity;->F0(Lcn/manstep/phonemirrorBox/MainActivity;)Lcn/manstep/phonemirrorBox/floatwindow/b;

    move-result-object v0

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/MainActivity$b0;->a:Lcn/manstep/phonemirrorBox/MainActivity;

    invoke-static {v1}, Lcn/manstep/phonemirrorBox/MainActivity;->D0(Lcn/manstep/phonemirrorBox/MainActivity;)Lcn/manstep/phonemirrorBox/customview/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/manstep/phonemirrorBox/floatwindow/b;->a(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity$b0;->a:Lcn/manstep/phonemirrorBox/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/MainActivity;->E0(Lcn/manstep/phonemirrorBox/MainActivity;Lcn/manstep/phonemirrorBox/customview/a;)Lcn/manstep/phonemirrorBox/customview/a;

    return-void
.end method

.method public b(Ljava/lang/String;I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity$b0;->a:Lcn/manstep/phonemirrorBox/MainActivity;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/MainActivity;->C0(Lcn/manstep/phonemirrorBox/MainActivity;)Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity$b0;->a:Lcn/manstep/phonemirrorBox/MainActivity;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/MainActivity;->C0(Lcn/manstep/phonemirrorBox/MainActivity;)Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->p(Ljava/lang/String;I)V

    :cond_11
    return-void
.end method
