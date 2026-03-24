.class Lcn/manstep/phonemirrorBox/k0/f$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/k0/f$b;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/k0/f$b;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/k0/f$b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/k0/f$b$a;->b:Lcn/manstep/phonemirrorBox/k0/f$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k0/f$b$a;->b:Lcn/manstep/phonemirrorBox/k0/f$b;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/k0/f$b;->a(Lcn/manstep/phonemirrorBox/k0/f$b;)Lcn/manstep/phonemirrorBox/k0/f;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/k0/f;->cancel()V

    return-void
.end method
