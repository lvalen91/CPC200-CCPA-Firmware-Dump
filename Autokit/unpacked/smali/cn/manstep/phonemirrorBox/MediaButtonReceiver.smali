.class public Lcn/manstep/phonemirrorBox/MediaButtonReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcn/manstep/phonemirrorBox/MediaButtonReceiver$b;,
    Lcn/manstep/phonemirrorBox/MediaButtonReceiver$a;
  }
.end annotation

.field private static a:Z

.method static constructor <clinit>()V
  .registers 3
    const v0, 1529
    invoke-static { v0 }, Lcom/stub/StubApp;->interface11(I)V
    return-void
.end method

.method public constructor <init>()V
  .registers 1
  .line 1
    invoke-direct { p0 }, Landroid/content/BroadcastReceiver;-><init>()V
    return-void
.end method

.method public static a(Landroid/content/Intent;Ljava/lang/String;)V
  .registers 12
    if-eqz p0, :L8
    if-nez p1, :L0
    goto/16 :L8
  :L0
  .line 1
    invoke-virtual { p0 }, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
    move-result-object p0
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0, p1 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    const-string v1, "getExtras: "
    const-string v2, "MediaButtonReceiver"
    if-eqz p0, :L7
  .line 3
    invoke-virtual { p0 }, Landroid/os/Bundle;->keySet()Ljava/util/Set;
    move-result-object v3
  .line 4
    invoke-interface { v3 }, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v3
  :L1
    invoke-interface { v3 }, Ljava/util/Iterator;->hasNext()Z
    move-result v4
    if-eqz v4, :L6
    invoke-interface { v3 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Ljava/lang/String;
  .line 5
    invoke-virtual { p0, v4 }, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v5
    if-nez v5, :L2
    goto :L1
  :L2
  .line 6
    instance-of v6, v5, Ljava/lang/Integer;
    const-string v7, "===="
    const-string v8, "\n"
    if-eqz v6, :L3
  .line 7
    invoke-virtual { v0, v8 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v4, "==int=="
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v7 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v5 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v4
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    goto :L1
  :L3
  .line 8
    instance-of v6, v5, Ljava/lang/String;
    if-eqz v6, :L4
  .line 9
    invoke-virtual { v0, v8 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v4, "==String=="
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    goto :L1
  :L4
  .line 10
    instance-of v6, v5, Ljava/lang/Boolean;
    if-eqz v6, :L5
  .line 11
    invoke-virtual { v0, v8 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v4, "==boolean=="
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    goto :L1
  :L5
  .line 12
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;
    new-instance v9, Ljava/lang/StringBuilder;
    invoke-direct { v9 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v9, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v9, v7 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v9, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v9 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v7
    invoke-virtual { v6, v7 }, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
  .line 13
    invoke-virtual { v0, v8 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v4, "=="
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v5 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v6
    invoke-virtual { v0, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    goto/16 :L1
  :L6
  .line 14
    new-instance p0, Ljava/lang/StringBuilder;
    invoke-direct { p0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    invoke-static { v2, p0 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    goto :L8
  :L7
  .line 15
    new-instance p0, Ljava/lang/StringBuilder;
    invoke-direct { p0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p1, " no extras"
    invoke-virtual { p0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    invoke-static { v2, p0 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
  :L8
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
  .registers 9
    const-string v0, "MediaButtonReceiver"
    if-nez p1, :L0
    const-string p1, "onReceive: context = null"
  .line 1
    invoke-static { v0, p1 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
    return-void
  :L0
    if-nez p2, :L1
    const-string p1, "onReceive: intent = null"
  .line 2
    invoke-static { v0, p1 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
    return-void
  :L1
  .line 3
    invoke-virtual { p2 }, Landroid/content/Intent;->getAction()Ljava/lang/String;
    move-result-object v1
    if-nez v1, :L2
    const-string p1, "onReceive: action = null"
  .line 4
    invoke-static { v0, p1 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
    return-void
  :L2
  .line 5
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "onReceive: action="
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static { v0, v2 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    const-string v2, "android.intent.action.MEDIA_BUTTON"
  .line 6
    invoke-virtual { v1, v2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-nez v2, :L3
    const-string v2, "hy.intent.action.MEDIA_BUTTON"
    invoke-virtual { v1, v2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :L10
  :L3
    const-string v2, "android.intent.extra.KEY_EVENT"
  .line 7
    invoke-virtual { p2, v2 }, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
    move-result-object v2
    check-cast v2, Landroid/view/KeyEvent;
    if-nez v2, :L4
    const-string p1, "onReceive: KeyEvent = null"
  .line 8
    invoke-static { v0, p1 }, Lcn/manstep/phonemirrorBox/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
  .line 9
    invoke-static { p2, v1 }, Lcn/manstep/phonemirrorBox/MediaButtonReceiver;->a(Landroid/content/Intent;Ljava/lang/String;)V
    return-void
  :L4
  .line 10
    invoke-virtual { v2 }, Landroid/view/KeyEvent;->getKeyCode()I
    move-result p2
  .line 11
    invoke-virtual { v2 }, Landroid/view/KeyEvent;->getAction()I
    move-result v1
  .line 12
    invoke-virtual { v2 }, Landroid/view/KeyEvent;->getRepeatCount()I
    move-result v3
  .line 13
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "keyCode: "
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v5, ", keyAction: "
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v5, ", repeatCount: "
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v4, v3 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v4 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-static { v0, v4 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 14
    invoke-virtual { v2 }, Landroid/view/KeyEvent;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static { v0, v2 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    const/4 v2, 1
    if-eq v1, v2, :L7
    if-lez v3, :L5
  .line 15
    sput-boolean v2, Lcn/manstep/phonemirrorBox/MediaButtonReceiver;->a:Z
    goto :L6
  :L5
    const/4 p1, 0
  .line 16
    sput-boolean p1, Lcn/manstep/phonemirrorBox/MediaButtonReceiver;->a:Z
  :L6
    return-void
  :L7
  .line 17
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/a;->G()V
  .line 18
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->s()Lcn/manstep/phonemirrorBox/q0/g;
    move-result-object v1
    const-string v2, ", bLongPressKey="
    if-eqz v1, :L9
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/d;->s()Lcn/manstep/phonemirrorBox/q0/g;
    move-result-object v1
    invoke-interface { v1 }, Lcn/manstep/phonemirrorBox/q0/g;->e()Z
    move-result v1
    if-eqz v1, :L9
  .line 19
    sget-boolean v1, Lcn/manstep/phonemirrorBox/MediaButtonReceiver;->a:Z
    const-string v3, "sendCarControlByKey: cmd="
    if-eqz v1, :L8
  .line 20
    invoke-static { p1, p2 }, Lcn/manstep/phonemirrorBox/b0;->g(Landroid/content/Context;I)I
    move-result p1
  .line 21
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/v0/e;->I(I)V
  .line 22
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p2, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-boolean p1, Lcn/manstep/phonemirrorBox/MediaButtonReceiver;->a:Z
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { v0, p1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    goto :L10
  :L8
  .line 23
    invoke-static { p1, p2 }, Lcn/manstep/phonemirrorBox/b0;->f(Landroid/content/Context;I)I
    move-result p1
  .line 24
    invoke-static { p1 }, Lcn/manstep/phonemirrorBox/v0/e;->I(I)V
  .line 25
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p2, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-boolean p1, Lcn/manstep/phonemirrorBox/MediaButtonReceiver;->a:Z
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { v0, p1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    goto :L10
  :L9
  .line 26
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "KeyCodeNotify: keyCode="
    invoke-virtual { p1, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { p1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget-boolean v1, Lcn/manstep/phonemirrorBox/MediaButtonReceiver;->a:Z
    invoke-virtual { p1, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { v0, p1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 27
    invoke-static { }, Lcn/manstep/phonemirrorBox/MediaButtonReceiver$b;->a()Lcn/manstep/phonemirrorBox/MediaButtonReceiver$b;
    move-result-object p1
    sget-boolean v0, Lcn/manstep/phonemirrorBox/MediaButtonReceiver;->a:Z
    invoke-virtual { p1, p2, v0 }, Lcn/manstep/phonemirrorBox/MediaButtonReceiver$b;->b(IZ)V
  :L10
    return-void
.end method
