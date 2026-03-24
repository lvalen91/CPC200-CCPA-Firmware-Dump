.class public final synthetic Lcn/manstep/phonemirrorBox/l0/h;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic b:Lcn/manstep/phonemirrorBox/l0/r;

.field public final synthetic c:[Ljava/lang/String;

.field public final synthetic d:Lcn/manstep/phonemirrorBox/util/m;

.field public final synthetic e:Landroid/widget/ListPopupWindow;


# direct methods
.method public synthetic constructor <init>(Lcn/manstep/phonemirrorBox/l0/r;[Ljava/lang/String;Lcn/manstep/phonemirrorBox/util/m;Landroid/widget/ListPopupWindow;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/manstep/phonemirrorBox/l0/h;->b:Lcn/manstep/phonemirrorBox/l0/r;

    iput-object p2, p0, Lcn/manstep/phonemirrorBox/l0/h;->c:[Ljava/lang/String;

    iput-object p3, p0, Lcn/manstep/phonemirrorBox/l0/h;->d:Lcn/manstep/phonemirrorBox/util/m;

    iput-object p4, p0, Lcn/manstep/phonemirrorBox/l0/h;->e:Landroid/widget/ListPopupWindow;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 15

    iget-object v0, p0, Lcn/manstep/phonemirrorBox/l0/h;->b:Lcn/manstep/phonemirrorBox/l0/r;

    iget-object v1, p0, Lcn/manstep/phonemirrorBox/l0/h;->c:[Ljava/lang/String;

    iget-object v2, p0, Lcn/manstep/phonemirrorBox/l0/h;->d:Lcn/manstep/phonemirrorBox/util/m;

    iget-object v3, p0, Lcn/manstep/phonemirrorBox/l0/h;->e:Landroid/widget/ListPopupWindow;

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-wide v7, p4

    invoke-virtual/range {v0 .. v8}, Lcn/manstep/phonemirrorBox/l0/r;->t2([Ljava/lang/String;Lcn/manstep/phonemirrorBox/util/m;Landroid/widget/ListPopupWindow;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
