.class public Lcn/manstep/phonemirrorBox/iPhoneMirrorNotSupportView;
.super Landroidx/appcompat/widget/x;
.source "SourceFile"

# interfaces
.implements Lcn/manstep/phonemirrorBox/BoxInterface/d$g;


# instance fields
.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/x;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/iPhoneMirrorNotSupportView;->g:Z

    .line 3
    invoke-static {p0}, Lcn/manstep/phonemirrorBox/v0/e;->M(Lcn/manstep/phonemirrorBox/BoxInterface/d$g;)Lcn/manstep/phonemirrorBox/BoxInterface/d;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;)V
    .registers 3

    return-void
.end method

.method public c(I)V
    .registers 2

    return-void
.end method

.method public n(Lcn/manstep/phonemirrorBox/BoxInterface/d;)V
    .registers 2

    return-void
.end method

.method public o(I)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iPhoneMirrorNotSupportView parse: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_3b

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3b

    const/16 v1, 0xa

    if-eq p1, v1, :cond_33

    const/16 v0, 0x12

    if-eq p1, v0, :cond_2c

    const/16 v0, 0x13

    if-eq p1, v0, :cond_2c

    const/16 p1, 0x8

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3d

    :cond_2c
    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/iPhoneMirrorNotSupportView;->g:Z

    .line 4
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->R()V

    goto :goto_3d

    .line 5
    :cond_33
    iget-boolean p1, p0, Lcn/manstep/phonemirrorBox/iPhoneMirrorNotSupportView;->g:Z

    if-eqz p1, :cond_3d

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3d

    .line 7
    :cond_3b
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/iPhoneMirrorNotSupportView;->g:Z

    :cond_3d
    :goto_3d
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .line 1
    invoke-static {p0}, Lcn/manstep/phonemirrorBox/v0/e;->M(Lcn/manstep/phonemirrorBox/BoxInterface/d$g;)Lcn/manstep/phonemirrorBox/BoxInterface/d;

    .line 2
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .line 1
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 2
    invoke-static {p0}, Lcn/manstep/phonemirrorBox/v0/e;->S(Lcn/manstep/phonemirrorBox/BoxInterface/d$g;)V

    return-void
.end method

.method public v([B)V
    .registers 2

    return-void
.end method
