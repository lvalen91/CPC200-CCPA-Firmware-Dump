.class public Lcn/manstep/phonemirrorBox/BoxInterface/c;
.super Ljava/lang/Object;
.source "SourceFile"

.field private final static w:Ljava/util/Map;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Map<",
      "Ljava/lang/String;",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
.end field

.field private static volatile x:Lcn/manstep/phonemirrorBox/BoxInterface/c;

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:Ljava/lang/String;

.field private p:I

.field private q:I

.field private r:I

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/util/Map;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Map<",
      "Ljava/lang/String;",
      "Lcn/manstep/phonemirrorBox/g0/d;",
      ">;"
    }
  .end annotation
.end field

.method static constructor <clinit>()V
  .registers 6
  .line 1
    new-instance v0, Ljava/util/HashMap;
    invoke-direct { v0 }, Ljava/util/HashMap;-><init>()V
    sput-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->w:Ljava/util/Map;
    const-string v1, "iPhone5,1"
    const-string v2, "iPhone 5 (GSM)"
  .line 2
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 3
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->w:Ljava/util/Map;
    const-string v1, "iPhone5,2"
    const-string v2, "iPhone 5 (GSM+CDMA)"
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 4
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->w:Ljava/util/Map;
    const-string v1, "iPhone5,3"
    const-string v2, "iPhone 5C (GSM)"
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 5
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->w:Ljava/util/Map;
    const-string v1, "iPhone5,4"
    const-string v2, "iPhone 5C (Global)"
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 6
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->w:Ljava/util/Map;
    const-string v1, "iPhone6,1"
    const-string v2, "iPhone 5S (GSM)"
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 7
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->w:Ljava/util/Map;
    const-string v1, "iPhone6,2"
    const-string v2, "iPhone 5S (Global)"
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 8
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->w:Ljava/util/Map;
    const-string v1, "iPhone7,1"
    const-string v2, "iPhone 6 Plus"
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 9
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->w:Ljava/util/Map;
    const-string v1, "iPhone7,2"
    const-string v2, "iPhone 6"
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 10
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->w:Ljava/util/Map;
    const-string v1, "iPhone8,1"
    const-string v2, "iPhone 6s"
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 11
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->w:Ljava/util/Map;
    const-string v1, "iPhone8,2"
    const-string v2, "iPhone 6s Plus"
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 12
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->w:Ljava/util/Map;
    const-string v1, "iPhone8,4"
    const-string v2, "iPhone SE (GSM)"
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 13
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->w:Ljava/util/Map;
    const-string v1, "iPhone9,1"
    const-string v2, "iPhone 7"
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 14
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->w:Ljava/util/Map;
    const-string v1, "iPhone9,2"
    const-string v3, "iPhone 7 Plus"
    invoke-interface { v0, v1, v3 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 15
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->w:Ljava/util/Map;
    const-string v1, "iPhone9,3"
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 16
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->w:Ljava/util/Map;
    const-string v1, "iPhone9,4"
    invoke-interface { v0, v1, v3 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 17
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->w:Ljava/util/Map;
    const-string v1, "iPhone10,1"
    const-string v2, "iPhone 8"
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 18
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->w:Ljava/util/Map;
    const-string v1, "iPhone10,2"
    const-string v3, "iPhone 8 Plus"
    invoke-interface { v0, v1, v3 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 19
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->w:Ljava/util/Map;
    const-string v1, "iPhone10,3"
    const-string v4, "iPhone X Global"
    invoke-interface { v0, v1, v4 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 20
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->w:Ljava/util/Map;
    const-string v1, "iPhone10,4"
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 21
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->w:Ljava/util/Map;
    const-string v1, "iPhone10,5"
    invoke-interface { v0, v1, v3 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 22
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->w:Ljava/util/Map;
    const-string v1, "iPhone10,6"
    const-string v2, "iPhone X GSM"
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 23
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->w:Ljava/util/Map;
    const-string v1, "iPhone11,2"
    const-string v2, "iPhone XS"
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 24
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->w:Ljava/util/Map;
    const-string v1, "iPhone11,4"
    const-string v2, "iPhone XS Max"
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 25
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->w:Ljava/util/Map;
    const-string v1, "iPhone11,6"
    const-string v2, "iPhone XS Max Global"
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 26
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->w:Ljava/util/Map;
    const-string v1, "iPhone11,8"
    const-string v2, "iPhone XR"
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 27
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->w:Ljava/util/Map;
    const-string v1, "iPhone12,1"
    const-string v2, "iPhone 11"
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 28
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->w:Ljava/util/Map;
    const-string v1, "iPhone12,3"
    const-string v2, "iPhone 11 Pro"
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 29
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->w:Ljava/util/Map;
    const-string v1, "iPhone12,5"
    const-string v2, "iPhone 11 Pro Max"
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 30
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->w:Ljava/util/Map;
    const-string v1, "iPhone12,8"
    const-string v2, "iPhone SE 2nd Gen"
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 31
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->w:Ljava/util/Map;
    const-string v1, "iPhone13,1"
    const-string v2, "iPhone 12 Mini"
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 32
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->w:Ljava/util/Map;
    const-string v1, "iPhone13,2"
    const-string v2, "iPhone 12"
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 33
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->w:Ljava/util/Map;
    const-string v1, "iPhone13,3"
    const-string v2, "iPhone 12 Pro"
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 34
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->w:Ljava/util/Map;
    const-string v1, "iPhone13,4"
    const-string v2, "iPhone 12 Pro Max"
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 35
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->w:Ljava/util/Map;
    const-string v1, "iPhone14,2"
    const-string v2, "iPhone 13 Pro"
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 36
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->w:Ljava/util/Map;
    const-string v1, "iPhone14,3"
    const-string v2, "iPhone 13 Pro Max"
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 37
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->w:Ljava/util/Map;
    const-string v1, "iPhone14,4"
    const-string v2, "iPhone 13 Mini"
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 38
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->w:Ljava/util/Map;
    const-string v1, "iPhone14,5"
    const-string v2, "iPhone 13"
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 39
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->w:Ljava/util/Map;
    const-string v1, "iPhone14,6"
    const-string v2, "iPhone SE 3rd Gen"
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 40
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->w:Ljava/util/Map;
    const-string v1, "iPhone14,7"
    const-string v2, "iPhone 14"
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 41
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->w:Ljava/util/Map;
    const-string v1, "iPhone14,8"
    const-string v2, "iPhone 14 Plus"
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 42
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->w:Ljava/util/Map;
    const-string v1, "iPhone15,2"
    const-string v2, "iPhone 14 Pro"
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 43
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->w:Ljava/util/Map;
    const-string v1, "iPhone15,3"
    const-string v2, "iPhone 14 Pro Max"
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 44
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->w:Ljava/util/Map;
    const-string v1, "iPhone15,4"
    const-string v2, "iPhone 15"
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 45
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->w:Ljava/util/Map;
    const-string v1, "iPhone15,5"
    const-string v2, "iPhone 15 Plus"
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 46
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->w:Ljava/util/Map;
    const-string v1, "iPhone16,1"
    const-string v2, "iPhone 15 Pro"
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 47
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->w:Ljava/util/Map;
    const-string v1, "iPhone16,2"
    const-string v2, "iPhone 15 Pro Max"
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 48
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->w:Ljava/util/Map;
    const-string v1, "iPhone17,1"
    const-string v2, "iPhone 16 Pro"
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 49
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->w:Ljava/util/Map;
    const-string v1, "iPhone17,2"
    const-string v2, "iPhone 16 Pro Max"
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 50
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->w:Ljava/util/Map;
    const-string v1, "iPhone17,3"
    const-string v2, "iPhone 16"
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 51
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->w:Ljava/util/Map;
    const-string v1, "iPhone17,4"
    const-string v2, "iPhone 16 Plus"
    invoke-interface { v0, v1, v2 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    return-void
.end method

.method private constructor <init>()V
  .registers 2
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    const-string v0, ""
  .line 2
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->a:Ljava/lang/String;
  .line 3
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->b:Ljava/lang/String;
  .line 4
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->c:Ljava/lang/String;
  .line 5
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->d:Ljava/lang/String;
    const/4 v0, 0
  .line 6
    iput v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e:I
  .line 7
    iput-boolean v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->h:Z
  .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
    invoke-direct { v0 }, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->v:Ljava/util/Map;
  .line 9
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->u()V
    return-void
.end method

.method public static e()Lcn/manstep/phonemirrorBox/BoxInterface/c;
  .catchall { :L0 .. :L3 } :L2
  .registers 3
  .line 1
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->x:Lcn/manstep/phonemirrorBox/BoxInterface/c;
    if-nez v0, :L4
  .line 2
    const-class v0, Lcn/manstep/phonemirrorBox/BoxInterface/c;
    monitor-enter v0
  :L0
  .line 3
    sget-object v1, Lcn/manstep/phonemirrorBox/BoxInterface/c;->x:Lcn/manstep/phonemirrorBox/BoxInterface/c;
    if-nez v1, :L1
  .line 4
    new-instance v1, Lcn/manstep/phonemirrorBox/BoxInterface/c;
    invoke-direct { v1 }, Lcn/manstep/phonemirrorBox/BoxInterface/c;-><init>()V
    sput-object v1, Lcn/manstep/phonemirrorBox/BoxInterface/c;->x:Lcn/manstep/phonemirrorBox/BoxInterface/c;
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
    sget-object v0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->x:Lcn/manstep/phonemirrorBox/BoxInterface/c;
    return-object v0
.end method

.method public A(Z)V
  .registers 2
  .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e:I
    return-void
.end method

.method public a()Ljava/lang/String;
  .registers 6
  .line 1
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;
    const/4 v1, 2
    new-array v1, v1, [Ljava/lang/Object;
    iget v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->q:I
    invoke-static { v2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    const/4 v3, 0
    aput-object v2, v1, v3
    iget v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->r:I
    invoke-static { v2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    const/4 v3, 1
    aput-object v2, v1, v3
    const-string v2, "0x%04X0x%04X"
    invoke-static { v0, v2, v1 }, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v0
  .line 2
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->c:Ljava/lang/String;
    const-string v2, "."
    const-string v3, ""
    invoke-virtual { v1, v2, v3 }, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object v1
  .line 3
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    iget v4, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e:I
    invoke-virtual { v2, v4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-boolean v3, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->h:Z
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    const-string v3, "\n"
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->g:Ljava/lang/String;
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->b:Ljava/lang/String;
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->f:Ljava/lang/String;
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->a:Ljava/lang/String;
    invoke-virtual { v2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public b()I
  .registers 2
  .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->n:I
    return v0
.end method

.method public c()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->d:Ljava/lang/String;
    return-object v0
.end method

.method public d()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->i:Ljava/lang/String;
    return-object v0
.end method

.method public f()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->j:Ljava/lang/String;
    return-object v0
.end method

.method public g()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->m:Ljava/lang/String;
    return-object v0
.end method

.method public h()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->b:Ljava/lang/String;
    return-object v0
.end method

.method public i()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->f:Ljava/lang/String;
    return-object v0
.end method

.method public j()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->k:Ljava/lang/String;
    return-object v0
.end method

.method public k()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->t:Ljava/lang/String;
    return-object v0
.end method

.method public l()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->l:Ljava/lang/String;
    return-object v0
.end method

.method public m()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->g:Ljava/lang/String;
    return-object v0
.end method

.method public n()Ljava/lang/String;
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->s:Ljava/lang/String;
    const-string v1, "\n"
    const-string v2, ""
    invoke-virtual { v0, v1, v2 }, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public o()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->a:Ljava/lang/String;
    return-object v0
.end method

.method public p()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->c:Ljava/lang/String;
    return-object v0
.end method

.method public q()Ljava/lang/String;
  .registers 5
  .line 1
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;
    const/4 v1, 4
    new-array v1, v1, [Ljava/lang/Object;
    iget v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->q:I
    invoke-static { v2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    const/4 v3, 0
    aput-object v2, v1, v3
    iget v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->q:I
    invoke-static { v2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    const/4 v3, 1
    aput-object v2, v1, v3
    iget v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->r:I
    invoke-static { v2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    const/4 v3, 2
    aput-object v2, v1, v3
    iget v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->r:I
    invoke-static { v2 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    const/4 v3, 3
    aput-object v2, v1, v3
    const-string v2, "%d(0x%04X),%d(0x%04X)"
    invoke-static { v0, v2, v1 }, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public r()I
  .registers 2
  .line 1
    iget v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->p:I
    return v0
.end method

.method public s()Ljava/lang/String;
  .registers 2
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->u:Ljava/lang/String;
    return-object v0
.end method

.method public t(I[I)Z
  .registers 8
    const/4 v0, 0
    if-gtz p1, :L0
    return v0
  :L0
  .line 1
    iget v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->r:I
    if-lez v1, :L4
  .line 2
    array-length v1, p2
    const/4 v2, 0
  :L1
    if-ge v2, v1, :L3
    aget v3, p2, v2
  .line 3
    iget v4, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->r:I
    if-ne v4, v3, :L2
    return v0
  :L2
    add-int/lit8 v2, v2, 1
    goto :L1
  :L3
  .line 4
    iget p2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->r:I
    if-eq p2, p1, :L4
    const/4 v0, 1
  :L4
    return v0
.end method

.method public toString()Ljava/lang/String;
  .registers 4
  .line 1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "BoxInfo{uuid='"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->a:Ljava/lang/String;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const/16 v1, 39
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    const-string v2, ", mfd='"
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->b:Ljava/lang/String;
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    const-string v2, ", ver='"
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->c:Ljava/lang/String;
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    const-string v2, ", fwName='"
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->d:Ljava/lang/String;
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    const-string v2, ", wifi="
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e:I
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, ", model='"
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->f:Ljava/lang/String;
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    const-string v2, ", type='"
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->g:Ljava/lang/String;
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    const-string v2, ", isSupportHiCar="
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-boolean v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->h:Z
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    const-string v2, ", hwVersion='"
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->i:Ljava/lang/String;
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    const-string v2, ", linkType='"
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->j:Ljava/lang/String;
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    const-string v2, ", phoneModel='"
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->k:Ljava/lang/String;
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    const-string v2, ", phoneOsVersion='"
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->l:Ljava/lang/String;
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    const-string v2, ", linkVersion='"
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->m:Ljava/lang/String;
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    const-string v2, ", cpuTemp="
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->n:I
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, ", oemName='"
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->o:Ljava/lang/String;
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    const-string v2, ", wiFiChannel="
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->p:I
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, ", vid="
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->q:I
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, ", pid="
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->r:I
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, ", userCode='"
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->s:Ljava/lang/String;
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    const-string v2, ", phoneName='"
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->t:Ljava/lang/String;
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    const-string v2, ", wifiChannelList='"
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->u:Ljava/lang/String;
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    const/16 v1, 125
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public u()V
  .registers 3
    const-string v0, ""
  .line 1
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->a:Ljava/lang/String;
  .line 2
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->b:Ljava/lang/String;
  .line 3
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->c:Ljava/lang/String;
  .line 4
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->d:Ljava/lang/String;
    const/4 v1, 0
  .line 5
    iput v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->e:I
  .line 6
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->f:Ljava/lang/String;
  .line 7
    iput-boolean v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->h:Z
  .line 8
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->g:Ljava/lang/String;
  .line 9
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->o:Ljava/lang/String;
  .line 10
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->i:Ljava/lang/String;
  .line 11
    iput v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->p:I
  .line 12
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->u:Ljava/lang/String;
  .line 13
    iput v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->n:I
  .line 14
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->s:Ljava/lang/String;
  .line 15
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->v:Ljava/util/Map;
    invoke-interface { v0 }, Ljava/util/Map;->clear()V
  .line 16
    invoke-virtual { p0 }, Lcn/manstep/phonemirrorBox/BoxInterface/c;->v()V
    return-void
.end method

.method public v()V
  .registers 2
    const-string v0, ""
  .line 1
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->k:Ljava/lang/String;
  .line 2
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->l:Ljava/lang/String;
  .line 3
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->j:Ljava/lang/String;
  .line 4
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->m:Ljava/lang/String;
    return-void
.end method

.method public w(Ljava/lang/String;)V
  .catch Lorg/json/JSONException; { :L0 .. :L17 } :L18
  .registers 15
    const-string v0, "type"
    const-string v1, "DevList"
    const-string v2, "ChannelList"
    const-string v3, "btName"
    const-string v4, "HiCar"
    const-string v5, "CusCode"
    const-string v6, "productType"
    const-string v7, "fileName"
    const-string v8, "cpuTemp"
    const-string v9, "MDLinkType"
    const-string v10, "hwVersion"
    const-string v11, "uuid"
  .line 1
    invoke-static { p1 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v12
    if-eqz v12, :L0
    return-void
  :L0
  .line 2
    new-instance v12, Lorg/json/JSONObject;
    invoke-direct { v12, p1 }, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
  .line 3
    invoke-virtual { v12, v11 }, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    move-result p1
    if-eqz p1, :L1
  .line 4
    invoke-virtual { v12, v11 }, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->a:Ljava/lang/String;
    const-string p1, "MFD"
  .line 5
    invoke-virtual { v12, p1 }, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->b:Ljava/lang/String;
  :L1
  .line 6
    invoke-virtual { v12, v10 }, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    move-result p1
    if-eqz p1, :L2
  .line 7
    invoke-virtual { v12, v10 }, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->i:Ljava/lang/String;
    const-string p1, "WiFiChannel"
  .line 8
    invoke-virtual { v12, p1 }, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    move-result p1
    iput p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->p:I
    const-string p1, "OemName"
  .line 9
    invoke-virtual { v12, p1 }, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->o:Ljava/lang/String;
  .line 10
    invoke-virtual { v12, v5 }, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    move-result p1
    if-eqz p1, :L2
  .line 11
    invoke-virtual { v12, v5 }, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->s:Ljava/lang/String;
  :L2
  .line 12
    invoke-virtual { v12, v9 }, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    move-result p1
    if-eqz p1, :L5
  .line 13
    invoke-virtual { v12, v9 }, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->j:Ljava/lang/String;
    const-string p1, "MDLinkVersion"
  .line 14
    invoke-virtual { v12, p1 }, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->m:Ljava/lang/String;
    const-string p1, "MDModel"
  .line 15
    invoke-virtual { v12, p1 }, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
    const-string v5, "iPhone"
  .line 16
    invoke-virtual { p1, v5 }, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v5
    if-eqz v5, :L3
  .line 17
    sget-object v5, Lcn/manstep/phonemirrorBox/BoxInterface/c;->w:Ljava/util/Map;
    invoke-interface { v5, p1 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Ljava/lang/String;
    iput-object v5, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->k:Ljava/lang/String;
  :L3
  .line 18
    iget-object v5, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->k:Ljava/lang/String;
    invoke-static { v5 }, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    move-result v5
    if-eqz v5, :L4
  .line 19
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->k:Ljava/lang/String;
  :L4
    const-string p1, "MDOSVersion"
  .line 20
    invoke-virtual { v12, p1 }, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->l:Ljava/lang/String;
  :L5
  .line 21
    invoke-virtual { v12, v8 }, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    move-result p1
    if-eqz p1, :L6
  .line 22
    invoke-virtual { v12, v8 }, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    move-result p1
    iput p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->n:I
  :L6
  .line 23
    invoke-virtual { v12, v7 }, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    move-result p1
    if-eqz p1, :L7
  .line 24
    invoke-virtual { v12, v7 }, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->d:Ljava/lang/String;
    goto :L9
  :L7
  .line 25
    invoke-virtual { v12, v6 }, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    move-result p1
    if-eqz p1, :L9
  .line 26
    invoke-virtual { v12, v6 }, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
  .line 27
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->f:Ljava/lang/String;
    const-string v5, "Auto_Box"
  .line 28
    invoke-virtual { v5, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v5
    if-eqz v5, :L8
    const-string p1, "Auto_Box_Update.img"
  .line 29
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->d:Ljava/lang/String;
    goto :L9
  :L8
    const-string v5, "A15HW"
  .line 30
    invoke-virtual { v5, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L9
    const-string p1, "A15H_Update.img"
  .line 31
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->d:Ljava/lang/String;
  :L9
  .line 32
    invoke-virtual { v12, v4 }, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    move-result p1
    const/4 v5, 0
    if-eqz p1, :L12
  .line 33
    invoke-virtual { v12, v4 }, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    move-result p1
    const/4 v4, 1
    if-ne p1, v4, :L10
    goto :L11
  :L10
    const/4 v4, 0
  :L11
    iput-boolean v4, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->h:Z
  :L12
  .line 34
    invoke-virtual { v12, v3 }, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    move-result p1
    if-eqz p1, :L13
  .line 35
    invoke-virtual { v12, v3 }, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->t:Ljava/lang/String;
  :L13
  .line 36
    invoke-virtual { v12, v2 }, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    move-result p1
    if-eqz p1, :L14
  .line 37
    invoke-virtual { v12, v2 }, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->u:Ljava/lang/String;
  :L14
  .line 38
    invoke-virtual { v12, v1 }, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    move-result p1
    if-eqz p1, :L19
  .line 39
    invoke-virtual { v12, v1 }, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    move-result-object p1
  :L15
  .line 40
    invoke-virtual { p1 }, Lorg/json/JSONArray;->length()I
    move-result v1
    if-ge v5, v1, :L19
  .line 41
    invoke-virtual { p1, v5 }, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    move-result-object v1
    const-string v2, "id"
  .line 42
    invoke-virtual { v1, v2 }, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    const-string v3, "name"
  .line 43
    invoke-virtual { v1, v3 }, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
    const-string v4, ""
  .line 44
    invoke-virtual { v1, v0 }, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    move-result v6
    if-eqz v6, :L16
  .line 45
    invoke-virtual { v1, v0 }, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v4
  :L16
  .line 46
    iget-object v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->v:Ljava/util/Map;
    new-instance v6, Lcn/manstep/phonemirrorBox/g0/d;
    invoke-direct { v6, v2, v3, v4 }, Lcn/manstep/phonemirrorBox/g0/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-interface { v1, v2, v6 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L17
    add-int/lit8 v5, v5, 1
    goto :L15
  :L18
    move-exception p1
  .line 47
    invoke-virtual { p1 }, Lorg/json/JSONException;->printStackTrace()V
  :L19
    return-void
.end method

.method public x(Ljava/lang/String;)V
  .registers 4
  .line 1
    invoke-virtual { p1 }, Ljava/lang/String;->length()I
    move-result v0
    const/16 v1, 15
    if-le v0, v1, :L0
  .line 2
    invoke-virtual { p1 }, Ljava/lang/String;->length()I
    move-result v0
    add-int/lit8 v0, v0, -1
    invoke-virtual { p1, v0 }, Ljava/lang/String;->substring(I)Ljava/lang/String;
    move-result-object v0
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->g:Ljava/lang/String;
    const/4 v0, 0
  .line 3
    invoke-virtual { p1, v0, v1 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object p1
  :L0
  .line 4
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->c:Ljava/lang/String;
    return-void
.end method

.method public y(II)V
  .registers 3
  .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->q:I
  .line 2
    iput p2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->r:I
    return-void
.end method

.method public z(I)V
  .registers 2
  .line 1
    iput p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/c;->p:I
    return-void
.end method
