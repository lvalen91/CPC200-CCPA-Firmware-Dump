.class Lcn/manstep/phonemirrorBox/l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/manstep/phonemirrorBox/l;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcn/manstep/phonemirrorBox/l;


# direct methods
.method constructor <init>(Lcn/manstep/phonemirrorBox/l;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l$b;->b:Lcn/manstep/phonemirrorBox/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 2

    .line 1
    iget-object p1, p0, Lcn/manstep/phonemirrorBox/l$b;->b:Lcn/manstep/phonemirrorBox/l;

    invoke-static {p1}, Lcn/manstep/phonemirrorBox/l;->b(Lcn/manstep/phonemirrorBox/l;)V

    const/4 p1, 0x1

    return p1
.end method
