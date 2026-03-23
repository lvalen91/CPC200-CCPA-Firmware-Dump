.class public Lcn/manstep/phonemirrorBox/BoxInterface/f$k;
.super Ljava/lang/Object;
.source "SourceFile"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcn/manstep/phonemirrorBox/BoxInterface/f;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 9
  name = "k"
.end annotation

.field static h:I = 2

.field static i:I = 1

.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field private g:Ljava/nio/ByteBuffer;

.method static constructor <clinit>()V
  .registers 0
    return-void
.end method

.method public constructor <init>()V
  .registers 4
  .line 1
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 2
    sget-boolean v0, Lcn/manstep/phonemirrorBox/p;->g:Z
    if-eqz v0, :L0
    const-string v0, "use soft-decode, framerate = 25 !!!!!!!!!!!!!!!"
  .line 3
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
    const/16 v0, 25
  .line 4
    sput v0, Lcn/manstep/phonemirrorBox/p;->C:I
  :L0
    const/4 v0, 0
  .line 5
    iput v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->a:I
  .line 6
    iput v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->b:I
  .line 7
    sget v1, Lcn/manstep/phonemirrorBox/p;->C:I
    iput v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->c:I
  .line 8
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "videoFrameRate = "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v2, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->c:I
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    const-string v2, "BoxProtocol"
    invoke-static { v2, v1 }, Lcn/manstep/phonemirrorBox/util/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    const/4 v1, 5
  .line 9
    iput v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->d:I
    const/16 v1, 16384
  .line 10
    iput v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->e:I
  .line 11
    iput v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->f:I
  .line 12
    invoke-static { }, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->g()I
    move-result v0
    invoke-static { v0 }, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;
    move-result-object v0
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->g:Ljava/nio/ByteBuffer;
  .line 13
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;
    invoke-virtual { v0, v1 }, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    return-void
.end method

.method public static a(I)Ljava/lang/String;
  .registers 4
    const-string v0, ")"
    if-eqz p0, :L5
    const/4 v1, 1
    if-eq p0, v1, :L4
    const/4 v1, 2
    if-eq p0, v1, :L3
    const/4 v1, 3
    if-eq p0, v1, :L2
    const/4 v1, 4
    if-eq p0, v1, :L1
    const/4 v1, 5
    if-eq p0, v1, :L0
  .line 1
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "AndroidUnknown("
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    return-object p0
  :L0
  .line 2
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "ICCOA("
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    return-object p0
  :L1
  .line 3
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "HiCar("
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    return-object p0
  :L2
  .line 4
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "AndroidMirror("
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    return-object p0
  :L3
  .line 5
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "CarLife("
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    return-object p0
  :L4
  .line 6
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "AndroidAuto("
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    return-object p0
  :L5
  .line 7
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "AndroidInvalid("
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    return-object p0
.end method

.method public static b(I)V
  .registers 3
  .line 1
    sput p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->i:I
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "BoxProtocol,changeAndroidWorkMode: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    return-void
.end method

.method public static c(I)V
  .registers 3
    if-gez p0, :L0
    return-void
  :L0
    const/4 v0, 1
    if-ne p0, v0, :L1
    const/4 p0, 2
  :L1
  .line 1
    sput p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->h:I
  .line 2
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "BoxProtocol,changeIphoneWorkMode: "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    invoke-static { p0 }, Lcn/manstep/phonemirrorBox/util/s;->c(Ljava/lang/String;)V
    return-void
.end method

.method public static d()I
  .registers 1
  .line 1
    sget v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->i:I
    return v0
.end method

.method public static f()I
  .registers 3
  .line 1
    sget v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->h:I
    return v0
.end method

.method public static g()I
  .registers 2
    const/16 v0, 28
    return v0
.end method

.method public static h(I)Ljava/lang/String;
  .registers 4
    const-string v0, ")"
    if-eqz p0, :L4
    const/4 v1, 1
    if-eq p0, v1, :L3
    const/4 v1, 2
    if-eq p0, v1, :L2
    const/4 v1, 3
    if-eq p0, v1, :L1
    const/4 v1, 4
    if-eq p0, v1, :L0
  .line 1
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "iPhoneUnknown("
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    return-object p0
  :L0
  .line 2
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "iPhoneCharge("
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    return-object p0
  :L1
  .line 3
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "NonAirPlay("
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    return-object p0
  :L2
  .line 4
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "CarPlay("
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    return-object p0
  :L3
  .line 5
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "AirPlay("
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    return-object p0
  :L4
  .line 6
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "iPhoneInvalid("
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    return-object p0
.end method

.method public static i()Z
  .registers 4
  .line 1
    sget v0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->i:I
    const/4 v1, 4
    if-ne v0, v1, :L0
    const/4 v0, 1
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return v0
.end method

.method public e()[B
  .registers 4
  .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->g:Ljava/nio/ByteBuffer;
    iget v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->a:I
    const/4 v2, 0
    invoke-virtual { v0, v2, v1 }, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;
  .line 2
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->g:Ljava/nio/ByteBuffer;
    iget v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->b:I
    const/4 v2, 4
    invoke-virtual { v0, v2, v1 }, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;
  .line 3
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->g:Ljava/nio/ByteBuffer;
    iget v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->c:I
    const/16 v2, 8
    invoke-virtual { v0, v2, v1 }, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;
  .line 4
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->g:Ljava/nio/ByteBuffer;
    iget v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->d:I
    const/16 v2, 12
    invoke-virtual { v0, v2, v1 }, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;
  .line 5
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->g:Ljava/nio/ByteBuffer;
    iget v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->e:I
    const/16 v2, 16
    invoke-virtual { v0, v2, v1 }, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;
  .line 6
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->g:Ljava/nio/ByteBuffer;
    iget v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->f:I
    const/16 v2, 20
    invoke-virtual { v0, v2, v1 }, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;
  .line 7
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->g:Ljava/nio/ByteBuffer;
    sget v1, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->h:I
    const/16 v2, 24
    invoke-virtual { v0, v2, v1 }, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;
  .line 8
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "BoxProtocol,StOpen,getBytes: phoneWorkMode="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v1, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->h:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static { v0 }, Lcn/manstep/phonemirrorBox/util/s;->e(Ljava/lang/String;)V
  .line 9
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->g:Ljava/nio/ByteBuffer;
    invoke-virtual { v0 }, Ljava/nio/ByteBuffer;->array()[B
    move-result-object v0
    return-object v0
.end method

.method public j(Ljava/nio/ByteBuffer;)V
  .registers 3
    const/4 v0, 0
  .line 1
    invoke-virtual { p1, v0 }, Ljava/nio/ByteBuffer;->getInt(I)I
    move-result v0
    iput v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->a:I
    const/4 v0, 4
  .line 2
    invoke-virtual { p1, v0 }, Ljava/nio/ByteBuffer;->getInt(I)I
    move-result v0
    iput v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->b:I
    const/16 v0, 8
  .line 3
    invoke-virtual { p1, v0 }, Ljava/nio/ByteBuffer;->getInt(I)I
    move-result v0
    iput v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->c:I
    const/16 v0, 12
  .line 4
    invoke-virtual { p1, v0 }, Ljava/nio/ByteBuffer;->getInt(I)I
    move-result v0
    iput v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->d:I
    const/16 v0, 16
  .line 5
    invoke-virtual { p1, v0 }, Ljava/nio/ByteBuffer;->getInt(I)I
    move-result v0
    iput v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->e:I
    const/16 v0, 20
  .line 6
    invoke-virtual { p1, v0 }, Ljava/nio/ByteBuffer;->getInt(I)I
    move-result v0
    iput v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->f:I
    const/16 v0, 24
  .line 7
    invoke-virtual { p1, v0 }, Ljava/nio/ByteBuffer;->getInt(I)I
    move-result p1
    sput p1, Lcn/manstep/phonemirrorBox/BoxInterface/f$k;->h:I
    return-void
.end method
