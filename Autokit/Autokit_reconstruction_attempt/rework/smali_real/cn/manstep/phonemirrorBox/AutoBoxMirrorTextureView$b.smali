.class Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->o(I)V
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
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView$b;->b:Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    sget-boolean v0, Lcn/manstep/phonemirrorBox/p;->g:Z

    if-nez v0, :cond_11

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView$b;->b:Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;

    invoke-static {}, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->g()I

    move-result v1

    invoke-static {}, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->h()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcn/manstep/phonemirrorBox/AutoBoxMirrorTextureView;->b(II)V

    :cond_11
    return-void
.end method
