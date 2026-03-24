.class public Lcn/manstep/phonemirrorBox/util/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/util/c;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/manstep/phonemirrorBox/util/c;->b:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p2, ""

    .line 5
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/util/c;->a:Ljava/lang/String;

    const/4 p2, 0x0

    .line 6
    iput-object p2, p0, Lcn/manstep/phonemirrorBox/util/c;->b:Landroid/graphics/Bitmap;

    .line 7
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/c;->a:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcn/manstep/phonemirrorBox/util/c;->b:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/c;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/c;->a:Ljava/lang/String;

    return-object v0
.end method
