.class Lcn/manstep/phonemirrorBox/util/l$g;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/manstep/phonemirrorBox/util/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/util/l;


# direct methods
.method private constructor <init>(Lcn/manstep/phonemirrorBox/util/l;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/l$g;->b:Lcn/manstep/phonemirrorBox/util/l;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/manstep/phonemirrorBox/util/l;Lcn/manstep/phonemirrorBox/util/l$a;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lcn/manstep/phonemirrorBox/util/l$g;-><init>(Lcn/manstep/phonemirrorBox/util/l;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/l$g;->b:Lcn/manstep/phonemirrorBox/util/l;

    invoke-static {v0}, Lcn/manstep/phonemirrorBox/util/l;->j(Lcn/manstep/phonemirrorBox/util/l;)V

    return-void
.end method
