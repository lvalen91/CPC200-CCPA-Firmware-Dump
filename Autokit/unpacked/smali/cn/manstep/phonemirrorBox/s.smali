.class public Lcn/manstep/phonemirrorBox/s;
.super Landroidx/databinding/c;
.source "SourceFile"

.field private final static a:Landroid/util/SparseIntArray;

.method static constructor <clinit>()V
  .registers 4
  .line 1
    new-instance v0, Landroid/util/SparseIntArray;
    const/16 v1, 12
    invoke-direct { v0, v1 }, Landroid/util/SparseIntArray;-><init>(I)V
    sput-object v0, Lcn/manstep/phonemirrorBox/s;->a:Landroid/util/SparseIntArray;
    const v2, 2131492894
    const/4 v3, 1
  .line 2
    invoke-virtual { v0, v2, v3 }, Landroid/util/SparseIntArray;->put(II)V
  .line 3
    sget-object v0, Lcn/manstep/phonemirrorBox/s;->a:Landroid/util/SparseIntArray;
    const v2, 2131492906
    const/4 v3, 2
    invoke-virtual { v0, v2, v3 }, Landroid/util/SparseIntArray;->put(II)V
  .line 4
    sget-object v0, Lcn/manstep/phonemirrorBox/s;->a:Landroid/util/SparseIntArray;
    const v2, 2131492930
    const/4 v3, 3
    invoke-virtual { v0, v2, v3 }, Landroid/util/SparseIntArray;->put(II)V
  .line 5
    sget-object v0, Lcn/manstep/phonemirrorBox/s;->a:Landroid/util/SparseIntArray;
    const v2, 2131492932
    const/4 v3, 4
    invoke-virtual { v0, v2, v3 }, Landroid/util/SparseIntArray;->put(II)V
  .line 6
    sget-object v0, Lcn/manstep/phonemirrorBox/s;->a:Landroid/util/SparseIntArray;
    const v2, 2131492934
    const/4 v3, 5
    invoke-virtual { v0, v2, v3 }, Landroid/util/SparseIntArray;->put(II)V
  .line 7
    sget-object v0, Lcn/manstep/phonemirrorBox/s;->a:Landroid/util/SparseIntArray;
    const v2, 2131492935
    const/4 v3, 6
    invoke-virtual { v0, v2, v3 }, Landroid/util/SparseIntArray;->put(II)V
  .line 8
    sget-object v0, Lcn/manstep/phonemirrorBox/s;->a:Landroid/util/SparseIntArray;
    const v2, 2131492937
    const/4 v3, 7
    invoke-virtual { v0, v2, v3 }, Landroid/util/SparseIntArray;->put(II)V
  .line 9
    sget-object v0, Lcn/manstep/phonemirrorBox/s;->a:Landroid/util/SparseIntArray;
    const v2, 2131492941
    const/16 v3, 8
    invoke-virtual { v0, v2, v3 }, Landroid/util/SparseIntArray;->put(II)V
  .line 10
    sget-object v0, Lcn/manstep/phonemirrorBox/s;->a:Landroid/util/SparseIntArray;
    const v2, 2131492943
    const/16 v3, 9
    invoke-virtual { v0, v2, v3 }, Landroid/util/SparseIntArray;->put(II)V
  .line 11
    sget-object v0, Lcn/manstep/phonemirrorBox/s;->a:Landroid/util/SparseIntArray;
    const v2, 2131492944
    const/16 v3, 10
    invoke-virtual { v0, v2, v3 }, Landroid/util/SparseIntArray;->put(II)V
  .line 12
    sget-object v0, Lcn/manstep/phonemirrorBox/s;->a:Landroid/util/SparseIntArray;
    const v2, 2131492945
    const/16 v3, 11
    invoke-virtual { v0, v2, v3 }, Landroid/util/SparseIntArray;->put(II)V
  .line 13
    sget-object v0, Lcn/manstep/phonemirrorBox/s;->a:Landroid/util/SparseIntArray;
    const v2, 2131492949
    invoke-virtual { v0, v2, v1 }, Landroid/util/SparseIntArray;->put(II)V
    return-void
.end method

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Landroidx/databinding/c;-><init>()V
    return-void
.end method

.method public a()Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "()",
      "Ljava/util/List<",
      "Landroidx/databinding/c;",
      ">;"
    }
  .end annotation
  .registers 3
  .line 1
    new-instance v0, Ljava/util/ArrayList;
    const/4 v1, 1
    invoke-direct { v0, v1 }, Ljava/util/ArrayList;-><init>(I)V
  .line 2
    new-instance v1, Landroidx/databinding/k/b/a;
    invoke-direct { v1 }, Landroidx/databinding/k/b/a;-><init>()V
    invoke-virtual { v0, v1 }, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    return-object v0
.end method

.method public b(Landroidx/databinding/e;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;
  .registers 5
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/s;->a:Landroid/util/SparseIntArray;
    invoke-virtual { v0, p3 }, Landroid/util/SparseIntArray;->get(I)I
    move-result p3
    if-lez p3, :L25
  .line 2
    invoke-virtual { p2 }, Landroid/view/View;->getTag()Ljava/lang/Object;
    move-result-object v0
    if-eqz v0, :L24
    packed-switch p3, :L26
    goto/16 :L25
  :L0
    const-string p3, "layout/input_fragment_0"
  .line 3
    invoke-virtual { p3, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p3
    if-eqz p3, :L1
  .line 4
    new-instance p3, Lcn/manstep/phonemirrorBox/i0/x;
    invoke-direct { p3, p1, p2 }, Lcn/manstep/phonemirrorBox/i0/x;-><init>(Landroidx/databinding/e;Landroid/view/View;)V
    return-object p3
  :L1
  .line 5
    new-instance p1, Ljava/lang/IllegalArgumentException;
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p3, "The tag for input_fragment is invalid. Received: "
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L2
    const-string p3, "layout/fragment_share_file_0"
  .line 6
    invoke-virtual { p3, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p3
    if-eqz p3, :L3
  .line 7
    new-instance p3, Lcn/manstep/phonemirrorBox/i0/v;
    invoke-direct { p3, p1, p2 }, Lcn/manstep/phonemirrorBox/i0/v;-><init>(Landroidx/databinding/e;Landroid/view/View;)V
    return-object p3
  :L3
  .line 8
    new-instance p1, Ljava/lang/IllegalArgumentException;
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p3, "The tag for fragment_share_file is invalid. Received: "
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L4
    const-string p3, "layout/fragment_settings_0"
  .line 9
    invoke-virtual { p3, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p3
    if-eqz p3, :L5
  .line 10
    new-instance p3, Lcn/manstep/phonemirrorBox/i0/t;
    invoke-direct { p3, p1, p2 }, Lcn/manstep/phonemirrorBox/i0/t;-><init>(Landroidx/databinding/e;Landroid/view/View;)V
    return-object p3
  :L5
  .line 11
    new-instance p1, Ljava/lang/IllegalArgumentException;
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p3, "The tag for fragment_settings is invalid. Received: "
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L6
    const-string p3, "layout/fragment_permission_request_0"
  .line 12
    invoke-virtual { p3, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p3
    if-eqz p3, :L7
  .line 13
    new-instance p3, Lcn/manstep/phonemirrorBox/i0/r;
    invoke-direct { p3, p1, p2 }, Lcn/manstep/phonemirrorBox/i0/r;-><init>(Landroidx/databinding/e;Landroid/view/View;)V
    return-object p3
  :L7
  .line 14
    new-instance p1, Ljava/lang/IllegalArgumentException;
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p3, "The tag for fragment_permission_request is invalid. Received: "
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L8
    const-string p3, "layout/fragment_first_page_carplay_0"
  .line 15
    invoke-virtual { p3, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p3
    if-eqz p3, :L9
  .line 16
    new-instance p3, Lcn/manstep/phonemirrorBox/i0/p;
    invoke-direct { p3, p1, p2 }, Lcn/manstep/phonemirrorBox/i0/p;-><init>(Landroidx/databinding/e;Landroid/view/View;)V
    return-object p3
  :L9
  .line 17
    new-instance p1, Ljava/lang/IllegalArgumentException;
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p3, "The tag for fragment_first_page_carplay is invalid. Received: "
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L10
    const-string p3, "layout/fragment_debug_settings_0"
  .line 18
    invoke-virtual { p3, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p3
    if-eqz p3, :L11
  .line 19
    new-instance p3, Lcn/manstep/phonemirrorBox/i0/n;
    invoke-direct { p3, p1, p2 }, Lcn/manstep/phonemirrorBox/i0/n;-><init>(Landroidx/databinding/e;Landroid/view/View;)V
    return-object p3
  :L11
  .line 20
    new-instance p1, Ljava/lang/IllegalArgumentException;
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p3, "The tag for fragment_debug_settings is invalid. Received: "
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L12
    const-string p3, "layout/fragment_box_upgrading_0"
  .line 21
    invoke-virtual { p3, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p3
    if-eqz p3, :L13
  .line 22
    new-instance p3, Lcn/manstep/phonemirrorBox/i0/l;
    invoke-direct { p3, p1, p2 }, Lcn/manstep/phonemirrorBox/i0/l;-><init>(Landroidx/databinding/e;Landroid/view/View;)V
    return-object p3
  :L13
  .line 23
    new-instance p1, Ljava/lang/IllegalArgumentException;
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p3, "The tag for fragment_box_upgrading is invalid. Received: "
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L14
    const-string p3, "layout/fragment_box_upgraded_0"
  .line 24
    invoke-virtual { p3, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p3
    if-eqz p3, :L15
  .line 25
    new-instance p3, Lcn/manstep/phonemirrorBox/i0/j;
    invoke-direct { p3, p1, p2 }, Lcn/manstep/phonemirrorBox/i0/j;-><init>(Landroidx/databinding/e;Landroid/view/View;)V
    return-object p3
  :L15
  .line 26
    new-instance p1, Ljava/lang/IllegalArgumentException;
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p3, "The tag for fragment_box_upgraded is invalid. Received: "
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L16
    const-string p3, "layout/fragment_audio_debug_0"
  .line 27
    invoke-virtual { p3, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p3
    if-eqz p3, :L17
  .line 28
    new-instance p3, Lcn/manstep/phonemirrorBox/i0/h;
    invoke-direct { p3, p1, p2 }, Lcn/manstep/phonemirrorBox/i0/h;-><init>(Landroidx/databinding/e;Landroid/view/View;)V
    return-object p3
  :L17
  .line 29
    new-instance p1, Ljava/lang/IllegalArgumentException;
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p3, "The tag for fragment_audio_debug is invalid. Received: "
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L18
    const-string p3, "layout/fragment_advanced_settings_0"
  .line 30
    invoke-virtual { p3, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p3
    if-eqz p3, :L19
  .line 31
    new-instance p3, Lcn/manstep/phonemirrorBox/i0/f;
    invoke-direct { p3, p1, p2 }, Lcn/manstep/phonemirrorBox/i0/f;-><init>(Landroidx/databinding/e;Landroid/view/View;)V
    return-object p3
  :L19
  .line 32
    new-instance p1, Ljava/lang/IllegalArgumentException;
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p3, "The tag for fragment_advanced_settings is invalid. Received: "
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L20
    const-string p3, "layout/custom_setting_dialog_0"
  .line 33
    invoke-virtual { p3, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p3
    if-eqz p3, :L21
  .line 34
    new-instance p3, Lcn/manstep/phonemirrorBox/i0/d;
    invoke-direct { p3, p1, p2 }, Lcn/manstep/phonemirrorBox/i0/d;-><init>(Landroidx/databinding/e;Landroid/view/View;)V
    return-object p3
  :L21
  .line 35
    new-instance p1, Ljava/lang/IllegalArgumentException;
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p3, "The tag for custom_setting_dialog is invalid. Received: "
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L22
    const-string p3, "layout/activity_hide_settings_autokit_0"
  .line 36
    invoke-virtual { p3, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p3
    if-eqz p3, :L23
  .line 37
    new-instance p3, Lcn/manstep/phonemirrorBox/i0/b;
    invoke-direct { p3, p1, p2 }, Lcn/manstep/phonemirrorBox/i0/b;-><init>(Landroidx/databinding/e;Landroid/view/View;)V
    return-object p3
  :L23
  .line 38
    new-instance p1, Ljava/lang/IllegalArgumentException;
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p3, "The tag for activity_hide_settings_autokit is invalid. Received: "
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-direct { p1, p2 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p1
  :L24
  .line 39
    new-instance p1, Ljava/lang/RuntimeException;
    const-string p2, "view must have a tag"
    invoke-direct { p1, p2 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    throw p1
  :L25
    const/4 p1, 0
    return-object p1
  :L26
  .packed-switch 1
    :L22
    :L20
    :L18
    :L16
    :L14
    :L12
    :L10
    :L8
    :L6
    :L4
    :L2
    :L0
  .end packed-switch
.end method

.method public c(Landroidx/databinding/e;[Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;
  .registers 5
    const/4 p1, 0
    if-eqz p2, :L2
  .line 1
    array-length v0, p2
    if-nez v0, :L0
    goto :L2
  :L0
  .line 2
    sget-object v0, Lcn/manstep/phonemirrorBox/s;->a:Landroid/util/SparseIntArray;
    invoke-virtual { v0, p3 }, Landroid/util/SparseIntArray;->get(I)I
    move-result p3
    if-lez p3, :L2
    const/4 p3, 0
  .line 3
    aget-object p2, p2, p3
    invoke-virtual { p2 }, Landroid/view/View;->getTag()Ljava/lang/Object;
    move-result-object p2
    if-eqz p2, :L1
    goto :L2
  :L1
  .line 4
    new-instance p1, Ljava/lang/RuntimeException;
    const-string p2, "view must have a tag"
    invoke-direct { p1, p2 }, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    throw p1
  :L2
    return-object p1
.end method
