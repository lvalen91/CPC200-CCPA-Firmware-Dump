.class Lcn/manstep/phonemirrorBox/MainActivity$s$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/MainActivity$s$a;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/MainActivity$s$a;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/MainActivity$s$a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity$s$a$b;->b:Lcn/manstep/phonemirrorBox/MainActivity$s$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcn/manstep/phonemirrorBox/MainActivity$s$a$b;->b:Lcn/manstep/phonemirrorBox/MainActivity$s$a;

    iget-object v0, v0, Lcn/manstep/phonemirrorBox/MainActivity$s$a;->a:Lcn/manstep/phonemirrorBox/k0/f;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
