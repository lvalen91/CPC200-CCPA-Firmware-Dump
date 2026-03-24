.class public Lcn/manstep/phonemirrorBox/t;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/widget/ImageView;I)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public static b(Landroid/view/View;Landroid/view/View$OnLongClickListener;)V
    .registers 3

    .line 1
    new-instance v0, Lcn/manstep/phonemirrorBox/t$a;

    invoke-direct {v0, p1}, Lcn/manstep/phonemirrorBox/t$a;-><init>(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method
