.class public Lcn/manstep/phonemirrorBox/p;
.super Ljava/lang/Object;
.source "SourceFile"

.field public static A:Z = true

.field public static B:Z = true

.field public static C:I = 0

.field public static D:I = 0

.field public static E:I = 0

.field public static F:I = 0

.field public static G:I = 0

.field public static H:Z = false

.field public static I:I = 0

.field private final static J:Ljava/util/HashMap;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/HashMap<",
      "Ljava/lang/String;",
      "Ljava/lang/Integer;",
      ">;"
    }
  .end annotation
.end field

.field public static a:Ljava/lang/String; = "VER:2025.03.19.1126"

.field public static b:Ljava/lang/String; = "BOX:unknown"

.field public static c:Z = false

.field public static d:Z = false

.field public static e:Ljava/lang/String; = "/sdcard/hwbox.log"

.field public static f:Ljava/lang/String; = "None"

.field public static g:Z = false

.field private static h:I = -1

.field public static i:Z = false

.field public static j:Z = false

.field public static k:I = 0

.field public static l:I = 0

.field public static m:Z = false

.field public static n:I = 0

.field public static o:I = 0

.field public static p:I = 0

.field public static q:F = 0.0F

.field public static r:I = -1

.field public static s:Z

.field public static t:Z

.field public static u:Z

.field public static v:Z

.field public static w:Z

.field public static x:Z

.field public static y:Z

.field public static z:Z

.method static constructor <clinit>()V
  .registers 7
  .line 1
    new-instance v0, Ljava/util/HashMap;
    invoke-direct { v0 }, Ljava/util/HashMap;-><init>()V
    sput-object v0, Lcn/manstep/phonemirrorBox/p;->J:Ljava/util/HashMap;
    const/16 v1, 255
  .line 2
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v1
    const-string v2, "P"
    invoke-virtual { v0, v2, v1 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 3
    sget-object v0, Lcn/manstep/phonemirrorBox/p;->J:Ljava/util/HashMap;
    const/16 v2, 254
    invoke-static { v2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    const-string v3, "IG"
    invoke-virtual { v0, v3, v2 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 4
    sget-object v0, Lcn/manstep/phonemirrorBox/p;->J:Ljava/util/HashMap;
    const/16 v2, 17
    invoke-static { v2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    const-string v3, "PIG"
    invoke-virtual { v0, v3, v2 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 5
    sget-object v0, Lcn/manstep/phonemirrorBox/p;->J:Ljava/util/HashMap;
    const-string v3, "PIGHS"
    invoke-virtual { v0, v3, v1 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 6
    sget-object v0, Lcn/manstep/phonemirrorBox/p;->J:Ljava/util/HashMap;
    const/4 v1, 0
    invoke-static { v1 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    const-string v4, "I"
    invoke-virtual { v0, v4, v3 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 7
    sget-object v0, Lcn/manstep/phonemirrorBox/p;->J:Ljava/util/HashMap;
    const/4 v3, 1
    invoke-static { v3 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    const-string v5, "T"
    invoke-virtual { v0, v5, v4 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 8
    sget-object v0, Lcn/manstep/phonemirrorBox/p;->J:Ljava/util/HashMap;
    const/4 v4, 2
    invoke-static { v4 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    const-string v5, "Y"
    invoke-virtual { v0, v5, v4 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 9
    sget-object v0, Lcn/manstep/phonemirrorBox/p;->J:Ljava/util/HashMap;
    const/4 v4, 3
    invoke-static { v4 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    const-string v5, "B"
    invoke-virtual { v0, v5, v4 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 10
    sget-object v0, Lcn/manstep/phonemirrorBox/p;->J:Ljava/util/HashMap;
    const/4 v4, 4
    invoke-static { v4 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    const-string v5, "H"
    invoke-virtual { v0, v5, v4 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 11
    sget-object v0, Lcn/manstep/phonemirrorBox/p;->J:Ljava/util/HashMap;
    const/16 v4, 13
    invoke-static { v4 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    const-string v5, "D"
    invoke-virtual { v0, v5, v4 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 12
    sget-object v0, Lcn/manstep/phonemirrorBox/p;->J:Ljava/util/HashMap;
    const/16 v4, 14
    invoke-static { v4 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    const-string v5, "K"
    invoke-virtual { v0, v5, v4 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 13
    sget-object v0, Lcn/manstep/phonemirrorBox/p;->J:Ljava/util/HashMap;
    const/16 v4, 15
    invoke-static { v4 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    const-string v5, "J"
    invoke-virtual { v0, v5, v4 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 14
    sget-object v0, Lcn/manstep/phonemirrorBox/p;->J:Ljava/util/HashMap;
    const/16 v4, 16
    invoke-static { v4 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    const-string v5, "S"
    invoke-virtual { v0, v5, v4 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 15
    sget-object v0, Lcn/manstep/phonemirrorBox/p;->J:Ljava/util/HashMap;
    const-string v4, "G"
    invoke-virtual { v0, v4, v2 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 16
    sget-object v0, Lcn/manstep/phonemirrorBox/p;->J:Ljava/util/HashMap;
    const/16 v2, 18
    invoke-static { v2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    const-string v4, "L"
    invoke-virtual { v0, v4, v2 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 17
    sget-object v0, Lcn/manstep/phonemirrorBox/p;->J:Ljava/util/HashMap;
    const/16 v2, 19
    invoke-static { v2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    const-string v4, "M"
    invoke-virtual { v0, v4, v2 }, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    const/16 v0, 60
  .line 18
    sput v0, Lcn/manstep/phonemirrorBox/p;->C:I
  .line 19
    sput v1, Lcn/manstep/phonemirrorBox/p;->D:I
  .line 20
    sput v3, Lcn/manstep/phonemirrorBox/p;->E:I
    const/16 v0, 500
  .line 21
    sput v0, Lcn/manstep/phonemirrorBox/p;->G:I
  .line 22
    sput v1, Lcn/manstep/phonemirrorBox/p;->F:I
  .line 23
    sput-boolean v3, Lcn/manstep/phonemirrorBox/p;->H:Z
    return-void
.end method

.method public constructor <init>()V
  .registers 2
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static a()I
  .registers 3
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/p;->J:Ljava/util/HashMap;
    const-string v1, "Y"
    invoke-virtual { v0, v1 }, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/Integer;
    if-nez v0, :L0
    const/4 v0, 0
    return v0
  :L0
  .line 2
    invoke-virtual { v0 }, Ljava/lang/Integer;->intValue()I
    move-result v0
    return v0
.end method

.method public static b()I
  .registers 7
    const-string v0, "ro.product.manufacturer"
    const-string v1, ""
  .line 1
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/p;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    const-string v2, "ro.board.platform"
  .line 2
    invoke-static { v2, v1 }, Lcn/manstep/phonemirrorBox/p;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
  .line 3
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, "-"
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  .line 4
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;
    const-string v2, "rockchip-rk3368"
  .line 5
    invoke-virtual { v2, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    const-string v4, "Allwinner-t3"
    if-nez v3, :L0
    invoke-virtual { v4, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :L1
  :L0
    const/4 v3, 1
  .line 6
    sput-boolean v3, Lcn/manstep/phonemirrorBox/p;->t:Z
  :L1
  .line 7
    invoke-static { }, Lcn/manstep/phonemirrorBox/b0;->i()Lcn/manstep/phonemirrorBox/b0;
    move-result-object v3
    const/4 v5, 0
    const-string v6, "RecordDelay"
    invoke-virtual { v3, v6, v5 }, Lcn/manstep/phonemirrorBox/b0;->m(Ljava/lang/String;I)I
    move-result v3
    if-eqz v3, :L2
    return v3
  :L2
    const-string v3, "rockchip-rk3399"
  .line 8
    invoke-virtual { v3, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :L3
    const/16 v0, 530
    return v0
  :L3
  .line 9
    invoke-virtual { v4, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :L4
    const/16 v0, 1320
    return v0
  :L4
    const-string v3, "ATC-ac8317"
  .line 10
    invoke-virtual { v3, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :L5
    const-string v0, "at8317_1537323153"
  .line 11
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L9
    const/16 v0, 844
    return v0
  :L5
    const-string v3, "sprd-sp7731e"
  .line 12
    invoke-virtual { v3, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :L6
    const-string v0, "sp7731e_1h10_native"
  .line 13
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L9
    const/16 v0, 1081
    return v0
  :L6
  .line 14
    invoke-virtual { v2, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L7
  .line 15
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;
    const-string v1, "PX5"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L9
    const/16 v0, 540
    return v0
  :L7
    const-string v1, "alps-mt6753"
  .line 16
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L8
  .line 17
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;
    const-string v1, "land_rover_mrw1920x720"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L9
  .line 18
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;
    const-string v1, "full_land_rover_mrw1920x720"
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L9
    const/16 v0, 1079
    return v0
  :L8
    const-string v1, "rockchip-rk3188"
  .line 19
    invoke-virtual { v1, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L9
    const/16 v0, 580
    return v0
  :L9
    const/16 v0, 150
    return v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L2
  .registers 8
  .line 1
    const-class v0, Ljava/lang/String;
  :L0
    invoke-static { }, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;
    move-result-object v1
    const-string v2, "android.os.SystemProperties"
  .line 2
    invoke-virtual { v1, v2 }, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object v1
    const/4 v2, 2
    new-array v3, v2, [Ljava/lang/Class;
    const/4 v4, 0
    aput-object v0, v3, v4
    const/4 v5, 1
    aput-object v0, v3, v5
    const-string v0, "get"
  .line 3
    invoke-virtual { v1, v0, v3 }, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v0
    new-array v2, v2, [Ljava/lang/Object;
    aput-object p0, v2, v4
    aput-object p1, v2, v5
  .line 4
    invoke-virtual { v0, v1, v2 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p0
    check-cast p0, Ljava/lang/String;
  :L1
    return-object p0
  :L2
    return-object p1
.end method

.method public static d(Ljava/lang/String;)Z
  .registers 6
  .line 1
    invoke-static { p0 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v0
    const/4 v1, 1
    if-nez v0, :L3
    const-string v0, "BOX:unknown"
    invoke-virtual { v0, p0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
    goto :L3
  :L0
  .line 2
    invoke-virtual { p0 }, Ljava/lang/String;->length()I
    move-result v0
    const/4 v2, 0
    const/16 v3, 22
    if-lt v0, v3, :L2
    const/16 v4, 21
  .line 3
    invoke-virtual { p0, v4, v3 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object p0
    const-string v4, "Y"
  .line 4
    invoke-virtual { v4, p0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v4
    if-eqz v4, :L2
    const-string v4, "B"
  .line 5
    invoke-virtual { v4, p0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p0
    if-eqz p0, :L1
    if-le v0, v3, :L1
    return v2
  :L1
    return v1
  :L2
    return v2
  :L3
    return v1
.end method

.method public static e()I
  .registers 3
  .line 1
    sget v0, Lcn/manstep/phonemirrorBox/p;->h:I
    const/4 v1, -1
    if-ne v0, v1, :L2
    const-string v0, "ro.board.platform"
    const-string v1, ""
  .line 2
    invoke-static { v0, v1 }, Lcn/manstep/phonemirrorBox/p;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
  .line 3
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
  .line 4
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, "_"
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  .line 5
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "isRegisterMediaButton: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    const-string v1, "rk3368_8.0.0"
  .line 6
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-nez v1, :L1
    const-string v1, "rk3188_7.1.2"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-nez v1, :L1
    const-string v1, "rk3326_10"
    invoke-virtual { v0, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
    goto :L1
  :L0
    const/4 v0, 1
  .line 7
    sput v0, Lcn/manstep/phonemirrorBox/p;->h:I
    goto :L2
  :L1
    const/4 v0, 0
  .line 8
    sput v0, Lcn/manstep/phonemirrorBox/p;->h:I
  :L2
  .line 9
    sget v0, Lcn/manstep/phonemirrorBox/p;->h:I
    return v0
.end method

.method public static f(II)V
  .registers 3
  .line 1
    sget-boolean v0, Lcn/manstep/phonemirrorBox/p;->m:Z
    if-nez v0, :L0
  .line 2
    sput p0, Lcn/manstep/phonemirrorBox/p;->k:I
  .line 3
    sput p1, Lcn/manstep/phonemirrorBox/p;->l:I
  :L0
    return-void
.end method
