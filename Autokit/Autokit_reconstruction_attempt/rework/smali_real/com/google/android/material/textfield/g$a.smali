.class Lcom/google/android/material/textfield/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/textfield/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/google/android/material/textfield/g;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/g;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/g$a;->b:Lcom/google/android/material/textfield/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    if-gez p3, :cond_d

    .line 1
    iget-object p1, p0, Lcom/google/android/material/textfield/g$a;->b:Lcom/google/android/material/textfield/g;

    .line 2
    invoke-static {p1}, Lcom/google/android/material/textfield/g;->a(Lcom/google/android/material/textfield/g;)Landroidx/appcompat/widget/h0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/h0;->v()Ljava/lang/Object;

    move-result-object p1

    goto :goto_17

    :cond_d
    iget-object p1, p0, Lcom/google/android/material/textfield/g$a;->b:Lcom/google/android/material/textfield/g;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 3
    :goto_17
    iget-object v0, p0, Lcom/google/android/material/textfield/g$a;->b:Lcom/google/android/material/textfield/g;

    invoke-static {v0, p1}, Lcom/google/android/material/textfield/g;->b(Lcom/google/android/material/textfield/g;Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/google/android/material/textfield/g$a;->b:Lcom/google/android/material/textfield/g;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_56

    if-eqz p2, :cond_28

    if-gez p3, :cond_46

    .line 5
    :cond_28
    iget-object p1, p0, Lcom/google/android/material/textfield/g$a;->b:Lcom/google/android/material/textfield/g;

    invoke-static {p1}, Lcom/google/android/material/textfield/g;->a(Lcom/google/android/material/textfield/g;)Landroidx/appcompat/widget/h0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/h0;->y()Landroid/view/View;

    move-result-object p2

    .line 6
    iget-object p1, p0, Lcom/google/android/material/textfield/g$a;->b:Lcom/google/android/material/textfield/g;

    invoke-static {p1}, Lcom/google/android/material/textfield/g;->a(Lcom/google/android/material/textfield/g;)Landroidx/appcompat/widget/h0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/h0;->x()I

    move-result p3

    .line 7
    iget-object p1, p0, Lcom/google/android/material/textfield/g$a;->b:Lcom/google/android/material/textfield/g;

    invoke-static {p1}, Lcom/google/android/material/textfield/g;->a(Lcom/google/android/material/textfield/g;)Landroidx/appcompat/widget/h0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/h0;->w()J

    move-result-wide p4

    :cond_46
    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    .line 8
    iget-object p1, p0, Lcom/google/android/material/textfield/g$a;->b:Lcom/google/android/material/textfield/g;

    .line 9
    invoke-static {p1}, Lcom/google/android/material/textfield/g;->a(Lcom/google/android/material/textfield/g;)Landroidx/appcompat/widget/h0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/h0;->l()Landroid/widget/ListView;

    move-result-object v1

    .line 10
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 11
    :cond_56
    iget-object p1, p0, Lcom/google/android/material/textfield/g$a;->b:Lcom/google/android/material/textfield/g;

    invoke-static {p1}, Lcom/google/android/material/textfield/g;->a(Lcom/google/android/material/textfield/g;)Landroidx/appcompat/widget/h0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/h0;->dismiss()V

    return-void
.end method
