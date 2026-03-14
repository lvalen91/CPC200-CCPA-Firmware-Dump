.class public Lcom/google/android/material/textfield/TextInputLayout$e;
.super Landroidx/core/view/a;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/google/android/material/textfield/TextInputLayout;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 9
  name = "e"
.end annotation

.field private final d:Lcom/google/android/material/textfield/TextInputLayout;

.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
  .registers 2
  .line 1
    invoke-direct { p0 }, Landroidx/core/view/a;-><init>()V
  .line 2
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout$e;->d:Lcom/google/android/material/textfield/TextInputLayout;
    return-void
.end method

.method public g(Landroid/view/View;Landroidx/core/view/e0/c;)V
  .registers 16
  .line 1
    invoke-super { p0, p1, p2 }, Landroidx/core/view/a;->g(Landroid/view/View;Landroidx/core/view/e0/c;)V
  .line 2
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout$e;->d:Lcom/google/android/material/textfield/TextInputLayout;
    invoke-virtual { p1 }, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;
    move-result-object p1
    if-eqz p1, :L0
  .line 3
    invoke-virtual { p1 }, Landroid/widget/EditText;->getText()Landroid/text/Editable;
    move-result-object v0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
  .line 4
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout$e;->d:Lcom/google/android/material/textfield/TextInputLayout;
    invoke-virtual { v1 }, Lcom/google/android/material/textfield/TextInputLayout;->getHint()Ljava/lang/CharSequence;
    move-result-object v1
  .line 5
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout$e;->d:Lcom/google/android/material/textfield/TextInputLayout;
    invoke-virtual { v2 }, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;
    move-result-object v2
  .line 6
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout$e;->d:Lcom/google/android/material/textfield/TextInputLayout;
    invoke-virtual { v3 }, Lcom/google/android/material/textfield/TextInputLayout;->getPlaceholderText()Ljava/lang/CharSequence;
    move-result-object v3
  .line 7
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout$e;->d:Lcom/google/android/material/textfield/TextInputLayout;
    invoke-virtual { v4 }, Lcom/google/android/material/textfield/TextInputLayout;->getCounterMaxLength()I
    move-result v4
  .line 8
    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout$e;->d:Lcom/google/android/material/textfield/TextInputLayout;
    invoke-virtual { v5 }, Lcom/google/android/material/textfield/TextInputLayout;->getCounterOverflowDescription()Ljava/lang/CharSequence;
    move-result-object v5
  .line 9
    invoke-static { v0 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v6
    const/4 v7, 1
    xor-int/2addr v6, v7
  .line 10
    invoke-static { v1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v8
    xor-int/2addr v8, v7
  .line 11
    iget-object v9, p0, Lcom/google/android/material/textfield/TextInputLayout$e;->d:Lcom/google/android/material/textfield/TextInputLayout;
    invoke-virtual { v9 }, Lcom/google/android/material/textfield/TextInputLayout;->N()Z
    move-result v9
    xor-int/2addr v9, v7
  .line 12
    invoke-static { v2 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v10
    xor-int/2addr v10, v7
    if-nez v10, :L3
  .line 13
    invoke-static { v5 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v11
    if-nez v11, :L2
    goto :L3
  :L2
    const/4 v11, 0
    goto :L4
  :L3
    const/4 v11, 1
  :L4
    if-eqz v8, :L5
  .line 14
    invoke-interface { v1 }, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    move-result-object v1
    goto :L6
  :L5
    const-string v1, ""
  :L6
    const-string v8, ", "
    if-eqz v6, :L7
  .line 15
    invoke-virtual { p2, v0 }, Landroidx/core/view/e0/c;->r0(Ljava/lang/CharSequence;)V
    goto :L9
  :L7
  .line 16
    invoke-static { v1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v12
    if-nez v12, :L8
  .line 17
    invoke-virtual { p2, v1 }, Landroidx/core/view/e0/c;->r0(Ljava/lang/CharSequence;)V
    if-eqz v9, :L9
    if-eqz v3, :L9
  .line 18
    new-instance v9, Ljava/lang/StringBuilder;
    invoke-direct { v9 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v9, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v9, v8 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v9, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v9 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-virtual { p2, v3 }, Landroidx/core/view/e0/c;->r0(Ljava/lang/CharSequence;)V
    goto :L9
  :L8
    if-eqz v3, :L9
  .line 19
    invoke-virtual { p2, v3 }, Landroidx/core/view/e0/c;->r0(Ljava/lang/CharSequence;)V
  :L9
  .line 20
    invoke-static { v1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v3
    if-nez v3, :L13
  .line 21
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v9, 26
    if-lt v3, v9, :L10
  .line 22
    invoke-virtual { p2, v1 }, Landroidx/core/view/e0/c;->g0(Ljava/lang/CharSequence;)V
    goto :L12
  :L10
    if-eqz v6, :L11
  .line 23
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v3, v8 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
  :L11
  .line 24
    invoke-virtual { p2, v1 }, Landroidx/core/view/e0/c;->r0(Ljava/lang/CharSequence;)V
  :L12
    xor-int/lit8 v1, v6, 1
  .line 25
    invoke-virtual { p2, v1 }, Landroidx/core/view/e0/c;->o0(Z)V
  :L13
    if-eqz v0, :L14
  .line 26
    invoke-interface { v0 }, Ljava/lang/CharSequence;->length()I
    move-result v0
    if-ne v0, v4, :L14
    goto :L15
  :L14
    const/4 v4, -1
  :L15
  .line 27
    invoke-virtual { p2, v4 }, Landroidx/core/view/e0/c;->h0(I)V
    if-eqz v11, :L18
    if-eqz v10, :L16
    goto :L17
  :L16
    move-object v2, v5
  :L17
  .line 28
    invoke-virtual { p2, v2 }, Landroidx/core/view/e0/c;->c0(Ljava/lang/CharSequence;)V
  :L18
  .line 29
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v0, 17
    if-lt p2, v0, :L19
    if-eqz p1, :L19
  .line 30
    sget p2, Ld/c/a/a/f;->textinput_helper_text:I
    invoke-virtual { p1, p2 }, Landroid/widget/EditText;->setLabelFor(I)V
  :L19
    return-void
.end method
