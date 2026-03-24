.class public Lcn/manstep/phonemirrorBox/BoxInterface/f$j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/manstep/phonemirrorBox/BoxInterface/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field private h:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$j;->a:I

    .line 3
    iput v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$j;->b:I

    const/4 v1, 0x1

    .line 4
    iput v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$j;->c:I

    const/4 v1, 0x2

    .line 5
    iput v1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$j;->d:I

    .line 6
    iput v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$j;->e:I

    .line 7
    iput v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$j;->f:I

    .line 8
    iput v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$j;->g:I

    .line 9
    invoke-static {}, Lcn/manstep/phonemirrorBox/BoxInterface/f$j;->a()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$j;->h:Ljava/nio/ByteBuffer;

    .line 10
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static a()I
    .registers 1

    const/16 v0, 0x1c

    return v0
.end method


# virtual methods
.method public b(Ljava/nio/ByteBuffer;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    iput v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$j;->a:I

    const/4 v0, 0x4

    .line 2
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    iput v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$j;->b:I

    const/16 v0, 0x8

    .line 3
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    iput v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$j;->c:I

    const/16 v0, 0xc

    .line 4
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    iput v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$j;->d:I

    const/16 v0, 0x10

    .line 5
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    iput v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$j;->e:I

    const/16 v0, 0x14

    .line 6
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    iput v0, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$j;->f:I

    const/16 v0, 0x18

    .line 7
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    iput p1, p0, Lcn/manstep/phonemirrorBox/BoxInterface/f$j;->g:I

    return-void
.end method
