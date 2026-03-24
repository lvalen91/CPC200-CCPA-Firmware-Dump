.class public final Landroidx/core/view/f0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/f0/a$a;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    sput-object v0, Landroidx/core/view/f0/a;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/view/inputmethod/EditorInfo;)[Ljava/lang/String;
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_e

    .line 2
    iget-object p0, p0, Landroid/view/inputmethod/EditorInfo;->contentMimeTypes:[Ljava/lang/String;

    if-eqz p0, :cond_b

    goto :goto_d

    .line 3
    :cond_b
    sget-object p0, Landroidx/core/view/f0/a;->a:[Ljava/lang/String;

    :goto_d
    return-object p0

    .line 4
    :cond_e
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_15

    .line 5
    sget-object p0, Landroidx/core/view/f0/a;->a:[Ljava/lang/String;

    return-object p0

    :cond_15
    const-string v1, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES"

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_25

    .line 7
    iget-object p0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v0, "android.support.v13.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_25
    if-eqz v0, :cond_28

    goto :goto_2a

    .line 8
    :cond_28
    sget-object v0, Landroidx/core/view/f0/a;->a:[Ljava/lang/String;

    :goto_2a
    return-object v0
.end method

.method private static b(Ljava/lang/CharSequence;II)Z
    .registers 4

    if-eqz p2, :cond_10

    const/4 v0, 0x1

    if-eq p2, v0, :cond_7

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_7
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p0

    return p0

    .line 2
    :cond_10
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result p0

    return p0
.end method

.method private static c(I)Z
    .registers 2

    and-int/lit16 p0, p0, 0xfff

    const/16 v0, 0x81

    if-eq p0, v0, :cond_11

    const/16 v0, 0xe1

    if-eq p0, v0, :cond_11

    const/16 v0, 0x12

    if-ne p0, v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method public static d(Landroid/view/inputmethod/EditorInfo;[Ljava/lang/String;)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_9

    .line 2
    iput-object p1, p0, Landroid/view/inputmethod/EditorInfo;->contentMimeTypes:[Ljava/lang/String;

    goto :goto_22

    .line 3
    :cond_9
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_14

    .line 4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 5
    :cond_14
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v1, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 6
    iget-object p0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v0, "android.support.v13.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_22
    return-void
.end method

.method public static e(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;I)V
    .registers 8

    .line 1
    invoke-static {p1}, Lc/g/j/h;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_d

    .line 3
    invoke-static {p0, p1, p2}, Landroidx/core/view/f0/a$a;->a(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;I)V

    return-void

    .line 4
    :cond_d
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    if-le v0, v1, :cond_15

    sub-int/2addr v1, p2

    goto :goto_17

    :cond_15
    sub-int v1, v0, p2

    .line 5
    :goto_17
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    if-le v0, v2, :cond_1f

    sub-int/2addr v0, p2

    goto :goto_21

    :cond_1f
    sub-int v0, v2, p2

    .line 6
    :goto_21
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ltz p2, :cond_46

    if-ltz v1, :cond_46

    if-le v0, v2, :cond_2e

    goto :goto_46

    .line 7
    :cond_2e
    iget p2, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {p2}, Landroidx/core/view/f0/a;->c(I)Z

    move-result p2

    if-eqz p2, :cond_3a

    .line 8
    invoke-static {p0, v3, v4, v4}, Landroidx/core/view/f0/a;->g(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    return-void

    :cond_3a
    const/16 p2, 0x800

    if-gt v2, p2, :cond_42

    .line 9
    invoke-static {p0, p1, v1, v0}, Landroidx/core/view/f0/a;->g(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    return-void

    .line 10
    :cond_42
    invoke-static {p0, p1, v1, v0}, Landroidx/core/view/f0/a;->h(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    return-void

    .line 11
    :cond_46
    :goto_46
    invoke-static {p0, v3, v4, v4}, Landroidx/core/view/f0/a;->g(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    return-void
.end method

.method public static f(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;)V
    .registers 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_b

    .line 2
    invoke-static {p0, p1, v1}, Landroidx/core/view/f0/a$a;->a(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;I)V

    goto :goto_e

    .line 3
    :cond_b
    invoke-static {p0, p1, v1}, Landroidx/core/view/f0/a;->e(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;I)V

    :goto_e
    return-void
.end method

.method private static g(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    :cond_b
    if-eqz p1, :cond_13

    .line 3
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 4
    :goto_14
    iget-object p1, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v1, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SURROUNDING_TEXT"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v0, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_HEAD"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    iget-object p0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string p1, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_END"

    invoke-virtual {p0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method private static h(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V
    .registers 13

    sub-int v0, p3, p2

    const/4 v1, 0x0

    const/16 v2, 0x400

    if-le v0, v2, :cond_9

    const/4 v2, 0x0

    goto :goto_a

    :cond_9
    move v2, v0

    .line 1
    :goto_a
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, p3

    rsub-int v4, v2, 0x800

    const-wide v5, 0x3fe999999999999aL    # 0.8

    int-to-double v7, v4

    .line 2
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v5

    double-to-int v5, v7

    .line 3
    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int v5, v4, v5

    .line 4
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr v4, v3

    .line 5
    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int/2addr p2, v4

    .line 6
    invoke-static {p1, p2, v1}, Landroidx/core/view/f0/a;->b(Ljava/lang/CharSequence;II)Z

    move-result v5

    if-eqz v5, :cond_37

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v4, v4, -0x1

    :cond_37
    add-int v5, p3, v3

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .line 7
    invoke-static {p1, v5, v6}, Landroidx/core/view/f0/a;->b(Ljava/lang/CharSequence;II)Z

    move-result v5

    if-eqz v5, :cond_43

    add-int/lit8 v3, v3, -0x1

    :cond_43
    add-int v5, v4, v2

    add-int/2addr v5, v3

    if-eq v2, v0, :cond_5f

    add-int v0, p2, v4

    .line 8
    invoke-interface {p1, p2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    add-int/2addr v3, p3

    .line 9
    invoke-interface {p1, p3, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/CharSequence;

    aput-object p2, p3, v1

    aput-object p1, p3, v6

    .line 10
    invoke-static {p3}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_64

    :cond_5f
    add-int/2addr v5, p2

    .line 11
    invoke-interface {p1, p2, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_64
    add-int/2addr v4, v1

    add-int/2addr v2, v4

    .line 12
    invoke-static {p0, p1, v4, v2}, Landroidx/core/view/f0/a;->g(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    return-void
.end method
