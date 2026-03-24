.class Lc/g/h/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/g/h/a;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lc/g/h/f$c;

.field final synthetic c:I


# direct methods
.method constructor <init>(Lc/g/h/a;Lc/g/h/f$c;I)V
    .registers 4

    .line 1
    iput-object p2, p0, Lc/g/h/a$b;->b:Lc/g/h/f$c;

    iput p3, p0, Lc/g/h/a$b;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lc/g/h/a$b;->b:Lc/g/h/f$c;

    iget v1, p0, Lc/g/h/a$b;->c:I

    invoke-virtual {v0, v1}, Lc/g/h/f$c;->a(I)V

    return-void
.end method
