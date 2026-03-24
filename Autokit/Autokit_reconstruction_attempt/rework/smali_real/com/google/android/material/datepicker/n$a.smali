.class Lcom/google/android/material/datepicker/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/n;->y(Lcom/google/android/material/datepicker/n$b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

.field final synthetic c:Lcom/google/android/material/datepicker/n;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/n;Lcom/google/android/material/datepicker/MaterialCalendarGridView;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/material/datepicker/n$a;->c:Lcom/google/android/material/datepicker/n;

    iput-object p2, p0, Lcom/google/android/material/datepicker/n$a;->b:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/material/datepicker/n$a;->b:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->b()Lcom/google/android/material/datepicker/m;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/material/datepicker/m;->n(I)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 2
    iget-object p1, p0, Lcom/google/android/material/datepicker/n$a;->c:Lcom/google/android/material/datepicker/n;

    invoke-static {p1}, Lcom/google/android/material/datepicker/n;->u(Lcom/google/android/material/datepicker/n;)Lcom/google/android/material/datepicker/h$l;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/material/datepicker/n$a;->b:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    invoke-virtual {p2}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->b()Lcom/google/android/material/datepicker/m;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/google/android/material/datepicker/m;->c(I)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-interface {p1, p2, p3}, Lcom/google/android/material/datepicker/h$l;->a(J)V

    :cond_23
    return-void
.end method
