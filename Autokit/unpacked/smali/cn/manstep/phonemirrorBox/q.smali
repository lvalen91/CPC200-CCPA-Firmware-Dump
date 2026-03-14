.class public Lcn/manstep/phonemirrorBox/q;
.super Ljava/lang/Object;
.implements Ljava/lang/Thread$UncaughtExceptionHandler;
.source "SourceFile"

.field private static f:Ljava/util/Stack;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Stack<",
      "Landroid/app/Activity;",
      ">;"
    }
  .end annotation
.end field

.field private static g:Lcn/manstep/phonemirrorBox/q;

.field private a:Ljava/lang/Thread;

.field private b:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private c:Landroid/content/Context;

.field private d:Ljava/io/File;

.field private e:Ljava/lang/String;

.method static constructor <clinit>()V
  .registers 1
    return-void
.end method

.method private constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    new-instance v0, Ljava/util/Stack;
    invoke-direct { v0 }, Ljava/util/Stack;-><init>()V
    sput-object v0, Lcn/manstep/phonemirrorBox/q;->f:Ljava/util/Stack;
    return-void
.end method

.method static synthetic b(Lcn/manstep/phonemirrorBox/q;)Landroid/content/Context;
  .registers 1
  .line 1
    iget-object p0, p0, Lcn/manstep/phonemirrorBox/q;->c:Landroid/content/Context;
    return-object p0
.end method

.method static synthetic c(Lcn/manstep/phonemirrorBox/q;Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
  .registers 5
  .line 1
    invoke-direct { p0, p1, p2, p3, p4 }, Lcn/manstep/phonemirrorBox/q;->f(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    return-void
.end method

.method static synthetic d(Lcn/manstep/phonemirrorBox/q;Ljava/lang/String;)V
  .registers 2
  .line 1
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/q;->q(Ljava/lang/String;)V
    return-void
.end method

.method private f(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
  .catch Ljava/lang/Exception; { :L2 .. :L3 } :L4
  .registers 14
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/p;->a:Ljava/lang/String;
  .line 2
    invoke-virtual { v0 }, Ljava/lang/String;->length()I
    move-result v1
    const/16 v2, 19
    if-lt v1, v2, :L0
  .line 3
    sget-object v0, Lcn/manstep/phonemirrorBox/p;->a:Ljava/lang/String;
    const/4 v1, 4
    invoke-virtual { v0, v1, v2 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v0
  :L0
  .line 4
    sget-object v1, Lcn/manstep/phonemirrorBox/p;->a:Ljava/lang/String;
    invoke-virtual { v1 }, Ljava/lang/String;->length()I
    move-result v1
    const/16 v2, 15
    if-ge v1, v2, :L1
    const-string v0, "2025.03.19.1126"
  :L1
    const-string v1, "ro.product.manufacturer"
    const-string v2, ""
  .line 5
    invoke-static { v1, v2 }, Lcn/manstep/phonemirrorBox/p;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    const-string v3, "ro.board.platform"
  .line 6
    invoke-static { v3, v2 }, Lcn/manstep/phonemirrorBox/p;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
  .line 7
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v4, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v5, "("
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v5, ")"
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
  .line 8
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;
  .line 9
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct { v6 }, Ljava/lang/StringBuilder;-><init>()V
    sget v7, Lcn/manstep/phonemirrorBox/p;->k:I
    invoke-virtual { v6, v7 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v7, "x"
    invoke-virtual { v6, v7 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v7, Lcn/manstep/phonemirrorBox/p;->l:I
    invoke-virtual { v6, v7 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v6 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v6
  :L2
  .line 10
    new-instance v7, Ljava/lang/StringBuilder;
    invoke-direct { v7 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v7, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v7, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v7, p4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v7 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v7
    invoke-virtual { p1, v7 }, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
  .line 11
    new-instance v7, Ljava/lang/StringBuilder;
    invoke-direct { v7 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v8, "Content-Disposition: form-data; name=\"appVersion\""
    invoke-virtual { v7, v8 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v7, p4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v7 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v7
    invoke-virtual { p1, v7 }, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
  .line 12
    invoke-virtual { p1, p4 }, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
  .line 13
    new-instance v7, Ljava/lang/StringBuilder;
    invoke-direct { v7 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v7, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v7, p4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v7 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p1, v0 }, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
  .line 14
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p1, v0 }, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
  .line 15
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v7, "Content-Disposition: form-data; name=\"manufacturer\""
    invoke-virtual { v0, v7 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p1, v0 }, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
  .line 16
    invoke-virtual { p1, p4 }, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
  .line 17
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p1, v0 }, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
  .line 18
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p1, v0 }, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
  .line 19
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Content-Disposition: form-data; name=\"platform\""
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p1, v0 }, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
  .line 20
    invoke-virtual { p1, p4 }, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
  .line 21
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p1, v0 }, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
  .line 22
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p1, v0 }, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
  .line 23
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Content-Disposition: form-data; name=\"model\""
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p1, v0 }, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
  .line 24
    invoke-virtual { p1, p4 }, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
  .line 25
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p1, v0 }, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
  .line 26
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p1, v0 }, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
  .line 27
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Content-Disposition: form-data; name=\"android\""
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p1, v0 }, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
  .line 28
    invoke-virtual { p1, p4 }, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
  .line 29
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p1, v0 }, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
  .line 30
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p1, v0 }, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
  .line 31
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Content-Disposition: form-data; name=\"resolution\""
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p1, v0 }, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
  .line 32
    invoke-virtual { p1, p4 }, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
  .line 33
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p1, v0 }, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
  .line 34
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p1, v0 }, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
  .line 35
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Content-Disposition: form-data; name=\"uuid\""
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p1, v0 }, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
  .line 36
    invoke-virtual { p1, p4 }, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
  .line 37
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/u;->I()Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { p1, v0 }, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
  .line 38
    invoke-static { v2 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-nez v0, :L5
  .line 39
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-virtual { p1, p2 }, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
  .line 40
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string p3, "Content-Disposition: form-data; name=\"loc\""
    invoke-virtual { p2, p3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, p4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
    invoke-virtual { p1, p2 }, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
  .line 41
    invoke-virtual { p1, p4 }, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
  .line 42
    invoke-virtual { v2 }, Ljava/lang/String;->getBytes()[B
    move-result-object p2
    invoke-virtual { p1, p2 }, Ljava/io/DataOutputStream;->write([B)V
  .line 43
    invoke-virtual { p1, p4 }, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
  :L3
    goto :L5
  :L4
    move-exception p1
  .line 44
    invoke-virtual { p1 }, Ljava/lang/Exception;->printStackTrace()V
  :L5
    return-void
.end method

.method public static g()Lcn/manstep/phonemirrorBox/q;
  .catchall { :L0 .. :L3 } :L2
  .registers 3
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/q;->g:Lcn/manstep/phonemirrorBox/q;
    if-nez v0, :L4
  .line 2
    const-class v0, Lcn/manstep/phonemirrorBox/q;
    monitor-enter v0
  :L0
  .line 3
    sget-object v1, Lcn/manstep/phonemirrorBox/q;->g:Lcn/manstep/phonemirrorBox/q;
    if-nez v1, :L1
  .line 4
    new-instance v1, Lcn/manstep/phonemirrorBox/q;
    invoke-direct { v1 }, Lcn/manstep/phonemirrorBox/q;-><init>()V
    sput-object v1, Lcn/manstep/phonemirrorBox/q;->g:Lcn/manstep/phonemirrorBox/q;
  :L1
  .line 5
    monitor-exit v0
    goto :L4
  :L2
    move-exception v1
    monitor-exit v0
  :L3
    throw v1
  :L4
  .line 6
    sget-object v0, Lcn/manstep/phonemirrorBox/q;->g:Lcn/manstep/phonemirrorBox/q;
    return-object v0
.end method

.method private i(Ljava/lang/Throwable;)Z
  .registers 5
    if-nez p1, :L0
    const/4 p1, 0
    return p1
  :L0
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "==========handleException============"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v1, Lcn/manstep/phonemirrorBox/util/s;->b:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "CrashHandler"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
  .line 2
    new-instance v0, Lcn/manstep/phonemirrorBox/q$a;
    invoke-direct { v0, p0 }, Lcn/manstep/phonemirrorBox/q$a;-><init>(Lcn/manstep/phonemirrorBox/q;)V
  .line 3
    invoke-virtual { v0 }, Ljava/lang/Thread;->start()V
  .line 4
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/u;->I()Ljava/lang/String;
    move-result-object v0
    const-string v2, "b6850129e15450669e97b9251a5692f1"
    invoke-virtual { v2, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    const/4 v2, 1
    if-eqz v0, :L1
    return v2
  :L1
  .line 5
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/q;->o(Ljava/lang/Throwable;)V
  .line 6
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "==========handleException=======close====="
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v0, Lcn/manstep/phonemirrorBox/util/s;->b:Ljava/lang/String;
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { v1, p1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 7
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/q;->d:Ljava/io/File;
    invoke-virtual { p1 }, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object p1
    invoke-direct { p0, p1 }, Lcn/manstep/phonemirrorBox/q;->p(Ljava/lang/String;)V
    return v2
.end method

.method private o(Ljava/lang/Throwable;)V
  .registers 5
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
  .line 2
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Name: 37.AutoKit\nTIME: 2025.03.19.1126\nApp:  "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v2, Lcn/manstep/phonemirrorBox/p;->a:Ljava/lang/String;
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v2, "\nVER:  "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/16 v2, 10208
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, "\nBox:  "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v2, Lcn/manstep/phonemirrorBox/p;->b:Ljava/lang/String;
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v2, "\n"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
  .line 3
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 4
    new-instance v1, Ljava/io/StringWriter;
    invoke-direct { v1 }, Ljava/io/StringWriter;-><init>()V
  .line 5
    new-instance v2, Ljava/io/PrintWriter;
    invoke-direct { v2, v1 }, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
  .line 6
    invoke-virtual { p1, v2 }, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
  .line 7
    invoke-virtual { p1 }, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
    move-result-object p1
  :L0
    if-eqz p1, :L1
  .line 8
    invoke-virtual { p1, v2 }, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
  .line 9
    invoke-virtual { p1 }, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
    move-result-object p1
    goto :L0
  :L1
  .line 10
    invoke-virtual { v2 }, Ljava/io/PrintWriter;->close()V
  .line 11
    invoke-virtual { v1 }, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object p1
  .line 12
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 13
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 14
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-virtual { p1 }, Ljava/lang/String;->getBytes()[B
    move-result-object p1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/q;->d:Ljava/io/File;
    invoke-virtual { v0 }, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v0
    invoke-static { p1, v0 }, Lcn/manstep/phonemirrorBox/util/n;->y([BLjava/lang/String;)Z
    return-void
.end method

.method private p(Ljava/lang/String;)V
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/q;->c:Landroid/content/Context;
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/n;->o(Landroid/content/Context;)Ljava/io/File;
    move-result-object v0
    if-nez v0, :L1
    if-eqz p1, :L0
    const-string v0, ""
  .line 2
    invoke-virtual { v0, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L2
  :L0
    return-void
  :L1
  .line 3
    invoke-virtual { v0 }, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object p1
  .line 4
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/n;->i(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
    if-nez p1, :L2
    return-void
  :L2
  .line 5
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/q;->e:Ljava/lang/String;
  .line 6
    new-instance v0, Ljava/lang/Thread;
    new-instance v1, Lcn/manstep/phonemirrorBox/q$b;
    invoke-direct { v1, p0, p1 }, Lcn/manstep/phonemirrorBox/q$b;-><init>(Lcn/manstep/phonemirrorBox/q;Ljava/lang/String;)V
    const-string p1, "uploadCrashLog"
    invoke-direct { v0, v1, p1 }, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/q;->a:Ljava/lang/Thread;
  .line 7
    invoke-virtual { v0 }, Ljava/lang/Thread;->start()V
    return-void
.end method

.method private q(Ljava/lang/String;)V
  .catch Ljava/lang/Exception; { :L2 .. :L3 } :L4
  .registers 5
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "\u65e5\u5fd7\u4e0a\u4f20\u5b8c\u6210: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "CrashHandler"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 2
    invoke-static { p1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-eqz v0, :L0
    return-void
  :L0
    const-string v0, "[$]"
  .line 3
    invoke-virtual { p1, v0 }, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v0
  .line 4
    array-length v1, v0
    const/4 v2, 2
    if-ne v1, v2, :L1
    const/4 p1, 1
  .line 5
    aget-object p1, v0, p1
  :L1
  .line 6
    invoke-static { p1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    if-eqz v0, :L2
    return-void
  :L2
  .line 7
    new-instance v0, Lorg/json/JSONObject;
    invoke-direct { v0, p1 }, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    const-string p1, "error"
  .line 8
    invoke-virtual { v0, p1 }, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    move-result p1
  :L3
    goto :L5
  :L4
    move-exception p1
  .line 9
    invoke-virtual { p1 }, Ljava/lang/Exception;->printStackTrace()V
  .line 10
    invoke-static { p1 }, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object p1
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    const/4 p1, -1
  :L5
    if-nez p1, :L6
  .line 11
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/q;->e:Ljava/lang/String;
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/n;->f(Ljava/lang/String;)Z
  :L6
    return-void
.end method

.method public a(Landroid/content/Context;)V
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L2
  .registers 3
  :L0
  .line 1
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/q;->n()V
    const-string v0, "activity"
  .line 2
    invoke-virtual { p1, v0 }, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/app/ActivityManager;
  .line 3
    invoke-virtual { p1 }, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v0, p1 }, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V
    const/4 p1, 0
  .line 4
    invoke-static { p1 }, Ljava/lang/System;->exit(I)V
  :L1
    goto :L3
  :L2
  .line 5
    invoke-static { }, Landroid/os/Process;->myPid()I
    move-result p1
    invoke-static { p1 }, Landroid/os/Process;->killProcess(I)V
    const/4 p1, 1
  .line 6
    invoke-static { p1 }, Ljava/lang/System;->exit(I)V
  :L3
    return-void
.end method

.method public e(Landroid/app/Activity;)V
  .registers 3
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/q;->f:Ljava/util/Stack;
    if-nez v0, :L0
  .line 2
    new-instance v0, Ljava/util/Stack;
    invoke-direct { v0 }, Ljava/util/Stack;-><init>()V
    sput-object v0, Lcn/manstep/phonemirrorBox/q;->f:Ljava/util/Stack;
  :L0
  .line 3
    sget-object v0, Lcn/manstep/phonemirrorBox/q;->f:Ljava/util/Stack;
    invoke-virtual { v0, p1 }, Ljava/util/Stack;->add(Ljava/lang/Object;)Z
    return-void
.end method

.method public h()Lcn/manstep/phonemirrorBox/MainActivity;
  .registers 4
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/q;->f:Ljava/util/Stack;
    if-eqz v0, :L2
    const/4 v0, 0
  :L0
  .line 2
    sget-object v1, Lcn/manstep/phonemirrorBox/q;->f:Ljava/util/Stack;
    invoke-virtual { v1 }, Ljava/util/Stack;->size()I
    move-result v1
    if-ge v0, v1, :L2
  .line 3
    sget-object v1, Lcn/manstep/phonemirrorBox/q;->f:Ljava/util/Stack;
    invoke-virtual { v1, v0 }, Ljava/util/Stack;->get(I)Ljava/lang/Object;
    move-result-object v1
    if-eqz v1, :L1
  .line 4
    sget-object v1, Lcn/manstep/phonemirrorBox/q;->f:Ljava/util/Stack;
    invoke-virtual { v1, v0 }, Ljava/util/Stack;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroid/app/Activity;
  .line 5
    instance-of v2, v1, Lcn/manstep/phonemirrorBox/MainActivity;
    if-eqz v2, :L1
  .line 6
    check-cast v1, Lcn/manstep/phonemirrorBox/MainActivity;
    return-object v1
  :L1
    add-int/lit8 v0, v0, 1
    goto :L0
  :L2
    const/4 v0, 0
    return-object v0
.end method

.method public j(Landroid/content/Context;)V
  .registers 4
  .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/q;->c:Landroid/content/Context;
  .line 2
    invoke-static { }, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    move-result-object v0
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/q;->b:Ljava/lang/Thread$UncaughtExceptionHandler;
  .line 3
    invoke-static { p0 }, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
  .line 4
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/util/n;->n(Landroid/content/Context;)Ljava/io/File;
    move-result-object p1
  .line 5
    new-instance v0, Ljava/io/File;
    const-string v1, "CrashLog.log"
    invoke-direct { v0, p1, v1 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/q;->d:Ljava/io/File;
    return-void
.end method

.method public k()Z
  .registers 4
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/q;->f:Ljava/util/Stack;
    const/4 v1, 0
    if-eqz v0, :L2
    const/4 v0, 0
  :L0
  .line 2
    sget-object v2, Lcn/manstep/phonemirrorBox/q;->f:Ljava/util/Stack;
    invoke-virtual { v2 }, Ljava/util/Stack;->size()I
    move-result v2
    if-ge v0, v2, :L2
  .line 3
    sget-object v2, Lcn/manstep/phonemirrorBox/q;->f:Ljava/util/Stack;
    invoke-virtual { v2, v0 }, Ljava/util/Stack;->get(I)Ljava/lang/Object;
    move-result-object v2
    if-eqz v2, :L1
  .line 4
    sget-object v2, Lcn/manstep/phonemirrorBox/q;->f:Ljava/util/Stack;
    invoke-virtual { v2, v0 }, Ljava/util/Stack;->get(I)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroid/app/Activity;
  .line 5
    instance-of v2, v2, Lcn/manstep/phonemirrorBox/MainActivity;
    if-eqz v2, :L1
    const/4 v0, 1
    return v0
  :L1
    add-int/lit8 v0, v0, 1
    goto :L0
  :L2
    return v1
.end method

.method public l(Landroid/app/Activity;)V
  .registers 3
    const/4 v0, 1
  .line 1
    invoke-virtual { p0, p1, v0 }, Lcn/manstep/phonemirrorBox/q;->m(Landroid/app/Activity;Z)V
    return-void
.end method

.method public m(Landroid/app/Activity;Z)V
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L2
  .registers 4
    if-eqz p1, :L3
  :L0
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/q;->f:Ljava/util/Stack;
    invoke-virtual { v0, p1 }, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z
    if-eqz p2, :L3
  .line 2
    invoke-virtual { p1 }, Landroid/app/Activity;->finish()V
  :L1
    goto :L3
  :L2
    move-exception p1
  .line 3
    invoke-virtual { p1 }, Ljava/lang/Exception;->printStackTrace()V
  :L3
    return-void
.end method

.method public n()V
  .registers 3
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "activityStack.size() = "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-object v1, Lcn/manstep/phonemirrorBox/q;->f:Ljava/util/Stack;
    invoke-virtual { v1 }, Ljava/util/Stack;->size()I
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "CrashHandler"
    invoke-static { v1, v0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    const/4 v0, 0
  :L0
  .line 2
    sget-object v1, Lcn/manstep/phonemirrorBox/q;->f:Ljava/util/Stack;
    invoke-virtual { v1 }, Ljava/util/Stack;->size()I
    move-result v1
    if-ge v0, v1, :L2
  .line 3
    sget-object v1, Lcn/manstep/phonemirrorBox/q;->f:Ljava/util/Stack;
    invoke-virtual { v1, v0 }, Ljava/util/Stack;->get(I)Ljava/lang/Object;
    move-result-object v1
    if-eqz v1, :L1
  .line 4
    sget-object v1, Lcn/manstep/phonemirrorBox/q;->f:Ljava/util/Stack;
    invoke-virtual { v1, v0 }, Ljava/util/Stack;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroid/app/Activity;
    invoke-virtual { v1 }, Landroid/app/Activity;->finish()V
  :L1
    add-int/lit8 v0, v0, 1
    goto :L0
  :L2
  .line 5
    sget-object v0, Lcn/manstep/phonemirrorBox/q;->f:Ljava/util/Stack;
    invoke-virtual { v0 }, Ljava/util/Stack;->clear()V
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
  .catch Ljava/lang/InterruptedException; { :L0 .. :L1 } :L2
  .catch Ljava/lang/InterruptedException; { :L4 .. :L5 } :L6
  .registers 4
  .line 1
    invoke-direct { p0, p2 }, Lcn/manstep/phonemirrorBox/q;->i(Ljava/lang/Throwable;)Z
    move-result v0
    if-nez v0, :L0
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/q;->b:Ljava/lang/Thread$UncaughtExceptionHandler;
    if-eqz v0, :L8
  .line 3
    invoke-interface { v0, p1, p2 }, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    goto :L8
  :L0
  .line 4
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/q;->a:Ljava/lang/Thread;
    invoke-virtual { p1 }, Ljava/lang/Thread;->join()V
  :L1
    goto :L3
  :L2
    move-exception p1
  .line 5
    invoke-virtual { p1 }, Ljava/lang/InterruptedException;->printStackTrace()V
  :L3
    const/4 p1, 0
  .line 6
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/q;->a:Ljava/lang/Thread;
    const-wide/16 p1, 3000
  :L4
  .line 7
    invoke-static { p1, p2 }, Ljava/lang/Thread;->sleep(J)V
  :L5
    goto :L7
  :L6
    move-exception p1
  .line 8
    invoke-virtual { p1 }, Ljava/lang/InterruptedException;->printStackTrace()V
  :L7
  .line 9
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/q;->c:Landroid/content/Context;
    invoke-virtual { p0, p1 }, Lcn/manstep/phonemirrorBox/q;->a(Landroid/content/Context;)V
  :L8
    return-void
.end method
