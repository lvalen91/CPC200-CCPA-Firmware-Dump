.class Lcn/manstep/phonemirrorBox/MainActivity$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/MainActivity;->d1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/app/AlertDialog;

.field final synthetic c:Lcn/manstep/phonemirrorBox/MainActivity;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/MainActivity;Landroid/app/AlertDialog;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity$r;->c:Lcn/manstep/phonemirrorBox/MainActivity;

    iput-object p2, p0, Lcn/manstep/phonemirrorBox/MainActivity$r;->b:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity$r;->c:Lcn/manstep/phonemirrorBox/MainActivity;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/MainActivity;->x0(Lcn/manstep/phonemirrorBox/MainActivity;)Lcn/manstep/phonemirrorBox/p0/c;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/p0/c;->p()V

    .line 2
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity$r;->b:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
