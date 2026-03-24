.class Lcn/manstep/phonemirrorBox/MainActivity$a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/MainActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity$a0;->b:Lcn/manstep/phonemirrorBox/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity$a0;->b:Lcn/manstep/phonemirrorBox/MainActivity;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/MainActivity;->B0(Lcn/manstep/phonemirrorBox/MainActivity;)Lcn/manstep/phonemirrorBox/z;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity$a0;->b:Lcn/manstep/phonemirrorBox/MainActivity;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/MainActivity;->B0(Lcn/manstep/phonemirrorBox/MainActivity;)Lcn/manstep/phonemirrorBox/z;

    move-result-object v0

    iget-object v0, v0, Lcn/manstep/phonemirrorBox/z;->y0:Lcn/manstep/phonemirrorBox/x0/k;

    if-eqz v0, :cond_2f

    .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity$a0;->b:Lcn/manstep/phonemirrorBox/MainActivity;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/MainActivity;->B0(Lcn/manstep/phonemirrorBox/MainActivity;)Lcn/manstep/phonemirrorBox/z;

    move-result-object v0

    iget-object v0, v0, Lcn/manstep/phonemirrorBox/z;->y0:Lcn/manstep/phonemirrorBox/x0/k;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/x0/k;->a0()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity$a0;->b:Lcn/manstep/phonemirrorBox/MainActivity;

    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/manstep/phonemirrorBox/MainActivity;->t(Ljava/lang/String;)V

    :cond_2f
    return-void
.end method
