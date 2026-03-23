.class public final Landroidx/core/view/f0/b;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Landroidx/core/view/f0/b$c;
  }
.end annotation

.method public static a(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroidx/core/view/f0/b$c;)Landroid/view/inputmethod/InputConnection;
  .registers 6
    if-eqz p0, :L4
    if-eqz p1, :L3
    if-eqz p2, :L2
  .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 25
    const/4 v2, 0
    if-lt v0, v1, :L0
  .line 2
    new-instance p1, Landroidx/core/view/f0/b$a;
    invoke-direct { p1, p0, v2, p2 }, Landroidx/core/view/f0/b$a;-><init>(Landroid/view/inputmethod/InputConnection;ZLandroidx/core/view/f0/b$c;)V
    return-object p1
  :L0
  .line 3
    invoke-static { p1 }, Landroidx/core/view/f0/a;->a(Landroid/view/inputmethod/EditorInfo;)[Ljava/lang/String;
    move-result-object p1
  .line 4
    array-length p1, p1
    if-nez p1, :L1
    return-object p0
  :L1
  .line 5
    new-instance p1, Landroidx/core/view/f0/b$b;
    invoke-direct { p1, p0, v2, p2 }, Landroidx/core/view/f0/b$b;-><init>(Landroid/view/inputmethod/InputConnection;ZLandroidx/core/view/f0/b$c;)V
    return-object p1
  :L2
  .line 6
    new-instance p0, Ljava/lang/IllegalArgumentException;
    const-string p1, "onCommitContentListener must be non-null"
    invoke-direct { p0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p0
  :L3
  .line 7
    new-instance p0, Ljava/lang/IllegalArgumentException;
    const-string p1, "editorInfo must be non-null"
    invoke-direct { p0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p0
  :L4
  .line 8
    new-instance p0, Ljava/lang/IllegalArgumentException;
    const-string p1, "inputConnection must be non-null"
    invoke-direct { p0, p1 }, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw p0
.end method

.method static b(Ljava/lang/String;Landroid/os/Bundle;Landroidx/core/view/f0/b$c;)Z
  .catchall { :L3 .. :L6 } :L21
  .catchall { :L7 .. :L18 } :L20
  .registers 10
    const/4 v0, 0
    if-nez p1, :L0
    return v0
  :L0
    const-string v1, "androidx.core.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"
  .line 1
    invoke-static { v1, p0 }, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    move-result v1
    if-eqz v1, :L1
    const/4 p0, 0
    goto :L2
  :L1
    const-string v1, "android.support.v13.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"
  .line 2
    invoke-static { v1, p0 }, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    move-result p0
    if-eqz p0, :L24
    const/4 p0, 1
  :L2
    const/4 v1, 0
    if-eqz p0, :L4
  :L3
    const-string v2, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER"
    goto :L5
  :L4
    const-string v2, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER"
  :L5
  .line 3
    invoke-virtual { p1, v2 }, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
    move-result-object v2
    check-cast v2, Landroid/os/ResultReceiver;
  :L6
    if-eqz p0, :L8
  :L7
    const-string v3, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_URI"
    goto :L9
  :L8
    const-string v3, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_URI"
  :L9
  .line 4
    invoke-virtual { p1, v3 }, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
    move-result-object v3
    check-cast v3, Landroid/net/Uri;
    if-eqz p0, :L10
    const-string v4, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"
    goto :L11
  :L10
    const-string v4, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"
  :L11
  .line 5
    invoke-virtual { p1, v4 }, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
    move-result-object v4
    check-cast v4, Landroid/content/ClipDescription;
    if-eqz p0, :L12
    const-string v5, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"
    goto :L13
  :L12
    const-string v5, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"
  :L13
  .line 6
    invoke-virtual { p1, v5 }, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
    move-result-object v5
    check-cast v5, Landroid/net/Uri;
    if-eqz p0, :L14
    const-string v6, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"
    goto :L15
  :L14
    const-string v6, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"
  :L15
  .line 7
    invoke-virtual { p1, v6 }, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    move-result v6
    if-eqz p0, :L16
    const-string p0, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"
    goto :L17
  :L16
    const-string p0, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"
  :L17
  .line 8
    invoke-virtual { p1, p0 }, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
    move-result-object p0
    check-cast p0, Landroid/os/Bundle;
    if-eqz v3, :L18
    if-eqz v4, :L18
  .line 9
    new-instance p1, Landroidx/core/view/f0/c;
    invoke-direct { p1, v3, v4, v5 }, Landroidx/core/view/f0/c;-><init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V
  .line 10
    invoke-interface { p2, p1, v6, p0 }, Landroidx/core/view/f0/b$c;->a(Landroidx/core/view/f0/c;ILandroid/os/Bundle;)Z
    move-result v0
  :L18
    if-eqz v2, :L19
  .line 11
    invoke-virtual { v2, v0, v1 }, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
  :L19
    return v0
  :L20
    move-exception p0
    goto :L22
  :L21
    move-exception p0
    move-object v2, v1
  :L22
    if-eqz v2, :L23
    invoke-virtual { v2, v0, v1 }, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
  :L23
  .line 12
    throw p0
  :L24
    return v0
.end method
