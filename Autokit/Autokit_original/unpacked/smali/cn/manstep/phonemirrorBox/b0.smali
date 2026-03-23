.class public Lcn/manstep/phonemirrorBox/b0;
.super Ljava/lang/Object;
.source "SourceFile"

.field public static g:Ljava/lang/String; = "NOT_SUPPORT_IMMERSIVE"

.field private static volatile h:Lcn/manstep/phonemirrorBox/b0;

.field private static i:I = -1

.field private a:Ljava/lang/ref/WeakReference;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/lang/ref/WeakReference<",
      "Landroid/content/Context;",
      ">;"
    }
  .end annotation
.end field

.field private b:Landroid/content/SharedPreferences;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.method static constructor <clinit>()V
  .registers 0
    return-void
.end method

.method private constructor <init>()V
  .registers 3
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const/4 v0, 1
  .line 2
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/b0;->c:Z
    const/4 v1, 0
  .line 3
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/b0;->d:Z
  .line 4
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/b0;->e:Z
  .line 5
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/b0;->f:Z
    return-void
.end method

.method public static D(Landroid/content/Context;Z)V
  .registers 4
    if-nez p0, :L0
    return-void
  :L0
    const/4 v0, 0
    const-string v1, "config"
  .line 1
    invoke-virtual { p0, v1, v0 }, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object p0
  .line 2
    invoke-interface { p0 }, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object p0
    const-string v0, "HaveMuteFile"
  .line 3
    invoke-interface { p0, v0, p1 }, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
  .line 4
    invoke-interface { p0 }, Landroid/content/SharedPreferences$Editor;->commit()Z
    return-void
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;I)I
  .registers 5
    if-nez p0, :L0
    return p2
  :L0
    const/4 v0, 0
    const-string v1, "config"
  .line 1
    invoke-virtual { p0, v1, v0 }, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object p0
  .line 2
    invoke-interface { p0, p1, p2 }, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    move-result p0
    return p0
.end method

.method public static e(Landroid/content/Context;I)Z
  .registers 5
    const/4 v0, 0
    if-nez p0, :L0
    return v0
  :L0
    const-string v1, "config"
  .line 1
    invoke-virtual { p0, v1, v0 }, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object p0
  .line 2
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Cmd_"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p1, "_b"
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-interface { p0, p1, v0 }, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    move-result p0
    return p0
.end method

.method public static f(Landroid/content/Context;I)I
  .registers 5
    const/4 v0, 0
    if-nez p0, :L0
    return v0
  :L0
    const-string v1, "config"
  .line 1
    invoke-virtual { p0, v1, v0 }, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object p0
  .line 2
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "KeyCode_"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-interface { p0, p1, v0 }, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    move-result p0
    return p0
.end method

.method public static g(Landroid/content/Context;I)I
  .registers 5
    const/4 v0, 0
    if-nez p0, :L0
    return v0
  :L0
    const-string v1, "config"
  .line 1
    invoke-virtual { p0, v1, v0 }, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object p0
  .line 2
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "KeyCode_"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p1, "_LongPress"
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-interface { p0, p1, v0 }, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    move-result p0
    return p0
.end method

.method public static h(Landroid/content/Context;)Z
  .registers 3
    const/4 v0, 0
    if-nez p0, :L0
    return v0
  :L0
    const-string v1, "config"
  .line 1
    invoke-virtual { p0, v1, v0 }, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object p0
    const-string v1, "HaveMuteFile"
  .line 2
    invoke-interface { p0, v1, v0 }, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    move-result p0
    return p0
.end method

.method public static i()Lcn/manstep/phonemirrorBox/b0;
  .catchall { :L0 .. :L3 } :L2
  .registers 2
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/b0;->h:Lcn/manstep/phonemirrorBox/b0;
    if-nez v0, :L4
  .line 2
    const-class v0, Lcn/manstep/phonemirrorBox/b0;
    monitor-enter v0
  :L0
  .line 3
    sget-object v1, Lcn/manstep/phonemirrorBox/b0;->h:Lcn/manstep/phonemirrorBox/b0;
    if-nez v1, :L1
  .line 4
    new-instance v1, Lcn/manstep/phonemirrorBox/b0;
    invoke-direct { v1 }, Lcn/manstep/phonemirrorBox/b0;-><init>()V
    sput-object v1, Lcn/manstep/phonemirrorBox/b0;->h:Lcn/manstep/phonemirrorBox/b0;
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
    sget-object v0, Lcn/manstep/phonemirrorBox/b0;->h:Lcn/manstep/phonemirrorBox/b0;
    return-object v0
.end method

.method public static j(Landroid/content/Context;I)I
  .registers 5
    const/4 v0, 0
    if-nez p0, :L0
    return v0
  :L0
    const-string v1, "config"
  .line 1
    invoke-virtual { p0, v1, v0 }, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object p0
  .line 2
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Cmd_"
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-interface { p0, p1, v0 }, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    move-result p0
    return p0
.end method

.method public static r(Landroid/content/Context;Ljava/lang/String;)V
  .registers 4
    const-string v0, "config"
    const/4 v1, 0
  .line 1
    invoke-virtual { p0, v0, v1 }, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object p0
  .line 2
    invoke-interface { p0 }, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object p0
    const-string v0, "BluetoothMac"
  .line 3
    invoke-interface { p0, v0, p1 }, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
  .line 4
    invoke-interface { p0 }, Landroid/content/SharedPreferences$Editor;->commit()Z
    return-void
.end method

.method public static s(Landroid/content/Context;IZ)V
  .registers 5
    const-string v0, "config"
    const/4 v1, 0
  .line 1
    invoke-virtual { p0, v0, v1 }, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object p0
  .line 2
    invoke-interface { p0 }, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object p0
  .line 3
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Cmd_"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p1, "_b"
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-interface { p0, p1, p2 }, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
  .line 4
    invoke-interface { p0 }, Landroid/content/SharedPreferences$Editor;->commit()Z
    return-void
.end method

.method public static t(Landroid/content/Context;II)V
  .registers 5
    const-string v0, "config"
    const/4 v1, 0
  .line 1
    invoke-virtual { p0, v0, v1 }, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object p0
  .line 2
    invoke-interface { p0 }, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object p0
  .line 3
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "KeyCode_"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-interface { p0, p1, p2 }, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
  .line 4
    invoke-interface { p0 }, Landroid/content/SharedPreferences$Editor;->commit()Z
    return-void
.end method

.method public static u(Landroid/content/Context;II)V
  .registers 5
    const-string v0, "config"
    const/4 v1, 0
  .line 1
    invoke-virtual { p0, v0, v1 }, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object p0
  .line 2
    invoke-interface { p0 }, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object p0
  .line 3
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "KeyCode_"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p1, "_LongPress"
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-interface { p0, p1, p2 }, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
  .line 4
    invoke-interface { p0 }, Landroid/content/SharedPreferences$Editor;->commit()Z
    return-void
.end method

.method public static v(Landroid/content/Context;II)V
  .registers 5
    const-string v0, "config"
    const/4 v1, 0
  .line 1
    invoke-virtual { p0, v0, v1 }, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object p0
  .line 2
    invoke-interface { p0 }, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object p0
  .line 3
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "Cmd_"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-interface { p0, p1, p2 }, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
  .line 4
    invoke-interface { p0 }, Landroid/content/SharedPreferences$Editor;->commit()Z
    return-void
.end method

.method public static w(Landroid/content/Context;I)V
  .registers 4
    if-nez p0, :L0
    return-void
  :L0
  .line 1
    sget v0, Lcn/manstep/phonemirrorBox/b0;->i:I
    if-ne v0, p1, :L1
    return-void
  :L1
  .line 2
    sput p1, Lcn/manstep/phonemirrorBox/b0;->i:I
    const/4 v0, 0
    const-string v1, "config"
  .line 3
    invoke-virtual { p0, v1, v0 }, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object p0
  .line 4
    invoke-interface { p0 }, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object p0
    const-string v0, "WorkMode"
  .line 5
    invoke-interface { p0, v0, p1 }, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
  .line 6
    invoke-interface { p0 }, Landroid/content/SharedPreferences$Editor;->apply()V
    return-void
.end method

.method public static x(Landroid/content/Context;Ljava/lang/String;I)V
  .registers 5
    const-string v0, "config"
    const/4 v1, 0
  .line 1
    invoke-virtual { p0, v0, v1 }, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object p0
  .line 2
    invoke-interface { p0 }, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object p0
  .line 3
    invoke-interface { p0, p1, p2 }, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
  .line 4
    invoke-interface { p0 }, Landroid/content/SharedPreferences$Editor;->apply()V
    return-void
.end method

.method public static y(Landroid/content/Context;Ljava/lang/String;)V
  .registers 4
    const-string v0, "config"
    const/4 v1, 0
  .line 1
    invoke-virtual { p0, v0, v1 }, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object p0
  .line 2
    invoke-interface { p0 }, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object p0
    const-string v0, "BluetoothPinCode"
  .line 3
    invoke-interface { p0, v0, p1 }, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
  .line 4
    invoke-interface { p0 }, Landroid/content/SharedPreferences$Editor;->commit()Z
    return-void
.end method

.method public A(Z)V
  .registers 2
  .line 1
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/b0;->e:Z
    return-void
.end method

.method public B(Z)V
  .registers 2
  .line 1
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/b0;->c:Z
    return-void
.end method

.method public C()V
  .registers 7
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/b0;->b:Landroid/content/SharedPreferences;
    if-eqz v0, :L3
  .line 2
    invoke-interface { v0 }, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    const-string v1, "KeyCode_88"
    const/4 v2, 1
  .line 3
    invoke-interface { v0, v1, v2 }, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    const/4 v1, 2
    const-string v3, "KeyCode_87"
  .line 4
    invoke-interface { v0, v3, v1 }, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    const-string v1, "KeyCode_85"
    const/4 v3, 5
  .line 5
    invoke-interface { v0, v1, v3 }, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
  .line 6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v4, 21
    if-lt v1, v4, :L1
  .line 7
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object v1
    invoke-virtual { v1 }, Lcn/manstep/phonemirrorBox/u;->S()Z
    move-result v1
    const/16 v5, 8
    if-eqz v1, :L0
    const-string v1, "KeyCode_231_LongPress"
  .line 8
    invoke-interface { v0, v1, v5 }, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    goto :L1
  :L0
    const-string v1, "KeyCode_231"
  .line 9
    invoke-interface { v0, v1, v5 }, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
  :L1
    const/16 v1, 17
    const-string v5, "KeyCode_5"
  .line 10
    invoke-interface { v0, v5, v1 }, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    const/16 v1, 18
    const-string v5, "KeyCode_6"
  .line 11
    invoke-interface { v0, v5, v1 }, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    const/16 v1, 88
    const-string v5, "Cmd_1"
  .line 12
    invoke-interface { v0, v5, v1 }, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    const/16 v1, 87
    const-string v5, "Cmd_2"
  .line 13
    invoke-interface { v0, v5, v1 }, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    const/16 v1, 85
    const-string v5, "Cmd_5"
  .line 14
    invoke-interface { v0, v5, v1 }, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
  .line 15
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v1, v4, :L2
    const/16 v1, 231
    const-string v4, "Cmd_8"
  .line 16
    invoke-interface { v0, v4, v1 }, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
  :L2
    const-string v1, "Cmd_17"
  .line 17
    invoke-interface { v0, v1, v3 }, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    const/4 v1, 6
    const-string v3, "Cmd_18"
  .line 18
    invoke-interface { v0, v3, v1 }, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    const-string v1, "Cmd_1_b"
  .line 19
    invoke-interface { v0, v1, v2 }, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    const-string v1, "Cmd_2_b"
  .line 20
    invoke-interface { v0, v1, v2 }, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    const-string v1, "Cmd_5_b"
  .line 21
    invoke-interface { v0, v1, v2 }, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
  .line 22
    invoke-interface { v0 }, Landroid/content/SharedPreferences$Editor;->apply()V
  :L3
    return-void
.end method

.method public E(Z)V
  .registers 2
  .line 1
    iput-boolean p1, p0, Lcn/manstep/phonemirrorBox/b0;->f:Z
    return-void
.end method

.method public F(Ljava/lang/String;Ljava/lang/Object;)V
  .registers 5
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/b0;->b:Landroid/content/SharedPreferences;
    if-eqz v0, :L4
  .line 2
    invoke-interface { v0 }, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object v0
  .line 3
    instance-of v1, p2, Ljava/lang/Integer;
    if-eqz v1, :L0
  .line 4
    check-cast p2, Ljava/lang/Integer;
    invoke-virtual { p2 }, Ljava/lang/Integer;->intValue()I
    move-result p2
    invoke-interface { v0, p1, p2 }, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    goto :L3
  :L0
  .line 5
    instance-of v1, p2, Ljava/lang/String;
    if-eqz v1, :L1
  .line 6
    check-cast p2, Ljava/lang/String;
    invoke-interface { v0, p1, p2 }, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    goto :L3
  :L1
  .line 7
    instance-of v1, p2, Ljava/lang/Boolean;
    if-eqz v1, :L2
  .line 8
    check-cast p2, Ljava/lang/Boolean;
    invoke-virtual { p2 }, Ljava/lang/Boolean;->booleanValue()Z
    move-result p2
    invoke-interface { v0, p1, p2 }, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    goto :L3
  :L2
  .line 9
    instance-of v1, p2, Ljava/lang/Float;
    if-eqz v1, :L3
  .line 10
    check-cast p2, Ljava/lang/Float;
    invoke-virtual { p2 }, Ljava/lang/Float;->floatValue()F
    move-result p2
    invoke-interface { v0, p1, p2 }, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
  :L3
  .line 11
    invoke-interface { v0 }, Landroid/content/SharedPreferences$Editor;->apply()V
  :L4
    return-void
.end method

.method public a()V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/b0;->b:Landroid/content/SharedPreferences;
    if-eqz v0, :L0
    const-string v0, "AutoPlay"
    const-string v1, "clear AllAudioConfigs"
  .line 2
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/b0;->b:Landroid/content/SharedPreferences;
    invoke-interface { v0 }, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    const-string v1, "CallAudioVol"
  .line 4
    invoke-interface { v0, v1 }, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    const-string v1, "VAAudioVol"
  .line 5
    invoke-interface { v0, v1 }, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    const-string v1, "NVAudioVol"
  .line 6
    invoke-interface { v0, v1 }, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    const-string v1, "RingAudioVol"
  .line 7
    invoke-interface { v0, v1 }, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    const-string v1, "CallAudioType"
  .line 8
    invoke-interface { v0, v1 }, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    const-string v1, "VAAudioType"
  .line 9
    invoke-interface { v0, v1 }, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    const-string v1, "NVAudioType"
  .line 10
    invoke-interface { v0, v1 }, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    const-string v1, "RingAudioType"
  .line 11
    invoke-interface { v0, v1 }, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    const-string v1, "LowerAudioAPI"
  .line 12
    invoke-interface { v0, v1 }, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    const-string v1, "RecordChannel"
  .line 13
    invoke-interface { v0, v1 }, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    const-string v1, "RecordSource"
  .line 14
    invoke-interface { v0, v1 }, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
  .line 15
    invoke-interface { v0 }, Landroid/content/SharedPreferences$Editor;->apply()V
  :L0
    return-void
.end method

.method public b()V
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/b0;->b:Landroid/content/SharedPreferences;
    if-eqz v0, :L0
  .line 2
    invoke-interface { v0 }, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object v0
  .line 3
    invoke-interface { v0 }, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;
  .line 4
    invoke-interface { v0 }, Landroid/content/SharedPreferences$Editor;->apply()V
  :L0
    return-void
.end method

.method public c()Ljava/lang/String;
  .registers 10
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
  .line 2
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/b0;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v1 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroid/content/Context;
    if-eqz v1, :L3
  .line 3
    new-instance v2, Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v1 }, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    move-result-object v4
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v4, "/shared_prefs"
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-direct { v2, v3 }, Ljava/io/File;-><init>(Ljava/lang/String;)V
  .line 4
    invoke-virtual { v2 }, Ljava/io/File;->exists()Z
    move-result v3
    if-eqz v3, :L3
    invoke-virtual { v2 }, Ljava/io/File;->isDirectory()Z
    move-result v3
    if-eqz v3, :L3
  .line 5
    invoke-virtual { v2 }, Ljava/io/File;->listFiles()[Ljava/io/File;
    move-result-object v2
    if-eqz v2, :L3
  .line 6
    array-length v3, v2
    const/4 v4, 0
    const/4 v5, 0
  :L0
    if-ge v5, v3, :L3
    aget-object v6, v2, v5
  .line 7
    invoke-virtual { v6 }, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object v6
    const-string v7, ".xml"
  .line 8
    invoke-virtual { v6, v7 }, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v7
    if-eqz v7, :L2
  .line 9
    invoke-virtual { v6 }, Ljava/lang/String;->length()I
    move-result v7
    add-int/lit8 v7, v7, -4
    invoke-virtual { v6, v4, v7 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v6
  .line 10
    invoke-virtual { v0, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v7, ":\n"
    invoke-virtual { v0, v7 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 11
    invoke-virtual { v1, v6, v4 }, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object v6
  .line 12
    invoke-interface { v6 }, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;
    move-result-object v6
  .line 13
    invoke-interface { v6 }, Ljava/util/Map;->entrySet()Ljava/util/Set;
    move-result-object v6
    invoke-interface { v6 }, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v6
  :L1
    invoke-interface { v6 }, Ljava/util/Iterator;->hasNext()Z
    move-result v7
    if-eqz v7, :L2
    invoke-interface { v6 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v7
    check-cast v7, Ljava/util/Map$Entry;
    const-string v8, "\t"
  .line 14
    invoke-virtual { v0, v8 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-interface { v7 }, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v8
    check-cast v8, Ljava/lang/String;
    invoke-virtual { v0, v8 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v8, ": "
    invoke-virtual { v0, v8 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-interface { v7 }, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
    move-result-object v7
    invoke-virtual { v0, v7 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    const-string v7, "\n"
    invoke-virtual { v0, v7 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    goto :L1
  :L2
    add-int/lit8 v5, v5, 1
    goto :L0
  :L3
  .line 15
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public k()Z
  .registers 2
  .line 1
    iget-boolean v0, p0, Lcn/manstep/phonemirrorBox/b0;->f:Z
    return v0
.end method

.method public l(Ljava/lang/String;F)F
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/b0;->b:Landroid/content/SharedPreferences;
    if-eqz v0, :L0
  .line 2
    invoke-interface { v0, p1, p2 }, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F
    move-result p1
    return p1
  :L0
    return p2
.end method

.method public m(Ljava/lang/String;I)I
  .registers 5
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/b0;->b:Landroid/content/SharedPreferences;
    if-eqz v0, :L13
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/b0;->a:Ljava/lang/ref/WeakReference;
    if-eqz v0, :L12
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    if-eqz v0, :L12
    const-string v0, "fps"
  .line 3
    invoke-virtual { v0, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
  .line 4
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object p2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/b0;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/content/Context;
    invoke-virtual { v0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    const v1, 2131361803
    invoke-virtual { v0, v1 }, Landroid/content/res/Resources;->getInteger(I)I
    move-result v0
    invoke-virtual { p2, v0 }, Lcn/manstep/phonemirrorBox/u;->l(I)I
    move-result p2
    goto/16 :L12
  :L0
    const-string v0, "MicGain"
  .line 5
    invoke-virtual { v0, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L1
  .line 6
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object p2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/b0;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/content/Context;
    invoke-virtual { v0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    const v1, 2131361812
    invoke-virtual { v0, v1 }, Landroid/content/res/Resources;->getInteger(I)I
    move-result v0
    invoke-virtual { p2, v0 }, Lcn/manstep/phonemirrorBox/u;->m(I)I
    move p2, v0
    goto/16 :L12
  :L1
    const-string v0, "RingAudioVol"
  .line 7
    invoke-virtual { v0, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L2
  .line 8
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object p2
    invoke-virtual { p2 }, Lcn/manstep/phonemirrorBox/u;->q()I
    move-result p2
    goto/16 :L12
  :L2
    const-string v0, "VAAudioVol"
  .line 9
    invoke-virtual { v0, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L3
  .line 10
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object p2
    invoke-virtual { p2 }, Lcn/manstep/phonemirrorBox/u;->t()I
    move-result p2
    goto/16 :L12
  :L3
    const-string v0, "CallAudioVol"
  .line 11
    invoke-virtual { v0, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L4
  .line 12
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object p2
    invoke-virtual { p2 }, Lcn/manstep/phonemirrorBox/u;->j()I
    move-result p2
    goto/16 :L12
  :L4
    const-string v0, "VAAudioType"
  .line 13
    invoke-virtual { v0, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L5
  .line 14
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object p2
    invoke-virtual { p2 }, Lcn/manstep/phonemirrorBox/u;->s()I
    move-result p2
    goto/16 :L12
  :L5
    const-string v0, "RingAudioType"
  .line 15
    invoke-virtual { v0, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L6
  .line 16
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object p2
    invoke-virtual { p2 }, Lcn/manstep/phonemirrorBox/u;->p()I
    move-result p2
    goto/16 :L12
  :L6
    const-string v0, "CallAudioType"
  .line 17
    invoke-virtual { v0, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L7
  .line 18
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object p2
    invoke-virtual { p2 }, Lcn/manstep/phonemirrorBox/u;->h()I
    move-result p2
    goto :L12
  :L7
    const-string v0, "NVAudioType"
  .line 19
    invoke-virtual { v0, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L8
  .line 20
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object p2
    invoke-virtual { p2 }, Lcn/manstep/phonemirrorBox/u;->o()I
    move-result p2
    goto :L12
  :L8
    const-string v0, "vandroidautoh"
  .line 21
    invoke-virtual { v0, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L9
  .line 22
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object p2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/b0;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/content/Context;
    invoke-virtual { v0 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    const v1, 2131361793
    invoke-virtual { v0, v1 }, Landroid/content/res/Resources;->getInteger(I)I
    move-result v0
    invoke-virtual { p2, v0 }, Lcn/manstep/phonemirrorBox/u;->f(I)I
    move-result p2
    goto :L12
  :L9
    const-string v0, "BootDelay"
  .line 23
    invoke-virtual { v0, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L10
  .line 24
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object p2
    invoke-virtual { p2 }, Lcn/manstep/phonemirrorBox/u;->g()I
    move-result p2
    goto :L12
  :L10
    const-string v0, "MicType"
  .line 25
    invoke-virtual { v0, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L11
  .line 26
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object p2
    invoke-virtual { p2 }, Lcn/manstep/phonemirrorBox/u;->n()I
    move-result p2
    goto :L12
  :L11
    const-string v0, "WirelessConnectMode"
  .line 27
    invoke-virtual { v0, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L12
  .line 28
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object p2
    invoke-virtual { p2 }, Lcn/manstep/phonemirrorBox/u;->Z()Z
    move-result p2
    xor-int/lit8 p2, p2, 1
  :L12
  .line 29
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/b0;->b:Landroid/content/SharedPreferences;
    invoke-interface { v0, p1, p2 }, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    move-result p1
    return p1
  :L13
    return p2
.end method

.method public n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/b0;->b:Landroid/content/SharedPreferences;
    if-eqz v0, :L1
    const-string v0, "CarPlayOEMIconPath"
  .line 2
    invoke-virtual { v0, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/b0;->b:Landroid/content/SharedPreferences;
    invoke-interface { v0, p1, p2 }, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
    const-string p2, "CarPlayOEM"
    const-string v0, "CarLogo"
  .line 4
    invoke-virtual { p1, p2, v0 }, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object p1
    const-string p2, "AutoKit_default"
    const-string v0, "default"
  .line 5
    invoke-virtual { p1, p2, v0 }, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object p1
    return-object p1
  :L0
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/b0;->b:Landroid/content/SharedPreferences;
    invoke-interface { v0, p1, p2 }, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
    return-object p1
  :L1
    return-object p2
.end method

.method public o(Ljava/lang/String;Z)Z
  .registers 6
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/b0;->b:Landroid/content/SharedPreferences;
    if-eqz v0, :L16
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/b0;->a:Ljava/lang/ref/WeakReference;
    if-eqz v0, :L15
    invoke-virtual { v0 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    if-eqz v0, :L15
    const-string v0, "ShowFloatBall"
  .line 3
    invoke-virtual { v0, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
  .line 4
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/b0;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { p2 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object p2
    check-cast p2, Landroid/content/Context;
    invoke-virtual { p2 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object p2
    const v0, 2131034136
    invoke-virtual { p2, v0 }, Landroid/content/res/Resources;->getBoolean(I)Z
    move-result p2
    goto/16 :L15
  :L0
  .line 5
    sget-object v0, Lcn/manstep/phonemirrorBox/b0;->g:Ljava/lang/String;
    invoke-virtual { v0, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L1
  .line 6
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/b0;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { p2 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object p2
    check-cast p2, Landroid/content/Context;
    invoke-virtual { p2 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object p2
    const v0, 2131034114
    invoke-virtual { p2, v0 }, Landroid/content/res/Resources;->getBoolean(I)Z
    move-result p2
    goto/16 :L15
  :L1
    const-string v0, "AudioTransferMode"
  .line 7
    invoke-virtual { v0, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L2
  .line 8
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/b0;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { p2 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object p2
    check-cast p2, Landroid/content/Context;
    invoke-virtual { p2 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object p2
    const v0, 2131034121
    invoke-virtual { p2, v0 }, Landroid/content/res/Resources;->getBoolean(I)Z
    move-result p2
    if-nez p2, :L15
  .line 9
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object v0
    invoke-virtual { v0 }, Lcn/manstep/phonemirrorBox/u;->c0()Z
    goto/16 :L15
  :L2
    const-string v0, "IsAutoPlayMusic"
  .line 10
    invoke-virtual { v0, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L3
  .line 11
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/b0;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { p2 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object p2
    check-cast p2, Landroid/content/Context;
    invoke-virtual { p2 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object p2
    const v0, 2131034122
    invoke-virtual { p2, v0 }, Landroid/content/res/Resources;->getBoolean(I)Z
    move-result p2
    goto/16 :L15
  :L3
    const-string v0, "IsTextureView"
  .line 12
    invoke-virtual { v0, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    const/4 v1, 0
    const/4 v2, 1
    if-eqz v0, :L8
  .line 13
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object p2
    invoke-virtual { p2 }, Lcn/manstep/phonemirrorBox/u;->O()I
    move-result p2
    const/4 v0, 2
    if-ne p2, v0, :L5
  :L4
    const/4 p2, 1
    goto/16 :L15
  :L5
    if-ne p2, v2, :L7
  :L6
    const/4 p2, 0
    goto/16 :L15
  :L7
  .line 14
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/b0;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { p2 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object p2
    check-cast p2, Landroid/content/Context;
    invoke-virtual { p2 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object p2
    const v0, 2131034138
    invoke-virtual { p2, v0 }, Landroid/content/res/Resources;->getBoolean(I)Z
    move-result p2
    goto/16 :L15
  :L8
    const-string v0, "InsertPhoneAutoStart"
  .line 15
    invoke-virtual { v0, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L9
  .line 16
    iget-boolean p2, p0, Lcn/manstep/phonemirrorBox/b0;->c:Z
    goto :L15
  :L9
    const-string v0, "HideSysNavBar"
  .line 17
    invoke-virtual { v0, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L10
  .line 18
    iget-boolean p2, p0, Lcn/manstep/phonemirrorBox/b0;->e:Z
    goto :L15
  :L10
    const-string v0, "InsertBoxAutoStart"
  .line 19
    invoke-virtual { v0, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L11
  .line 20
    iget-object p2, p0, Lcn/manstep/phonemirrorBox/b0;->a:Ljava/lang/ref/WeakReference;
    invoke-virtual { p2 }, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object p2
    check-cast p2, Landroid/content/Context;
    invoke-virtual { p2 }, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object p2
    const v0, 2131034123
    invoke-virtual { p2, v0 }, Landroid/content/res/Resources;->getBoolean(I)Z
    move-result p2
    goto :L15
  :L11
    const-string v0, "BootAutoStart"
  .line 21
    invoke-virtual { v0, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L12
  .line 22
    iget-boolean p2, p0, Lcn/manstep/phonemirrorBox/b0;->d:Z
    goto :L15
  :L12
    const-string v0, "IsLeftDrive"
  .line 23
    invoke-virtual { v0, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L13
  .line 24
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object p2
    invoke-virtual { p2 }, Lcn/manstep/phonemirrorBox/u;->k()I
    move-result p2
    if-nez p2, :L6
    goto :L4
  :L13
    const-string v0, "LowerAudioAPI"
  .line 25
    invoke-virtual { v0, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L14
  .line 26
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object p2
    invoke-virtual { p2 }, Lcn/manstep/phonemirrorBox/u;->e0()Z
    move-result p2
    goto :L15
  :L14
    const-string v0, "UseBtCall"
  .line 27
    invoke-virtual { v0, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L15
  .line 28
    invoke-static { }, Lcn/manstep/phonemirrorBox/u;->z()Lcn/manstep/phonemirrorBox/u;
    move-result-object p2
    invoke-virtual { p2 }, Lcn/manstep/phonemirrorBox/u;->b0()Z
    move-result p2
  :L15
  .line 29
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/b0;->b:Landroid/content/SharedPreferences;
    invoke-interface { v0, p1, p2 }, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    move-result p1
    return p1
  :L16
    return p2
.end method

.method public p(Landroid/content/Context;)V
  .registers 4
    if-eqz p1, :L0
    const/4 v0, 0
    const-string v1, "config"
  .line 1
    invoke-virtual { p1, v1, v0 }, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object v0
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/b0;->b:Landroid/content/SharedPreferences;
  .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;
    invoke-direct { v0, p1 }, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/b0;->a:Ljava/lang/ref/WeakReference;
  :L0
    return-void
.end method

.method public q(Ljava/lang/String;)V
  .registers 3
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/b0;->b:Landroid/content/SharedPreferences;
    if-eqz v0, :L0
  .line 2
    invoke-interface { v0 }, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object v0
  .line 3
    invoke-interface { v0, p1 }, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
  .line 4
    invoke-interface { v0 }, Landroid/content/SharedPreferences$Editor;->apply()V
  :L0
    return-void
.end method

.method public z(Ljava/lang/String;Ljava/lang/String;)V
  .registers 5
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/b0;->b:Landroid/content/SharedPreferences;
    if-eqz v0, :L0
  .line 2
    invoke-interface { v0 }, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    const-string v1, "CarPlayOEMIconName"
  .line 3
    invoke-interface { v0, v1, p1 }, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    const-string p1, "CarPlayOEMIconPath"
  .line 4
    invoke-interface { v0, p1, p2 }, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
  .line 5
    invoke-interface { v0 }, Landroid/content/SharedPreferences$Editor;->apply()V
  :L0
    return-void
.end method
