.class Lcn/manstep/phonemirrorBox/f0/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/f0/e;->l(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/manstep/phonemirrorBox/f0/e;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/f0/e;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/f0/e$a;->a:Lcn/manstep/phonemirrorBox/f0/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init->onAudioFocusChange: focusChange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavManager"

    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/f0/e$a;->a:Lcn/manstep/phonemirrorBox/f0/e;

    invoke-static {v0, p1}, Lcn/manstep/phonemirrorBox/f0/e;->h(Lcn/manstep/phonemirrorBox/f0/e;I)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2a

    .line 3
    invoke-static {}, Lcn/manstep/phonemirrorBox/u0/c;->h()Lcn/manstep/phonemirrorBox/u0/c;

    move-result-object p1

    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/e;->C()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcn/manstep/phonemirrorBox/u0/c;->d(Z)V

    goto :goto_42

    :cond_2a
    const/4 v0, -0x1

    if-eq p1, v0, :cond_33

    const/4 v0, -0x2

    if-eq p1, v0, :cond_33

    const/4 v0, -0x3

    if-ne p1, v0, :cond_42

    .line 4
    :cond_33
    invoke-static {}, Lcn/manstep/phonemirrorBox/v0/a;->t()Lcn/manstep/phonemirrorBox/v0/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/v0/a;->w()Z

    move-result p1

    if-nez p1, :cond_42

    .line 5
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/f0/e$a;->a:Lcn/manstep/phonemirrorBox/f0/e;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/f0/e;->m()I

    :cond_42
    :goto_42
    return-void
.end method
