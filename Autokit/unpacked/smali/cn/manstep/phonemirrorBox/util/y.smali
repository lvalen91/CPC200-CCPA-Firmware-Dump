.class public Lcn/manstep/phonemirrorBox/util/y;
.super Ljava/lang/Object;
.source "SourceFile"

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L1
  .registers 9
  .line 1
    const-class v0, Ljava/lang/String;
  :L0
    const-string v1, "android.os.SystemProperties"
    invoke-static { v1 }, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object v1
    const-string v2, "set"
    const/4 v3, 2
    new-array v4, v3, [Ljava/lang/Class;
    const/4 v5, 0
    aput-object v0, v4, v5
    const/4 v6, 1
    aput-object v0, v4, v6
  .line 2
    invoke-virtual { v1, v2, v4 }, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v0
    new-array v2, v3, [Ljava/lang/Object;
    aput-object p0, v2, v5
    aput-object p1, v2, v6
  .line 3
    invoke-virtual { v0, v1, v2 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
  :L1
    return-void
.end method
