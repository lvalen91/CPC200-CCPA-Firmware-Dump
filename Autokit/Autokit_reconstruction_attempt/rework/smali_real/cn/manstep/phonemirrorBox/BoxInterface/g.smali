.class public Lcn/manstep/phonemirrorBox/BoxInterface/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .registers 2

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->d()I

    move-result v0

    return v0
.end method

.method public static b()I
    .registers 3

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->f()I

    move-result v0

    return v0
.end method

.method public static c()I
    .registers 4

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->d()I

    move-result v0

    .line 2
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->f()I

    move-result v1

    .line 3
    invoke-static {v1, v0}, Lcn/manstep/phonemirrorBox/BoxInterface/g;->d(II)I

    move-result v0

    return v0
.end method

.method public static d(II)I
    .registers 6

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x4

    if-nez p1, :cond_d

    if-eq p0, v2, :cond_c

    if-eq p0, v3, :cond_b

    goto :goto_d

    :cond_b
    return v1

    :cond_c
    return v0

    :cond_d
    :goto_d
    if-ne p0, v3, :cond_22

    if-eq p1, v1, :cond_21

    const/4 p0, 0x5

    if-eq p1, v2, :cond_20

    if-eq p1, v0, :cond_1f

    if-eq p1, v3, :cond_1d

    if-eq p1, p0, :cond_1b

    goto :goto_22

    :cond_1b
    const/4 p0, 0x7

    return p0

    :cond_1d
    const/4 p0, 0x6

    return p0

    :cond_1f
    return v2

    :cond_20
    return p0

    :cond_21
    return v3

    :cond_22
    :goto_22
    const/4 p0, 0x0

    return p0
.end method

.method public static e(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_18

    const/4 v0, 0x4

    if-eq p0, v0, :cond_15

    const/4 v0, 0x6

    if-eq p0, v0, :cond_12

    const/4 v0, 0x7

    if-eq p0, v0, :cond_f

    const-string p0, "Unknown"

    return-object p0

    :cond_f
    const-string p0, "CarLink"

    return-object p0

    :cond_12
    const-string p0, "HiCar"

    return-object p0

    :cond_15
    const-string p0, "AndroidAuto"

    return-object p0

    :cond_18
    const-string p0, "CarPlay"

    return-object p0
.end method

.method public static f(I)V
    .registers 4

    .line 1
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/g;->c()I

    move-result v0

    if-ne p0, v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x4

    packed-switch p0, :pswitch_data_4e

    return-void

    .line 2
    :pswitch_e
    invoke-static {v2}, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->c(I)V

    const/4 p0, 0x5

    .line 3
    invoke-static {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->b(I)V

    goto :goto_41

    .line 4
    :pswitch_16
    invoke-static {v2}, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->c(I)V

    .line 5
    invoke-static {v2}, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->b(I)V

    goto :goto_41

    .line 6
    :pswitch_1d
    invoke-static {v2}, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->c(I)V

    .line 7
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->b(I)V

    goto :goto_41

    .line 8
    :pswitch_24
    invoke-static {v2}, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->c(I)V

    const/4 p0, 0x1

    .line 9
    invoke-static {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->b(I)V

    goto :goto_41

    .line 10
    :pswitch_2c
    invoke-static {v0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->c(I)V

    .line 11
    invoke-static {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->b(I)V

    goto :goto_41

    .line 12
    :pswitch_33
    invoke-static {v2}, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->c(I)V

    const/4 p0, 0x3

    .line 13
    invoke-static {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->b(I)V

    goto :goto_41

    .line 14
    :pswitch_3b
    invoke-static {v1}, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->b(I)V

    .line 15
    invoke-static {v2}, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->c(I)V

    .line 16
    :goto_41
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/d;->i()Z

    move-result p0

    if-eqz p0, :cond_4c

    .line 17
    sget-object p0, Lcn/manstep/phonemirrorBox/BoxInterface/d;->l:Lcn/manstep/phonemirrorBox/BoxInterface/f;

    invoke-virtual {p0}, Lcn/manstep/phonemirrorBox/BoxInterface/f;->Y0()V

    :cond_4c
    return-void

    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_33
        :pswitch_2c
        :pswitch_24
        :pswitch_1d
        :pswitch_16
        :pswitch_e
    .end packed-switch
.end method
