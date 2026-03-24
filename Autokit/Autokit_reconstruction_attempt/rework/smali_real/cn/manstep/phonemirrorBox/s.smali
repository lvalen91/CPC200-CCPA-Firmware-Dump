.class public Lcn/manstep/phonemirrorBox/s;
.super Landroidx/databinding/c;
.source "SourceFile"


# static fields
.field private static final a:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    sput-object v0, Lcn/manstep/phonemirrorBox/s;->a:Landroid/util/SparseIntArray;

    const v2, 0x7f0c001e

    const/4 v3, 0x1

    .line 2
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 3
    sget-object v0, Lcn/manstep/phonemirrorBox/s;->a:Landroid/util/SparseIntArray;

    const v2, 0x7f0c002a

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 4
    sget-object v0, Lcn/manstep/phonemirrorBox/s;->a:Landroid/util/SparseIntArray;

    const v2, 0x7f0c0042

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 5
    sget-object v0, Lcn/manstep/phonemirrorBox/s;->a:Landroid/util/SparseIntArray;

    const v2, 0x7f0c0044

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 6
    sget-object v0, Lcn/manstep/phonemirrorBox/s;->a:Landroid/util/SparseIntArray;

    const v2, 0x7f0c0046

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 7
    sget-object v0, Lcn/manstep/phonemirrorBox/s;->a:Landroid/util/SparseIntArray;

    const v2, 0x7f0c0047

    const/4 v3, 0x6

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 8
    sget-object v0, Lcn/manstep/phonemirrorBox/s;->a:Landroid/util/SparseIntArray;

    const v2, 0x7f0c0049

    const/4 v3, 0x7

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 9
    sget-object v0, Lcn/manstep/phonemirrorBox/s;->a:Landroid/util/SparseIntArray;

    const v2, 0x7f0c004d

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 10
    sget-object v0, Lcn/manstep/phonemirrorBox/s;->a:Landroid/util/SparseIntArray;

    const v2, 0x7f0c004f

    const/16 v3, 0x9

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 11
    sget-object v0, Lcn/manstep/phonemirrorBox/s;->a:Landroid/util/SparseIntArray;

    const v2, 0x7f0c0050

    const/16 v3, 0xa

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12
    sget-object v0, Lcn/manstep/phonemirrorBox/s;->a:Landroid/util/SparseIntArray;

    const v2, 0x7f0c0051

    const/16 v3, 0xb

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 13
    sget-object v0, Lcn/manstep/phonemirrorBox/s;->a:Landroid/util/SparseIntArray;

    const v2, 0x7f0c0055

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/databinding/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/databinding/c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    new-instance v1, Landroidx/databinding/k/b/a;

    invoke-direct {v1}, Landroidx/databinding/k/b/a;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public b(Landroidx/databinding/e;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;
    .registers 5

    .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/s;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseIntArray;->get(I)I

    move-result p3

    if-lez p3, :cond_1d7

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1cf

    packed-switch p3, :pswitch_data_1da

    goto/16 :goto_1d7

    :pswitch_13
    const-string p3, "layout/input_fragment_0"

    .line 3
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_21

    .line 4
    new-instance p3, Lcn/manstep/phonemirrorBox/i0/x;

    invoke-direct {p3, p1, p2}, Lcn/manstep/phonemirrorBox/i0/x;-><init>(Landroidx/databinding/e;Landroid/view/View;)V

    return-object p3

    .line 5
    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for input_fragment is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_38
    const-string p3, "layout/fragment_share_file_0"

    .line 6
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_46

    .line 7
    new-instance p3, Lcn/manstep/phonemirrorBox/i0/v;

    invoke-direct {p3, p1, p2}, Lcn/manstep/phonemirrorBox/i0/v;-><init>(Landroidx/databinding/e;Landroid/view/View;)V

    return-object p3

    .line 8
    :cond_46
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for fragment_share_file is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_5d
    const-string p3, "layout/fragment_settings_0"

    .line 9
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6b

    .line 10
    new-instance p3, Lcn/manstep/phonemirrorBox/i0/t;

    invoke-direct {p3, p1, p2}, Lcn/manstep/phonemirrorBox/i0/t;-><init>(Landroidx/databinding/e;Landroid/view/View;)V

    return-object p3

    .line 11
    :cond_6b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for fragment_settings is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_82
    const-string p3, "layout/fragment_permission_request_0"

    .line 12
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_90

    .line 13
    new-instance p3, Lcn/manstep/phonemirrorBox/i0/r;

    invoke-direct {p3, p1, p2}, Lcn/manstep/phonemirrorBox/i0/r;-><init>(Landroidx/databinding/e;Landroid/view/View;)V

    return-object p3

    .line 14
    :cond_90
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for fragment_permission_request is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_a7
    const-string p3, "layout/fragment_first_page_carplay_0"

    .line 15
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_b5

    .line 16
    new-instance p3, Lcn/manstep/phonemirrorBox/i0/p;

    invoke-direct {p3, p1, p2}, Lcn/manstep/phonemirrorBox/i0/p;-><init>(Landroidx/databinding/e;Landroid/view/View;)V

    return-object p3

    .line 17
    :cond_b5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for fragment_first_page_carplay is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_cc
    const-string p3, "layout/fragment_debug_settings_0"

    .line 18
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_da

    .line 19
    new-instance p3, Lcn/manstep/phonemirrorBox/i0/n;

    invoke-direct {p3, p1, p2}, Lcn/manstep/phonemirrorBox/i0/n;-><init>(Landroidx/databinding/e;Landroid/view/View;)V

    return-object p3

    .line 20
    :cond_da
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for fragment_debug_settings is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_f1
    const-string p3, "layout/fragment_box_upgrading_0"

    .line 21
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_ff

    .line 22
    new-instance p3, Lcn/manstep/phonemirrorBox/i0/l;

    invoke-direct {p3, p1, p2}, Lcn/manstep/phonemirrorBox/i0/l;-><init>(Landroidx/databinding/e;Landroid/view/View;)V

    return-object p3

    .line 23
    :cond_ff
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for fragment_box_upgrading is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_116
    const-string p3, "layout/fragment_box_upgraded_0"

    .line 24
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_124

    .line 25
    new-instance p3, Lcn/manstep/phonemirrorBox/i0/j;

    invoke-direct {p3, p1, p2}, Lcn/manstep/phonemirrorBox/i0/j;-><init>(Landroidx/databinding/e;Landroid/view/View;)V

    return-object p3

    .line 26
    :cond_124
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for fragment_box_upgraded is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_13b
    const-string p3, "layout/fragment_audio_debug_0"

    .line 27
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_149

    .line 28
    new-instance p3, Lcn/manstep/phonemirrorBox/i0/h;

    invoke-direct {p3, p1, p2}, Lcn/manstep/phonemirrorBox/i0/h;-><init>(Landroidx/databinding/e;Landroid/view/View;)V

    return-object p3

    .line 29
    :cond_149
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for fragment_audio_debug is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_160
    const-string p3, "layout/fragment_advanced_settings_0"

    .line 30
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_16e

    .line 31
    new-instance p3, Lcn/manstep/phonemirrorBox/i0/f;

    invoke-direct {p3, p1, p2}, Lcn/manstep/phonemirrorBox/i0/f;-><init>(Landroidx/databinding/e;Landroid/view/View;)V

    return-object p3

    .line 32
    :cond_16e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for fragment_advanced_settings is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_185
    const-string p3, "layout/custom_setting_dialog_0"

    .line 33
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_193

    .line 34
    new-instance p3, Lcn/manstep/phonemirrorBox/i0/d;

    invoke-direct {p3, p1, p2}, Lcn/manstep/phonemirrorBox/i0/d;-><init>(Landroidx/databinding/e;Landroid/view/View;)V

    return-object p3

    .line 35
    :cond_193
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for custom_setting_dialog is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1aa
    const-string p3, "layout/activity_hide_settings_autokit_0"

    .line 36
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1b8

    .line 37
    new-instance p3, Lcn/manstep/phonemirrorBox/i0/b;

    invoke-direct {p3, p1, p2}, Lcn/manstep/phonemirrorBox/i0/b;-><init>(Landroidx/databinding/e;Landroid/view/View;)V

    return-object p3

    .line 38
    :cond_1b8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The tag for activity_hide_settings_autokit is invalid. Received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :cond_1cf
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1d7
    :goto_1d7
    const/4 p1, 0x0

    return-object p1

    nop

    :pswitch_data_1da
    .packed-switch 0x1
        :pswitch_1aa
        :pswitch_185
        :pswitch_160
        :pswitch_13b
        :pswitch_116
        :pswitch_f1
        :pswitch_cc
        :pswitch_a7
        :pswitch_82
        :pswitch_5d
        :pswitch_38
        :pswitch_13
    .end packed-switch
.end method

.method public c(Landroidx/databinding/e;[Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;
    .registers 5

    const/4 p1, 0x0

    if-eqz p2, :cond_21

    .line 1
    array-length v0, p2

    if-nez v0, :cond_7

    goto :goto_21

    .line 2
    :cond_7
    sget-object v0, Lcn/manstep/phonemirrorBox/s;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseIntArray;->get(I)I

    move-result p3

    if-lez p3, :cond_21

    const/4 p3, 0x0

    .line 3
    aget-object p2, p2, p3

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_19

    goto :goto_21

    .line 4
    :cond_19
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_21
    :goto_21
    return-object p1
.end method
