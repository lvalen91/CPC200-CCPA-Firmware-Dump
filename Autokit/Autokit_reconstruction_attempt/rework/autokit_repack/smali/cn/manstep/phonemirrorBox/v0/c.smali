.class public Lcn/manstep/phonemirrorBox/v0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/manstep/phonemirrorBox/v0/d;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/v0/c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/c;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v1, :sswitch_data_68

    goto :goto_40

    :sswitch_e
    const-string v1, "iPhoneMirror"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v0, 0x4

    goto :goto_41

    :sswitch_18
    const-string v1, "HiCar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v0, 0x2

    goto :goto_41

    :sswitch_22
    const-string v1, "AndroidMirror"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v0, 0x3

    goto :goto_41

    :sswitch_2c
    const-string v1, "AndroidAuto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v0, 0x0

    goto :goto_41

    :sswitch_36
    const-string v1, "CarPlay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v0, 0x1

    goto :goto_41

    :cond_40
    :goto_40
    const/4 v0, -0x1

    :goto_41
    if-eqz v0, :cond_63

    if-eq v0, v5, :cond_5e

    if-eq v0, v4, :cond_58

    if-eq v0, v3, :cond_52

    if-eq v0, v2, :cond_4c

    goto :goto_66

    :cond_4c
    const/16 v0, 0x11

    .line 2
    invoke-virtual {p0, v0}, Lcn/manstep/phonemirrorBox/v0/c;->r(I)V

    goto :goto_66

    :cond_52
    const/16 v0, 0xf

    .line 3
    invoke-virtual {p0, v0}, Lcn/manstep/phonemirrorBox/v0/c;->r(I)V

    goto :goto_66

    :cond_58
    const/16 v0, 0x16

    .line 4
    invoke-virtual {p0, v0}, Lcn/manstep/phonemirrorBox/v0/c;->r(I)V

    goto :goto_66

    :cond_5e
    const/4 v0, 0x5

    .line 5
    invoke-virtual {p0, v0}, Lcn/manstep/phonemirrorBox/v0/c;->r(I)V

    goto :goto_66

    .line 6
    :cond_63
    invoke-virtual {p0, v5}, Lcn/manstep/phonemirrorBox/v0/c;->r(I)V

    :goto_66
    return-void

    nop

    :sswitch_data_68
    .sparse-switch
        -0x7bcbf2f8 -> :sswitch_36
        -0x64bd9f62 -> :sswitch_2c
        -0x18031112 -> :sswitch_22
        0x4275ef3 -> :sswitch_18
        0x41cfc6a4 -> :sswitch_e
    .end sparse-switch
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x6

    .line 1
    invoke-virtual {p0, v0}, Lcn/manstep/phonemirrorBox/v0/c;->r(I)V

    return-void
.end method

.method public c(Ljava/lang/String;Z)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/v0/c;->b:Ljava/lang/String;

    const/16 p1, 0xb

    .line 2
    invoke-virtual {p0, p1}, Lcn/manstep/phonemirrorBox/v0/c;->r(I)V

    return-void
.end method

.method public d()V
    .registers 2

    const/4 v0, 0x7

    .line 1
    invoke-virtual {p0, v0}, Lcn/manstep/phonemirrorBox/v0/c;->r(I)V

    return-void
.end method

.method public e()V
    .registers 1

    return-void
.end method

.method public f()V
    .registers 2

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0}, Lcn/manstep/phonemirrorBox/v0/c;->r(I)V

    return-void
.end method

.method public g()V
    .registers 2

    const/16 v0, 0x13

    .line 1
    invoke-virtual {p0, v0}, Lcn/manstep/phonemirrorBox/v0/c;->r(I)V

    return-void
.end method

.method public h()V
    .registers 1

    return-void
.end method

.method public i()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/c;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x2

    sparse-switch v1, :sswitch_data_62

    goto :goto_40

    :sswitch_e
    const-string v1, "iPhoneMirror"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v0, 0x4

    goto :goto_41

    :sswitch_18
    const-string v1, "HiCar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v0, 0x2

    goto :goto_41

    :sswitch_22
    const-string v1, "AndroidMirror"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v0, 0x3

    goto :goto_41

    :sswitch_2c
    const-string v1, "AndroidAuto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v0, 0x0

    goto :goto_41

    :sswitch_36
    const-string v1, "CarPlay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v0, 0x1

    goto :goto_41

    :cond_40
    :goto_40
    const/4 v0, -0x1

    :goto_41
    if-eqz v0, :cond_5e

    if-eq v0, v4, :cond_5e

    if-eq v0, v5, :cond_58

    if-eq v0, v3, :cond_52

    if-eq v0, v2, :cond_4c

    goto :goto_61

    :cond_4c
    const/16 v0, 0x12

    .line 2
    invoke-virtual {p0, v0}, Lcn/manstep/phonemirrorBox/v0/c;->r(I)V

    goto :goto_61

    :cond_52
    const/16 v0, 0x10

    .line 3
    invoke-virtual {p0, v0}, Lcn/manstep/phonemirrorBox/v0/c;->r(I)V

    goto :goto_61

    :cond_58
    const/16 v0, 0x17

    .line 4
    invoke-virtual {p0, v0}, Lcn/manstep/phonemirrorBox/v0/c;->r(I)V

    goto :goto_61

    .line 5
    :cond_5e
    invoke-virtual {p0, v5}, Lcn/manstep/phonemirrorBox/v0/c;->r(I)V

    :goto_61
    return-void

    :sswitch_data_62
    .sparse-switch
        -0x7bcbf2f8 -> :sswitch_36
        -0x64bd9f62 -> :sswitch_2c
        -0x18031112 -> :sswitch_22
        0x4275ef3 -> :sswitch_18
        0x41cfc6a4 -> :sswitch_e
    .end sparse-switch
.end method

.method public j()V
    .registers 2

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Lcn/manstep/phonemirrorBox/v0/c;->r(I)V

    return-void
.end method

.method public k()V
    .registers 2

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p0, v0}, Lcn/manstep/phonemirrorBox/v0/c;->r(I)V

    return-void
.end method

.method public l()V
    .registers 1

    return-void
.end method

.method public m()V
    .registers 2

    const/16 v0, 0x14

    .line 1
    invoke-virtual {p0, v0}, Lcn/manstep/phonemirrorBox/v0/c;->r(I)V

    return-void
.end method

.method public n()V
    .registers 2

    const/16 v0, 0x9

    .line 1
    invoke-virtual {p0, v0}, Lcn/manstep/phonemirrorBox/v0/c;->r(I)V

    const/16 v0, 0xa

    .line 2
    invoke-virtual {p0, v0}, Lcn/manstep/phonemirrorBox/v0/c;->r(I)V

    return-void
.end method

.method public o()V
    .registers 1

    return-void
.end method

.method public p()V
    .registers 2

    const/16 v0, 0xc

    .line 1
    invoke-virtual {p0, v0}, Lcn/manstep/phonemirrorBox/v0/c;->r(I)V

    return-void
.end method

.method public q(Landroid/content/Context;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/v0/c;->a:Landroid/content/Context;

    return-void
.end method

.method public r(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/v0/c;->a:Landroid/content/Context;

    if-eqz v0, :cond_15

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.manstep.phonemirrorBox.AUTO_BOX_MODE_CHANGE_EVT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "cn.manstep.phonemirrorBox.AUTO_BOX_MODE_CHANGE_DATA"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/v0/c;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_15
    return-void
.end method
