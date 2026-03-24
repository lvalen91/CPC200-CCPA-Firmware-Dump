.class Lcn/manstep/phonemirrorBox/KeyLearnActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/manstep/phonemirrorBox/KeyLearnActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/manstep/phonemirrorBox/KeyLearnActivity;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/KeyLearnActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity$a;->a:Lcn/manstep/phonemirrorBox/KeyLearnActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .registers 3

    const/4 v0, -0x3

    if-eq p1, v0, :cond_a

    const/4 v0, -0x2

    if-eq p1, v0, :cond_a

    const/4 v0, -0x1

    if-eq p1, v0, :cond_a

    goto :goto_f

    .line 1
    :cond_a
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/KeyLearnActivity$a;->a:Lcn/manstep/phonemirrorBox/KeyLearnActivity;

    invoke-static {p1, p1}, Lcn/manstep/phonemirrorBox/KeyLearnActivity;->n0(Lcn/manstep/phonemirrorBox/KeyLearnActivity;Landroid/content/Context;)V

    :goto_f
    return-void
.end method
