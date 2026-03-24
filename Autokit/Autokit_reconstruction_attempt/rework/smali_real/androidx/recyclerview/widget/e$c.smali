.class Landroidx/recyclerview/widget/e$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:Landroidx/recyclerview/widget/RecyclerView;

.field public e:I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/recyclerview/widget/e$c;->a:Z

    .line 2
    iput v0, p0, Landroidx/recyclerview/widget/e$c;->b:I

    .line 3
    iput v0, p0, Landroidx/recyclerview/widget/e$c;->c:I

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Landroidx/recyclerview/widget/e$c;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/e$c;->e:I

    return-void
.end method
