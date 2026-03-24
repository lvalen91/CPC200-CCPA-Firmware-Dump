.class Lcn/manstep/phonemirrorBox/util/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/util/g;->c(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/util/g;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/util/g;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/util/g$b;->b:Lcn/manstep/phonemirrorBox/util/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/util/g$b;->b:Lcn/manstep/phonemirrorBox/util/g;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    return-void
.end method
