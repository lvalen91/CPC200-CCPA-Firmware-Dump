.class Lcn/manstep/phonemirrorBox/MainActivity$e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/MainActivity$e;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/MainActivity$e;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/MainActivity$e;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity$e$b;->b:Lcn/manstep/phonemirrorBox/MainActivity$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/MainActivity$e$b;->b:Lcn/manstep/phonemirrorBox/MainActivity$e;

    iget-object p1, p1, Lcn/manstep/phonemirrorBox/MainActivity$e;->b:Lcn/manstep/phonemirrorBox/MainActivity;

    invoke-virtual {p1}, Lcn/manstep/phonemirrorBox/k;->finish()V

    return-void
.end method
