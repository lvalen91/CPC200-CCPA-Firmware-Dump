.class public Lcn/manstep/phonemirrorBox/LanguageSettingsActivity;
.super Lcn/manstep/phonemirrorBox/k;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private t:I

.field private u:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const v0, 0x5d0

    invoke-static {v0}, Lcom/stub/StubApp;->interface11(I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcn/manstep/phonemirrorBox/k;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/manstep/phonemirrorBox/LanguageSettingsActivity;->t:I

    .line 3
    iput v0, p0, Lcn/manstep/phonemirrorBox/LanguageSettingsActivity;->u:I

    return-void
.end method

.method static synthetic n0(Lcn/manstep/phonemirrorBox/LanguageSettingsActivity;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/LanguageSettingsActivity;->u:I

    return p1
.end method


# virtual methods
.method public onBackPressed()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/k;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09007c

    if-eq p1, v0, :cond_1c

    const v0, 0x7f09007e

    if-eq p1, v0, :cond_f

    goto :goto_40

    .line 2
    :cond_f
    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/k;->finish()V

    const p1, 0x10a0002

    const v0, 0x10a0003

    .line 3
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_40

    .line 4
    :cond_1c
    iget p1, p0, Lcn/manstep/phonemirrorBox/LanguageSettingsActivity;->u:I

    iget v0, p0, Lcn/manstep/phonemirrorBox/LanguageSettingsActivity;->t:I

    if-eq p1, v0, :cond_40

    .line 5
    invoke-static {}, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;

    move-result-object p1

    iget v0, p0, Lcn/manstep/phonemirrorBox/LanguageSettingsActivity;->u:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "LanguageID"

    invoke-virtual {p1, v1, v0}, Lcn/manstep/phonemirrorBox/b0;->F(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcn/manstep/phonemirrorBox/LanguageSettingsActivity$b;

    invoke-direct {v0, p0}, Lcn/manstep/phonemirrorBox/LanguageSettingsActivity$b;-><init>(Lcn/manstep/phonemirrorBox/LanguageSettingsActivity;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_40
    :goto_40
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcn/manstep/phonemirrorBox/k;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcn/manstep/phonemirrorBox/k;->onDestroy()V

    return-void
.end method
