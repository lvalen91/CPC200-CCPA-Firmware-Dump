.class Lcn/manstep/phonemirrorBox/k0/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/k0/b;->h(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/k0/b;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/k0/b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/k0/b$a;->b:Lcn/manstep/phonemirrorBox/k0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/k0/b$a;->b:Lcn/manstep/phonemirrorBox/k0/b;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/k0/b;->a(Lcn/manstep/phonemirrorBox/k0/b;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
