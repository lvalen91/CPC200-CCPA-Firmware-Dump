.class final Lcn/manstep/phonemirrorBox/BoxInterface/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/BoxInterface/a;->L(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    sget-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->j:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcn/manstep/phonemirrorBox/BoxInterface/a;->l:Z

    return-void
.end method
