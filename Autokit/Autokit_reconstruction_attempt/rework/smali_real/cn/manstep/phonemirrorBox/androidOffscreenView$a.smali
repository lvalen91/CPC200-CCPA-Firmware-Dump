.class Lcn/manstep/phonemirrorBox/androidOffscreenView$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/androidOffscreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/manstep/phonemirrorBox/androidOffscreenView;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/androidOffscreenView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/androidOffscreenView$a;->a:Lcn/manstep/phonemirrorBox/androidOffscreenView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_d

    .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/androidOffscreenView$a;->a:Lcn/manstep/phonemirrorBox/androidOffscreenView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_13

    .line 3
    :cond_d
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/androidOffscreenView$a;->a:Lcn/manstep/phonemirrorBox/androidOffscreenView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_13
    return-void
.end method
