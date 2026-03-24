.class public final Landroidx/core/view/f0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/f0/b$c;
    }
.end annotation


# direct methods
.method public static a(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroidx/core/view/f0/b$c;)Landroid/view/inputmethod/InputConnection;
    .registers 6

    if-eqz p0, :cond_31

    if-eqz p1, :cond_29

    if-eqz p2, :cond_21

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    const/4 v2, 0x0

    if-lt v0, v1, :cond_13

    .line 2
    new-instance p1, Landroidx/core/view/f0/b$a;

    invoke-direct {p1, p0, v2, p2}, Landroidx/core/view/f0/b$a;-><init>(Landroid/view/inputmethod/InputConnection;ZLandroidx/core/view/f0/b$c;)V

    return-object p1

    .line 3
    :cond_13
    invoke-static {p1}, Landroidx/core/view/f0/a;->a(Landroid/view/inputmethod/EditorInfo;)[Ljava/lang/String;

    move-result-object p1

    .line 4
    array-length p1, p1

    if-nez p1, :cond_1b

    return-object p0

    .line 5
    :cond_1b
    new-instance p1, Landroidx/core/view/f0/b$b;

    invoke-direct {p1, p0, v2, p2}, Landroidx/core/view/f0/b$b;-><init>(Landroid/view/inputmethod/InputConnection;ZLandroidx/core/view/f0/b$c;)V

    return-object p1

    .line 6
    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "onCommitContentListener must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "editorInfo must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_31
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "inputConnection must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static b(Ljava/lang/String;Landroid/os/Bundle;Landroidx/core/view/f0/b$c;)Z
    .registers 10

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const-string v1, "androidx.core.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

    .line 1
    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 p0, 0x0

    goto :goto_17

    :cond_e
    const-string v1, "android.support.v13.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

    .line 2
    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_81

    const/4 p0, 0x1

    :goto_17
    const/4 v1, 0x0

    if-eqz p0, :cond_1d

    :try_start_1a
    const-string v2, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER"

    goto :goto_1f

    :cond_1d
    const-string v2, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER"

    .line 3
    :goto_1f
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_79

    if-eqz p0, :cond_2a

    :try_start_27
    const-string v3, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_URI"

    goto :goto_2c

    :cond_2a
    const-string v3, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_URI"

    .line 4
    :goto_2c
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    if-eqz p0, :cond_37

    const-string v4, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

    goto :goto_39

    :cond_37
    const-string v4, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

    .line 5
    :goto_39
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/ClipDescription;

    if-eqz p0, :cond_44

    const-string v5, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

    goto :goto_46

    :cond_44
    const-string v5, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

    .line 6
    :goto_46
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    if-eqz p0, :cond_51

    const-string v6, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

    goto :goto_53

    :cond_51
    const-string v6, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

    .line 7
    :goto_53
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-eqz p0, :cond_5c

    const-string p0, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

    goto :goto_5e

    :cond_5c
    const-string p0, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

    .line 8
    :goto_5e
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    if-eqz v3, :cond_71

    if-eqz v4, :cond_71

    .line 9
    new-instance p1, Landroidx/core/view/f0/c;

    invoke-direct {p1, v3, v4, v5}, Landroidx/core/view/f0/c;-><init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V

    .line 10
    invoke-interface {p2, p1, v6, p0}, Landroidx/core/view/f0/b$c;->a(Landroidx/core/view/f0/c;ILandroid/os/Bundle;)Z

    move-result v0
    :try_end_71
    .catchall {:try_start_27 .. :try_end_71} :catchall_77

    :cond_71
    if-eqz v2, :cond_76

    .line 11
    invoke-virtual {v2, v0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_76
    return v0

    :catchall_77
    move-exception p0

    goto :goto_7b

    :catchall_79
    move-exception p0

    move-object v2, v1

    :goto_7b
    if-eqz v2, :cond_80

    invoke-virtual {v2, v0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 12
    :cond_80
    throw p0

    :cond_81
    return v0
.end method
