.class Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->b(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView$a;->b:Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView$a;->b:Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->e(Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1c

    .line 2
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    if-eqz v0, :cond_16

    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/f;->O:Z

    if-eqz v0, :cond_16

    .line 3
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-virtual {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->X0()Z

    .line 4
    :cond_16
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView$a;->b:Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->f(Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;I)I

    :cond_1c
    return-void
.end method
